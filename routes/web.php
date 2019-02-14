<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/add','TryController@newForm');
Route::post('/add','TryController@createForm');
Route::get('/addlist','TryController@formList');

Route::get('/', function () {
    return view('front.index');
});

// Route::get('/post','PostController@allPost');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

//Route::get('/{anypath}', 'HomeController@index')->where('path','.*');


//category
Route::post('/ca','CategoryController@createCategory');
Route::get('/cl','CategoryController@CategoryList');
Route::get('/category/{id}','CategoryController@CategoryDelete');
Route::get('/ce/{id}','CategoryController@editCategory');
Route::post('/cu/{id}','CategoryController@updateCategory');

//post
Route::get('/pl','PostController@PostList');
Route::post('/post_add','PostController@createPost');
Route::get('/post/{id}','PostController@PostDelete');
Route::get('/post_edit/{id}','PostController@editPost');
//Route::post('/post_update/{id}','PostController@updatePost');
  Route::post('/update/{id}','PostController@updatePost');

  //blog
  Route::get('/blogpost','BlogController@allblogPost');
    Route::get('/singlepost/{id}','BlogController@singleblogPost');



    //practice
     Route::get('/category_list','CategoryController@allMyCategory');
    Route::post('/add_cat','CategoryController@addMyCategory');
   Route::get('/categorydelete/{id}','CategoryController@deleteCategory');

     Route::get('/categoryedit/{id}','CategoryController@editMyCategory');
     Route::post('/categoryupdate/{id}','CategoryController@updateMyCategory');

     Route::get('/mypost','PostController@allMypost');
     Route::post('/mypost','PostController@createallMypost');