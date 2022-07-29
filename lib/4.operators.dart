void main(){
  //空指针 null ?.后缀操作
  // String? s;
  // print(s?.length);


  // ~/ 意思是先进行除法 然后取整
  // print(1/2);
  // print(55~/2);




  // double   n = 1;
  // double n1 = 18.28;
  // int i = n as int;
  // print(i);

  // as 类型转换也可以理解成断言

  //is  判断类型
  // print(n1 is int);

  // is! 判断不是某个类型
  // print(n1 is! int);



  //三目运算符 条件?表达式一:表达式二


  // ??判断是否为空
  bool? isNull;// 最新语法 先要判断 isNull是否为null
  isNull = isNull??false; // 如果不为null 则为他本身 如果为null 则为false
  //或者使用    isNull ??=false;
  print(isNull);
}