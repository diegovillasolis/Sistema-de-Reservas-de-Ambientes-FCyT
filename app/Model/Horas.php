<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Horas extends Model
{
    protected $table = 'HORAS';
    protected $primaryKey = 'id_horas';
    public $timestamps = false;

    public function fecha()
    {
        return $this->belongsToMany('App\Model\Fecha', 'HORARIO', 'id_horas', 'id_fecha');
    }
}
