<?php

namespace Database\Factories;

use App\Models\Target;
use Illuminate\Database\Eloquent\Factories\Factory;

class TargetFactory extends Factory
{
    protected $model = Target::class;

    public function definition()
    {
        return [
            'manager_id' => \App\Models\User::factory(), // Assuming users exist
            'sales_target' => $this->faker->numberBetween(5000, 50000),
            'achieved' => $this->faker->boolean(50),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
