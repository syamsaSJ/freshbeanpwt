<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('kode')->unique();
            $table->string('name');
            $table->unsignedBigInteger('origin_id');
            $table->unsignedBigInteger('roats_level_id');
            $table->unsignedBigInteger('category_id');
            $table->integer('weight');
            $table->string('satuan');
            $table->decimal('price', 10, 2);
            $table->string('description');
            $table->timestamps();

            // Foreign keys
            $table->foreign('origin_id')->references('id')->on('origins')->onDelete('cascade');
            $table->foreign('roats_level_id')->references('id')->on('roats_levels')->onDelete('cascade');
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
