<?php

namespace App\Services;

use GuzzleHttp\Client;
use Illuminate\Support\Facades\Http;

class RajaOngkirService
{
    protected $client;
    protected $apiKey;
    protected $baseUrl;

    public function __construct()
    {
        $this->client = new Client();
        $this->apiKey = env('RAJAONGKIR_API_KEY');
        $this->baseUrl = env('RAJAONGKIR_BASE_URL');
    }

    public function getProvinces()
    {
        $response = $this->client->request('GET', $this->baseUrl . 'province', [
            'headers' => [
                'key' => $this->apiKey,
            ],
        ]);

        return json_decode($response->getBody()->getContents(), true);
    }

    public function getCities($provinceId)
    {
        $response = $this->client->request('GET', $this->baseUrl . 'city', [
            'headers' => [
                'key' => $this->apiKey,
            ],
            'query' => [
                'province' => $provinceId,
            ],
        ]);

        return json_decode($response->getBody()->getContents(), true);
    }

    public function getOngkir($origin, $destination, $weight, $courier)
    {
        $response = $this->client->request('POST', $this->baseUrl . 'cost', [
            'headers' => [
                'key' => $this->apiKey,
            ],
            'form_params' => [
                'origin' => $origin,
                'destination' => $destination,
                'weight' => $weight,
                'courier' => $courier,
            ],
        ]);

        return json_decode($response->getBody()->getContents(), true);
    }

    public function getProvinceNameById($provinceId)
    {
        $response = Http::withHeaders([
            'key' => $this->apiKey,
        ])->get('https://api.rajaongkir.com/starter/province');

        $data = $response->json();

        // Check if the 'rajaongkir' and 'results' keys exist
        if (isset($data['rajaongkir']['results'])) {
            $provinces = $data['rajaongkir']['results'];

            foreach ($provinces as $province) {
                if ($province['province_id'] == $provinceId) {
                    return $province['province'];
                }
            }
        } else {
            // Handle unexpected response structure
            // Log the error or handle accordingly
            return null;
        }

        return null; // Handle if province_id is not found
    }

    public function getCityNameById($cityId)
    {
        $response = Http::withHeaders([
            'key' => $this->apiKey,
        ])->get('https://api.rajaongkir.com/starter/city');

        $data = $response->json();

        // Check if the 'rajaongkir' and 'results' keys exist
        if (isset($data['rajaongkir']['results'])) {
            $cities = $data['rajaongkir']['results'];

            foreach ($cities as $city) {
                if ($city['city_id'] == $cityId) {
                    return $city['city_name'];
                }
            }
        } else {
            
            // Handle unexpected response structure
            // Log the error or handle accordingly
            return null;
        }

        return null; // Handle if city_id is not found
    }
}
