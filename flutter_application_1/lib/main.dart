<?import 'package:flutter/material.dart';

Php

namespace App\Http\Controllers;

use App\Models\Users;
use Illuminate\supoort\facades\Validator;
use Illuminate\HttpRequest;
use Illuminate\Http\Support\Facades\Hash;


class AuthController extends Controller
{
  //
  Function Register(Request $req){

    try{
      // code...
      $validasi = Validator::make($req->all(

      ), [
        'name' => 'required|string|',
        'email' => required|email|unique:users',
        'password' => 'required|min:8',
        ]);

        if($validasi->fails()){
          return response()->json($validasi->errors(), 422);
        }

        $cre = new User();
        $cre->name = $req->name;
        $cre->password = Hash:: make($)
      ]
    }
  }
}

Function login (request $req) {
  //

  $user =  user:: where('email', $req-> email)->first();
  if ($user !=null && Hash::check($req->password, $user->password)){
    $token = $user->createtoken ('Personal Token')->plainTextToken;
    $response = [
      'success'=> true,
      'status'=>200,
      'token'=> $token,
      'message'=> ' login Sukses!'
      'data' => $user
    ];
    return response()->json ($response);
  }elseif ($user==null){
    $response = [
      'success' => false,
      'status' =>500,
      'message' => 'Akun Tidak ditemukan!',
    ];
    return response()->json($response);
  }else{
    $response = [
      'success' => false,
      'status' =>500,
      'message' => 'Email atau Password Salah!',
    ];
    return response*()->json($response);
    ]
  }
    ]
  }
  }
}