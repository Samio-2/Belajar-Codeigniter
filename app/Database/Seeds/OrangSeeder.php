<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use CodeIgniter\I18n\Time;

class OrangSeeder extends Seeder
{
    public function run()
    {
        // $data = [
        //     'nama'          => 'Muhammad Sami',
        //     'alamat'        => 'BPA Blok 3',
        //     'created_at'    =>  Time::now('Asia/Jakarta'),
        //     'updated_at'    => Time::now('Asia/Jakarta')
        // ];

        $faker = \Faker\Factory::create('id_ID');

        for ($i = 1; $i < 100; $i++) {
            $data = [
                // 'nama'          => static::faker('id_ID')->name,
                'nama'          => $faker->name(),
                'alamat'        => $faker->address(),
                'created_at'    => Time::createFromTimestamp($faker->unixTime),
                'updated_at'    => Time::now('Asia/Jakarta')
            ];
            $this->db->table('orang')->insert($data);
        }

        // Simple Queries
        // $this->db->query("INSERT INTO orang (nama, alamat, created_at, updated_at) VALUES(:nama:, :alamat:, :created_at:, :updated_at:)", $data);

        // Using Query Builder
        // $this->db->table('orang')->insertBatch($data);
    }
}
