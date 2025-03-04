<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Target extends Model
{
    use HasFactory;

    protected $fillable = [
        'team_id',
        'target_amount',
        'achieved_amount',
        'status',
    ];

    /**
     * Get the team associated with the target.
     */
    public function team()
    {
        return $this->belongsTo(Team::class);
    }

    /**
     * Get the transactions associated with the target.
     */
    public function transactions()
    {
        return $this->hasMany(Transaction::class);
    }
}
