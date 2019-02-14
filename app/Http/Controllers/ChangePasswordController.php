<?php

namespace App\Http\Controllers;


use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ChangePasswordController extends Controller
{
    public function update(Request $request, $id){
        $user = User::findOrFail($id);

        $request->validate([
            'nueva_clave' => 'required|min:5|max:30',
            'confirmar_clave' => 'required|same:nueva_clave',
        ]);

        DB::beginTransaction();
        try{
            $user->password = bcrypt($request->input('nueva_clave'));
            $user->save();
            $data['result'] = 'success';
            DB::commit();
        } catch (\exception $e){
            $data['result'] = "error";
            $error_save = $e->getMessage();
            DB::rollback();
        }

        echo json_encode($data);
    }
}