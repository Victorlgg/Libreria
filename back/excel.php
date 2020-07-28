<?php
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename=' . $file);
        $content = "Nombre\tEdad\tCorreo\tTelefono\tEstado\tSatisfaccion\tOrigen\tFecha creación\tFecha actualizacion\tFecha cirugia\tValidez correo\n";
        for ($a = 0; $a < count($data); $a++) {
            $content .= $data[$a]->nombre . "\t" . $data[$a]->edad . "\t" . $data[$a]->correo . "\t" . $data[$a]->telefono . "\t" . $data[$a]->estado . "\t" . $data[$a]->satisfaccion . "\t" . $data[$a]->origen . "\t" . $data[$a]->fechacreacion . "\t" . $data[$a]->fechaactualizacion . "\t" . $data[$a]->fechacirugia . "\t" . $data[$a]->validescorreo . "\n";
        }
        echo $content;
        

        ?>