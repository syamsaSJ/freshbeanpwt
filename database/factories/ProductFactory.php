<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    protected $model = Product::class;

    public function definition()
    {
        return [
            'kode' => null, // Kode akan dihasilkan secara otomatis pada boot method di model
            'image' => $this->faker->imageUrl(640, 480, 'product', true, 'PRD'),
            'name' => $this->faker->word,
            'origin_id' => $this->faker->numberBetween(1, 34), // Sesuaikan dengan jumlah data origin yang ada
            'roats_level_id' => $this->faker->numberBetween(1, 2), // Sesuaikan dengan jumlah data roast level yang ada
            'category_id' => $this->faker->numberBetween(1, 2), // Sesuaikan dengan jumlah data kategori yang ada
            'weight' => $this->faker->numberBetween(100, 1000), // Berat dalam gram
            'satuan' => $this->faker->randomElement(['gram', 'kg']),
            'price' => $this->faker->numberBetween(10000, 100000), // Harga dalam rupiah
            'description' => $this->faker->sentence,
        ];
    }
}
