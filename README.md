# Digital Tasbi Counter

A simple, elegant digital tasbi (tasbih) counter built with Flutter and Riverpod for state management. This app provides an easy-to-use interface for counting recitations, setting targets, and tracking progress across sessions.

## Table of Contents
- [Features](#features)
- [Screenshots](#screenshots)
- [Tech Stack](#tech-stack)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Running](#running)
- [Usage](#usage)
- [Architecture & State Management](#architecture--state-management)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Features
- Increment and decrement count easily with large, accessible controls.
- Set daily or session targets and view progress.
- Reset counter or set custom increments.
- Persistent state across app launches (local storage).
- Clean UI optimized for mobile devices.
- Built with Riverpod for predictable, testable state management.

> Note: Update the feature list if your implementation differs.

## Screenshots

Gallery of the app UI (images placed in `assets/screenshots/`):

| Main screen (50) | Active count (13) | Reset / Zero (0) |
| --- | --- | --- |
| ![Main counter screen - 50](assets/screenshots/screenshot-1.png) | ![Main counter screen - 13](assets/screenshots/screenshot-2.png) | ![Main counter screen - 0](assets/screenshots/screenshot-3.png) |

Captions:
- screenshot-1.png — Main counter display showing target/partial count (50).
- screenshot-2.png — Active count with highlighted display (13).
- screenshot-3.png — Counter at zero / initial state (0).

## Tech Stack
- Flutter — cross-platform UI toolkit
- Riverpod — state management
- Dart — programming language
- Local persistence (SharedPreferences / Hive / SQLite) — adjust to your implementation

## Getting Started

### Prerequisites
- Flutter SDK (stable channel) — see https://flutter.dev/docs/get-started/install
- Android Studio, Xcode, or VS Code for development and emulators
- A device or emulator for running the app

### Installation
1. Clone the repository:
   git clone https://github.com/MMAI-Tech/Digital_Tasbi_Counter.git
2. Enter the project directory:
   cd Digital_Tasbi_Counter
3. Fetch dependencies:
   flutter pub get

### Running
- Run on connected device or emulator:
  flutter run
- To build a release APK:
  flutter build apk --release

## Usage
- Tap the main counter button to increment.
- Use the reset button to clear the count.
- Use the target controls to set or change session goals.
- Customize appearance or behavior by editing the UI and provider configuration.

## Architecture & State Management
Typical layout:
- lib/
  - main.dart — app entrypoint and provider overrides
  - src/
    - ui/ — widgets and screens
    - state/ — Riverpod providers and state objects
    - services/ — persistence, platform integrations

Riverpod is used to:
- Keep UI logic and business state decoupled
- Expose providers for the counter, settings, and persistence services
- Make the app testable and predictable

## Testing
- Run unit and widget tests:
  flutter test

## Contributing
Contributions are welcome. Please:
1. Fork the repository
2. Create a feature branch: git checkout -b feature/your-feature
3. Commit your changes: git commit -m "Add feature"
4. Push the branch and open a pull request

Please include tests and update documentation for non-trivial changes.

## License
This project is licensed under the MIT License — see the LICENSE file for details.

## Contact
Maintainer: MMAI-Tech  
Repository: https://github.com/MMAI-Tech/Digital_Tasbi_Counter
