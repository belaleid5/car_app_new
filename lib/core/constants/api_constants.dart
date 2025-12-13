class ApiConstants {
  static const String baseUrl = 'https://api.example.com';
  static const String apiVersion = '/v1';
  
  // Endpoints
  static const String carsEndpoint = '$baseUrl$apiVersion/cars';
  static const String carDetailsEndpoint = '$baseUrl$apiVersion/cars';
  static const String createCarEndpoint = '$baseUrl$apiVersion/cars';
  static const String updateCarEndpoint = '$baseUrl$apiVersion/cars';
  static const String deleteCarEndpoint = '$baseUrl$apiVersion/cars';
  
  // Timeouts
  static const Duration connectionTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  
  // Headers
  static const String contentType = 'application/json';
  static const String authorization = 'Authorization';
}
