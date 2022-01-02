<?php

namespace App\Controllers;

use App\Models\KomikModel;
use CodeIgniter\CodeIgniter;

class Komik extends BaseController
{
    protected $komikModel;
    public function __construct()
    {
        $this->komikModel = new KomikModel();
    }

    // Tampilkan Data Mulai
    public function index()
    {
        $data = [
            'title' => 'Daftar Komik',
            'komik' => $this->komikModel->getKomik()
        ];

        return view('komik/index', $data);
    }
    // Tampilkan Data Selesai

    // Tampilkan Detail Data Mulai
    public function detail($slug)
    {
        $data = [
            'title' => 'Daftar Komik',
            'komik' => $this->komikModel->getKomik($slug)
        ];
        // Cek Komik
        if (empty($data['komik'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul komik ' . $slug . ' tidak ditemukan');
        }

        return view('komik/detail', $data);
    }
    // Tampilkan Detail Data Selesai

    // Form Tambah Data Mulai
    public function create()
    {
        $data = [
            'title' => 'Form Tambah Data Komik',
            'validation' => \Config\Services::validation()
        ];

        return view('komik/create', $data);
    }
    // Form Tambah Data Selesai

    // Tambah Data ke Database Mulai
    public function insert()
    {
        if (!$this->validate([
            'judul' => [
                'rules' => 'required|is_unique[komik.judul]',
                'errors' => [
                    'required' => 'Judul harus diisi',
                    'is_unique' => 'Judul sudah terdaftar, gunakan judul lain'
                ]
            ],
            'penulis' => [
                'rules' => 'required[komik.penulis]',
                'errors' => [
                    'required' => 'Penulis harus diisi'
                ]
            ],
            'penerbit' => [
                'rules' => 'required[komik.penerbit]',
                'errors' => [
                    'required' => 'Penerbit harus diisi'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Gambar tidak boleh lebih dari 1 Mb',
                    'is_image' => 'File bukan gambar',
                    'mime_in' => 'File bukan gambar'
                ]
            ]
        ])) {
            return redirect()->to('/komik/create')->withInput();
        }

        // Ambil Gambar
        $fileSampul = $this->request->getFile('sampul');

        // Apakah ada gambar yang dipilih?
        if ($fileSampul->getError() == 4) {
            $namaSampul = 'default.jpg';
        } else {
            // Generate nama sampul
            $namaSampul = $fileSampul->getRandomName();
            //Pindahkan ke folder
            $fileSampul->move('img', $namaSampul);
        }

        // Membuat Slug
        $slug = url_title($this->request->getVar('judul'), '-', true);

        $this->komikModel->insert([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data berhasil ditambahkan');

        return redirect()->to('/komik');
    }
    // Tambah Data ke Database Selesai

    // Hapus Data ke Database Mulai
    public function delete($id)
    {
        $komik = $this->komikModel->find($id);

        if ($komik['sampul'] != 'default.jpg') {
            // Hapus gambar
            unlink('img/' . $komik['sampul']);
        }

        $this->komikModel->delete($id);

        session()->setFlashdata('pesan', 'Data berhasil dihapus');
        return redirect()->to('/komik');
    }
    // Hapus Data ke Database Selesai

    // Form Edit Data Mulai
    public function edit($slug)
    {
        $data = [
            'title' => 'Form Tambah Data Komik',
            'validation' => \Config\Services::validation(),
            'komik' => $this->komikModel->getKomik($slug)
        ];

        return view('komik/edit', $data);
    }
    // Form Edit Data Selesai

    // Edit Data ke Database Mulai
    public function update($id)
    {

        // Cek Judul
        $komikLama = $this->komikModel->getKomik($this->request->getVar('slug'));
        if ($komikLama['judul'] == $this->request->getVar('judul')) {
            $rules = 'required';
        } else {
            $rules = 'required|is_unique[komik.judul]';
        }

        if (!$this->validate([
            'judul' => [
                'rules' => $rules,
                'errors' => [
                    'required' => 'Judul harus diisi',
                    'is_unique' => 'Judul sudah terdaftar, gunakan judul lain'
                ]
            ],
            'penulis' => [
                'rules' => 'required[komik.penulis]',
                'errors' => [
                    'required' => 'Penulis harus diisi'
                ]
            ],
            'penerbit' => [
                'rules' => 'required[komik.penerbit]',
                'errors' => [
                    'required' => 'Penerbit harus diisi'
                ]
            ],
            // 'sampul' => [
            //     'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
            //     'errors' => [
            //         'max_size' => 'Gambar tidak boleh lebih dari 1 Mb',
            //         'is_image' => 'File bukan gambar',
            //         'mime_in' => 'File bukan gambar'
            //     ]
            // ]
        ])) {
            return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput();
        }

        // Ambil Gambar
        $fileSampul = $this->request->getFile('sampul');
        $sampulLama = $this->request->getVar('sampulLama');
        // Apakah ada gambar yang dipilih?
        if ($fileSampul->getError() == 4) {
            $namaSampul = $sampulLama;
        } else {
            // Generate nama sampul
            $namaSampul = $fileSampul->getRandomName();
            //Pindahkan ke folder
            $fileSampul->move('img', $namaSampul);
            // Hapus gambar lama
            if ($sampulLama != 'default.jpg') {
                // Hapus gambar
                unlink('img/' . $sampulLama);
            }
        }

        $slug = url_title($this->request->getVar('judul'), '-', true);

        $this->komikModel->save([
            'id' => $id,
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data berhasil diubah');

        return redirect()->to('/komik');
    }
}
    // Edit Data ke Database Selesai
