<?php

namespace App\Filament\Clusters;

use Filament\Clusters\Cluster;

class Tokos extends Cluster
{
    protected static ?string $navigationIcon = 'heroicon-o-building-storefront';
    protected static ?string $activeNavigationIcon = 'heroicon-s-building-storefront';
    protected static ?string $navigationGroup = 'Management Toko';
    protected static ?string $navigationLabel = 'Toko';
    protected static ?string $navigationTitle = 'Toko';
    protected static ?string $pluralLabel = 'Toko';
    protected static ?string $clusterBreadcrumb = 'Toko';
    protected static ?string $slug = 'store';
    
}
