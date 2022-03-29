<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tour extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'slug',
        'description',
        'city',
        'location',
        'image_cover',
        'ticket_price',
    ];

    public function getRouteKeyName()
    {
        return 'slug';
    }
}
