<?php

namespace Database\Factories;

use App\Models\Referral;
use Illuminate\Database\Eloquent\Factories\Factory;

class ReferralFactory extends Factory
{
    protected $model = Referral::class;

    public function definition()
    {
        return [
            'referrer_id' => \App\Models\User::factory(), // Assuming users exist
            'referred_email' => $this->faker->safeEmail(),
            'commission' => $this->faker->randomFloat(2, 10, 500),
            'status' => $this->faker->randomElement(['pending', 'confirmed']),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
