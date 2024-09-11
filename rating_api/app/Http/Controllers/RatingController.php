<?php

namespace App\Http\Controllers;
use App\Models\AdminLogin;
use App\Models\Rating;
use Illuminate\Http\Request;
use App\Mail\FeedbackMail;
use Illuminate\Support\Facades\Mail;

class RatingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ratings = Rating::all();
        return response(['data' => $ratings], 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
{
    try {
        $data = $request->validate([
            'Name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'Mobile' => 'required|string|max:15',
            'rating' => 'required|string|min:1|max:255'
        ]);

        $rating = Rating::create($data);
          $admins = AdminLogin::all();

        // Send email to each admin
        foreach ($admins as $admin) {
            Mail::to($admin->email)->send(new FeedbackMail($rating));
        }

        return response(['message' => 'Rating information successfully saved', 'data' => $rating], 201);

    } catch (\Exception $e) {
        return response(['message' => 'Error saving rating information', 'error' => $e->getMessage()], 500);
    }

}
    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Rating  $rating
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $rating = Rating::find($id);

        if ($rating) {
            return response(['data' => $rating], 200);
        } else {
            return response(['message' => 'Rating information not found'], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Rating  $rating
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Rating $rating)
{
    try {
        $data = $request->validate([
            'Name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'Mobile' => 'required|string|max:15',
            'rating' => 'required|string|min:1|max:255'
        ]);

        $rating->update($data);

        return response(['message' => 'Rating information successfully updated'], 200);

    } catch (\Exception $e) {
        return response(['message' => 'Error updating rating information', 'error' => $e->getMessage()], 500);
    }
}


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Rating  $rating
     * @return \Illuminate\Http\Response
     */
    public function destroy(Rating $rating)
    {
        $rating->delete();
        return response(['message' => 'Rating information successfully deleted'], 200);
    }
}







