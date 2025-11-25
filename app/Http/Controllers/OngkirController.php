<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\RajaOngkirService;
use App\Models\Toko;
use App\Models\User;
use App\Models\Province;
use App\Models\City;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;
use App\Models\Courier;

class OngkirController extends Controller
{
    protected $rajaOngkirService;

    public function __construct(RajaOngkirService $rajaOngkirService)
    {
        $this->rajaOngkirService = $rajaOngkirService;
    }

    public function getProvinces()
    {
        $provinces = Province::all();
        return response()->json($provinces);
    }

    public function getCities(Request $request)
    {
        $request->validate([
            'province_id' => 'required|integer',
        ]);

        try {
            $provinceId = $request->input('province_id');
            $cities = City::where('province_id', $provinceId)->get();

            if ($cities->isEmpty()) {
                return response()->json(['error' => 'No cities found for the given province'], 404);
            }

            return response()->json($cities);
        } catch (\Exception $e) {
            // Log the error for debugging purposes
            Log::error('Error fetching cities:', ['error' => $e->getMessage()]);
            return response()->json(['error' => 'Failed to fetch cities. Please try again later.'], 500);
        }
    }

    public function getAlamatToko()
    {
        $alamatToko = Toko::all();
        return response()->json($alamatToko);
    }

    public function getAlamatUser()
    {
        $user = Auth::user();
        $alamatUser = User::where('id', $user->id)->get(['province_id', 'city_id', 'alamat', 'kode_pos']);
        return response()->json($alamatUser);
    }

    public function getOngkir(Request $request)
    {
        $request->validate([
            'origin' => 'required|integer',
            'destination' => 'required|integer',
            'weight' => 'required|integer',
            'courier' => 'required|string',
        ]);

        $origin = $request->input('origin');
        $destination = $request->input('destination');
        $weight = $request->input('weight');
        $courierId = $request->input('courier');

        $courier = Courier::find($courierId);

        if ($courier->requires_api) {
            // Use RajaOngkir API to get the shipping cost
            $ongkir = $this->rajaOngkirService->getOngkir($origin, $destination, $weight, $courier->courier_name);
            return response()->json($ongkir);
        } else {
            // Use the predefined shipping cost
            return response()->json([
                'courier' => $courier->courier_name,
                'cost' => $courier->shipping_cost,
                'etd' => 'N/A',
            ]);
        }
    }


    public function getProvinceName(Request $request)
    {
        $request->validate([
            'province_id' => 'required|integer',
        ]);

        $provinceId = $request->input('province_id');
        $provinceName = Province::find($provinceId)->name ?? null;

        if (!$provinceName) {
            return response()->json(['error' => 'Province not found'], 404);
        }

        return response()->json(['province_name' => $provinceName]);
    }

    public function getCityName(Request $request)
    {
        $request->validate([
            'city_id' => 'required|integer',
        ]);

        $cityId = $request->input('city_id');
        $cityName = City::find($cityId)->name ?? null;

        if (!$cityName) {
            return response()->json(['error' => 'City not found'], 404);
        }

        return response()->json(['city_name' => $cityName]);
    }
}
