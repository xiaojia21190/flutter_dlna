import 'dart:io';

import 'package:flutter_dlna/dlna_android.dart';
import 'package:flutter_dlna/dlna_interface.dart';
import 'package:flutter_dlna/dlna_ios.dart';

class FlutterDlna {
  DlnaService dlnaService;

  Future<void> init() async {
    if (Platform.isIOS) {
      dlnaService = DlnaIosService();
    } else if (Platform.isAndroid) {
      dlnaService = DlnaAndroidService();
    }

    // ignore: invalid_use_of_protected_member
    await dlnaService.init();
  }

  void setSearchCallback(Function searchCallback) {
    dlnaService.setSearchCallback(searchCallback);
  }

  //搜索设备
  Future<void> search() async {
    // ignore: invalid_use_of_protected_member
    await dlnaService.search();
  }

  //设置视频地址、视频名称
  Future<void> setVideoUrlAndName(String url, String name) async {
    // ignore: invalid_use_of_protected_member
    await dlnaService.setVideoUrlAndName(url, name);
  }

  //设置设备
  Future<void> setDevice(String uuid) async {
    // ignore: invalid_use_of_protected_member
    await dlnaService.setDevice(uuid);
  }

  //启动和播放
  Future<void> startAndPlay() async {
    // ignore: invalid_use_of_protected_member
    await dlnaService.startAndPlay();
  }

  //停止
  Future<void> stop() async {
    // ignore: invalid_use_of_protected_member
    await dlnaService.stop();
  }
}
