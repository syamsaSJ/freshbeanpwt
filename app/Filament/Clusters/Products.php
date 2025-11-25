<?php

namespace App\Filament\Clusters;

use Filament\Clusters\Cluster;

class Products extends Cluster
{
    protected static ?string $navigationIcon = 'heroicon-o-squares-2x2';
    protected static ?string $navigationGroup = 'Shop';
    protected static ?string $activeNavigationIcon = 'heroicon-s-squares-2x2';
    protected static ?string $navigationLabel = 'Product';
    protected static ?string $pluralLabel = 'Product';
    protected static ?int $navigationSort = 1;
    protected static ?string $slug = 'shop';
    protected static ?string $clusterBreadcrumb = 'Product';
}
