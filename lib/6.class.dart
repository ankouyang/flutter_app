void main(){
   // var a =   Point2.fromJson();//命名构造函数
   // var b =   Point1(20,30);//普通的够着函数
   // print(a.x);
   // print(a.y);
   // print(b);
   // var p =  Person('yh');
   // print(p.age);

  const A = Animal(120.58, 165.5);
  print(A.height);
  print(A.weight);
  // Dog dog = Dog.initial();
  // Dog dog1 = Dog();  /// print result: animal initial
  // Dog dog2 = Dog.create(); /// print result: animal create

  // Animal animal = Animal.initial(100, 180);
  // print(animal.weight);
  // print(animal.height);
}


// //普通的够着函数
// class Point1{
//   //这里都要进行一层判空
//   num x = 0;
//   num y = 0;
//   Point1(this.x,this.y);// dart的语法糖,可以直接省略赋值的过程
// }
//
//
//
// //命名构造函数
// class Point2{
//   //这里都要进行一层判空
//   num x = 0;
//   num y = 0;
//   Point2.fromJson(){
//     x=0;
//     y=0;
// }

//重定构造函数
// class Person {
//   String name;
//   int age = 199;
//   // 构造函数 并且给age默认值
//   // Person(this.name) : age = 10;
//
//   // 构造函数的重定向
//   Person(String name) : this._inernal(name, 20);
//   Person._inernal(this.name, this.age);
// }


//常量构造函数
class  Animal{
  final double  weight;
  final double height;
  //使用const进行修饰
  const Animal(this.weight,this.height);
}


// 无名无参构造函数的继承与调用
// class Animal {}
// class Dog extends Animal {
//   Dog() {
//     print('dog');
//   }
// }
//

// 子类必须调用父类的构造函数，所以这里是自动调用了父类的默认构造函数
// class Animal {
//   /// 自定义无名无参构造函数
//   Animal() {
//     print('animal');
//   }
//
//   /// 自定义命名构造函数
//   Animal.initial() {
//     print('animal initial');
//   }
// }
//
// class Dog extends Animal {
//   // 父类存在无名无参构造函数,调用够着函数的
//   // Dog() {
//   //   print('dog');
//   // }
//   /// print result: animal
//   /// print result: dog
//   // 父类存在无名无参构造函数，子类调用其他构造函数时：
//   Dog.initial() {
//     // print('dog initial');
//   }
// }


// 子类手动调用父类的构造函数
// class Animal {
//   Animal.initial() {
//     print('animal initial');
//   }
//
//   Animal.create() {
//     print('animal create');
//   }
// }
//
// class Dog extends Animal {
//   //无名无参构造函数,在初始化列表的时候，使用super手动调用父类命名构造函数
//   Dog() : super.initial();
//
//   Dog.create() : super.create();
// }

// 初始化列表
// class Person{
//    Person.create(){
//      print('create');
//    }
// }
//
//
// class Animal extends Person {
//   final double height;
//   final double weight;
//
//   Animal.initial(double weight, double height): height = weight, weight = weight,super.create();
// }




