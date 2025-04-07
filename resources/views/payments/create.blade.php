{{-- Create Payment Page --}}

@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Add Payment</h1>
    <form action="{{ route('payments.store') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="amount">Amount</label>
            <input type="text" name="amount" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="date">Date</label>
            <input type="date" name="date" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="customer_id">Customer</label>
            <select name="customer_id" class="form-control" required>
                @foreach($customers as $customer)
                    <option value="{{ $customer->id }}">{{ $customer->name }}</option>
                @endforeach
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
@endsection
