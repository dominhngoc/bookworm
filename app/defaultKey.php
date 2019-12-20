<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class defaultKey extends Model
{
    protected $table='defaultkey';
    public function user(){
        return $this->belongsTo('App\user','id_user','id');
    }
}
