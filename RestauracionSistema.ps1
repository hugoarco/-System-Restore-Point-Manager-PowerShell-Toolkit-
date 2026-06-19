function Indentificacionusuarios {

    $usuarios = @(
        "Hugo Arcones Martinez"


    )

    $eleccionusuario = Read-Host ("Introduzca un usuario ")

        if  ($usuarios -contains $eleccionusuario) {
            Write-Host ("El usuario esta en el sistema y tiene acceso al script") -ForegroundColor Green


        }
        
        else {
            write-Host ("EL usuario no tiene acceso al sistema ni al script") -ForegroundColor Green
        }


}

$opcionmenu = 0

function menu {
    
 while ($opcionmenu -ne 5 ) {   

Write-Host "1. Inicio" -ForegroundColor Cyan
Write-Host "2. crearPuntoRestauración" -ForegroundColor Cyan
Write-Host "3. comprobarpuntosderestauracion" -ForegroundColor Cyan
Write-Host "4. comprobarpuntosderestauracionespecifico" -ForegroundColor Cyan
Write-Host "5. Salir" -ForegroundColor Cyan


 $opcionmenu   = [int] ( read-Host "Introduzca un numero")


switch ($opcionmenu) {
    1 { Inicio }                   
    2 { crearPuntoRestauración }       
    3 { comprobarpuntosderestauracion }  
    4 {comprobarpuntosderestauracionespecifico}        
    5 { Salir }                          
    default { Write-Host "Opcion no correcta" }
}

    }
}

    function Inicio {

 Write-Host "Funciones del script:" -ForegroundColor Yellow
Write-Host "- Identificación de usuario" -ForegroundColor White
Write-Host "- Menú interactivo" -ForegroundColor White
Write-Host "- Inicio (explicación)" -ForegroundColor White
Write-Host "- Crear punto de restauración" -ForegroundColor White
Write-Host "- Comprobar puntos existentes" -ForegroundColor White
Write-Host "- Salir" -ForegroundColor White

try {

        $sino = read-Host ("El usuario desea salir del script si o no ")

        if ($sino -eq "Si") {
            write-Host ("El usuario desea salir del script") -ForegroundColor Green
            exit
        }

        else {
            write-Host ("El usuario desea permanecer en inicio ") -ForegroundColor Red
        }
    }

    catch {  
    write-Host ("ERROR") -ForeGroundColor Red
    }
}




    function crearPuntoRestauración  {

    try {
    
        $opcionusuario = Read-Host ("¿Quiere realizar una punto de restauración ")

        if  ($opcionusuario -eq "Si" ) {
            write-Host ("Ok el usuario quiere crear un  punto de restauración") -ForegroundColor Green
            $nombrecopia = Read-Host ("Introduzca el  nombre que quiera para punto de restauración ") 
             Checkpoint-Computer -Description "$nombrecopia" -RestorePointType "MODIFY_SETTINGS"

        }

        else {
            write-Host ("El usuario no quiere realizar el punto de restauración ") -ForegroundColor Red
            return


        }

    }


    catch {
    write-Host ("ERROR") -ForeGroundColor Red
    }

    }


    function  comprobarpuntosderestauracion{
    try {
    $comprobarusuariossino = read-Host ("El usuario desea comprobar sus puntos de restauración si o no ")
        if ($comprobarusuariossino -eq "Si" ) {
        write-Host ("Vamos a comprobar sus puntos de restauración ") -ForegroundColor Green
        Get-ComputerRestorePoint
        }

        else {
        write-Host ("El usuario no quiere comprobar los puntos de restauración ") -ForegroundColor Red
        }
        }
       

       catch {
           write-Host ("ERROR") -ForeGroundColor Red
       }

  

    }

      function  comprobarpuntosderestauracionespecifico{
      try {
          $comprobarusuariossino = read-Host ("El usuario desea comprobar un  punto de restauración específico si o no ")
        if ($comprobarusuariossino -eq "Si" ) {
        $nombrepuntorestauracion = read-Host ("Introduce el nombre del punto de restauración a complentar ")
        Get-ComputerRestorePoint findstr $nombrepuntorestauracion
        }

        else {
        write-Host ("El usuario no quiere comprobar los puntos de restauración ")
        }


   

    }

    catch {
    write-Host ("ERORR") -ForeGroundColor Red
    
    }
      
      }



    function Salir  {

    $eleccionusuario = read-Host ("El usuario quiere salir si no ")
    try { 
    
     if ($eleccionusuario -eq "Si") {
            write-Host ("El usuario   no quiere permanecer en el script")
            exit
        }

        else {
            write-Host ("El usuario quiere seguir en el script ")    
        
        }
}

       catch {
       write-Host ("ERROR") -ForeGroundolor Red
       
       
       }

      

    }
    Indentificacionusuarios
    menu
