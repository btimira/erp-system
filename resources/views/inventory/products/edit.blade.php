@extends('layouts.app')

@section('content')

<div class="container">
    <h1>Edit Product</h1>

    <form action="{{ route('products.update', $product->id) }}" method="POST">
        @csrf
        @method('PUT')

        <!-- Product Name -->
        <x-input-field label="Product Name" name="name" :value="$product->name" />

        <!-- Description -->
        <x-input-field label="Description" name="description" :value="$product->description" />

        <!-- Product Type -->
        <label for="product_type">Product Type:</label>
        <select name="product_type" required>
            <option value="Physical" {{ $product->product_type == 'Physical' ? 'selected' : '' }}>Physical</option>
            <option value="Digital" {{ $product->product_type == 'Digital' ? 'selected' : '' }}>Digital</option>
        </select>
        <br>

        <!-- Units -->
        <x-input-field label="Units" name="units" :value="$product->units" />

        <!-- Selling Price -->
        <x-input-field label="Selling Price" name="selling_price" type="number" :value="$product->selling_price" />

        <!-- Currency -->
        <label for="currency">Currency:</label>
        <select name="currency">
            <option value="USD" {{ $product->currency == 'USD' ? 'selected' : '' }}>USD</option>
            <option value="TZS" {{ $product->currency == 'TZS' ? 'selected' : '' }}>TZS</option>
            <option value="EUR" {{ $product->currency == 'EUR' ? 'selected' : '' }}>EUR</option>
        </select>
        <br>

        <!-- Quantity -->
        <x-input-field label="Quantity" name="quantity" type="number" :value="$product->quantity" />

        <!-- Stock Status -->
        <label for="stock_status">Stock Availability:</label>
        <select name="stock_status">
            <option value="In Stock" {{ $product->stock_status == 'In Stock' ? 'selected' : '' }}>In Stock</option>
            <option value="By Order" {{ $product->stock_status == 'By Order' ? 'selected' : '' }}>By Order</option>
        </select>
        <br>

        <!-- Account -->
        <label for="account">Account:</label>
        <select name="account">
            <option value="Sales" {{ $product->account == 'Sales' ? 'selected' : '' }}>Sales</option>
            <option value="Discount" {{ $product->account == 'Discount' ? 'selected' : '' }}>Discount</option>
            <option value="General Income" {{ $product->account == 'General Income' ? 'selected' : '' }}>General Income</option>
            <option value="Interest Income" {{ $product->account == 'Interest Income' ? 'selected' : '' }}>Interest Income</option>
            <option value="Late Fee Income" {{ $product->account == 'Late Fee Income' ? 'selected' : '' }}>Late Fee Income</option>
            <option value="Other Charges" {{ $product->account == 'Other Charges' ? 'selected' : '' }}>Other Charges</option>
        </select>
        <br>

        <!-- Tax -->
        <label for="tax">Tax:</label>
        <select name="tax">
            <option value="VAT" {{ $product->tax == 'VAT' ? 'selected' : '' }}>VAT</option>
            <option value="Withholding" {{ $product->tax == 'Withholding' ? 'selected' : '' }}>Withholding</option>
        </select>
        <br>

        <!-- Preferred Delivery Time -->
        <label for="lead_time">Preferred Delivery / Lead Time:</label>
        <select name="lead_time">
            <option value="1-2 Days" {{ $product->lead_time == '1-2 Days' ? 'selected' : '' }}>1-2 Days</option>
            <option value="2-10 Days" {{ $product->lead_time == '2-10 Days' ? 'selected' : '' }}>2-10 Days</option>
            <option value="21-60 Days" {{ $product->lead_time == '21-60 Days' ? 'selected' : '' }}>21-60 Days</option>
        </select>
        <br>

        <!-- Purchase Information -->
        <h2>Purchase Information</h2>
        <x-input-field label="Cost Price" name="cost_price" type="number" :value="$product->cost_price" />

        <label for="purchase_account">Purchase Account:</label>
        <select name="purchase_account">
            <option value="Cost of Goods Sold" {{ $product->purchase_account == 'Cost of Goods Sold' ? 'selected' : '' }}>Cost of Goods Sold</option>
            <option value="Cost of Services Sold" {{ $product->purchase_account == 'Cost of Services Sold' ? 'selected' : '' }}>Cost of Services Sold</option>
        </select>
        <br>

        <x-input-field label="Preferred Vendor" name="preferred_vendor" :value="$product->preferred_vendor" />

        @if(Auth::user()->role == 'Admin') 
        <!-- Transport Information (Admin Only) -->
        <h2>Transport Information</h2>
        <x-input-field label="Fixed Transport Charges" name="fixed_transport" type="number" :value="$product->fixed_transport" />
        <x-input-field label="Local Transport Cost (1-2 Days)" name="local_transport" type="number" :value="$product->local_transport" />
        <x-input-field label="Air Transport Cost (2-10 Days)" name="air_transport" type="number" :value="$product->air_transport" />
        <x-input-field label="Sea Transport Cost (21-120 Days)" name="sea_transport" type="number" :value="$product->sea_transport" />

        <label for="preferred_transport">Preferred Transport:</label>
        <select name="preferred_transport">
            <option value="Local" {{ $product->preferred_transport == 'Local' ? 'selected' : '' }}>Local</option>
            <option value="Air" {{ $product->preferred_transport == 'Air' ? 'selected' : '' }}>Air</option>
            <option value="Sea" {{ $product->preferred_transport == 'Sea' ? 'selected' : '' }}>Sea</option>
        </select>
        <br>
        @endif

        <button type="submit">Update Product</button>
    </form>

</div>

@endsection
