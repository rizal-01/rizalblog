@extends('dashboard.layouts.main')

@section('container')
<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
                <h1 class="mb-3">{{ $post->title }}</h1>  
                
                
                <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" class="img-fluid mt-3" alt="">
                
                <article class="my-3 fs-5">
                    {!! $post->body !!}   
                </article>
                
                <a href="/dashboard/posts" class="btn btn-success">Back to my Post</a>
        </div>
    </div>
</div>
@endsection