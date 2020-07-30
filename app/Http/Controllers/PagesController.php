<?php

namespace App\Http\Controllers;
use App\Product;
use Illuminate\Http\Request;

class PagesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         return view('index');
    }

    public function products()
    {
        $product = Product::orderBy('id','desc')->get();
        return view('pages.product.index')->with('products',$product);
    }
    
}
