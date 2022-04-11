<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table("users")->insert([
            'first_name' => 'admin',
            'last_name' => 'User',
            'email' => 'admin@test.com',
            'is_admin' => 1,
            'password' => bcrypt("password"),
        ]);

        DB::table("users")->insert([
            'first_name' => 'sara',
            'last_name' => 'User',
            'email' => 'sara@test.com',
            'password' => bcrypt("password"),
        ]);
    }
}
