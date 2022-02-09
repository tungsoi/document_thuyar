<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    protected $table = "documents";

    protected $fillable = [
        'category_id',
        'title',
        'file',
        'user_created_at',
        'tags'
    ];

    public function setFileAttribute($file)
    {
        if (is_array($file)) {
            $this->attributes['file'] = json_encode($file);
        }
    }

    public function getFileAttribute($file)
    {
        return json_decode($file, true);
    }
}
