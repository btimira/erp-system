{{-- Payments Page: Display list of payments --}}

@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Payments</h1>
    <a href="{{ route('payments.create') }}" class="btn btn-primary">Add Payment</a>
    <table class="table mt-3">
        <thead>
            <tr>
                <th>Amount</th>
                <th>Date</th>
                <th>Customer</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($payments as $payment)
                <tr>
                    <td>{{ $payment->amount }}</td>
                    <td>{{ $payment->date }}</td>
                    <td>{{ $payment->customer->name }}</td>
                    <td>
                        <a href="{{ route('payments.show', $payment->id) }}" class="btn btn-info">View</a>
                        <a href="{{ route('payments.edit', $payment->id) }}" class="btn btn-warning">Edit</a>
                        <form action="{{ route('payments.destroy', $payment->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
