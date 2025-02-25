<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up()
    {
        Schema::table('products', function (Blueprint $table) {
            if (!Schema::hasColumn('products', 'product_type')) {
                $table->string('product_type')->nullable()->after('description');
            }
            if (!Schema::hasColumn('products', 'stock_status')) {
                $table->string('stock_status')->nullable()->after('quantity');
            }
            if (!Schema::hasColumn('products', 'account')) {
                $table->string('account')->nullable()->after('stock_status');
            }
            if (!Schema::hasColumn('products', 'tax')) {
                $table->string('tax')->nullable()->after('account');
            }
            if (!Schema::hasColumn('products', 'lead_time')) {
                $table->string('lead_time')->nullable()->after('tax');
            }
            if (!Schema::hasColumn('products', 'cost_price')) {
                $table->decimal('cost_price', 10, 2)->nullable()->after('lead_time');
            }
            if (!Schema::hasColumn('products', 'purchase_account')) {
                $table->string('purchase_account')->nullable()->after('cost_price');
            }
            if (!Schema::hasColumn('products', 'preferred_vendor')) {
                $table->string('preferred_vendor')->nullable()->after('purchase_account');
            }
            if (!Schema::hasColumn('products', 'fixed_transport')) {
                $table->decimal('fixed_transport', 10, 2)->nullable()->after('preferred_vendor');
            }
            if (!Schema::hasColumn('products', 'local_transport')) {
                $table->decimal('local_transport', 10, 2)->nullable()->after('fixed_transport');
            }
            if (!Schema::hasColumn('products', 'air_transport')) {
                $table->decimal('air_transport', 10, 2)->nullable()->after('local_transport');
            }
            if (!Schema::hasColumn('products', 'sea_transport')) {
                $table->decimal('sea_transport', 10, 2)->nullable()->after('air_transport');
            }
            if (!Schema::hasColumn('products', 'preferred_transport')) {
                $table->string('preferred_transport')->nullable()->after('sea_transport');
            }
        });
    }


    public function down()
{
    Schema::table('products', function (Blueprint $table) {
        if (Schema::hasColumn('products', 'product_type')) {
            $table->dropColumn('product_type');
        }
        if (Schema::hasColumn('products', 'units')) {
            $table->dropColumn('units');
        }
        if (Schema::hasColumn('products', 'selling_price')) {
            $table->dropColumn('selling_price');
        }
        if (Schema::hasColumn('products', 'currency')) {
            $table->dropColumn('currency');
        }
        if (Schema::hasColumn('products', 'quantity')) {
            $table->dropColumn('quantity');
        }
    });
}

};
