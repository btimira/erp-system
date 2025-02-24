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
        Schema::create('suppliers', function (Blueprint $table) {
            $table->id();
            $table->string('name'); // Supplier name
            $table->string('email')->unique(); // Supplier email
            $table->string('phone')->nullable(); // Phone number
            $table->text('address')->nullable(); // Address
            $table->integer('rating')->default(0); // Rating (0-5)
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('suppliers');
    }
};
