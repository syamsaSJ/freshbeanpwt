<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Province;
use App\Models\City;
use App\Services\RajaOngkirService;

class ProvinceCitySeeder extends Seeder
{
    public function run()
    {
        $rajaOngkirService = new RajaOngkirService();

        // Get provinces
        $provinces = $rajaOngkirService->getProvinces();
        if (isset($provinces['rajaongkir']['results'])) {
            foreach ($provinces['rajaongkir']['results'] as $province) {
                Province::updateOrCreate(
                    ['province_id' => $province['province_id']],
                    ['name' => $province['province']]
                );

                // Get cities for each province
                $cities = $rajaOngkirService->getCities($province['province_id']);
                if (isset($cities['rajaongkir']['results'])) {
                    foreach ($cities['rajaongkir']['results'] as $city) {
                        City::updateOrCreate(
                            ['city_id' => $city['city_id']],
                            [
                                'province_id' => $city['province_id'],
                                'name' => $city['city_name']
                            ]
                        );
                    }
                }
            }
        }
    }
}

