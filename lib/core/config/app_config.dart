class AppConfig {
  static const String appName = 'Flutter App';
  static const String appVersion = '1.0.0';
  static const String buildNumber = '1';
  static const String packageName = 'com.example.flutter_app';
  
  // API
  static const String baseUrl = 'https://api.example.com';
  static const int connectTimeout = 30000;
  static const int receiveTimeout = 30000;
  static const int sendTimeout = 30000;
  
  // Environment
  static const String environment = 'development';
  
  // Storage
  static const String secureStorageKey = 'secure_storage_key';
  
  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;
  
  // Features
  static const bool enableLogging = true;
  static const bool enableCrashlytics = false;
  
  static void initialize() {
    // Initialize any configuration here
  }
}