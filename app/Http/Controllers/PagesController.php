<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function index(){
        $data = array(
            'title' => 'FardLab - Main Page'
        );
        return view('main_front_end.home')->with($data);
    }
    public function people(){
        $data = array(
            'title' => 'People',
            'studs' => ['Mohammad A Hadi', 'Rishab Sharma', 'Ramin Shahbaji', 'Mohamad Khajezade']
        );
        return view('showcase.people')->with($data);        
    }
    public function person(){
        $data = array(
            'title' => 'Person'
        );
        return view('team.member')->with($data);        
    }
    public function projects(){
        $data = array(
            'title' => 'Projects',
            'projects' => ['Project 1', 'Project 2', 'Project 3', 'Project 4']
        );
        return view('showcase.projects')->with($data);        
    }
    public function papers(){
        $data = array(
            'title' => 'Papers',
            'papers' => ['Paper 1', 'Paper 2', 'Paper 3', 'Paper 4']
        );
        return view('showcase.papers')->with($data);
    }
}