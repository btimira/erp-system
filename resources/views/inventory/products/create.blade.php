git status
@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Create Product</h1>
    <form action="{{ route('products.store') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="name">Product Name</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
        </div>
        <div class="form-group">
            <label for="type">Product Type</label>
            <select class="form-control" id="type" name="type" required>
                <option value="physical">Physical</option>
                <option value="digital">Digital</option>
            </select>
        </div>
        <div class="form-group">
            <label for="units">Units</label>
            <input type="text" class="form-control" id="units" name="units" required>
        </div>
        <div class="form-group">
            <label for="selling_price">Selling Price</label>
            <input type="number" class="form-control" id="selling_price" name="selling_price" step="0.01" required>
        </div>
        <div class="form-group">
            <label for="currency">Currency</label>
            <input type="text" class="form-control" id="currency" name="currency" required>
        </div>
        <div class="form-group">
            <label for="quantity">Quantity</label>
            <input type="number" class="form-control" id="quantity" name="quantity" required>
        </div>
        <div class="form-group">
            <label for="stock_status">Stock Status</label>
            <select class="form-control" id="stock_status" name="stock_status" required>
                <option value="in_stock">In Stock</option>
                <option value="by_order">By Order</option>
            </select>
        </div>
        <div class="form-group">
            <label for="account_type">Account Type</label>
            <input type="text" class="form-control" id="account_type" name="account_type" required>
        </div>
        <div class="form-group">
            <label for="tax_type">Tax Type</label>
            <input type="text" class="form-control" id="tax_type" name="tax_type" required>
        </div>
        <div class="form-group">
            <label for="preferred_delivery_time">Preferred Delivery Time</label>
            <input type="text" class="form-control" id="preferred_delivery_time" name="preferred_delivery_time" required>
        </div>
        <div class="form-group">
            <label for="cost_price">Cost Price</label>
            <input type="number" class="form-control" id="cost_price" name="cost_price" step="0.01" required>
        </div>
        <div class="form-group">
            <label for="purchase_account">Purchase Account</label>
            <input type="text" class="form-control" id="purchase_account" name="purchase_account" required>
        </div>
        <div class="form-group">
            <label for="preferred_vendor">Preferred Vendor</label>
            <input type="text" class="form-control" id="preferred_vendor" name="preferred_vendor" required>
        </div>
        <div class="form-group">
            <label for="importation_tax">Importation Tax</label>
            <input type="number" class="form-control" id="importation_tax" name="importation_tax" step="0.01" required>
        </div>
        <div class="form-group">
            <label for="fixed_transport_charges">Fixed Transport Charges</label>
            <input type="number" class="form-control" id="fixed_transport_charges" name="fixed_transport_charges" step="0.01" required>
        </div>
        <div class="form-group">
            <label for="local_transport_cost">Local Transport Cost (1-2 Days)</label>
            <input type="number" class="form-control" id="local_transport_cost" name="local_transport_cost" step="0.01" required>
        </div>
        <div class="form-group">
            <label for="air_transport_cost">Air Transport Cost (2-10 Days)</label>
            <input type="number" class="form-control" id="air_transport_cost" name="air_transport_cost" step="0.01" required>
        </div>
        <div class="form-group">
            <label for="sea_transport_cost">Sea Transport Cost (21-120 Days)</label>
            <input type="number" class="form-control" id="sea_transport_cost" name="sea_transport_cost" step="0.01" required>
        </div>
        <div class="form-group">
            <label for="preferred_transport">Preferred Transport</label>
            <select class="form-control" id="preferred_transport" name="preferred_transport" required>
                <option value="local">Local</option>
                <option value="air">Air</option>
                <option value="sea">Sea</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Create Product</button>
    </form>
</div>
@endsection
