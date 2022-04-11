<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        //get random name
        $json = file_get_contents(base_path() . "/names.json");
        $array = json_decode($json, true);

        DB::table("users")->insert([
            'first_name' => 'admin',
            'last_name' => 'User',
            'email' => 'admin@test.com',
            'is_admin' => 1,
            'password' => bcrypt("password"),
        ]);

        // foreach (range(1, 50) as $item) {
        //     $fname =  Str::lower($array[rand(0, count($array) - 1)]);
        //     $lname =  Str::lower($array[rand(0, count($array) - 1)]);
        // }

        DB::table("users")->insert([
            'first_name' => 'sara',
            'last_name' => 'User',
            'email' => 'sara@test.com',
            'password' => bcrypt("password"),
        ]);
    }
}
