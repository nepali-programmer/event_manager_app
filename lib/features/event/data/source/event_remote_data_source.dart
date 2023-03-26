// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:event_manager_app/core/api/api_url.dart';

import '../../../../core/error/app_error.dart';
import '../model/event_model.dart';

abstract class EventRemoteDataSource {
  Future<Either<AppError, List<EventModel>>> eventList({
    required String city,
    String? startDate,
    String? endDate,
  });
}

@LazySingleton(as: EventRemoteDataSource)
class EventRemoteDataSourceImpl implements EventRemoteDataSource {
  final ApiUrl apiUrl;
  EventRemoteDataSourceImpl({
    required this.apiUrl,
  });
  @override
  Future<Either<AppError, List<EventModel>>> eventList({
    required String city,
    String? startDate,
    String? endDate,
  }) async {
    Dio dio = Dio();
    Map<String, dynamic> queryParameters = {
      'city': city,
    };
    if (startDate != null) {
      queryParameters['start_data'] = startDate;
    }
    if (endDate != null) {
      queryParameters['end_date'] = endDate;
    }
    print(queryParameters);
    Response response = await dio.post(
      apiUrl.login,
      queryParameters: queryParameters,
      options: Options(
        headers: {
          'Accept': 'application/json',
        },
      ),
    );
    if (response.statusCode == 200) {
      List<EventModel> events = response.data.map((e) {
        return EventModel.fromJson(e);
      }).toList();
      return Right(events);
    }
    return Left(
      AppError(
        message: response.data.containsKey('message')
            ? response.data['message']
            : '',
      ),
    );
  }
}
