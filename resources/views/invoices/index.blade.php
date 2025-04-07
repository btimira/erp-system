{{-- Invoices Page: Display list of invoices --}}

@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Invoices</h1>
    <table class="table">
        <thead>
            <tr>
                <th>Invoice Number</th>
                <th>Date</th>
                <th>Customer</th>
                <th>Total</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($invoices as $invoice)
                <tr>
                    <td>{{ $invoice->invoice_number }}</td>
                    <td>{{ $invoice->date }}</td>
                    <td>{{ $invoice->customer->name }}</td>
                    <td>{{ $invoice->total }}</td>
                    <td>
                        <a href="{{ route('invoices.show', $invoice->id) }}" class="btn btn-info">View</a>
                        <a href="{{ route('invoices.edit', $invoice->id) }}" class="btn btn-warning">Edit</a>
                        <form action="{{ route('invoices.destroy', $invoice->id) }}" method="POST" style="display:inline;">
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
