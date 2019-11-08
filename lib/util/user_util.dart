import 'package:flutter_huobi/bean/user_bean.dart';
import 'package:flutter_huobi/util/shared_preferences_util.dart';
import 'dart:convert';
class UserUtils {
  /// 用户查询
  static Future<UserEntity> getUserEntity(){
      String userJson = SharedPreferenceUtil.get(SharedPreferenceUtil.KEY_USER) as String;
      return json.decode(userJson);
  }
  /// 用户插入
  static saveUserEntity(UserEntity userEntity){
    SharedPreferenceUtil.save(SharedPreferenceUtil.KEY_USER, json.encode(userEntity));
  }
}