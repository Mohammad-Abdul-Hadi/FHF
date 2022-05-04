<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    use HasFactory;

    //Table Name
    protected $table = 'images';
    //Primary Key
    public $primaryKey = 'id';
    //Timestamps
    public $timestamps = true;
}
