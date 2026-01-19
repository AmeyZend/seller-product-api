<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function adminLogin(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        $email = $request->email ?? $request->input('email');
        $password = $request->password ?? $request->input('password');

        $user = User::where('email', $request->email)
            ->where('role', 'ADMIN')
            ->first();

        if (!$user || !Hash::check($password, $user->password)) {
            return response()->json(['status' => false, 'message' => 'Invalid credentials'], 401);
        }

        return response()->json([
            'status' => true,
            'message' => 'Login successful',
            'token' => $user->createToken('admin-token')->plainTextToken,
            'role' => $user->role
        ]);
    }

    public function sellerLogin(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        $email = $request->email ?? $request->input('email');
        $password = $request->password ?? $request->input('password');

        $user = User::where('email', $request->email)
            ->where('role', 'SELLER')
            ->first();

        if (!$user || !Hash::check($password, $user->password)) {
            return response()->json(['status' => false, 'message' => 'Invalid credentials'], 401);
        }

        // return response()->json([
        //     'token' => $user->createToken('seller-token')->plainTextToken,
        //     'role' => $user->role
        // ]);
        $token = $user->createToken('seller-token')->plainTextToken;

        return response()->json([
            'status' => true,
            'message' => 'Login successful',
            'token' => $user->createToken('seller-token')->plainTextToken,
            // 'token' => $token,
            'role' => $user->role
        ], 200);
    }
}
