<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up()
    {
        Schema::table('products', function (Blueprint $table) {
            $table->string('product_type')->after('description')->nullable();
            $table->string('units')->after('product_type')->nullable();
            $table->decimal('selling_price', 10, 2)->after('units')->nullable();
            $table->string('currency')->after('selling_price')->nullable();
            $table->integer('quantity')->after('currency')->nullable();
            $table->string('stock_status')->after('quantity')->nullable();
            $table->string('account')->after('stock_status')->nullable();
            $table->string('tax')->after('account')->nullable();
            $table->string('lead_time')->after('tax')->nullable();
            $table->decimal('cost_price', 10, 2)->after('lead_time')->nullable();
            $table->string('purchase_account')->after('cost_price')->nullable();
            $table->string('preferred_vendor')->after('purchase_account')->nullable();
            $table->decimal('fixed_transport', 10, 2)->after('preferred_vendor')->nullable();
            $table->decimal('local_transport', 10, 2)->after('fixed_transport')->nullable();
            $table->decimal('air_transport', 10, 2)->after('local_transport')->nullable();
            $table->decimal('sea_transport', 10, 2)->after('air_transport')->nullable();
            $table->string('preferred_transport')->after('sea_transport')->nullable();
        });
    }

    public function down()
    {
        Schema::table('products', function (Blueprint $table) {
            $table->dropColumn([
                'product_type', 'units', 'selling_price', 'currency',
                'quantity', 'stock_status', 'account', 'tax', 'lead_time',
                'cost_price', 'purchase_account', 'preferred_vendor',
                'fixed_transport', 'local_transport', 'air_transport',
                'sea_transport', 'preferred_transport'
            ]);
        });
    }
};
