<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;

class TestController extends Controller
{
    public function LocalScope()
    {
        // $post = Post::active(false)->postDetail()->get();
        // dd  ($post->toArray());

        // $category = Category::first();
        // return $category->posts()->active(false)->postdetail()->get()->toArray();

    }

    public function GlobalScope()
    {
        $post = Post::active(false)->get();
        dd  ($post->toArray());
    }
}
