<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
class tbl_admin_seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('tbl_admin')->truncate();

        $admin= array();
        $admin['admin_id'] = '1';
        $admin['admin_email'] = 'masesenegal@gmail.com';
        $admin['admin_password'] = hash::make('Mase@base#12345');
        $admin['admin_structure'] = null;
        $admin['admin_phone'] = '+221781578366';
        $admin['admin_role'] = '1';
        $admin['admin_status'] = '1';
        $admin['user_role'] = null;
        $admin['admin_prenom'] = 'Mase sénégal';
        $admin['token'] = '';
        $admin['admin_image'] = 'image/mase.png';


        DB::table('tbl_admin')->insert($admin);
    }
}
