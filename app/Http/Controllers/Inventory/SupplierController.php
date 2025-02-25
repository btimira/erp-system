<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Supplier;

class SupplierController extends Controller
{
    public function index()
    {
        $suppliers = Supplier::all();
        return view('suppliers.index', compact('suppliers'));
    }

    public function create()
    {
        return view('suppliers.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'nullable|email|unique:suppliers,email',
            'phone' => 'nullable|string|max:15',
        ]);

        Supplier::create($request->all());

        return redirect()->route('suppliers.index')->with('success', 'Supplier added successfully.');
    }
}
