<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\Post;
use DB;

class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        # $posts = Post::all();
        # $posts = Post::where('title', 'Post One')->get();
        # $posts = Post::orderBy('title', 'asc')->get();
        # $posts = Post::orderBy('title', 'asc')->take(1)->get();
        # $posts = DB::select('SELECT * FROM posts');
        
        $posts = Post::orderBy('created_at', 'desc')->paginate(7);
        $users = Post::join('users', 'users.id', '=', 'posts.user_id')
              		->get(['users.name', 'posts.id']);
        return view('posts.index')
                ->with('posts', $posts)
                ->with('users', $users);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'body' => 'required',
            'cover_image' => 'image|nullable|max:1999'
        ]);

        // Handle file Upload
        if($request->hasFile('cover_image')){
            // Get file name with extension
            $fileNameWithExt = $request->file('cover_image')->getClientOriginalName();
            // Get just file name
            $fileName = pathInfo($fileNameWithExt, PATHINFO_FILENAME);
            // Get just extension
            $extension = $request->file('cover_image')->getClientOriginalExtension();
            // File Name to store
            $fileNameToStore = $fileName.'_'.time().'.'.$extension;
            // Upload Image
            $path = $request->file('cover_image')->storeAs('public/cover_images', $fileNameToStore);
        } else{
            $fileNameToStore = 'noImage.jpg';
        }

        // Create Post
        $post = new Post;
        $post->title = $request->input('title');
        $post->body = $request->input('body');
        $post->user_id = auth()->user()->id;
        $post->cover_image = $fileNameToStore;
        $post->save();

        return redirect('/posts')->with('success', 'Post Created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = Post::find($id);
        $user = Post::join('users', 'users.id', '=', 'posts.user_id')
                    ->where('posts.id', '=', $id)
              		->get(['users.name', 'users.id']);
        return view('posts.show')
                ->with('post', $post)
                ->with('user', $user[0]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Post::find($id);
        return view('posts.edit') -> with('post', $post);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'title' => 'required',
            'body' => 'required'
            # 'cover_image' => 'image|nullable|max:1999'
        ]);

        // Handle file Upload
        if($request->hasFile('cover_image')){
            // Get file name with extension
            $fileNameWithExt = $request->file('cover_image')->getClientOriginalName();
            // Get just file name
            $fileName = pathInfo($fileNameWithExt, PATHINFO_FILENAME);
            // Get just extension
            $extension = $request->file('cover_image')->getClientOriginalExtension();
            // File Name to store
            $fileNameToStore = $fileName.'_'.time().'.'.$extension;
            // Upload Image
            $path = $request->file('cover_image')->storeAs('public/cover_images', $fileNameToStore);
        }

        // Create Post
        $post = Post::find($id);
        $post->title = $request->input('title');
        $post->body = $request->input('body');
        if($request->hasFile('cover_image')){
            $post->cover_image = $fileNameToStore;
        }
        $post->save();

        return redirect('/posts')->with('success', 'Post Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::find($id);
        if($post->cover_image != 'noImage.jpg'){
            // Delete Image
            Storage::delete('public/cover_images/'.$post->cover_image);
        }
        $post->delete();
        return redirect('/posts')->with('success', 'Post Removed');
    }
}
