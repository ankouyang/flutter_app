
import 'dart:math';
import 'package:dio/dio.dart';

// import 'mylib.dart' hide MyLib;//出来MyLib 之外的 都引入进来
// import 'mylib.dart' show MyLib;//只引入MyLib
import 'mylib.dart' deferred as lazyLib; //延迟导入 按需加载()需要的时候才加载


import 'core/lib.dart';//引入自定义的库

void lazyLoad() async{
  await lazyLib.loadLibrary();
}


void main(){
  print( sqrt(2));
  doHttp();
   // var a =Test();
  doUntil();
}

void doHttp() async {
  try {
    var response = await Dio().get('https://ankouyang.club/api/next/home');
    print(response);
  } catch (e) {
    print(e);
  }
}

