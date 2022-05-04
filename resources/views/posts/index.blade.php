@extends('layouts.my_app')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            <div class="row">
                @guest
                    <div class="col-12"><h1>Posts</h1></div>
                @else
                    <div class="col-10"><h1>Posts</h1></div>
                    <div class="col-0">
                        <a class="btn btn-outline-primary btn-lg" href="/posts/create">
                            <i class="fa fa-feather"></i>
                            Create Post
                        </a>
                    </div>
                @endguest
            </div>
        </div>
    @if(count($posts) > 0)
        @foreach($posts as $post)
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-4 col-md-4">
                            <a href="/posts/{{$post->id}}">
                                <img style="width:100%" src="/storage/cover_images/{{$post->cover_image}}">
                            </a>
                        </div>
                        <div class="col-sm-8 col-md-8">
                            <h3><a href="/posts/{{$post->id}}">{{$post->title}}</a></h3>
                            <h5>Written on {{$post->created_at}}</h5>
                            @foreach ($users as $user)
                                @if ($user->id == $post->id)
                                    <h5>Created by: {{$user->name}}</h5>
                                @endif
                            @endforeach
                        </div>
                    </div>
                </div>
            
        @endforeach
        </div>
        <br>
        {{$posts->links()}}
    @else
        <p>No posts found</p>
    @endif

</div>
@endsection