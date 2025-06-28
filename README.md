# ContactME - Flutter Contact App with Riverpod

A modern contact management application built with Flutter and Riverpod state management. This app demonstrates clean architecture principles, proper state management, and best practices for Flutter development.

## Features

- **Authentication System**
  - User signup and login
  - Secure token-based authentication
  - Persistent login state
  - Automatic session management

- **Contact Management**
  - View list of contacts with beautiful cards
  - Create new contacts with validation
  - Edit existing contacts with real-time updates
  - Delete contacts with confirmation
  - Contact details include:
    - Name
    - Phone number
    - Email
    - Address
    - Notes
    - Creation/update timestamps
  - Search functionality across all contact fields
  - Pull-to-refresh for updating contact list
  - Empty state UI for better user experience

- **Modern UI/UX**
  - Material Design 3 with custom theming
  - Responsive layout for all screen sizes
  - Smooth animations and transitions
  - Intuitive navigation flow
  - Loading and error states
  - Confirmation dialogs for destructive actions

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

- **StateNotifierProvider**: For complex state management (Contacts, Auth)
- **Provider**: For simple dependencies and services
- **FutureProvider**: For async operations and data fetching
- **ChangeNotifierProvider**: For local UI state management
- **StreamProvider**: For real-time data updates

### Key State Management Features:
- Centralized state management with Riverpod
- Reactive UI updates with minimal boilerplate
- Proper error handling and loading states
- Efficient state updates with immutable data
- Easy dependency injection for testing

## Dependencies

Key packages used in this project:

- **Core**
  - flutter_riverpod: ^2.4.9 - State management
  - go_router: ^13.0.0 - Declarative routing
  - dio: ^5.4.0 - HTTP client
  - freezed_annotation: ^2.4.1 - Immutable models
  - json_annotation: ^4.8.1 - JSON serialization

- **State & Data**
  - riverpod_annotation: ^2.4.0 - Riverpod code generation
  - shared_preferences: ^2.2.2 - Local storage
  - hive: ^2.2.3 - NoSQL database
  - hive_flutter: ^1.1.0 - Flutter bindings for Hive

- **UI & Utilities**
  - flutter_animate: ^4.2.0 - Beautiful animations
  - intl: ^0.19.0 - Internationalization
  - flutter_screenutil: ^5.9.0 - Responsive UI
  - flutter_svg: ^2.0.9 - SVG image support

- **Development**
  - build_runner: ^2.4.6 - Code generation
  - freezed: ^2.4.5 - Code generation for immutable classes
  - json_serializable: ^6.7.1 - JSON serialization

## Key Features in Detail

### Authentication Flow
- Secure token-based authentication
- Automatic token refresh
- Protected routes
- Session persistence
- Error handling for authentication failures

### Contact Management
- **CRUD Operations**
  - Create contacts with validation
  - Read contacts with search and filtering
  - Update contacts with optimistic UI updates
  - Delete contacts with confirmation

- **Search & Filter**
  - Real-time search across all contact fields
  - Case-insensitive matching
  - Clear search functionality

- **UI/UX**
  - Pull-to-refresh for manual updates
  - Empty state illustrations
  - Loading indicators
  - Error states with retry options
  - Confirmation dialogs for destructive actions

### Performance Optimizations
- Efficient list rendering with ListView.builder
- Proper widget disposal
- Memory management
- Optimized rebuilds with Riverpod

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
