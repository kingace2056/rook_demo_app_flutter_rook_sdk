class ApiConstants {
  static const String baseUrl = 'https://rook.mantralabs.com.np';
  static const String apiPrefix = '/api';

  // Endpoints
  static const String usersEndpoint = '$apiPrefix/users';

  // Sleep endpoints
  static String sleepSummary(String userId) =>
      '$usersEndpoint/$userId/sleep-summary';

  static String allUserData(String userId) => '$usersEndpoint/$userId/';
  static String physicalSummary(String userId) =>
      '$usersEndpoint/$userId/physical-summary';
  static String bodySummary(String userId) =>
      '$usersEndpoint/$userId/body-summary';
  static String userEvents(String userId) => '$usersEndpoint/$userId/events';
  static String userSummary(String userId) => '$usersEndpoint/$userId/summary';
  static String userData(String userId) => '$usersEndpoint/$userId/data';
  static String userDataStructures(String userId) =>
      '$usersEndpoint/$userId/data-structures';
  static String userAvailableDataTypes(String userId) =>
      '$usersEndpoint/$userId/available-data-types';

  // Headers
  static const Map<String, String> defaultHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  // Timeouts
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  static const Duration sendTimeout = Duration(seconds: 30);
}
