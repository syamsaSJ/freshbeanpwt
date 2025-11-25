<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table('products', function (Blueprint $table) {
            // Drop the foreign key constraint
            $table->dropForeign(['varian_id']);

            // Drop the varian_id column
            $table->dropColumn('varian_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('products', function (Blueprint $table) {
            // Add the varian_id column back
            $table->unsignedBigInteger('varian_id')->nullable()->after('origin_id');

            // Re-add the foreign key constraint
            $table->foreign('varian_id')->references('id')->on('varians')->onDelete('set null');
        });
    }
};
