<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Referral extends Model
{
    use HasFactory;

    protected $fillable = [
        'referrer_id',
        'customer_id',
        'commission_amount',
        'status',
    ];

    /**
     * Get the user who made the referral.
     */
    public function referrer()
    {
        return $this->belongsTo(User::class, 'referrer_id');
    }

    /**
     * Get the customer associated with the referral.
     */
    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }
}
