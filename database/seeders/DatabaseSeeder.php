<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {


        // User::create([
        //     'name' => 'Rizal Bagus',
        //     'email' => 'rizalbagus71@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        // User::create([
        //     'name' => 'Dini',
        //     'email' => 'Dini22@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit, aliquam. Nobis, provident recusandae exercitationem natus minus suscipit libero delectus ratione mollitia.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit, aliquam. Nobis, provident recusandae exercitationem natus minus suscipit libero delectus ratione mollitia. Autem provident quisquam molestias rem doloremque itaque, iste laboriosam possimus exercitationem repellat totam, dolore saepe nobis? Cumque similique voluptatum praesentium commodi, quam qui, et ullam harum natus consequuntur asperiores ab, facilis eos cum in dicta facere? Porro reiciendis recusandae culpa eum fugiat fugit eaque quasi adipisci impedit sequi optio cupiditate excepturi vel, non beatae provident facere consequuntur rem nihil blanditiis? Ipsa nostrum cumque velit! Nihil ipsum neque tempora maiores ut mollitia, pariatur quam quas et aut tenetur, placeat excepturi.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit, aliquam. Nobis, provident recusandae exercitationem natus minus suscipit libero delectus ratione mollitia.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit, aliquam. Nobis, provident recusandae exercitationem natus minus suscipit libero delectus ratione mollitia. Autem provident quisquam molestias rem doloremque itaque, iste laboriosam possimus exercitationem repellat totam, dolore saepe nobis? Cumque similique voluptatum praesentium commodi, quam qui, et ullam harum natus consequuntur asperiores ab, facilis eos cum in dicta facere? Porro reiciendis recusandae culpa eum fugiat fugit eaque quasi adipisci impedit sequi optio cupiditate excepturi vel, non beatae provident facere consequuntur rem nihil blanditiis? Ipsa nostrum cumque velit! Nihil ipsum neque tempora maiores ut mollitia, pariatur quam quas et aut tenetur, placeat excepturi.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit, aliquam. Nobis, provident recusandae exercitationem natus minus suscipit libero delectus ratione mollitia.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit, aliquam. Nobis, provident recusandae exercitationem natus minus suscipit libero delectus ratione mollitia. Autem provident quisquam molestias rem doloremque itaque, iste laboriosam possimus exercitationem repellat totam, dolore saepe nobis? Cumque similique voluptatum praesentium commodi, quam qui, et ullam harum natus consequuntur asperiores ab, facilis eos cum in dicta facere? Porro reiciendis recusandae culpa eum fugiat fugit eaque quasi adipisci impedit sequi optio cupiditate excepturi vel, non beatae provident facere consequuntur rem nihil blanditiis? Ipsa nostrum cumque velit! Nihil ipsum neque tempora maiores ut mollitia, pariatur quam quas et aut tenetur, placeat excepturi.',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit, aliquam. Nobis, provident recusandae exercitationem natus minus suscipit libero delectus ratione mollitia.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit, aliquam. Nobis, provident recusandae exercitationem natus minus suscipit libero delectus ratione mollitia. Autem provident quisquam molestias rem doloremque itaque, iste laboriosam possimus exercitationem repellat totam, dolore saepe nobis? Cumque similique voluptatum praesentium commodi, quam qui, et ullam harum natus consequuntur asperiores ab, facilis eos cum in dicta facere? Porro reiciendis recusandae culpa eum fugiat fugit eaque quasi adipisci impedit sequi optio cupiditate excepturi vel, non beatae provident facere consequuntur rem nihil blanditiis? Ipsa nostrum cumque velit! Nihil ipsum neque tempora maiores ut mollitia, pariatur quam quas et aut tenetur, placeat excepturi.',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
