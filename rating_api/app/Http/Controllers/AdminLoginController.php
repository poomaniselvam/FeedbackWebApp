<?php

namespace App\Http\Controllers;

use App\Models\AdminLogin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;

class AdminLoginController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $admin = AdminLogin::all();
        return response(['data' => $admin], 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validate the incoming request data
        $validatedData = $request->validate([
            'email' => 'required|email|unique:admin_logins,email',
            'password' => 'required|min:6',
        ]);

        try {
            // Create a new AdminLogin record with a hashed password
            $admin = AdminLogin::create([
                'email' => $validatedData['email'],
                'password' => Hash::make($validatedData['password']), // Hashing the password
            ]);

            // Return a success response with the created admin login
            return response(['data' => $admin], 201);
        } catch (\Exception $e) {
            // Log the exception message for debugging
            Log::error('AdminLogin creation failed: ' . $e->getMessage());
            // Return an error response
            return response(['error' => 'Unable to create admin login.'], 500);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\AdminLogin  $adminLogin
     * @return \Illuminate\Http\Response
     */
    public function show(AdminLogin $adminLogin)
    {
        return response(['data' => $adminLogin], 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\AdminLogin  $adminLogin
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, AdminLogin $adminLogin)
    {
        $validatedData = $request->validate([
            'email' => 'required|email|unique:admin_logins,email,' . $adminLogin->id,
        ]);

        try {
            $adminLogin->update([
                'email' => $validatedData['email'],
            ]);
            return response(['data' => $adminLogin], 200);
        } catch (\Exception $e) {
            Log::error('AdminLogin update failed: ' . $e->getMessage());
            return response(['error' => 'Unable to update admin login.'], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\AdminLogin  $adminLogin
     * @return \Illuminate\Http\Response
     */
    public function destroy(AdminLogin $adminLogin)
    {
        try {
            $adminLogin->delete();
            return response(['message' => 'Admin login deleted successfully'], 200);
        } catch (\Exception $e) {
            Log::error('AdminLogin deletion failed: ' . $e->getMessage());
            return response(['error' => 'Unable to delete admin login.'], 500);
        }
    }
}
