<?php

namespace App\Filament\Clusters;

use Filament\Clusters\Cluster;

class Inventory extends Cluster
{
    protected static ?string $navigationIcon = 'heroicon-o-square-3-stack-3d';
    protected static ?string $navigationGroup = 'Management Pemasok';
    protected static ?string $activeNavigationIcon = 'heroicon-s-square-3-stack-3d';
    protected static ?string $navigationLabel = 'Inventory';
    protected static ?string $pluralLabel = 'Inventory';
    protected static ?int $navigationSort = 2;
    protected static ?string $slug = 'inventory';
    protected static ?string $clusterBreadcrumb = 'Inventory';
}
