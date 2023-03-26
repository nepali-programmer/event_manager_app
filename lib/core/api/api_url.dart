import 'package:injectable/injectable.dart';

@LazySingleton()
class ApiUrl {
  final String _baseUrl = 'http://10.0.2.2:8000';
  String get login => '$_baseUrl/api/token';
  String get ticketType => '$_baseUrl/ticket-type';
  String get event => '$_baseUrl/api/event';
  String get imageUrl => '$_baseUrl/images';
}
