import 'package:relipos_touch/domain/entities/config_entity.dart';
import 'package:relipos_touch/domain/entities/data_entity.dart';

class LoginResponse {
  dynamic status;
  dynamic exceptionTitle;
  dynamic exceptionMessage;
  DataEntity? dataResponse;
  ConfigEntity? config;
  String? jwtToken;
  bool? isAlertLicense;
  String? licenseAlert;

  LoginResponse({status, exceptionTitle, exceptionMessage, data, config, jwtToken, isAlertLicense, licenseAlert});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    exceptionTitle = json['Exception_Title'];
    exceptionMessage = json['Exception_Message'];
    dataResponse = json['Data'] != null ? DataEntity.fromJson(json['Data']) : null;
    config = json['Config'] != null ? ConfigEntity.fromJson(json['Config']) : null;
    jwtToken = json['JwtToken'];
    isAlertLicense = json['isAlertLicense'];
    licenseAlert = json['LicenseAlert'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Status'] = status;
    data['Exception_Title'] = exceptionTitle;
    data['Exception_Message'] = exceptionMessage;
    if (dataResponse != null) {
      data['Data'] = dataResponse!.toJson();
    }
    if (config != null) {
      data['Config'] = config!.toJson();
    }
    data['JwtToken'] = jwtToken;
    data['isAlertLicense'] = isAlertLicense;
    data['LicenseAlert'] = licenseAlert;
    return data;
  }
}
