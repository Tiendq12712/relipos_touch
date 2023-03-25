class DataEntity {
  dynamic userId;
  dynamic objId;
  String? userName;
  String? passWord;
  String? passWord1;
  String? passencryptt;
  bool? isActive;
  String? lastUpdate;
  bool? isDefault;
  bool? isUsing;
  String? barcode;
  bool? checkLogin;
  bool? isSpecial;
  dynamic createBy;
  dynamic userType;
  dynamic objType;
  dynamic objDemoNumber;
  dynamic lsDemo;
  bool? isVirtual;

  DataEntity(
      {userId,
        objId,
        userName,
        passWord,
        passWord1,
        passencryptt,
        isActive,
        lastUpdate,
        isDefault,
        isUsing,
        barcode,
        checkLogin,
        isSpecial,
        createBy,
        userType,
        objType,
        objDemoNumber,
        lsDemo,
        isVirtual});

  DataEntity.fromJson(Map<String, dynamic> json) {
    userId = json['UserId'];
    objId = json['ObjId'];
    userName = json['UserName'];
    passWord = json['PassWord'];
    passWord1 = json['PassWord1'];
    passencryptt = json['Passencryptt'];
    isActive = json['isActive'];
    lastUpdate = json['LastUpdate'];
    isDefault = json['IsDefault'];
    isUsing = json['IsUsing'];
    barcode = json['Barcode'];
    checkLogin = json['CheckLogin'];
    isSpecial = json['IsSpecial'];
    createBy = json['CreateBy'];
    userType = json['UserType'];
    objType = json['ObjType'];
    objDemoNumber = json['ObjDemoNumber'];
    lsDemo = json['LsDemo'];
    isVirtual = json['isVirtual'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['UserId'] = userId;
    data['ObjId'] = objId;
    data['UserName'] = userName;
    data['PassWord'] = passWord;
    data['PassWord1'] = passWord1;
    data['Passencryptt'] = passencryptt;
    data['isActive'] = isActive;
    data['LastUpdate'] = lastUpdate;
    data['IsDefault'] = isDefault;
    data['IsUsing'] = isUsing;
    data['Barcode'] = barcode;
    data['CheckLogin'] = checkLogin;
    data['IsSpecial'] = isSpecial;
    data['CreateBy'] = createBy;
    data['UserType'] = userType;
    data['ObjType'] = objType;
    data['ObjDemoNumber'] = objDemoNumber;
    data['LsDemo'] = lsDemo;
    data['isVirtual'] = isVirtual;
    return data;
  }
}