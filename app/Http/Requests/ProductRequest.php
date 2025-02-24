<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules()
{
    return [
        'name' => 'required|string|max:255',
        'description' => 'nullable|string',
        'product_type' => 'required|in:Physical,Digital',
        'units' => 'required|string|max:50',
        'selling_price' => 'required|numeric|min:0',
        'currency' => 'required|in:USD,TZS,EUR',
        'quantity' => 'required|integer|min:0',
        'stock_status' => 'required|in:In Stock,By Order',
        'account' => 'required|in:Sales,Discount,General Income,Interest Income,Late Fee Income,Other Charges',
        'tax' => 'required|in:VAT,Withholding',
        'lead_time' => 'required|in:1-2 Days,2-10 Days,21-60 Days',
        'cost_price' => 'required|numeric|min:0',
        'purchase_account' => 'required|in:Cost of Goods Sold,Cost of Services Sold',
        'preferred_vendor' => 'nullable|string|max:255',
        'fixed_transport' => 'nullable|numeric|min:0',
        'local_transport' => 'nullable|numeric|min:0',
        'air_transport' => 'nullable|numeric|min:0',
        'sea_transport' => 'nullable|numeric|min:0',
        'preferred_transport' => 'nullable|in:Local,Air,Sea',
    ];
}

}
