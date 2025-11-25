<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStokBrngsTable extends Migration
{
    public function up()
    {
        Schema::create('stok_brngs', function (Blueprint $table) {
            $table->id();
            $table->foreignId('product_id')->constrained('products')->onDelete('cascade');
            $table->integer('stokAwal')->default(0);
            $table->integer('stokMasuk')->default(0);
            $table->integer('stokKeluar')->default(0);
            $table->integer('stokTersedia')->default(0);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('stok_brngs');
    }
}

