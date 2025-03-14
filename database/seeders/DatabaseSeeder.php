<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Call individual seeders
        $this->call([
            UsersTableSeeder::class,
            CommissionSeeder::class,
            ReferralSeeder::class,
            TargetSeeder::class,
        ]);
    }
}
