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
    Schema::create('customers', function (Blueprint $table) {
        $table->id();
        $table->string('name'); // Customer name
        $table->string('email')->unique(); // Customer email
        $table->string('phone')->nullable(); // Phone number
        $table->text('address')->nullable(); // Address
        $table->timestamps();
    });
}

public function down()
{
    Schema::dropIfExists('customers');
}

};
