## Estructura del Proyecto (Acomodo de Archivos)

Para ejecutar el codigo, selecciona el archivo "main.dart", despues en la 
parte inferior del lado izquierdo selecciona "Run" y correlo con el 
navegador que gustes

Para mantener el código limpio, y evitar errores de importación, los archivos dentro de la carpeta `lib/` deben seguir estrictamente la siguiente estructura:
```text
sistema_medico/
├── android/
├── ios/
├── web/
├── windows/
├── lib/                             # Todo el código de Flutter va aquí
│   ├── models/                      # Modelos de datos (Mapeo de la base de datos)
│   │   └── usuario_model.dart
│   │
│   ├── screens/                     # Vistas y Pantallas de la aplicación
│   │   ├── admin_screen.dart        # Panel para Administradores de Sistemas
│   │   ├── doctor_screen.dart       # Panel para Médicos (Citas, horarios)
│   │   ├── login_screen.dart        # Pantalla de Autenticación unificada
│   │   └── paciente_screen.dart     # Panel para Pacientes (Agendar citas, historial)
│   │
│   ├── services/                    # Conexiones con la API / Base de datos externa
│   │   └── auth_service.dart
│   │
│   └── main.dart                    # Punto de entrada principal de la app
│
├── analysis_options.yaml            # Configuración de reglas de código
└── pubspec.yaml                     # Gestión de dependencias y assets
