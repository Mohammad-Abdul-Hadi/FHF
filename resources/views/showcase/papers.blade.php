@extends('layouts.my_app')

@section('content')
    <h1>{{$title}}</h1>
    <p>All about, people, status, timeline, venue/prospective venue, materials, citation instruction</p>
    @if(count($papers) > 0)
        <ul class="list-group">
            @foreach($papers as $paper)
                <li class="list-group-item"><a href="/paper#about">{{$paper}}</a></li>
            @endforeach
        </ul>
    @endif
@endsection
