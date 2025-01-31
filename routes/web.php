<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

// Authentication Routes
Auth::routes();  // Registers login, register, reset password, and logout routes

// Welcome route
Route::get('/', function () {
    return view('welcome');
});

// Simple test route
Route::get('/hello', function () {
    return 'Hello, ERP!';
});

// Protected Routes (Ensure user is authenticated)
Route::middleware(['auth'])->group(function () {

    // Role-Based Routes
    Route::get('/admin', function () {
        return 'Welcome to the Admin Dashboard!';
    })->middleware('role:Admin');

    Route::get('/manager', function () {
        return 'Welcome to the Manager Dashboard!';
    })->middleware('role:Manager');

    Route::get('/sales', function () {
        return 'Welcome to the Sales Dashboard!';
    })->middleware('role:Sales Rep');

    // Permission-Based Routes
    Route::get('/reports', function () {
        return 'Viewing reports page';
    })->middleware('permission:view_reports');

    Route::get('/roles', function () {
        return 'Manage roles here';
    })->middleware('permission:edit_roles');

    Route::get('/sales/approve', function () {
        return 'Approve sales here';
    })->middleware('permission:approve_sales');

    Route::get('/customers', function () {
        return 'View customers here';
    })->middleware('permission:view_customers');
});

// Redirect unauthorized users to login
Route::get('/unauthorized', function () {
    return response()->json(['error' => 'Unauthorized'], 403);
})->name('unauthorized');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
