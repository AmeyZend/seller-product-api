<?php
namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
class SellerController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'mobile' => 'nullable',
            'country' => 'nullable',
            'state' => 'nullable',
            'skills' => 'nullable|array',
            'password' => 'required|min:6'
        ]);

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'mobile' => $request->mobile,
            'country' => $request->country,
            'state' => $request->state,
            'skills' => $request->skills ?? [],
            'role' => 'SELLER',
            'password' => Hash::make($request->password),
        ]);

        return response()->json(['message' => 'Seller created'], 201);
    }

    public function index()
    {
        return User::where('role', 'SELLER')->paginate(10);
    }

    public function destroy(User $seller)
    {
        if ($seller->role !== 'SELLER') {
            return response()->json(['message' => 'Invalid seller'], 400);
        }

        $seller->delete();

        return response()->json(['message' => 'Seller deleted']);
    }
}