class LoginRequest {
  int? branchId;
  int? culture;
  String? userName;
  String? password;
  int? modId;
  Device? device;

  LoginRequest({this.branchId, this.culture, this.userName, this.password, this.modId, this.device});

  LoginRequest.fromJson(Map<String, dynamic> json) {
    branchId = json['BranchId'];
    culture = json['Culture'];
    userName = json['UserName'];
    password = json['Password'];
    modId = json['ModId'];
    device = json['Device'] != null ? Device.fromJson(json['Device']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['BranchId'] = branchId;
    data['Culture'] = culture;
    data['UserName'] = userName;
    data['Password'] = password;
    data['ModId'] = modId;
    if (device != null) {
      data['Device'] = device!.toJson();
    }
    return data;
  }
}

class Device {
  String? deviceId;
  String? deviceName;
  String? token;
  int? posId;

  Device({this.deviceId, this.deviceName, this.token, this.posId});

  Device.fromJson(Map<String, dynamic> json) {
    deviceId = json['DeviceId'];
    deviceName = json['DeviceName'];
    token = json['Token'];
    posId = json['PosId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['DeviceId'] = deviceId;
    data['DeviceName'] = deviceName;
    data['Token'] = token;
    data['PosId'] = posId;
    return data;
  }
}
