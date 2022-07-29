void main(){
  // var bike = transportFactory('bike');
  // var car = transportFactory('car');
  // var moto = transportFactory('moto');
  // bike.tranport();
  // car.tranport();
  // moto.tranport();

  print(AB().getMessage());
  print(BA().getMessage());
  print(C().getMessage());
  print(CC().getMessage());
}
//使用顶级函数方式
Transportation  transportFactory( String type){
      switch(type){
        case 'bike':return Bike();
        case 'moto':return Moto();
        default:return Car();
      }
}


//抽出公用的方法组成一个新的类
class  TwoWheel{
   String powerUnit()=>'2个轮子';
}
class  FourWheel{
  String powerUnit()=>'4个轮子';
}
class  LowSafe{
  String safeIndex()=>'low';
}
class  HighSafe{
  String safeIndex()=>'high';
}
class  MiddleSafe{
  String safeIndex()=>'middle';
}

class  BodyEnergy{
  String energy()=>'脚蹬';
}
class  GasEnergy{
  String energy()=>'汽油';
}

//交通工具
abstract  class Transportation{
  void tranport();// 抽象方法
}

// 自行车
class  Bike  extends Transportation with LowSafe,TwoWheel,BodyEnergy{
  // String safeIndex()=>'low';
  // String powerUnit()=>'2个轮子';
  // String energy()=>'脚蹬';
  @override
  void tranport() {
    // TODO: implement tranport
    print('我的交通工具是自行车${safeIndex()} ${powerUnit()} ${energy()}');
  }

}
// 摩托车
class Moto extends Transportation with MiddleSafe,TwoWheel,GasEnergy{
  // String safeIndex()=>'middle';
  // String powerUnit()=>'2个轮子';
  // String energy()=>'汽油';
  @override
  void tranport() {
    // TODO: implement tranport
    print('我的交通工具是摩托车 ${safeIndex()} ${powerUnit()} ${energy()}');
  }
}

// 小轿车
class Car extends Transportation with HighSafe,FourWheel,GasEnergy{
  // String safeIndex()=>'high';
  // String powerUnit()=>'4个轮子';
  // String energy()=>'汽油';
  @override
  void tranport() {
    // TODO: implement tranport
    print('我的交通工具是小轿车 ${safeIndex()} ${powerUnit()} ${energy()}');
  }

}






//继承顺序问题
class A{
  String getMessage()=>'A';
}

class B{
  String getMessage()=>'B';
}

class P{
  String getMessage()=>'P';
}

class C extends P with A,B{
   @override
  String getMessage()=>'C';
}

class AB extends P with A,B{

}

class BA extends P with B,A{

}

class  CC  extends P with B implements A{

}
