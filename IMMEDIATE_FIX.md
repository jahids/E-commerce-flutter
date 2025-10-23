# Immediate Fix for Google Sign-In Issue

## 🚨 Current Issue
You're getting "lost connection to device" when clicking Google sign-in because Google OAuth is not configured.

## 📱 Your Project Details
- **Package Name**: `com.example.flutter_app`
- **Supabase URL**: `https://briitlooaqlgedighfol.supabase.co`
- **Platform**: iOS Simulator (iPhone 16 Pro)

## 🔧 Quick Fix Steps

### Step 1: Google Cloud Console Setup

1. **Go to Google Cloud Console**: https://console.cloud.google.com
2. **Create/Select Project**: Create a new project or use existing one
3. **Enable APIs**:
   - Go to "APIs & Services" > "Library"
   - Search for "Google Identity" and enable it
   - Search for "Google Sign-In" and enable it

4. **Create OAuth Credentials**:
   - Go to "APIs & Services" > "Credentials"
   - Click "Create Credentials" > "OAuth 2.0 Client IDs"
   - Choose "iOS" as application type
   - **Bundle ID**: `com.example.flutterApp` (note the capital F)
   - Click "Create"

5. **Copy the Client ID** (looks like: `123456789-abcdefghijklmnop.apps.googleusercontent.com`)

### Step 2: Supabase Configuration

1. **Go to Supabase Dashboard**: https://supabase.com/dashboard
2. **Select your project**: `briitlooaqlgedighfol`
3. **Go to Authentication** > **Providers**
4. **Find Google** and click **Enable**
5. **Enter your Google credentials**:
   - **Client ID**: (paste your Google Client ID)
   - **Client Secret**: (leave empty for iOS)
6. **Add Redirect URI**: `https://briitlooaqlgedighfol.supabase.co/auth/v1/callback`
7. **Click Save**

### Step 3: Update Flutter Config

Open `lib/config/supabase_config.dart` and add your Google Client ID:

```dart
class SupabaseConfig {
  static const String supabaseUrl = 'https://briitlooaqlgedighfol.supabase.co';
  static const String supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJyaWl0bG9vYXFsZ2VkaWdoZm9sIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTQ4MTk0MjAsImV4cCI6MjA3MDM5NTQyMH0.nMjToyBg1kZhLZHx23TW5wcNHwBzmv1QXUr3kxCo5Uc';
  
  // Add your Google OAuth Client ID here
  static const String googleClientId = 'YOUR_GOOGLE_CLIENT_ID_HERE';
  static const String googleClientSecret = ''; // Leave empty for iOS
  
  // App configuration
  static const String appName = 'Flutter App with Supabase';
  static const String appVersion = '1.0.0';
  
  // Redirect URLs for OAuth
  static String get redirectUrl => '$supabaseUrl/auth/v1/callback';
}
```

### Step 4: iOS Configuration

Add to `ios/Runner/Info.plist` (inside the `<dict>` tag):

```xml
<key>CFBundleURLTypes</key>
<array>
    <dict>
        <key>CFBundleURLName</key>
        <string>com.example.flutterApp</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <string>com.example.flutterApp</string>
        </array>
    </dict>
</array>
```

### Step 5: Test

1. **Stop the app** (Ctrl+C in terminal)
2. **Clean and rebuild**:
   ```bash
   flutter clean
   flutter pub get
   flutter run
   ```
3. **Try Google sign-in again**

## 🔍 Debug Information

The app now includes debug prints. When you tap the Google sign-in button, check the console for:
- "Starting Google sign-in process..."
- "Google user obtained: [email]"
- "Google authentication completed"
- "Supabase auth response: [email]"

If you see any errors, they will be printed to help diagnose the issue.

## 🆘 Still Having Issues?

1. **Check Supabase Dashboard**: Go to Authentication > Users to see if users are being created
2. **Check Console Output**: Look for specific error messages
3. **Verify Redirect URI**: Must be exactly `https://briitlooaqlgedighfol.supabase.co/auth/v1/callback`
4. **Check Google Cloud Console**: Ensure the Bundle ID matches exactly

## 📞 Need More Help?

If you're still stuck:
1. Share the console output when you tap the Google sign-in button
2. Check if you see any users in your Supabase Authentication > Users section
3. Verify all the configuration steps above
