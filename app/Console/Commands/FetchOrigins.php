<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;
use App\Models\Origin;

class FetchOrigins extends Command
{
    protected $signature = 'origins:fetch';

    protected $description = 'Fetch origins from API and store in database';

    public function handle()
    {
        $response = Http::get('https://emsifa.github.io/api-wilayah-indonesia/api/provinces.json');

        // Check if the request was successful
        if ($response->successful()) {
            $origins = $response->json();

            foreach ($origins as $origin) {
                // Save each origin to the database
                Origin::updateOrCreate(
                    ['id' => $origin['id']], // Find or create a new record by 'id'
                    ['name' => $origin['name']] // Set the 'name'
                );
            }

            $this->info('Origins fetched and stored successfully.');
        } else {
            $this->error('Failed to fetch origins.');
        }
    }
}

