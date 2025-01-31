<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
{
    Schema::create('transactions', function (Blueprint $table) {
        $table->id();
        $table->foreignId('customer_id')->constrained('customers'); // Link to customers
        $table->foreignId('product_id')->constrained('products'); // Link to products
        $table->integer('quantity'); // Quantity sold
        $table->decimal('total_price', 10, 2); // Total price
        $table->timestamps();
    });
}

public function down()
{
    Schema::dropIfExists('transactions');
}

};
