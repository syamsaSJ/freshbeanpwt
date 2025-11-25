<?php

namespace App\Filament\Imports;

use App\Models\Varian;
use Filament\Actions\Imports\ImportColumn;
use Filament\Actions\Imports\Importer;
use Filament\Actions\Imports\Models\Import;

class VarianImporter extends Importer
{
    protected static ?string $model = Varian::class;

    public static function getColumns(): array
    {
        return [
            ImportColumn::make('product_id')
                ->numeric()
                ->rules(['integer']),
            ImportColumn::make('name')
                ->rules(['max:255']),
        ];
    }

    public function resolveRecord(): ?Varian
    {
        // return Varian::firstOrNew([
        //     // Update existing records, matching them by `$this->data['column_name']`
        //     'email' => $this->data['email'],
        // ]);

        return new Varian();
    }

    public static function getCompletedNotificationBody(Import $import): string
    {
        $body = 'Your varian import has completed and ' . number_format($import->successful_rows) . ' ' . str('row')->plural($import->successful_rows) . ' imported.';

        if ($failedRowsCount = $import->getFailedRowsCount()) {
            $body .= ' ' . number_format($failedRowsCount) . ' ' . str('row')->plural($failedRowsCount) . ' failed to import.';
        }

        return $body;
    }
}
