@extends('layouts.my_app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"><h1>{{ __('Dashboard') }}</h1></div>
                
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    @if (count($images) > 0)
                        <div class="row">
                            <div class="col-sm-7 col-md-7">
                              {{ __('You are logged in! Your uploaded Images and their Links can be found below.') }}
                            </div>
                            <div class="col-md-0 text-end">
                              {!! Form::open(['action' => 'App\Http\Controllers\DashboardController@store' , 'method' => 'POST', 'enctype' => 'multipart/form-data']) !!}
                                  {{Form::file('new_image')}}
                                  {{Form::submit('Upload Image', ['class'=>'btn btn-outline-dark btn-sm me-2'])}}
                              {!! Form::close() !!}
                            </div>
                        </div>
                        <br>
                        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                          <ol class="carousel-indicators">
                            @foreach($images as $key => $image)
                              <!-- <?php echo $key, $image ?> -->
                              @if ($key == 0)
                                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>      
                              @else
                              <li data-target="#carouselExampleCaptions" data-slide-to="{{$key}}"></li>
                              @endif
                            @endforeach
                          </ol>
                          <div class="carousel-inner">
                            @foreach($images as $key => $image)
                                @if ($key == 0)
                                  <div class="carousel-item active">
                                @else
                                  <div class="carousel-item">
                                @endif
                                <img src="/storage/cover_images/{{$image->image_name}}" class="d-block w-100" alt="{{$image->image_name}}">
                                <div class="carousel-caption d-none d-md-block">
                                  <div class="row">
                                    <div class="col-sm-9 col-md-9">
                                      <button type="button" class="btn btn-light" id="text{{$key}}">http://lab.me/storage/cover_images/{{$image->image_name}}</button>
                                    </div>
                                    <div class="col-sm-2 col-md-2">
                                      <button type="button" class="btn btn-dark" onclick="copyToClipboard('#text{{$key}}')">Copy Link</button>
                                    </div>
                                    <div class="col-sm-1 col-md-1">
                                      {!!Form::open(['action' => ['App\Http\Controllers\DashboardController@destroy', $image->id], 'method' => 'POST', 'class' => 'pull-right'])!!}
                                          {{Form::hidden('_method', 'DELETE')}}
                                          {{Form::submit('Delete!', ['class' => 'btn btn-danger'])}}
                                      {!!Form::close()!!}
                                    </div>
                                  </div>
                                </div>
                              </div>
                            @endforeach
                          </div>
                          <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                          </a>
                          <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                          </a>
                        </div>
                      </div>
                    @else
                    <div class="row">
                        <div class="col-sm-7 col-md-7">
                          {{ __('You are logged in! You have not uploaded any Image yet.') }}
                        </div>
                        <div class="col-md-0 text-end">
                          
                        </div>
                    </div>
                    @endif
                    
                  
              </div>
          </div>
    </div>
</div>

@endsection
