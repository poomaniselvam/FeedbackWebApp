<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bodycolor extends Model
{
    use HasFactory;

    protected $fillable = ['color_name', 'hex_value'];
}
