<?php

namespace App\Services;

use App\Models\Role;

class RoleService
{
    public function assignRoleToUser($user, $roleName)
    {
        $role = Role::where('name', $roleName)->first();
        if ($role) {
            return $user->roles()->attach($role->id);
        }
        return false;
    }

    public function removeRoleFromUser($user, $roleName)
    {
        $role = Role::where('name', $roleName)->first();
        if ($role) {
            return $user->roles()->detach($role->id);
        }
        return false;
    }
}
