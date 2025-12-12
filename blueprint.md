# Blueprint: Smart Electricity Bill Splitter

## 1. Overview

A native Flutter Android application for shared housing that accurately splits an electricity bill among tenants with sub-meters. The core logic uses a reverse-derivation algorithm to ensure the total amount collected precisely matches the utility bill. The app will be built with a local-first approach using Hive for data persistence, with optional cloud sync via Firebase.

## 2. Style, Design, and Features

### Design Principles
- **UI/UX:** Modern, clean, card-based Material 3 UI.
- **Color Palette:** Indigo/Violet accents with Slate/Zinc backgrounds.
- **Themes:** Full support for both Light and Dark (OLED-friendly) modes.
- **Responsiveness:** Fully responsive layouts for phones and tablets, with sticky headers/footers where appropriate.
- **Animations:** Subtle and meaningful animations using `flutter_animate` to enhance user experience without being distracting.
- **Icons:** A combination of standard Material icons and `lucide_flutter` for a sharp, modern feel.

### Core Features
- **Bill Calculation:**
    - **Input:** Month, total bill, and individual sub-meter readings.
    - **Logic:** Implements the crucial reverse-derivation algorithm to find a blended per-unit rate for variable costs.
    - **Breakdown:** Displays a detailed report of how each tenant's share is calculated, including fixed costs, variable costs, and VAT.
- **Tenant Management:** CRUD operations for tenants (name, contact info).
- **History:** Saves past bills to local storage (Hive), allowing users to view and analyze them later.
- **Estimator Tool:**
    - A forward calculator to estimate bills from unit consumption based on slab rates.
    - A reverse calculator to estimate unit consumption from a target bill amount.
- **Analytics:** Visual charts (`fl_chart`) showing monthly trends and user-wise consumption.
- **Export & Share:**
    - Export reports as high-resolution PNGs.
    - Share a text summary of the bill with tenants.
    - Print a detailed report.
- **Localization:** Support for English (en) and Bengali (bn).
- **Data Persistence:**
    - **Local-first:** All data (drafts, history, tenants, settings) is saved in a local Hive database for full offline functionality.
    - **Cloud Sync (Optional):** Users can connect a Firebase account to sync their data across devices.

## 3. Current Implementation Plan

### Phase 1: Foundation and Core Logic
1.  **Project Setup:**
    - Add all necessary dependencies to `pubspec.yaml` (`flutter_riverpod`, `hive`, `fl_chart`, etc.).
    - Create the required directory structure (`screens`, `widgets`, `models`, `services`, etc.).
2.  **Data Models:**
    - Define the data models for `Bill`, `Tenant`, `Tariff`, and `Reading` in `lib/models/`.
    - Generate Hive `TypeAdapter`s for these models to enable local storage.
3.  **Calculation Service:**
    - Implement the reverse-derivation mathematical model in `lib/services/calculation_service.dart`.
    - Write comprehensive unit tests in `test/calculation_service_test.dart` to validate the accuracy of the algorithm against various scenarios (VAT, fees, edge cases).
4.  **Initial UI and State Management:**
    - Set up the main application widget in `lib/app.dart` with `ProviderScope` for Riverpod.
    - Configure `MaterialApp` with themes, routes, and localization delegates.
    - Create placeholder screens for the main features.
    - Initialize Hive for local database operations in `lib/main.dart`.
