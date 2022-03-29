<?php

namespace Database\Factories;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Tour>
 */
class TourFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => $name = $this->faker->sentence(2),
            'slug' => str()->slug($name . ' ' . Str::random(6)),
            'description' => $this->faker->paragraph(),
            'city' => $this->faker->city(),
            'location' => $this->faker->address(),
            'image_cover' => $this->faker->imageUrl(),
            'ticket_price' => $this->faker->numberBetween(10000, 1500000),
        ];
    }
}
