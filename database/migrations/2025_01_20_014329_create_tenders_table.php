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
    Schema::create('tenders', function (Blueprint $table) {
        $table->id();
        $table->string('title'); // Tender title
        $table->text('description')->nullable(); // Description
        $table->date('deadline'); // Deadline for submission
        $table->decimal('budget', 10, 2)->nullable(); // Budget
        $table->timestamps();
    });
}

public function down()
{
    Schema::dropIfExists('tenders');
}

};
