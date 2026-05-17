# 🏥 Sistema Médico SaaS Multi-Tenant

Este es el repositorio del frontend desarrollado en **Flutter** para la plataforma de gestión de clínicas médicas. El sistema está diseñado bajo una arquitectura de software multi-tenant (SaaS), permitiendo que múltiples clínicas (tenants) operen de forma aislada en la misma aplicación.

---

## 📂 Estructura del Proyecto (Acomodo de Archivos)

Para mantener el código limpio, escalable y evitar errores de importación, los archivos dentro de la carpeta `lib/` deben seguir estrictamente la siguiente estructura:
Lo siguiente es el orden de carpetas y archivos para que funcionen las IU
```text
sistema_medico/
├── android/
├── ios/
├── web/
├── windows/
├── lib/                             # 🟢 Todo tu código de Flutter va aquí
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
│   └── main.dart                    # 🚀 Punto de entrada principal de la app
│
├── analysis_options.yaml            # Configuración de reglas de código
└── pubspec.yaml                     # Gestión de dependencias y assets
