<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            [
                'name' => 'Admin User',
                'email' => 'admin@example.com',
                'phone' => '123456789',
                'role' => 'admin',
                'password' => Hash::make('password123'), // Encrypt password
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Regular User',
                'email' => 'user@example.com',
                'phone' => '987654321',
                'role' => 'user',
                'password' => Hash::make('userpassword'), // Encrypt password
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
