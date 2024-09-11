<?php

namespace App\Http\Controllers;

use App\Models\Shipping;
use Illuminate\Http\Request;

class ShippingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $shipments = Shipping::all(); // Corrected variable name to $shipments
        return response(['data' => $shipments], 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // Typically left empty for API, only necessary for returning a view in web applications
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->only(['Name', 'Address', 'Mobile', 'Pincode', 'State', 'City']);
        $shipping = Shipping::create($data); // Corrected variable name to $shipping
        return response(['message' => 'Shipping information successfully saved', 'data' => $shipping], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $shipping = Shipping::find($id); // Corrected variable name to $shipping

        if ($shipping) {
            return response(['data' => $shipping], 200);
        } else {
            return response(['message' => 'Shipping information not found'], 404);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Shipping  $shipping
     * @return \Illuminate\Http\Response
     */
    public function edit(Shipping $shipping)
    {
        return response(['data' => $shipping], 200); // Corrected variable name to $shipping
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Shipping  $shipping
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Shipping $shipping)
    {
        $data = $request->only(['Name', 'Address', 'Mobile', 'Pincode', 'State', 'City']); // Updated fields to match Shipping
        $shipping->update($data); // Corrected variable name to $shipping
        return response(['message' => 'Shipping information successfully updated'], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Shipping  $shipping
     * @return \Illuminate\Http\Response
     */
    public function destroy(Shipping $shipping)
    {
        $shipping->delete(); // Corrected variable name to $shipping
        return response(['message' => 'Shipping information successfully deleted'], 200);
    }
}
