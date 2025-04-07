{{-- Show Payment Page --}}

@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Payment Details</h1>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Amount: {{ $payment->amount }}</h5>
            <p class="card-text">Date: {{ $payment->date }}</p>
            <p class="card-text">Customer: {{ $payment->customer->name }}</p>
            <a href="{{ route('payments.index') }}" class="btn btn-primary">Back to Payments</a>
        </div>
    </div>
</div>
@endsection
