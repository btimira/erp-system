<?php

namespace App\Http\Controllers\Inventory;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    public function index()
    {
        // Return a view or data for listing products
        return view('inventory.products.index');
    }

    public function create()
    {
        // Return a view for creating a new product
        return view('inventory.products.create');
    }

    public function store(Request $request)
    {
        // Validate and save the new product
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'price' => 'required|numeric',
            // Add other fields as necessary
        ]);

        // Assuming you have a Product model
        \App\Models\Product::create($validated);

        return redirect()->route('products.index')->with('success', 'Product created successfully.');
    }

    public function show($id)
    {
        // Show a specific product
        $product = \App\Models\Product::findOrFail($id);
        return view('inventory.products.show', compact('product'));
    }

    public function edit($id)
    {
        // Return a view for editing a product
        $product = \App\Models\Product::findOrFail($id);
        return view('inventory.products.edit', compact('product'));
    }

    public function update(Request $request, $id)
    {
        // Validate and update the product
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'price' => 'required|numeric',
            // Add other fields as necessary
        ]);

        $product = \App\Models\Product::findOrFail($id);
        $product->update($validated);

        return redirect()->route('products.index')->with('success', 'Product updated successfully.');
    }

    public function destroy($id)
    {
        // Delete a product
        $product = \App\Models\Product::findOrFail($id);
        $product->delete();

        return redirect()->route('products.index')->with('success', 'Product deleted successfully.');
    }
}
