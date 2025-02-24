<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
{
    Schema::create('products', function (Blueprint $table) {
        $table->id();
        $table->string('name');
        $table->text('description')->nullable();
        $table->string('product_type');
        $table->string('units');
        $table->decimal('selling_price', 10, 2);
        $table->string('currency');
        $table->integer('quantity');
        $table->string('stock_status');
        $table->string('account');
        $table->string('tax');
        $table->string('lead_time');
        $table->decimal('cost_price', 10, 2);
        $table->string('purchase_account');
        $table->string('preferred_vendor')->nullable();
        $table->decimal('fixed_transport', 10, 2)->nullable();
        $table->decimal('local_transport', 10, 2)->nullable();
        $table->decimal('air_transport', 10, 2)->nullable();
        $table->decimal('sea_transport', 10, 2)->nullable();
        $table->string('preferred_transport')->nullable();
        $table->timestamps();
    });
}


    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
};


