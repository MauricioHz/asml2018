<?php

class Respuesta{

	public function ingresarObjeto(Objeto $objeto) {
        $respuesta = new stdClass();
        $sql = "INSERT INTO compra_proveedor2 (campo) VALUES (:campo)";
        try{
            $statement = $this->db->prepare($sql);
			$statement->bindParam(':campo', $objeto->propiedad);
            $statement->execute();
		    if ($statement->rowCount() > 0) {
                $respuesta->codigo = 1;
                $respuesta->mensaje = "OK. registros ingresados correctamente";
            } else {
                $errorInfo = $statement->errorInfo();
                $respuesta->codigo = 0;
                $respuesta->mensaje = "ERROR " . $errorInfo[2];
            }
        }
		catch(PDOException $exception) {
            $errorInfo = $statement->errorInfo();
            $respuesta->codigo = 9;
            $respuesta->mensaje = "ERROR Exception " . $exception . $errorInfo[2];
        }
        return $respuesta;
    }

}
