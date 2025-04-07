<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use HasFactory;

    // Allow mass assignment for these fields
    protected $fillable = ['name'];

    /**
     * A role can have many users.
     */
    public function users()
    {
        return $this->hasMany(User::class);
    }

    /**
     * A role can have many permissions.
     */
    public function permissions()
    {
        return $this->belongsToMany(Permission::class);
    }
}
