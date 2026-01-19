<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Admin\SellerController;
use App\Http\Controllers\Seller\ProductController;

Route::post('/admin/login', [AuthController::class, 'adminLogin']);
Route::post('/seller/login', [AuthController::class, 'sellerLogin']);

Route::middleware(['auth:sanctum', 'role:ADMIN'])->group(function () {
    Route::post('/admin/sellers', [SellerController::class, 'store']);
    Route::get('/admin/sellers', [SellerController::class, 'index']);
    Route::delete('/admin/sellers/{seller}', [SellerController::class, 'destroy']);
});

Route::middleware(['auth:sanctum', 'role:SELLER'])->group(function () {
    Route::post('/seller/products', [ProductController::class, 'store']);
    Route::get('/seller/products', [ProductController::class, 'index']);
    Route::get('/seller/products/{id}/pdf', [ProductController::class, 'viewPdf']);
    Route::delete('/seller/products/{id}', [ProductController::class, 'destroy']);

});

Route::get('/', function () {
    return response()->json([
        'status' => true,
        'message' => 'API is working'
    ]);
});
