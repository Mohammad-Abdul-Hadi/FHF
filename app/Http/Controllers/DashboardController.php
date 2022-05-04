<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\Image;
use DB;

class DashboardController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $images = Image::where('user_id', auth()->user()->id)->orderBy('created_at', 'desc')->get();
        return view('dashboard')->with('images', $images);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'new_image' => 'image|nullable|max:1999'
        ]);

        // Handle file Upload
        if($request->hasFile('new_image')){
            // Get file name with extension
            $fileNameWithExt = $request->file('new_image')->getClientOriginalName();
            // Get just file name
            $fileName = pathInfo($fileNameWithExt, PATHINFO_FILENAME);
            // Get just extension
            $extension = $request->file('new_image')->getClientOriginalExtension();
            // File Name to store
            $fileNameToStore = $fileName.'_'.time().'.'.$extension;
            // Upload Image
            $path = $request->file('new_image')->storeAs('public/cover_images', $fileNameToStore);
        } else{
            $fileNameToStore = 'noImage.jpg';
        }

        // Create Post
        $image = new Image;
        $image->user_id = auth()->user()->id;
        $image->image_name = $fileNameToStore;
        $image->save();

        return redirect('/dashboard')->with('success', 'Image Uploaded');
    }

    public function destroy($id)
    {
        $image = Image::find($id);
        if($image->image_name != 'noImage.jpg'){
            // Delete Image
            Storage::delete('public/cover_images/'.$image->image_name);
        }
        $image->delete();
        return redirect('/dashboard')->with('success', 'Image Removed');
    }

}
