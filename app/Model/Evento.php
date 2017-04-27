<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Evento extends Model
{
    protected $table = 'evento';
    protected $primaryKey = 'id_evento';

    public $fillable = [
        'id_reserva', 'id_ambiente', 'tipo'
    ];

    public function peteneceAmbiente()
    {
    	return $this->belongsTo('app/Model/Ambiente');
    }

    public function peteneceReserva()
    {
    	return $this->belongsTo('app/Model/Reserva');
    }
}