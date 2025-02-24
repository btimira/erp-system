<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'name', 'description', 'product_type', 'units', 'selling_price',
        'currency', 'quantity', 'stock_status', 'account', 'tax', 'lead_time',
        'cost_price', 'purchase_account', 'preferred_vendor',
        'fixed_transport', 'local_transport', 'air_transport', 'sea_transport',
        'preferred_transport'
    ];
}
