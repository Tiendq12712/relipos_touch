class HttpErrorException implements Exception {
  const HttpErrorException({this.msg});
  final String? msg;
}
