# Synclify Solutions — Flutter Internship (Week 2 Task)

## Local Storage & State Management

### Objective
Implement local data storage and state management in a Flutter application.

---

## Features Implemented

### 1. Local Storage (Hive)
Used Hive as the local database. Each user's signup data (name, email, password) is stored with their email as a unique key, so multiple users can sign up without overwriting each other's data.

### 2. Theme Switching (Dark / Light Mode)
Implemented dynamic theme switching using Provider (ChangeNotifier). The selected theme is saved in Hive, so the app remembers the user's preference even after restarting.

### 3. User Session Management
On login, the session (`isLoggedIn`) and current user's email are saved in Hive. On app restart, if the user is already logged in, the app navigates directly to the Home screen. Logout clears the session and redirects to Login.

### 4. Form Validation
Signup and Login forms validate empty fields, matching passwords (signup), and correct credentials (login), with error messages shown via a custom SnackBar.

### 5. State Management (Provider)
Theme state is managed using Provider (ChangeNotifier) instead of manual setState, allowing the theme to update across the entire app.

---

## Tech Stack
- Flutter & Dart
- Hive
- Provider
- Font Awesome Icons

---

## Folder Structure

lib/
├── main.dart
├── color.dart
├── helper/
│ └── helpercode.dart
├── week_1task/
│ ├── loginscreen.dart
│ └── signupscreen.dart
└── week_2task/
├── home.dart
├── usersession.dart
└── theme_provider.dart
---

## How to Run
git clone https://github.com/abdullah-arain9/hive-theme-provider--synclify-week2.git
flutter pub get
flutter run

---

## Author
**Abdullah Arain**
Flutter Developer Intern — Synclify Solutions
[GitHub](https://github.com/abdullah-arain9)
