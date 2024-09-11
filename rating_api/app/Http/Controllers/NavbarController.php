<?php

namespace App\Http\Controllers;

use App\Models\Navbar;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\URL;

class NavbarController extends Controller
{
    public function index()
    {
        $navbars = Navbar::all();
        $navbars->transform(function ($navbar) {
            if ($navbar->image) {
                $navbar->image = URL::to('/storage/app/public/' . $navbar->image);
            }
            if ($navbar->body_image) {
                $navbar->body_image = URL::to('/storage/app/public/' . $navbar->body_image);
            }
            return $navbar;
        });
        return response()->json($navbars);
    }

    public function store(Request $request)
    {
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'body_image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'background_color' => 'required|string|max:7',
        ]);

        $imagePath = $request->file('image')->store('navbars', 'public');
        $bodyImagePath = $request->file('body_image')->store('navbars', 'public');

        $navbar = new Navbar();
        $navbar->image = $imagePath;
        $navbar->body_image = $bodyImagePath;
        $navbar->background_color = $request->input('background_color');
        $navbar->save();

        $navbar->image = URL::to('/storage/app/public/' . $imagePath);
        $navbar->body_image = URL::to('/storage/app/public/' . $bodyImagePath);

        return response()->json($navbar, 201);
    }

    public function update(Request $request, Navbar $navbar)
    {
        $request->validate([
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'body_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'background_color' => 'nullable|string|max:7',
        ]);

        if ($request->hasFile('image')) {
            if ($navbar->image && Storage::disk('public')->exists($navbar->image)) {
                Storage::disk('public')->delete($navbar->image);
            }
            $imagePath = $request->file('image')->store('navbars', 'public');
            $navbar->image = $imagePath;
        }

        if ($request->hasFile('body_image')) {
            if ($navbar->body_image && Storage::disk('public')->exists($navbar->body_image)) {
                Storage::disk('public')->delete($navbar->body_image);
            }
            $bodyImagePath = $request->file('body_image')->store('navbars', 'public');
            $navbar->body_image = $bodyImagePath;
        }

        if ($request->has('background_color')) {
            $navbar->background_color = $request->input('background_color');
        }

        $navbar->save();

        $navbar->image = URL::to('/storage/app/public/' . $navbar->image);
        $navbar->body_image = URL::to('/storage/app/public/' . $navbar->body_image);

        return response()->json($navbar);
    }
}
