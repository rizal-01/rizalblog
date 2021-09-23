<?php

namespace App\Models;


class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Rizal Bagus Pambudi",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quis, sint eaque tenetur molestias ratione iste libero optio corrupti aperiam incidunt quibusdam adipisci perspiciatis soluta enim aliquid excepturi, cupiditate fugit non odit minima earum repellendus? Possimus mollitia reiciendis,"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Rizal Jr",
            "body" => "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Magni sunt illo debitis reprehenderit minus nam molestiae accusamus optio itaque libero autem ullam repellendus iusto, voluptatum beatae"
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
