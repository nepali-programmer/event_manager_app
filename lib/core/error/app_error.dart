// ignore_for_file: public_member_api_docs, sort_constructors_first
class AppError implements Exception {
  final String message;
  AppError({
    this.message = '',
  });
}
