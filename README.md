# Flutter App

A production-ready Flutter application with CI/CD pipeline for APK building.

## Features

- **Clean Architecture** - Organized with core, features, and shared layers
- **Riverpod** - State management with code generation
- **GoRouter** - Declarative routing with deep linking support
- **Dio** - HTTP client with interceptors for auth and logging
- **Freezed** - Immutable data classes with JSON serialization
- **Secure Storage** - Encrypted storage for sensitive data
- **Material 3** - Modern theming with light/dark mode
- **GitHub Actions** - Automated APK builds on push/PR

## Project Structure

```
lib/
├── core/
│   ├── config/         # App configuration
│   ├── constants/      # App constants
│   ├── di/             # Dependency injection
│   ├── errors/         # Error handling
│   ├── network/        # Network layer (Dio client)
│   ├── routes/         # App routing
│   ├── storage/        # Storage services
│   ├── theme/          # App theming
│   └── utils/          # Utility functions
├── features/
│   ├── home/           # Home feature
│   ├── profile/        # Profile feature
│   ├── settings/       # Settings feature
│   └── onboarding/     # Onboarding flow
├── models/             # Data models
├── repositories/       # Repository implementations
├── providers/          # Riverpod providers
└── main.dart           # App entry point
```

## Getting Started

### Prerequisites

- Flutter 3.22.0+
- Dart 3.4.0+
- Android Studio / Xcode (for native builds)
- Java 17 (for Android builds)

### Installation

```bash
# Clone the repository
git clone https://github.com/princekauz/flutter_app.git
cd flutter_app

# Install dependencies
flutter pub get

# Generate code
flutter pub run build_runner build --delete-conflicting-outputs

# Run the app
flutter run
```

### Code Generation

```bash
# Watch for changes and generate code
flutter pub run build_runner watch --delete-conflicting-outputs

# One-time generation
flutter pub run build_runner build --delete-conflicting-outputs
```

## Development Commands

```bash
# Format code
dart format .

# Static analysis
flutter analyze

# Run tests
flutter test

# Build APKs
flutter build apk --release
flutter build apk --debug

# Build App Bundle (for Play Store)
flutter build appbundle --release
```

## CI/CD Pipeline

The project uses GitHub Actions for automated builds:

- **Triggers**: Push to main/develop, PRs, manual dispatch
- **Builds**: Debug and Release APKs
- **Artifacts**: APKs uploaded as build artifacts (30 days retention)
- **Releases**: Automatic GitHub releases on version tags

### Workflow Configuration

```yaml
# .github/workflows/flutter-apk.yml
# Pinned versions for reproducible builds:
# - Flutter 3.22.0 (stable)
# - Java 17 (Temurin)
# - Gradle 8.7
# - AGP 8.4.2
# - Kotlin 2.0.0
```

### Local Validation

Before pushing, run all validation commands:

```bash
flutter pub get
dart format . --set-exit-if-changed
flutter analyze
flutter test
flutter build apk --release
```

## Android Configuration

### Gradle Versions (Pinned)

| Component | Version |
|-----------|---------|
| Gradle    | 8.7     |
| AGP       | 8.4.2   |
| Kotlin    | 2.0.0   |
| Java      | 17      |

### Build Types

- **Debug**: Debug signing, no minification
- **Release**: Minified, shrunk resources, ProGuard enabled

### Signing

Debug builds use auto-generated debug keystore.
For release builds, configure signing in `android/app/build.gradle`:

```gradle
signingConfigs {
    release {
        storeFile file('release.keystore')
        storePassword 'your_store_password'
        keyAlias 'your_key_alias'
        keyPassword 'your_key_password'
    }
}
```

## iOS Configuration

- Minimum iOS: 13.0
- Xcode project configured for Flutter embedding v2
- Info.plist configured with required permissions

## Environment Variables

Create `.env` file (not committed):

```env
API_BASE_URL=https://api.example.com
API_KEY=your_api_key
```

## Testing

```bash
# Unit tests
flutter test

# Integration tests
flutter test integration_test/

# Coverage
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
```

## Code Style

- **Analysis**: `analysis_options.yaml` with strict linting
- **Formatting**: Dart format with 100 char line length
- **Imports**: Relative imports within package, package imports for external
- **Naming**: 
  - Classes: PascalCase
  - Variables/Functions: camelCase
  - Constants: SCREAMING_SNAKE_CASE
  - Files: snake_case.dart

## Architecture Decisions

### State Management: Riverpod

Chosen for:
- Compile-time safety
- No BuildContext dependency
- Excellent testing support
- Code generation reduces boilerplate

### Routing: GoRouter

Chosen for:
- Declarative route definitions
- Deep linking support
- Type-safe navigation
- Integration with Riverpod

### Network: Dio + Retrofit

Chosen for:
- Type-safe API definitions
- Interceptor support for auth/logging
- Request/response serialization
- Cancellation and timeout handling

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make changes
4. Run validation commands
5. Submit PR

## License

MIT License - see LICENSE file for details.

## Support

- Issues: [GitHub Issues](https://github.com/princekauz/flutter_app/issues)
- Discussions: [GitHub Discussions](https://github.com/princekauz/flutter_app/discussions)