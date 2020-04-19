<#
    .SYNOPSIS
        El proyecto consiste en la elaboración de una herramienta (en Powershell o en bash) que facilite las
	labores del administrador de un data center.
    .EXAMPLE
        c:\windows\system32″
        It will return all the elements that you have in the system32 directory.
    .DESCRIPTION
        Desplegar los cinco procesos que más CPU esté consumiendo en ese momento.
		2. Desplegar los filesystems o discos conectados a la máquina. Incluir para cada disco su
		tamaño y la cantidad de espacio libre (en bytes).
		3. Desplegar el nombre y el tamaño del archivo más grande almacenado en un disco o
		filesystem que el usuario deberá especificar. El archivo debe aparecer con su trayectoria
		completa.
		4. Cantidad de memoria libre y cantidad del espacio de swap en uso (en bytes y porcentaje).
		5. Número de conexiones de red activas actualmente (en estado ESTABLISHED).
        
#>
param([Parameter(Mandatory=$true)]$opcion=$args[0])
If($opcion = 1)
    {
      Write-Host 'Desplegar los cinco procesos que más CPU esté consumiendo en ese momento'
	Get-Process
    }
If($opcion = 2)
    {
      Write-Host 'Desplegar los filesystems o discos conectados a la máquina. Incluir para cada disco su tamaño y la cantidad de espacio libre (en bytes).'
	
    }     
If($opcion = 3)
    {
      Write-Host 'Desplegar el nombre y el tamaño del archivo más grande almacenado en un disco o
filesystem que el usuario deberá especificar. El archivo debe aparecer con su trayectoria
completa'
	
    }
If($opcion = 4)
    {
      Write-Host 'Cantidad de memoria libre y cantidad del espacio de swap en uso (en bytes y porcentaje)'
	
    }
If($opcion = 5)
    {
      Write-Host 'Número de conexiones de red activas actualmente (en estado ESTABLISHED)'
	
    }
