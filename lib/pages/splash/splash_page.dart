import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_huobi/bean/user_bean.dart';
import 'package:flutter_huobi/constant/Constant.dart';
import 'package:flutter_huobi/util/screen_utils.dart';
import 'package:flutter_huobi/util/shared_preferences_util.dart';
import 'package:flutter_huobi/util/user_util.dart';
import 'package:flutter_huobi/widget/ContainerPage.dart';

///打开APP首页
class SplashWidget extends StatefulWidget {
  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}
class _SplashWidgetState extends State<SplashWidget> {
  var container = ContainerPage();
  bool showAd = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Offstage(
          child: container,
          offstage: showAd,
        ),
        Offstage(
          child: Container(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment(0.0, 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: ScreenUtils.screenW(context) / 3,
                        backgroundColor: Colors.white,
                        backgroundImage:
                        AssetImage(Constant.ASSETS_IMG + 'icon.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          '欢迎来到火币',
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
                SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                          alignment: Alignment(1.0, 0.0),
                          child: Container(
                            margin: const EdgeInsets.only(right: 30.0, top: 20.0),
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 2.0, bottom: 2.0),
                            child: CountDownWidget(
                              onCountDownFinishCallBack: (bool value) {
                                if (value) {
                                  setState(() {
                                    showAd = false;
                                    intentCheck();

                                  });
                                }
                              },
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xffEDEDED),
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10.0))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                Constant.ASSETS_IMG + 'icon.png',
                                width: 50.0,
                                height: 50.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  '火币',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
            width: ScreenUtils.screenW(context),
            height: ScreenUtils.screenH(context),
          ),
          offstage: !showAd,
        )
      ],
    );
  }

  void intentCheck() {
      UserEntity userEntity=UserUtils.getUserEntity() as UserEntity;
      if(null==userEntity||userEntity.id.toString().length==0){
        //跳转登录

      }else{
        //进入主页
      }
  }

}

class CountDownWidget extends StatefulWidget {
  final onCountDownFinishCallBack;

  CountDownWidget({Key key, @required this.onCountDownFinishCallBack})
      : super(key: key);

  @override
  _CountDownWidgetState createState() => _CountDownWidgetState();
}

class _CountDownWidgetState extends State<CountDownWidget> {
  var _seconds = 3;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '$_seconds',
      style: TextStyle(fontSize: 17.0),
    );
  }

  /// 启动倒计时的计时器。
  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
      if (_seconds <= 1) {
        widget.onCountDownFinishCallBack(true);
        _cancelTimer();
        return;
      }
      _seconds--;
    });
  }

  /// 取消倒计时的计时器。
  void _cancelTimer() {
    _timer?.cancel();
  }
}
