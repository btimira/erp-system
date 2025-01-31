<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Target;

class TargetSeeder extends Seeder
{
    public function run()
    {
        Target::factory()->count(10)->create();
    }
}
