# 📡 Sensor Dashboard

A Flutter web-based dashboard for simulating and monitoring real-time sensor data. It visualizes sensor metrics (like temperature, humidity, pressure, and anomaly levels) using custom charts and widgets, and allows detailed views and settings management.

---

## 🚀 Features

- 📈 Real-time charting (Line, Bubble, etc.)
- 🧩 Modular architecture using Riverpod, AutoRoute, and Freezed
- 🛠 Simulated data support
- 📊 Detailed views per sensor with anomaly tracking
- 💻 Responsive UI

---

## 🧰 Tech Stack

- **Flutter Web**
- **Riverpod** – State management
- **AutoRoute** – Declarative routing
- **Freezed** – Immutable models and JSON serialization
- **Custom Widgets** – For charts and UI elements

---

## 🧪 Folder Structure (Highlights)

```
lib/
├── application/          # Providers for state management
├── app_route/            # Route configuration (AutoRoute)
├── core/di/              # Dependency injection setup
├── data/                 # Data models and services
├── presentation/         # Pages and UI components
├── shared/               # Shared enums, themes
└── main.dart             # Entry point
```

---

## 🌐 How to Run (on Chrome)

1. **Make sure Flutter is installed and set up for web development:**
   ```bash
   flutter doctor
   ```

2. **Enable Chrome as your device (should be default for web):**
   ```bash
   flutter devices
   ```

3. **Run the app in Chrome:**
   ```bash
   flutter run -d chrome
   ```

4. The app will launch in browser at `http://localhost:xxxx`.

---

## 🧪 Running Tests

To run all tests:
```bash
flutter test
```

---

## 📦 Dependencies (example)

Make sure these are included in your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_riverpod: ^2.0.0
  auto_route: ^5.0.0
  freezed_annotation: ^2.0.0

dev_dependencies:
  build_runner: ^2.3.0
  freezed: ^2.0.0
  auto_route_generator: ^5.0.0
  flutter_test:
    sdk: flutter
```

---

## 📄 License

MIT License – use freely and modify as needed!

---

## 🙌 Contributing

Open to feedback and contributions! Feel free to fork or submit issues/pull requests.
