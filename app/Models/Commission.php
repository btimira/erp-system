<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Commission extends Model
{
    use HasFactory;

    protected $fillable = [
        'sales_rep_id',
        'team_id',
        'amount',
        'status',
        'commission_type',
    ];

    /**
     * Get the sales representative associated with the commission.
     */
    public function salesRep()
    {
        return $this->belongsTo(User::class, 'sales_rep_id');
    }

    /**
     * Get the team associated with the commission.
     */
    public function team()
    {
        return $this->belongsTo(Team::class);
    }
}
