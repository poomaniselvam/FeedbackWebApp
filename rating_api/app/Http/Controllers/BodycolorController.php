
<?php

namespace App\Http\Controllers;

use App\Models\Bodycolor;
use Illuminate\Http\Request;

class BodycolorController extends Controller
{
    /**
     * Display a listing of the resource (all colors).
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Fetch all background colors
        $bodycolors = Bodycolor::all();
        return response()->json($bodycolors);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // Optional for APIs - Return a view to create a new color
        return view('bodycolor.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validate the request data (removed hex_value validation)
        $validated = $request->validate([
            'background_colors' => 'required|string|max:255',
        ]);

        // Create and save the new bodycolor
        $bodycolor = new Bodycolor();
        $bodycolor->background_colors = $validated['background_colors'];
        // Removed hex_value field
        $bodycolor->save();

        return response()->json(['message' => 'Background color added successfully!'], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Bodycolor  $bodycolor
     * @return \Illuminate\Http\Response
     */
    public function show(Bodycolor $bodycolor)
    {
        // Display a specific bodycolor
        return response()->json($bodycolor);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Bodycolor  $bodycolor
     * @return \Illuminate\Http\Response
     */
    public function edit(Bodycolor $bodycolor)
    {
        // Optional for APIs - Return a view to edit the color
        return view('bodycolor.edit', compact('bodycolor'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Bodycolor  $bodycolor
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Bodycolor $bodycolor)
    {
        // Validate the request data (removed hex_value validation)
        $validated = $request->validate([
            'background_colors' => 'required|string|max:255',
        ]);

        // Update the bodycolor
        $bodycolor->background_colors = $validated['background_colors'];
        // Removed hex_value field
        $bodycolor->save();

        return response()->json(['message' => 'Background color updated successfully!']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Bodycolor  $bodycolor
     * @return \Illuminate\Http\Response
     */
    public function destroy(Bodycolor $bodycolor)
    {
        // Delete the bodycolor
        $bodycolor->delete();

        return response()->json(['message' => 'Background color deleted successfully!']);
    }
}
