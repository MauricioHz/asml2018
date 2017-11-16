@extends('layouts.compra')
@section('content')
<div class="container">
    <div class="row">
       <div class="col-md-8 col-md-offset-2">
          <div class="panel panel-default">
             <div class="panel-heading">Entidades</div>
             <div class="panel-body">
                 <table class="table table-bordered">
                   <thead>
                      <tr>
                         <th>ID</th>
                         <th>Descripción</th>
                         <th>Vigente</th>
                         <th>Acciones</th>
                      </tr>
                   </thead>
                   <tbody>
                    @foreach ($entidades as $entidad)              
                      <tr>
                         <th scope="row">{{ $documento->id }}</th>
                         <td>{{ $entidad->descripcion }}</td>
                         <td>{{ $entidad->vigente }}</td>
                         <td>
                          <a href="entidad/editar/{{ $entidad->id }}" class="btn btn-primary btn-sm">Editar</a>
                          <a href="entidad/editar/{{ $entidad->id }}" class="btn btn-primary btn-sm">Eliminar</a>
                        </td>
                      </tr>
                    @endforeach
                   </tbody>
                </table>
             </div>
          </div>
       </div>
    </div>
</div>
@endsection
