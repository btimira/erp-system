<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RoleSeeder extends Seeder
{
    public function run(): void
    {
        // Create Permissions
        $permissions = [
            'view sales',
            'manage inventory',
            'view accounting',
            'view hr',
            'manage procurement',
            'access crm',
        ];

        foreach ($permissions as $permission) {
            Permission::firstOrCreate(['name' => $permission, 'guard_name' => 'web']);
        }

        // Create Roles
        $admin = Role::firstOrCreate(['name' => 'admin']);
        $salesRep = Role::firstOrCreate(['name' => 'sales_rep']);
        $accountant = Role::firstOrCreate(['name' => 'accountant']);

        // Assign permissions to roles
        $admin->givePermissionTo(Permission::all());

        $salesRep->givePermissionTo(['view sales', 'access crm']);
        $accountant->givePermissionTo(['view accounting']);
    }
}
