<?php
namespace App\Http\Controllers;

use App\Models\Products;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Products::all();
        return response(['data' => $products], 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // This method is usually for returning a view, not needed for API response.
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validate the request
        $request->validate([
            'product_name' => 'required|string|max:255',
            'price' => 'required|numeric',
            'description' => 'required|string|max:2048',
            'image' => 'nullable|image|mimes:jpg,jpeg,png,gif|max:2048', // Image validation
        ]);

        // Handle file upload
        $data = $request->only(['product_name', 'price', 'description']);
        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('products', 'public');
            $data['image'] = $imagePath;
        }

        Products::create($data);
        return response(['message' => 'Product successfully saved'], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = Products::find($id);

        if ($product) {
            return response(['data' => $product], 200);
        } else {
            return response(['message' => 'Product not found'], 404);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Products  $products
     * @return \Illuminate\Http\Response
     */
    public function edit(Products $products)
    {
        return response(['data' => $products], 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Products  $products
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Products $products)
    {
        // Validate the request
        $request->validate([
            'product_name' => 'required|string|max:255',
            'price' => 'required|numeric',
            'description' => 'required|string',
            'image' => 'nullable|image|mimes:jpg,jpeg,png,gif|max:2048', // Image validation
        ]);

        // Handle file upload
        $data = $request->only(['product_name', 'price', 'description']);
        if ($request->hasFile('image')) {
            // Delete the old image if it exists
            if ($products->image && Storage::exists('public/' . $products->image)) {
                Storage::delete('public/' . $products->image);
            }

            // Store the new image
            $imagePath = $request->file('image')->store('products', 'public');
            $data['image'] = $imagePath;
        }

        $products->update($data);
        return response(['message' => 'Product successfully updated'], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Products  $products
     * @return \Illuminate\Http\Response
     */
    public function destroy(Products $products)
    {
        // Delete the product image from storage
        if ($products->image && Storage::exists('public/' . $products->image)) {
            Storage::delete('public/' . $products->image);
        }

        $products->delete();
        return response(['message' => 'Product successfully deleted'], 200);
    }
}
