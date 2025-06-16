# ContactME - Flutter Contact App with Riverpod

A modern contact management application built with Flutter and Riverpod state management. This app demonstrates clean architecture principles, proper state management, and best practices for Flutter development.

## Features

- **Authentication System**
  - User signup and login
  - Secure token-based authentication
  - Persistent login state

- **Contact Management**
  - View list of contacts
  - Create new contacts
  - Edit existing contacts
  - Delete contacts
  - Contact details include name, phone number, email, address, and notes

- **Modern UI**
  - Material Design 3
  - Responsive layout
  - Smooth animations

## Project Structure

The project follows a clean architecture approach with feature-based organization:

```
lib/
├── core/                 # Core functionality used across the app
│   ├── config/           # App configuration
│   ├── error/            # Error handling
│   ├── network/          # Network related code (Dio client)
│   ├── providers/        # Core providers
│   ├── router/           # App routing with GoRouter
│   ├── theme/            # App theming
│   └── utils/            # Utility functions
│
├── features/             # App features
│   ├── auth/             # Authentication feature
│   │   ├── data/         # Data layer (repositories, models, services)
│   │   ├── domain/       # Domain layer (entities, repositories interfaces, use cases)
│   │   └── presentation/ # UI layer (screens, providers, widgets)
│   │
│   └── contacts/         # Contacts feature
│       ├── data/         # Data layer
│       ├── domain/       # Domain layer
│       └── presentation/ # UI layer
│
├── shared/              # Shared components
│   ├── helper/          # Helper functions
│   ├── models/          # Shared models
│   └── widgets/         # Shared widgets
│
└── main.dart           # App entry point
```

## Architecture

The app follows Clean Architecture principles with three main layers:

1. **Presentation Layer**
   - Screens (UI)
   - Providers (State Management with Riverpod)
   - Widgets (Reusable UI components)

2. **Domain Layer**
   - Entities (Core business objects)
   - Repositories (Interfaces)
   - Use Cases (Business logic)

3. **Data Layer**
   - Models (Data objects)
   - Repositories Implementation
   - Services (API services, local storage)

## State Management

The app uses Riverpod for state management with the following components:

- **StateNotifierProvider**: For complex state management
- **Provider**: For simple dependencies
- **FutureProvider**: For async operations

## Dependencies

Key packages used in this project:

- **flutter_riverpod**: State management
- **go_router**: Navigation
- **dio**: HTTP client
- **freezed**: Immutable models
- **dartz**: Functional programming
- **shared_preferences**: Local storage
- **hive**: NoSQL database

## Getting Started

### Prerequisites

- Flutter SDK (3.4.3 or higher)
- Dart SDK (3.4.0 or higher)

### Installation

1. Clone the repository
   ```bash
   git clone https://github.com/yourusername/contact_app_riverpod.git
   cd contact_app_riverpod
   ```

2. Install dependencies
   ```bash
   flutter pub get
   ```

3. Run code generation
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. Run the app
   ```bash
   flutter run
   ```

## Best Practices

- **Error Handling**: Using Either from dartz for functional error handling
- **Immutable State**: Using freezed for immutable state management
- **Dependency Injection**: Using Riverpod for dependency injection
- **Separation of Concerns**: Clean architecture for better separation
- **Code Generation**: Using build_runner for code generation

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
