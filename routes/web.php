<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Inventory\ProductController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\SupplierController;
use App\Http\Controllers\Accounting\PaymentController;
use App\Http\Controllers\Accounting\InvoiceController;
use App\Http\Controllers\InventoryController;


// 🔐 Authentication Routes
Auth::routes();

// 🏠 Welcome Route
Route::get('/', function () {
    return view('welcome');
});

// 🚀 Debugging Role Middleware - Check User Role
Route::get('/test-role', function () {
    return response()->json([
        'user' => Auth::user() ? Auth::user()->toArray() : null,
        'role' => Auth::user() ? Auth::user()->role : 'No user found',
    ]);
})->middleware('auth');

// 🛠️ Role-Based Routes
Route::middleware(['auth'])->group(function () {
    Route::get('/admin', function () {
        Log::info('✅ Admin page accessed', ['user' => Auth::user()]);
        return 'Welcome to the Admin Dashboard!';
    })->middleware('role:Admin'); // ✅ Correct usage

    Route::get('/manager', function () {
        Log::info('✅ Manager page accessed', ['user' => Auth::user()]);
        return 'Welcome to the Manager Dashboard!';
    })->middleware('role:Manager');

    Route::get('/sales', function () {
        Log::info('✅ Sales page accessed', ['user' => Auth::user()]);
        return 'Welcome to the Sales Dashboard!';
    })->middleware('role:Sales Rep');

    // Resource routes
    Route::resource('customers', CustomerController::class);
    Route::resource('suppliers', SupplierController::class);
    Route::resource('payments', PaymentController::class);
    Route::resource('invoices', InvoiceController::class);
});

// 🛠️ Permission-Based Routes
Route::middleware(['auth', 'role:Admin'])->group(function () {  
    Route::resource('products', ProductController::class);
});

 Route::middleware(['web', 'auth'])->group(function () {
      Route::resource('inventories', InventoryController::class);
  });
