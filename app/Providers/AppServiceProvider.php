<?php

namespace App\Providers;

use App\Filament\Widgets\NewUserOverview;
use Illuminate\Support\ServiceProvider;
use Filament\Facades\Filament;
use Illuminate\Pagination\Paginator;
use Filament\Notifications\Livewire\DatabaseNotifications;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Paginator::useTailwind();
        DatabaseNotifications::trigger('filament.notifications.database-notifications-trigger');
    }
}
