<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use DB;
class CategoryController extends Controller
{

    public function addMyCategory(Request $request){
      $category=new Category();
      $category->cat_name=$request->cat_name;
      $category->save();
      return response()->json(['message'=>'OK']);
    }

    public function allMyCategory(){
        $categories=Category::all();
        return response()->json([
            'categories'=>$categories
        ]);
    }

    public function editMyCategory($id){
        $category=Category::find($id);
         return response()->json([
            'category'=>$category
        ]);
    }

    public function updateMyCategory(Request $request,$id){
        
        $category=Category::find($id);
        $category->cat_name=$request->cat_name;
        $category->save();
    }


    public function deleteCategory($id){
        $category=Category::find($id);
        $category->delete();
    }






    public function createCategory(Request $request){
    	//return $request->all();

    	$this->validate($request,[
         'cat_name'=>'required'
    	]);
    	$category=new Category();
    	$category->cat_name=$request->cat_name;
    	$category->save();
    	return $category;
    }

    public function CategoryList(){
    	$categories=Category::all();
    	return response()->json([
            'categories'=>$categories
    	]);
    }


    public function CategoryDelete($id){
    	 $category=Category::find($id);
    	 $category->delete();
    }

    public function editCategory($id){
    	//return $id;
    	$category=Category::find($id);
    	return response()->json([
            'category'=>$category
    	]);
    }


    public function updateCategory(Request $request,$id){
    		$this->validate($request,[
         'cat_name'=>'required'
    	]);
    	$category=Category::find($id);
    	$category->cat_name=$request->cat_name;
    	$category->save();
    }
}
