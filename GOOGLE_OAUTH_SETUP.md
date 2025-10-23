# Google OAuth Setup Guide

## 🔧 Fix for "Lost Connection to Device" Error

The "lost connection to device" error occurs because Google OAuth is not properly configured. Follow these steps to fix it:

## Step 1: Google Cloud Console Setup

### 1.1 Create/Select Project
1. Go to [Google Cloud Console](https://console.cloud.google.com)
2. Create a new project or select your existing project
3. Note your **Project ID** (you'll need this later)

### 1.2 Enable APIs
1. Go to **APIs & Services** > **Library**
2. Search for and enable these APIs:
   - **Google+ API** (or Google Identity API)
   - **Google Sign-In API**

### 1.3 Create OAuth 2.0 Credentials
1. Go to **APIs & Services** > **Credentials**
2. Click **Create Credentials** > **OAuth 2.0 Client IDs**
3. Select **Android** as application type
4. Fill in the details:
   - **Package name**: `com.example.flutter_app` (or your actual package name)
   - **SHA-1 certificate fingerprint**: Get this from your project

### 1.4 Get SHA-1 Fingerprint
Run this command in your Flutter project directory:
```bash
# For debug build
keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android

# For release build (if you have a keystore)
keytool -list -v -keystore your-keystore.jks -alias your-alias
```

### 1.5 Copy Credentials
After creating the OAuth client, copy:
- **Client ID** (looks like: `123456789-abcdefghijklmnop.apps.googleusercontent.com`)
- **Client Secret**

## Step 2: Supabase Configuration

### 2.1 Enable Google Provider
1. Go to your [Supabase Dashboard](https://supabase.com/dashboard)
2. Select your project
3. Go to **Authentication** > **Providers**
4. Find **Google** and click **Enable**

### 2.2 Configure Google OAuth
1. In the Google provider settings, enter:
   - **Client ID**: Your Google OAuth Client ID
   - **Client Secret**: Your Google OAuth Client Secret
2. Add **Authorized redirect URIs**:
   - `https://briitlooaqlgedighfol.supabase.co/auth/v1/callback`
3. Click **Save**

## Step 3: Update Flutter Configuration

### 3.1 Update Config File
Open `lib/config/supabase_config.dart` and add your Google credentials:

```dart
class SupabaseConfig {
  static const String supabaseUrl = 'https://briitlooaqlgedighfol.supabase.co';
  static const String supabaseAnonKey = 'your-anon-key';
  
  // Add your Google OAuth credentials here
  static const String googleClientId = 'your-google-client-id.apps.googleusercontent.com';
  static const String googleClientSecret = 'your-google-client-secret';
  
  // ... rest of the config
}
```

### 3.2 Android Configuration
Add to `android/app/build.gradle`:

```gradle
android {
    defaultConfig {
        // ... other configs
        manifestPlaceholders += [
            'appAuthRedirectScheme': 'com.example.flutter_app'
        ]
    }
}
```

### 3.3 iOS Configuration (if needed)
Add to `ios/Runner/Info.plist`:

```xml
<key>CFBundleURLTypes</key>
<array>
    <dict>
        <key>CFBundleURLName</key>
        <string>com.example.flutter_app</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <string>com.example.flutter_app</string>
        </array>
    </dict>
</array>
```

## Step 4: Test the Setup

### 4.1 Hot Restart
1. Stop the app (Ctrl+C in terminal)
2. Run `flutter clean`
3. Run `flutter pub get`
4. Run `flutter run`

### 4.2 Debug Mode
The app now includes debug prints. Check the console output when you tap the Google sign-in button to see where the process fails.

## Common Issues & Solutions

### Issue 1: "Network error" or "Connection lost"
- **Cause**: Google OAuth not configured in Supabase
- **Solution**: Complete Step 2 above

### Issue 2: "Invalid client" error
- **Cause**: Wrong Client ID or package name mismatch
- **Solution**: Verify Client ID and package name in Google Cloud Console

### Issue 3: "Redirect URI mismatch"
- **Cause**: Wrong redirect URI in Supabase
- **Solution**: Use the exact redirect URI: `https://briitlooaqlgedighfol.supabase.co/auth/v1/callback`

### Issue 4: SHA-1 fingerprint error
- **Cause**: Wrong SHA-1 fingerprint in Google Cloud Console
- **Solution**: Regenerate SHA-1 and update in Google Cloud Console

## Verification Steps

1. **Check Supabase Dashboard**: Go to Authentication > Users to see if users are being created
2. **Check Google Cloud Console**: Go to APIs & Services > OAuth consent screen to see if requests are coming through
3. **Check Flutter Console**: Look for debug prints to trace the authentication flow

## Need Help?

If you're still having issues:
1. Check the console output for specific error messages
2. Verify all credentials are correct
3. Ensure all APIs are enabled in Google Cloud Console
4. Make sure the redirect URI is exactly as specified
