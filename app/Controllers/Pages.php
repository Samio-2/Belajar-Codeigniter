<?php

namespace App\Controllers;


class Pages extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Home | Web Sami'
        ];
        return view('pages/home', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'About Me'
        ];
        return view('pages/about', $data);
    }

    public function contact()
    {
        $data = [
            'title' => 'Contacts Us',
            'alamat' => [
                [
                    'tipe' => 'Rumah',
                    'alamat' => 'BPA No 12',
                    'kota' => 'Tangerang'
                ],
                [
                    'tipe' => 'Kampus',
                    'alamat' => 'UIN No 13',
                    'kota' => 'Tangsel'
                ]
            ]
        ];
        return view('pages/contact', $data);
    }
}
