class LoginResponseModel {
  bool? success;
  Response? response;

  LoginResponseModel({this.success, this.response});

  factory LoginResponseModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return LoginResponseModel();
    return LoginResponseModel(
      success: json['success'] as bool?,
      response: json['response'] != null
          ? Response.fromJson(json['response'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['success'] = success;
    if (response != null) {
      data['response'] = response!.toJson();
    }
    return data;
  }
}

class Response {
  Data? data;
  String? accessToken;

  Response({this.data, this.accessToken});

  factory Response.fromJson(Map<String, dynamic>? json) {
    if (json == null) return Response();
    return Response(
      data: json['data'] != null
          ? Data.fromJson(json['data'] as Map<String, dynamic>)
          : null,
      accessToken: json['access_token'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) data['data'] = this.data!.toJson();
    data['access_token'] = accessToken;
    return data;
  }
}

class Data {
  int? id;
  String? fullName;
  String? phoneNumber;
  String? logo;
  String? occupation;
  Province? province;
  String? email;
  bool? claimReward;
  String? referelCode;
  int? reward;
  int? gift;
  String? role;
  int? totalInvite;
  bool? isReferenceUsed;
  bool? firstTimeLogin;
  bool? uploadVideo;
  bool? isRating;

  Data({
    this.id,
    this.fullName,
    this.phoneNumber,
    this.logo,
    this.occupation,
    this.province,
    this.email,
    this.claimReward,
    this.referelCode,
    this.reward,
    this.gift,
    this.role,
    this.totalInvite,
    this.isReferenceUsed,
    this.firstTimeLogin,
    this.uploadVideo,
    this.isRating,
  });

  factory Data.fromJson(Map<String, dynamic>? json) {
    if (json == null) return Data();

    int? parseInt(dynamic value) {
      if (value == null) return null;
      if (value is int) return value;
      if (value is double) return value.toInt();
      if (value is String) return int.tryParse(value);
      return null;
    }

    return Data(
      id: parseInt(json['id']),
      fullName: json['full_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      logo: json['logo']?.toString(),
      occupation: json['occupation'] as String?,
      province: json['province'] != null
          ? Province.fromJson(json['province'] as Map<String, dynamic>)
          : null,
      email: json['email'] as String?,
      claimReward: json['claim_reward'] as bool?,
      referelCode: json['referel_code'] as String?,
      reward: parseInt(json['reward']),
      gift: parseInt(json['gift']),
      role: json['role'] as String?,
      totalInvite: parseInt(json['total_invite']),
      isReferenceUsed: json['is_reference_used'] as bool?,
      firstTimeLogin: json['first_time_login'] as bool?,
      uploadVideo: json['upload_video'] as bool?,
      isRating: json['is_rating'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['full_name'] = fullName;
    data['phone_number'] = phoneNumber;
    data['logo'] = logo;
    data['occupation'] = occupation;
    if (province != null) data['province'] = province!.toJson();
    data['email'] = email;
    data['claim_reward'] = claimReward;
    data['referel_code'] = referelCode;
    data['reward'] = reward;
    data['gift'] = gift;
    data['role'] = role;
    data['total_invite'] = totalInvite;
    data['is_reference_used'] = isReferenceUsed;
    data['first_time_login'] = firstTimeLogin;
    data['upload_video'] = uploadVideo;
    data['is_rating'] = isRating;
    return data;
  }
}

class Province {
  int? id;
  String? name;
  String? image;
  String? createdAt;

  Province({this.id, this.name, this.image, this.createdAt});

  factory Province.fromJson(Map<String, dynamic>? json) {
    if (json == null) return Province();
    int? parseInt(dynamic value) {
      if (value == null) return null;
      if (value is int) return value;
      if (value is double) return value.toInt();
      if (value is String) return int.tryParse(value);
      return null;
    }

    return Province(
      id: parseInt(json['id']),
      name: json['name'] as String?,
      image: json['image'] as String?,
      createdAt: json['created_at'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['created_at'] = createdAt;
    return data;
  }
}
