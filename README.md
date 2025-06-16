# Spotifyy 🎵

A beautiful Spotify clone built with Flutter, featuring a modern UI and essential music streaming app functionalities.

## 📱 Features

- **Authentication System**
  - Get Started page with app introduction
  - User Login functionality
  - User Sign Up functionality

- **Main App Interface**
  - **Home**: Main dashboard with music recommendations
  - **Search**: Discover new music and artists
  - **Library**: Personal music collection and playlists
  - **Premium**: Premium subscription features
  - **Create**: Create and manage playlists

- **Modern UI/UX**
  - Dark theme with gradient backgrounds
  - Material Design 3 components
  - Responsive design for multiple screen sizes
  - Custom color scheme matching Spotify's branding

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (^3.8.1)
- Dart SDK
- Android Studio / VS Code
- Android/iOS device or emulator

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd spotify
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## 📁 Project Structure

```
lib/
├── main.dart                 # App entry point
├── constants/
│   └── colors.dart          # App color constants
├── Data/
│   └── data.dart           # Data models and mock data
└── Pages/
    ├── GetStartedPage.dart  # Welcome/intro page
    ├── LoginPage.dart       # User login
    ├── SignUpPage.dart      # User registration
    └── tab/
        ├── tab.dart         # Main tab navigation
        ├── home.dart        # Home page
        ├── search.dart      # Search functionality
        ├── library.dart     # Music library
        ├── premium.dart     # Premium features
        ├── create.dart      # Playlist creation
        └── Widgets/         # Reusable UI components
```

## 🛠️ Built With

- **Flutter** - UI framework
- **Dart** - Programming language
- **Material Design 3** - Design system
- **Cupertino Icons** - iOS-style icons

## 📱 Supported Platforms

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 🎨 Design Features

- **Dark Theme**: Elegant dark interface with gradient backgrounds
- **Custom Colors**: Spotify-inspired green accent colors
- **Responsive Layout**: Adapts to different screen sizes
- **Material Design**: Modern UI components and animations

## 🔧 Development

### Running Tests

```bash
flutter test
```

### Building for Production

**Android:**
```bash
flutter build apk --release
```

**iOS:**
```bash
flutter build ios --release
```

**Web:**
```bash
flutter build web --release
```

## 📄 License

This project is licensed under the terms specified in the [LICENSE](LICENSE) file.

## 🤝 Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📞 Support

If you have any questions or need help with the project, please feel free to open an issue.

---

**Note**: This is a clone/educational project inspired by Spotify's design and functionality. It is not affiliated with Spotify Technology S.A.
