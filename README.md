# Flutter Clean Architecture Starter Project

A reusable Flutter project template adhering to Clean Architecture and utilizing the BLoC pattern, designed for building scalable, maintainable, and production-grade applications. This template incorporates essential dependencies and customizations like theming, custom widgets, and state management, facilitating rapid MVP development and consistent UI/UX across projects.

## Table of Contents
- [Flutter Clean Architecture Starter Project](#flutter-clean-architecture-starter-project)
  - [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Project Structure](#project-structure)
  - [Folder and File Explanation](#folder-and-file-explanation)
    - [lib/](#lib)
    - [core/](#core)
    - [shared/](#shared)
    - [features/](#features-1)
    - [injection\_container.dart](#injection_containerdart)
    - [main.dart](#maindart)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
      - [Clone the Repository](#clone-the-repository)
      - [Install Dependencies](#install-dependencies)


## Features

- **Clean Architecture**: Promotes separation of concerns, scalability, and testability.
- **BLoC Pattern**: Efficient state management across the app.
- **Modular Structure**: Feature-based modules for parallel development and reusability.
- **Custom Themes**: Easily customizable themes and color schemes.
- **Custom Widgets**: Reusable widgets with multiple states (loading, error, disabled).
- **State Management**: Centralized state handling using BLoC for themes and widgets.
- **Essential Dependencies**: Includes `dartz`, `connectivity_plus`, `flutter_secure_storage`, `jwt_decoder`, `equatable`, `get_it`, and more.

## Project Structure

```vbnet
lib/
├── core/
│   ├── constants/
│   │   ├── app_constants.dart
│   │   └── app_styles.dart
│   ├── errors/
│   │   ├── exceptions.dart
│   │   └── failures.dart
│   ├── theme/
│   │   ├── app_theme.dart
│   │   └── theme_data.dart
│   ├── usecases/
│   │   └── usecase.dart
│   └── utils/
│       ├── connectivity_checker.dart
│       ├── jwt_helper.dart
│       └── secure_storage_helper.dart
├── shared/
│   ├── blocs/
│   │   └── theme_bloc/
│   │       ├── theme_bloc.dart
│   │       └── theme_event.dart
│   └── widgets/
│       ├── custom_button.dart
│       ├── custom_input_field.dart
│       └── loading_widget.dart
├── features/
│   └── feature_name/
│       ├── data/
│       │   ├── datasources/
│       │   ├── models/
│       │   └── repositories/
│       ├── domain/
│       │   ├── entities/
│       │   ├── repositories/
│       │   └── usecases/
│       └── presentation/
│           ├── blocs/
│           └── pages/
├── injection_container.dart
└── main.dart
```

## Folder and File Explanation

### lib/
The main directory containing all Dart files for the Flutter application.

### core/
Contains code that is shared across the entire application, promoting reusability and consistency.

- **constants/**: Defines application-wide constants and styling.
  - `app_constants.dart`: General constants used throughout the app.
  - `app_styles.dart`: Centralized text styles, color palettes, and other styling constants.
- **errors/**: Handles exceptions and failures in a standardized way.
  - `exceptions.dart`: Custom exception classes.
  - `failures.dart`: Failure models used for error handling with `dartz`.
- **theme/**: Manages theming and styling of the app.
  - `app_theme.dart`: Defines the `AppTheme` class for theme management.
  - `theme_data.dart`: Contains `ThemeData` configurations for light and dark themes.
- **usecases/**: Defines abstract use case classes to enforce a consistent interface in the domain layer.
  - `usecase.dart`: Base class for all use cases.
- **utils/**: Utility classes and helpers.
  - `connectivity_checker.dart`: Checks network connectivity status.
  - `jwt_helper.dart`: Handles JWT token decoding and validation.
  - `secure_storage_helper.dart`: Manages secure data storage using `flutter_secure_storage`.

### shared/
Holds shared resources like widgets and BLoCs that are used across multiple features.

- **blocs/**: Contains global BLoCs.
  - **theme_bloc/**: Manages the application's theme state.
    - `theme_bloc.dart`: BLoC implementation for theme management.
    - `theme_event.dart`: Events related to theme changes.
- **widgets/**: Reusable UI components.
  - `custom_button.dart`: A customizable button widget handling different states.
  - `custom_input_field.dart`: A customizable input field with error handling.
  - `loading_widget.dart`: A widget to display loading indicators.

### features/
Feature-based modules, each encapsulating its own data, domain, and presentation layers.

- **feature_name/**: Replace with the actual feature name.
  - **data/**: Handles data retrieval and storage.
    - `datasources/`: Data sources like APIs or local databases.
    - `models/`: Data models that extend entities.
    - `repositories/`: Implementations of domain repositories.
  - **domain/**: Business logic and entities.
    - `entities/`: Core business objects.
    - `repositories/`: Abstract classes defining repository interfaces.
    - `usecases/`: Feature-specific use cases.
  - **presentation/**: UI components and state management.
    - `blocs/`: BLoCs or Cubits for managing state.
    - `pages/`: Screens and widgets for the feature.

### injection_container.dart
Manages dependency injection using the `get_it` package. It registers all dependencies, making them accessible throughout the app.

### main.dart
The application's entry point. Sets up the app and provides global configurations like theming and initial route.

## Getting Started

### Prerequisites
- **Flutter SDK**: Install Flutter by following the [official guide](https://flutter.dev/docs/get-started/install).
- **Dart SDK**: Comes bundled with Flutter.
- **IDE**: Android Studio, Visual Studio Code, or any preferred IDE.

### Installation

#### Clone the Repository
```bash
git clone https://github.com/your-username/flutter-clean-architecture-starter.git
cd flutter-clean-architecture-starter
```

#### Install Dependencies
Run the following command to install all the necessary packages:
```bash
flutter pub get
```

`pubspec.yaml`
```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_bloc: ^8.0.0
  dartz: ^0.10.0
  connectivity_plus: ^3.0.3
  flutter_secure_storage: ^8.0.0
  jwt_decoder: ^2.0.1
  equatable: ^2.0.3
  get_it: ^7.2.0

dev_dependencies:
  build_runner: ^2.1.11

```