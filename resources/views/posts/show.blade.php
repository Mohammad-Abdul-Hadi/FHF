@extends('layouts.my_app')

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-10">
                        <h1>{{$post->title}}</h1>
                    </div>
                    <div class="col-2">
                        <a class="btn btn-outline-primary btn-lg" href="/posts">
                            <i class="fa fa-jedi"></i>
                            All Posts
                        </a>
                    </div>
                </div>
            </div>
                <img style="width:100%" src="/storage/cover_images/{{$post->cover_image}}">
            <br>
            <div class="card-body">
                {!!$post->body!!}
            </div>
        </div>
    </div>
    <br>
    <small>Written on {{$post->created_at}};<br> Created by {{$user->name}}</small>
    
    @if (auth()->user()->id == $user->id)
        <hr>
        <div class="row">
            <div class="col-11"><a class="btn btn-outline-primary btn-md" href="/posts/{{$post->id}}/edit">Edit Post</a></div>
            <div class="col-1">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModalCenter">
                    Delete
                </button>
            </div>
        </div>
    @endif
    <br><br>

    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Seriously?</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <div class="modal-body">
                Remember all the blood and sweat you have sacrificed while creating the masterful post!!!
                <br>
                Why not Edit the post, mate? The Edit button is just on the other side of the panel.
                <br>
                Please Reconsider! For God's sake!
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                {!!Form::open(['action' => ['App\Http\Controllers\PostsController@destroy', $post->id], 'method' => 'POST', 'class' => 'pull-right'])!!}
                    {{Form::hidden('_method', 'DELETE')}}
                    {{Form::submit('Delete It!', ['class' => 'btn btn-danger'])}}
                {!!Form::close()!!}
            </div>
        </div>
        </div>
    </div>
@endsection



  
