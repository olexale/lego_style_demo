
# LEGO Style Demo Monorepo

Welcome to the LEGO Style Demo Monorepo! This repository demonstrates a scalable, modular Flutter architecture using a monorepo approach. Each feature, core system, and configuration is separated into its own package for maximum maintainability and reusability.

## Table of Contents
- [Modular Architecture Overview](#modular-architecture-overview)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Adding New Features](#adding-new-features)
- [Contributing](#contributing)
- [License](#license)
- [Monorepo Management with Melos (Advanced)](#monorepo-management-with-melos-advanced)

## Modular Architecture Overview
The project is organized into distinct modules:
- **app/lego_app**: The main Flutter application. It acts as the entry point and composes features, navigation, and configuration from other packages.
- **app/lego_configuration**: Handles dependency injection and configuration logic. This module wires up feature modules and exposes configuration options to the app.
- **app/lego_navigation**: Centralizes navigation logic and routing. It provides route information and delegates for the app, making navigation extensible and modular.
- **core/design_system**: Contains shared UI components and theming. All modules use this for a consistent look and feel.
- **feature/harry_potter**: Example feature module, demonstrating how to add new independent features to the app.
- **feature/lego_list**: Implements the Lego List feature, including its own domain, flow, navigation, and widgets. It also contains localization and tests for the feature.

### How Modularity Works
- **Loose Coupling**: Each module/package is independent, with its own `pubspec.yaml` and source code. Modules interact via well-defined interfaces and dependency injection.
- **Scalability**: New features can be added as separate packages under `feature/` without modifying the core app logic.
- **Reusability**: Shared logic (like design system and navigation) is centralized, so all features benefit from consistent UI and navigation patterns.

## Project Structure
```
lego_style_demo/
├── app/
│   ├── lego_app/           # Main Flutter application
│   ├── lego_configuration/ # Configuration package
│   ├── lego_navigation/    # Navigation package
├── core/
│   └── design_system/      # Shared design system
├── feature/
│   ├── harry_potter/       # Harry Potter feature module
│   └── lego_list/          # Lego List feature module
├── analysis_options.yaml
├── README.md
└── pubspec.yaml            # Workspace root
```

## Getting Started
1. **Clone the repository:**
  ```sh
  git clone https://github.com/Raks-Javac/lego_style_demo.git
  cd lego_style_demo
  ```
2. **Install dependencies and bootstrap the workspace:**
  ```sh
  dart pub global activate melos
  melos bootstrap
  ```
3. **Run the main app:**
  ```sh
  cd app/lego_app
  flutter run
  ```

## Adding New Features
To add a new feature:
1. Create a new package under `feature/`.
2. Implement your feature logic, widgets, and tests in the new package.
3. Register your feature in `lego_configuration` for DI and in `lego_navigation` for routing if needed.
4. Use shared components from `core/design_system` for UI consistency.





---

## Monorepo Management with Melos
This project uses [Melos](https://melos.invertase.dev/) to manage multiple Dart/Flutter packages in a single repository. All workspace configuration is in the root `pubspec.yaml`.

### Local CI & GitHub Actions
You can run the same checks locally as the CI workflow by executing:
```sh
bash local_ci.sh
```
This script will:
- Activate Melos
- Bootstrap the workspace
- Regenerate Freezed files for all packages
- Run static analysis
- Check code formatting
- (Optionally) run tests if you uncomment the test section

#### GitHub Actions CI
This repository uses [Melos Action](https://github.com/marketplace/actions/melos-action) for CI automation. The workflow is defined in `.github/workflows/ci.yaml` and will:
- Set up Flutter
- Bootstrap the workspace with Melos
- Run the local CI script (`local_ci.sh`)
- Optionally run tests and upload coverage

CI runs on every push and pull request to `main` and `integration/*` branches.

---

## Recent Changes & Troubleshooting

- **Dependency Conflicts Fixed:** Updated `injectable` and `injectable_generator` versions in feature modules to resolve analyzer and matcher conflicts.
- **Freezed Warnings Fixed:** Local CI now regenerates Freezed files before analysis to avoid non-nullable equals parameter warnings.
- **Melos Bootstrap:** Ensured Melos is activated and used for workspace management in both local and CI environments.
- **GitHub Actions Workflow:** Added `.github/workflows/ci.yaml` using Melos Action and your local CI script for automated checks.
- **README Updated:** This file now documents all setup, CI, and troubleshooting steps for new contributors.

**If you see errors about missing generated files (e.g., `$initGetIt`), make sure your DI initializer has the correct annotation and import, and rerun the build step.**