<h1> 💾 System Restore Point Manager (PowerShell Toolkit) </h1>

Herramienta en PowerShell diseñada para la gestión de puntos de restauración del sistema en Windows, permitiendo crear, consultar y filtrar puntos de restauración desde un menú interactivo en consola.

Este toolkit está orientado a tareas básicas de administración del sistema y recuperación.
<br><br>
⚙️ ¿Qué es esta herramienta?

Es un gestor interactivo de puntos de restauración que simplifica el uso de comandos del sistema para administración de recuperación de Windows.

Incluye control de acceso, menú guiado y operaciones básicas de gestión de restore points.
<br><br>
🔐 Control de acceso

El acceso al toolkit está restringido mediante validación de usuario.

Usuario autorizado por defecto:

Hugo Arcones Martinez

Si el usuario no coincide, el script no permite continuar.
<br><br>
🧰 Funcionalidades principales
<br><br>
🏁 Inicio
Muestra un resumen de las funciones disponibles
Explica el propósito del toolkit
<br><br>
📌 Crear punto de restauración
Permite generar un punto de restauración del sistema
El usuario puede asignar un nombre personalizado
Usa Checkpoint-Computer con tipo MODIFY_SETTINGS
<br><br>
📋 Listar puntos de restauración
Muestra todos los puntos de restauración disponibles
Utiliza Get-ComputerRestorePoint
<br><br>
🔎 Buscar punto de restauración específico
Permite filtrar puntos de restauración por nombre
Consulta basada en entrada del usuario
<br><br>

🚪 Salir
Cierre controlado del script
<br><br>
🚀 Ejecución
Guardar el archivo como:
restore-point-toolkit.ps1
Ejecutar PowerShell como administrador
Ejecutar el script:
.\restore-point-toolkit.ps1
<br><br>
⚠️ Requisitos del sistema
Windows 10 / Windows 11
PowerShell 5.0 o superior
Permisos de administrador (OBLIGATORIO para restore points)
Sistema con protección de sistema activada
<br><br>
🧠 Arquitectura del toolkit
El script está estructurado en módulos funcionales:
<br><br>
🔐 Control de acceso de usuario
<br><br>
📋 Menú interactivo en bucle
<br><br>
🏁 Módulo de información inicial
<br><br>
📌 Creación de puntos de restauración
<br><br>
📋 Consulta general de puntos
<br><br>
🔎 Búsqueda específica de puntos
<br><br>
🚪 Control de salida
<br><br>
<br><br>
🛡️ Consideraciones importantes
Requiere privilegios elevados (administrador)
Depende de la protección del sistema de Windows activada
Operaciones sensibles sobre recuperación del sistema
Uso recomendado en entornos controlados
