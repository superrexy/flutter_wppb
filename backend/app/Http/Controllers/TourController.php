<?php

namespace App\Http\Controllers;

use App\Http\Requests\TourRequest;
use App\Http\Resources\TourResource;
use App\Models\Tour;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class TourController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        try {
            $tours = TourResource::collection(Tour::get());

            return response()->json([
                'status' => true,
                'message' => 'success get tours',
                'data' => $tours
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th,
            ], 404);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(TourRequest $request)
    {
        $attr = $request->all();

        $attr['slug'] = str()->slug($request->name . ' ' . Str::random(6));
        $images = $request->file('image_cover')->storeAs('image', $request->file('image_cover')->hashName(), 'public');
        $attr['image_cover'] = $images;

        $tour = Tour::create($attr);

        return response()->json([
            'status' => true,
            'message' => 'success create tour',
            'data' => new TourResource($tour)
        ], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Tour  $tour
     * @return \Illuminate\Http\Response
     */
    public function show(Tour $tour)
    {
        try {
            return response()->json([
                'status' => true,
                'message' => 'success get tour',
                'data' => new TourResource($tour)
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th,
            ], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Tour  $tour
     * @return \Illuminate\Http\Response
     */
    public function update(TourRequest $request, Tour $tour)
    {
        $attr = $request->all();

        if ($request->file('image_cover')) {
            Storage::disk('public')->delete($tour->image_cover);
            $images = $request->file('image_cover')->storeAs('image', $request->file('image_cover')->hashName(), 'public');
            $attr['image_cover'] = $images;
        }

        $tour->update($attr);

        return response()->json([
            'status' => true,
            'message' => 'success update tour',
            'data' => new TourResource($tour)
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Tour  $tour
     * @return \Illuminate\Http\Response
     */
    public function destroy(Tour $tour)
    {
        try {
            $tour->delete();

            return response()->json([
                'status' => true,
                'message' => 'success delete tour',
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th,
            ], 404);
        }
    }
}
