<?php

namespace App\Services;

use App\Models\Sale;

class SalesService
{
    public function createSale($data)
    {
        return Sale::create($data);
    }

    public function updateSale(Sale $sale, $data)
    {
        return $sale->update($data);
    }

    public function deleteSale(Sale $sale)
    {
        return $sale->delete();
    }
}
