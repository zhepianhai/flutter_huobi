class UserEntity {
  String areaCode;
  String email;
  String groupName;
  String groupType;
  int id;
  String idCard;
  String idCardImg1;
  String idCardImg2;
  String idCardImg3;
  String idCardInfo;
  int idCardStatus;
  String idCardTime;
  int idCardType;
  String image;
  String inviteCode;
  int isPublishOtc;
  String lastLoginIp;
  String lastLoginTime;
  int loginTimes;
  String mobile;
  String realName;
  int realNameStatus;
  int referrer;
  int referrerCount;
  int referrerKYCCount;
  String referrerMobile;
  int referrerReward;
  int referrerRewardAll;
  String referrerUrl;
  String registerIp;
  String registerTime;
  int status;
  String updateTime;
  String userName;
  int userType;

  UserEntity(
      {this.areaCode,
      this.email,
      this.groupName,
      this.groupType,
      this.id,
      this.idCard,
      this.idCardImg1,
      this.idCardImg2,
      this.idCardImg3,
      this.idCardInfo,
      this.idCardStatus,
      this.idCardTime,
      this.idCardType,
      this.image,
      this.inviteCode,
      this.isPublishOtc,
      this.lastLoginIp,
      this.lastLoginTime,
      this.loginTimes,
      this.mobile,
      this.realName,
      this.realNameStatus,
      this.referrer,
      this.referrerCount,
      this.referrerKYCCount,
      this.referrerMobile,
      this.referrerReward,
      this.referrerRewardAll,
      this.referrerUrl,
      this.registerIp,
      this.registerTime,
      this.status,
      this.updateTime,
      this.userName,
      this.userType});

  UserEntity.fromJson(Map<String, dynamic> json) {
    areaCode = json['areaCode'];
    email = json['email'];
    groupName = json['groupName'];
    groupType = json['groupType'];
    id = json['id'];
    idCard = json['idCard'];
    idCardImg1 = json['idCardImg1'];
    idCardImg2 = json['idCardImg2'];
    idCardImg3 = json['idCardImg3'];
    idCardInfo = json['idCardInfo'];
    idCardStatus = json['idCardStatus'];
    idCardTime = json['idCardTime'];
    idCardType = json['idCardType'];
    image = json['image'];
    inviteCode = json['inviteCode'];
    isPublishOtc = json['isPublishOtc'];
    lastLoginIp = json['lastLoginIp'];
    lastLoginTime = json['lastLoginTime'];
    loginTimes = json['loginTimes'];
    mobile = json['mobile'];
    realName = json['realName'];
    realNameStatus = json['realNameStatus'];
    referrer = json['referrer'];
    referrerCount = json['referrerCount'];
    referrerKYCCount = json['referrerKYCCount'];
    referrerMobile = json['referrerMobile'];
    referrerReward = json['referrerReward'];
    referrerRewardAll = json['referrerRewardAll'];
    referrerUrl = json['referrerUrl'];
    registerIp = json['registerIp'];
    registerTime = json['registerTime'];
    status = json['status'];
    updateTime = json['updateTime'];
    userName = json['userName'];
    userType = json['userType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['areaCode'] = this.areaCode;
    data['email'] = this.email;
    data['groupName'] = this.groupName;
    data['groupType'] = this.groupType;
    data['id'] = this.id;
    data['idCard'] = this.idCard;
    data['idCardImg1'] = this.idCardImg1;
    data['idCardImg2'] = this.idCardImg2;
    data['idCardImg3'] = this.idCardImg3;
    data['idCardInfo'] = this.idCardInfo;
    data['idCardStatus'] = this.idCardStatus;
    data['idCardTime'] = this.idCardTime;
    data['idCardType'] = this.idCardType;
    data['image'] = this.image;
    data['inviteCode'] = this.inviteCode;
    data['isPublishOtc'] = this.isPublishOtc;
    data['lastLoginIp'] = this.lastLoginIp;
    data['lastLoginTime'] = this.lastLoginTime;
    data['loginTimes'] = this.loginTimes;
    data['mobile'] = this.mobile;
    data['realName'] = this.realName;
    data['realNameStatus'] = this.realNameStatus;
    data['referrer'] = this.referrer;
    data['referrerCount'] = this.referrerCount;
    data['referrerKYCCount'] = this.referrerKYCCount;
    data['referrerMobile'] = this.referrerMobile;
    data['referrerReward'] = this.referrerReward;
    data['referrerRewardAll'] = this.referrerRewardAll;
    data['referrerUrl'] = this.referrerUrl;
    data['registerIp'] = this.registerIp;
    data['registerTime'] = this.registerTime;
    data['status'] = this.status;
    data['updateTime'] = this.updateTime;
    data['userName'] = this.userName;
    data['userType'] = this.userType;
    return data;
  }
}
