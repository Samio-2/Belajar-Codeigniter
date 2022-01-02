<?php

namespace App\Controllers;

use App\Models\OrangModel;
use CodeIgniter\CodeIgniter;

class Orang extends BaseController
{
    protected $orangModel;
    public function __construct()
    {
        $this->orangModel = new OrangModel();
    }

    // Tampilkan Data Mulai
    public function index()
    {
        $currentPage = $this->request->getVar('page_orang') ? $this->request->getVar('page_orang') : 1;
        $page = 7;

        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $orang = $this->orangModel->search($keyword);
        } else {
            $orang = $this->orangModel;
        }

        $data = [
            'title' => 'Daftar Orang',
            // 'orang' => $this->orangModel->findAll()
            'orang' => $orang->paginate($page, 'orang'),
            'pager' => $this->orangModel->pager,
            'currentPage' => $currentPage,
            'page' => $page
        ];

        return view('orang/index', $data);
    }
    // Tampilkan Data Selesai

}
