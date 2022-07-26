void main(){
   // int a = 100;
   // double b = 100.55644;
   // num c = 1000;
   // print(a);
   // print(b);
   // print(c);

   // var a = '你大爷的';
   // String  s1= 'sddasdasdas${a}';
  //  String  s2= "sddasdasdas" "nmmp" "caondsad";
  //  String  s3= r'''
  //  sdd \nas
  //  dasd
  //  as
  //  ''';
  //
  //  StringBuffer sb = StringBuffer();
  //  //java必须这么写
  //  // sb.write('mmp');
  //  // sb.write('date');
  //
  //
  //  // dart可以级联 链式掉调用
  //  sb..write('mp')..write('daye')..writeAll([1,2,3]);
  //
  //
  //
  //
  // print(s1);
  // print(s2);
  // print(s3);
  // print(sb);


   // print(double );

  // List ls =List(2) 、、这种固定数组长度的方法已经废弃,需要是使用List.filled()方法来替代


  // List ls = List.filled(2, 1, growable: false);
  // print(ls);

  // List  ls = [];
  // ls.add(445);
  // ls.add('jbg');
  // ls.add('jbg');
  // print(ls);

  // 字面量的方式
  // var  a = <String>{'a','b','c'};
  // a.addAll(['mmp','jbg','wangzheyun']);
  //
  // print(a);
  //
  // // Set构造函数的方式
  // var  c = Set();
  // c.add('xxx');
  // print(c);


  // var set1 = <int>{};
  // var set2 = <int>{};
  // set1.addAll([1,2,3,4]);
  // set2.addAll([1,2,5,6]);
  //difference
  // var dif =set1.difference(set2);
  // print(dif);
  //intersection
  // var dif =set2.intersection(set1);

  // union
  // var dif =set2.union(set1);
  // print(dif);


  Runes  runes = Runes('\u{1f699} \u6218');
  print(runes);
  var str1 = String.fromCharCodes(runes);
  print(str1);

  // Symbol  sy=  Symbol('symbol');
  // print(sy);

}