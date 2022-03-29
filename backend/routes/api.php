<?php

use App\Http\Controllers\TourController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::apiResource('tours', TourController::class);
