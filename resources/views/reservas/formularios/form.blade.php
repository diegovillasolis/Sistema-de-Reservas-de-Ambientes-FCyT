<div class="">
	<div class="modal fade" id="formularioReserva" role="dialog">
		<div class="modal-dialog">
		    <div class="modal-content">
		      	<div class="modal-header">
		        	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		        	<h4 class="modal-title">Formulario de Reserva</h4>
		      	</div>
		      	<div class="modal-body">
		      		<div class="">
		      		@if(Auth::user()->tipo === 'docente')
					@include('reservas.formularios.docente')
					@endif
					@if(Auth::user()->tipo === 'autorizado')
					@include('reservas.formularios.autorizado')
					@endif
		      		</div>
		      	</div> 	
		      	<div class="modal-footer">
		        	<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
		        	<button type="submit" class="btn btn-primary">Guardar</button>
		      	</div>
		    </div>
		</div>
	</div>
</div>
{!! Form::close() !!}