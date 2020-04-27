<#
    .SYNOPSIS
        El proyecto consiste en la elaboración de una herramienta (en Powershell o en bash) que facilite las
	labores del administrador de un data center.
    .EXAMPLE
        c:\windows\system32″
        It will return all the elements that you have in the system32 directory.
    .DESCRIPTION
        1. Desplegar los cinco procesos que más CPU esté consumiendo en ese momento.
		2. Desplegar los filesystems o discos conectados a la máquina. Incluir para cada disco su
		tamaño y la cantidad de espacio libre (en bytes).
		3. Desplegar el nombre y el tamaño del archivo más grande almacenado en un disco o
		filesystem que el usuario deberá especificar. El archivo debe aparecer con su trayectoria
		completa.
		4. Cantidad de memoria libre y cantidad del espacio de swap en uso (en bytes y porcentaje).
		5. Número de conexiones de red activas actualmente (en estado ESTABLISHED).
        
#>
Clear-Host
do{
Write-Host "================ Administrador de servidor ================"
    
    Write-Host "1: Desplegar los cinco procesos que mas CPU esta consumiendo en ese momento"
    Write-Host "2: Desplegar los filesystems o discos conectados a la maquina. Incluir para cada disco su
		tamanio y la cantidad de espacio libre (en bytes)"
    Write-Host "3: Desplegar el nombre y el tamanio del archivo mas grande almacenado en un disco o
		filesystem que el usuario deberá especificar. El archivo debe aparecer con su trayectoria
		completa"
    Write-Host "4: Cantidad de memoria libre y cantidad del espacio de swap en uso (en bytes y porcentaje)"
    Write-Host "5: Numero de conexiones de red activas actualmente (en estado ESTABLISHED)"
    Write-Host "Q: para salir de este menu"


    $selection = Read-Host "Por favor selecciona una opcion: "
 switch ($selection)
 {
     '1' {
         Get-Process | Sort CPU -descending | Select -first 5 -Property ID,ProcessName,CPU | format-table -autosize
     }
     '2' {
         gdr -PSProvider 'FileSystem'
     }
     '3' {
        
        $route = Read-Host "Por favor escribe una ruta valida o presiona enter para selccionar directorio actual: "
        gci -Path $route -r| sort -descending -property length | select -first 1 name, length
     }
     
     '4' {
         'You chose option #4'
         Get-Process
     }
     '5' {
          $result=Get-NetTCPConnection -State Established | measure
          $result.Count
     }

 }
 pause
 }
 until ($selection -eq 'q')