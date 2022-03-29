<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TourRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => ['required', 'string'],
            'description' => ['required', 'string'],
            'city' => ['required', 'string'],
            'location' => ['required', 'string'],
            'image_cover' => ['image', $this->isMethod('PUT') ? 'nullable' : 'required'],
            'ticket_price' => ['required', 'integer'],
        ];
    }
}
