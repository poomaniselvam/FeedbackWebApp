<?php

namespace App\Http\Controllers;

use App\Models\Question;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class QuestionController extends Controller
{
    public function index()
    {
        $questions = Question::all();
        return response()->json(['questions' => $questions]);
    }

    public function show($id)
    {
        $question = Question::findOrFail($id);
        return response()->json($question);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'questions' => 'required|array',
            'questions.*.id' => 'required|string|unique:questions,id',
            'questions.*.label' => 'required|string',
            'questions.*.options' => 'required|array',
            'questions.*.options.*.id' => 'required|string',
            'questions.*.options.*.label' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $questions = collect($request->input('questions'))->map(function ($question) {
            return Question::create($question);
        });

        return response()->json(['questions' => $questions], 201);
    }

    public function update(Request $request, $id)
    {
        $question = Question::findOrFail($id);

        $validator = Validator::make($request->all(), [
            'label' => 'required|string',
            'options' => 'required|array',
            'options.*.id' => 'required|string',
            'options.*.label' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $question->update($request->all());
        return response()->json($question);
    }

    public function destroy($id)
    {
        $question = Question::findOrFail($id);
        $question->delete();
        return response()->json(['message' => 'Question deleted successfully']);
    }
}
