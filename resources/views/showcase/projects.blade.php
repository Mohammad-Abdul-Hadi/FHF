@extends('layouts.my_app')

@section('content')
    <h1>{{$title}}</h1>
    <p>All about, people, status, timeline, venue/prospective venue, materials, citation instruction</p>
    @if(count($projects) > 0)
        <ul class="list-group">
            @foreach($projects as $project)
                <li class="list-group-item"><a href="/project#about">{{$project}}</a></li>
            @endforeach
        </ul>
    @endif
@endsection
