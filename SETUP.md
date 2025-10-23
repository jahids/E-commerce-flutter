# Quick Setup Guide

## 🚀 Getting Started

This Flutter app includes Google authentication with Supabase and 4 main screens with navigation.

### 1. Configure Supabase

1. Copy `lib/config/supabase_config.example.dart` to `lib/config/supabase_config.dart`
2. Replace the placeholder values with your actual Supabase credentials:
   - `supabaseUrl`: Your Supabase project URL
   - `supabaseAnonKey`: Your Supabase anon key

### 2. Set up Google OAuth

1. Go to [Google Cloud Console](https://console.cloud.google.com)
2. Create OAuth 2.0 credentials
3. Add your app's package name and SHA-1 fingerprint
4. Enable Google+ API
5. Configure Supabase Google OAuth with your credentials

### 3. Run the App

```bash
flutter pub get
flutter run
```

## 📱 App Features

### Authentication
- Google Sign-In integration
- Automatic session management
- Secure token storage

### Screens
1. **Login Screen** - Beautiful gradient UI with Google sign-in
2. **Home Screen** - User info and recent activity
3. **Notifications Screen** - Interactive notifications with swipe-to-delete
4. **Profile Screen** - User profile and account settings
5. **Settings Screen** - App configuration and preferences

### Navigation
- Bottom navigation bar with 4 menu items
- Smooth transitions between screens
- Persistent navigation state

## 🔧 Configuration Files

- `lib/config/supabase_config.dart` - Supabase credentials
- `lib/services/auth_service.dart` - Authentication logic
- `lib/screens/` - All app screens
- `lib/main.dart` - App entry point and navigation

## 📋 Dependencies

- `supabase_flutter` - Supabase client
- `google_sign_in` - Google authentication
- `flutter_secure_storage` - Secure storage

## 🎯 Next Steps

1. Replace placeholder credentials in `supabase_config.dart`
2. Configure Google OAuth in Supabase dashboard
3. Test authentication flow
4. Customize UI and add your features

## 🆘 Need Help?

Check the main `README.md` file for detailed setup instructions and troubleshooting.
