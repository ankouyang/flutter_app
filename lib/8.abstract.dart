void main(){
    //工厂模式
   // var a = Doer('1');
   // var b = Doer('2');

  // 顶级函数模式
  // var a = doerFactory('1');
  // var b = doerFactory('2');
  //
  //   a.doSomething();
  //   b.doSomething();

  // 可调用类
  var  a = ClassFunction();
    var out  = a('一个','大','帅哥');
    print(out);
}

// 工厂模式
// abstract  class  Doer{
//   factory Doer(String type){
//     switch(type){
//       case '1':return ChildDoer1();
//       case '2':return  ChildDoer2();
//       default: return defaultDoer();
//     }
//   }
//   void  doSomething(){
//     print('按摩');
//   } //定义一个抽象方法 直接使用分号（;）替代方法体即可声明一个抽象方法： 具体的实现让实现它的类去实现该方法
// }
// class   ChildDoer1 implements Doer{
//   void doSomething() {
//     // TODO: implement doSomething
//     print('ChildDoer1');
//   }
// }
// class   ChildDoer2 implements Doer{
//   void doSomething() {
//     // TODO: implement doSomething
//     print('ChildDoer2');
//   }
// }
// class   defaultDoer implements Doer{
//   void doSomething() {
//     // TODO: implement doSomething
//     print('defaultDoer');
//   }
// }

//顶级函数模式
// Doer  doerFactory( String type){
//       switch(type){
//       case '1':return ChildDoer1();
//       case '2':return  ChildDoer2();
//       default: return defaultDoer();
//     }
// }
// abstract  class  Doer{
//
//   void  doSomething(){
//     print('按摩');
//   } //定义一个抽象方法 直接使用分号（;）替代方法体即可声明一个抽象方法： 具体的实现让实现它的类去实现该方法
// }
// class   ChildDoer1 extends Doer{
//   @override
//   void doSomething() {
//     // TODO: implement doSomething
//     print('ChildDoer1-1');
//   }
// }
// class   ChildDoer2 extends Doer{
//   @override
//   void doSomething() {
//     // TODO: implement doSomething
//     print('ChildDoer2-2');
//   }
// }
// class   defaultDoer extends Doer{
//   @override
//   void doSomething() {
//     // TODO: implement doSomething
//     print('defaultDoer');
//   }
// }



//  可调用类
class ClassFunction{
  //类内部调用call方法，这个类可以当一个方法进行调用
   call(String a,String b,String c)=>'我是$a $b $c';
}
