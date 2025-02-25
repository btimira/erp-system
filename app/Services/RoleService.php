<?php

namespace App\Services;

use Illuminate\Support\Facades\Auth;

class RoleService
{
    public function getUserRole()
    {
        $user = Auth::user();
        return $user ? $user->role : 'No user found';
    }
}
