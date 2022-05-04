@extends('layouts.my_app')

@section('content')
    <h1>{{$title}}</h1>
    <p>All People in the lab, picture, short intro.</p>
    @if(count($studs) > 0)
        <ul class="list-group">
            @foreach($studs as $stud)
                <li class="list-group-item"><a href="/person#about">{{$stud}}</a></li>
            @endforeach
        </ul>
    @endif
@endsection
