<?php

namespace App\Models;

use App\Models\Scopes\PostdetailScope;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    public function categories()
    {
        return $this->belongsToMany(Category::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function scopeActive($query,$value)
    {
        return $query->whereStatus($value);
    }

    // public function scopePostDetail($query)
    // {
    //     $query->with('user:id,name','categories:id,name');
    // }

    // protected static function booted()                                       //Global scope 1st tarika
    // {
    //     static::addGlobalScope('postdetail', function(Builder $builder){
    //         $builder->with('user:id,name','categories:id,name');
    //     });
    // }

    protected static function booted()                                         //Global scope 2nd tarika
    {
        static::addGlobalScope(new PostdetailScope);
    }
}
