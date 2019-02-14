<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Product;

class TryController extends Controller
{
    public function newForm(){
        return view('try.add_file');
    }

    public function createForm(Request $request){
        $file=$request->file('my_file');
        $destinationPath = 'attached';
        $Url=$file->move($destinationPath,time().$file->getClientOriginalName());


        $data = array(
            'upload_file'=>$Url,

        );

        //DB::table('products')->insertGetId($data);
        $product=new Product();
        $product->upload_file=$Url;
        $product->save();

    }

    public function formList(){
//        $alldata=DB::table('products')->get();
        $alldata=Product::all();
        return view('try.index',compact('alldata'));
    }
}
