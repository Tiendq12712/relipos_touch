import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:relipos_touch/exception/exception.dart';

Future<void> showErrorDialog(Object o) async {
  if (o is HttpErrorException) {
    return EasyLoading.showError(o.msg ?? 'error');
  }
  return EasyLoading.showError('status');
}