class ApiConstants {
  // Production API URL
  static const String baseUrl = 'https://rook.mantralabs.com.np/';

  // API Endpoints
  static const String usersEndpoint = 'api/users';
  static const String sleepSummaryEndpoint = 'api/users';
  // Connection settings
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  static const Duration sendTimeout = Duration(seconds: 30);

  // Headers
  static const Map<String, String> defaultHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
}

class DemoApiConstants {
  static const String physicalHealthActivity =
      'https://api.rook-connect.review/v2/processed_data/physical_health/events/activity?authorized=true&user_id=demoUserId&date=2022-10-28';

  // Connection settings
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  static const Duration sendTimeout = Duration(seconds: 30);

  // Headers
  static const Map<String, String> defaultHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
}
