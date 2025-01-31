<?php

namespace Database\Factories;

use App\Models\Commission;
use Illuminate\Database\Eloquent\Factories\Factory;

class CommissionFactory extends Factory
{
    protected $model = Commission::class;

    public function definition()
    {
        return [
            'sales_rep_id' => \App\Models\User::factory(), // Assuming users exist
            'amount' => $this->faker->randomFloat(2, 50, 1000),
            'status' => $this->faker->randomElement(['pending', 'paid']),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
