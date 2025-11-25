<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('order_shippings', function (Blueprint $table) {
            $table->unsignedBigInteger('courier_id')->nullable()->after('order_id');
            $table->foreign('courier_id')->references('id')->on('couriers')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('order_shippings', function (Blueprint $table) {
            $table->dropForeign(['couriers_id']);
            $table->dropColumn('couriers_id');
        });
    }
};
