import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';

import '../core/theme/app_theme.dart';
import '../core/routes/app_router.dart';
import '../core/constants/app_constants.dart';
import '../core/network/dio_client.dart';
import '../core/storage/secure_storage.dart';
import '../core/storage/preferences_storage.dart';
import '../core/utils/logger.dart';

// Providers for core services
final loggerProvider = Provider<Logger>((ref) => AppLogger.logger);
final dioProvider = Provider<Dio>((ref) => DioClient.create());
final secureStorageProvider = Provider<SecureStorage>((ref) => SecureStorage());
final preferencesStorageProvider = Provider<PreferencesStorage>((ref) => PreferencesStorage());

// App configuration provider
final appConfigProvider = Provider<AppConfig>((ref) => AppConfig());

@immutable
class AppConfig {
  final String baseUrl = AppConstants.baseUrl;
  final int connectTimeout = AppConstants.connectTimeout;
  final int receiveTimeout = AppConstants.receiveTimeout;
  final int sendTimeout = AppConstants.sendTimeout;
}

// Initialize all core dependencies
Future<void> initializeDependencies() async {
  // Initialize SharedPreferences
  SharedPreferences.setMockInitialValues({});
  await SharedPreferences.getInstance();
  
  // Initialize logger
  AppLogger.init();
}