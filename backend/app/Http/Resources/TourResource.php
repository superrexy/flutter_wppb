<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TourResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'name' => $this->name,
            'slug' => $this->slug,
            'description' => $this->description,
            'city' => $this->city,
            'location' => $this->location,
            'image_cover' => $this->image_cover,
            'price' => [
                'formated_price' => number_format($this->ticket_price, 2, '.', '.'),
                'unformatted_price' => $this->ticket_price,
            ],
        ];
    }
}
