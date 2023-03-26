import 'package:injectable/injectable.dart';

@LazySingleton()
class ApiUrl {
  final String _baseUrl = 'http://localhost:8000';
  String get login => '$_baseUrl/api/token';
  String get ticketType => '$_baseUrl/ticket-type';
  String get event => '$_baseUrl/event';
}