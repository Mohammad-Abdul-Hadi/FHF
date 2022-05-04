<div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <button type="button" class="btn btn-outline-primary me-2">
          FardLab
        </button>
        <!--<svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>-->
      </a>

      <ul class="nav col-11 col-md-auto mb-2 justify-content-center mb-md-0">
        <div class="btn-group" role="group" aria-label="Basic example">
          <!--
          <button type="button" class="btn btn-outline-dark"><a href="/people">People</a></button>
          <button type="button" class="btn btn-outline-dark"><a href="/papers" class="text-decoration-none">Papers</a></button>
          <button type="button" class="btn btn-outline-dark"><a href="/projects" class="text-decoration-none">Projects</a></button>
          <button type="button" class="btn btn-outline-dark"><a href="/posts" class="text-decoration-none">Blog</a></button>
          -->
          <a href="/people" class="btn btn-outline-dark" role="button" aria-pressed="true">People</a>
          <a href="/papers" class="btn btn-outline-dark" role="button" aria-pressed="true">Papers</a>
          <a href="/projects" class="btn btn-outline-dark" role="button" aria-pressed="true">Projects</a>
          <a href="/posts" class="btn btn-outline-dark" role="button" aria-pressed="true">Blog</a>
          <a href="" class="btn btn-outline-dark" role="button" aria-pressed="true">Tools</a>
        </div>
<!--
        <li><a href="/people" class="nav-link px-2 link-dark">People</a></li>
        <li><a href="/papers" class="nav-link px-2 link-dark">Papers</a></li>
        <li><a href="/projects" class="nav-link px-2 link-dark">Projects</a></li>
        <li><a href="/posts" class="nav-link px-2 link-dark">Blog</a></li>
-->      
      </ul>
      
      <div class="col-md-1">
      </div>
      <div class="col-md-0 text-end">
        <!--<a href="/login"><button type="button" class="btn btn-outline-primary me-2">Login</button></a>
        <a href="/register"><button type="button" class="btn btn-primary">Sign-up</button></a>-->

        @guest
            @if (Route::has('login'))
                <a href="{{ route('login') }}">
                  <button type="button" class="btn btn-outline-primary me-2">
                    {{ __('Login') }}
                  </button>
                </a>
            @endif
            <!--
            @if (Route::has('register'))
                    <a href="{{ route('register') }}">
                      <button type="button" class="btn btn-primary me-2">
                        Sign-up
                      </button>
                    </a>
            @endif
            -->
        @else
            <div class="btn-group">
              <button type="button" class="btn btn-success">{{ Auth::user()->name }}</button>
              <button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
                <span class="visually-hidden"></span>
              </button>
              <ul class="dropdown-menu">
                <li>
                  <a class="dropdown-item" href="{{ route('logout') }}"
                      onclick="event.preventDefault();
                                    document.getElementById('logout-form').submit();">
                      {{ __('Logout') }}
                  </a>
                  <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                      @csrf
                  </form>
                </li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="/dashboard">Dashboard</a></li>
                <li><hr class="dropdown-divider"></li>
                <li>
                  @if (Route::has('register'))
                    <a class="dropdown-item" href="{{ route('register') }}">Add User</a>
                  @endif
                </li>
              </ul>
            </div>
        @endguest
      </div>
    
    </header>
  </div>







