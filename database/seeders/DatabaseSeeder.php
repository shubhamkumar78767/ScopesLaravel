<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\{User,Post,Category};
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(3)->create();
        Post::factory(30)->create();
        Category::factory(5)->create();

        $posts = Post::get();
        
        foreach($posts as $post){
            $post->categories()->attach(Category::get()->random()->id);
        }

        
    }
}
