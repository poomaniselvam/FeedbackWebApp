<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['id', 'label', 'options'];

    protected $casts = [
        'options' => 'array',
    ];

    public $incrementing = false;
    protected $keyType = 'string';
}
