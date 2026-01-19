<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    protected $fillable = ['product_id', 'name', 'detail', 'image', 'price'];
}
