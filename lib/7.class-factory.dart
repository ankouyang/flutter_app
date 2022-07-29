void main(){
   // var a = Sington('卧槽22222');
   // print(a.name);
  var rect = ReatRangle(3,4,10,10);
  // rect.right = 7;
  // print(rect.left);
  rect.bottom = 2;
  print(rect.bottom);

}
// 单例模式
// class Sington{
//  String ?name;
//  static Sington ? _cache;
//
//  //用于单例的创建, 工厂构造函数是不能访问this
//  factory Sington([ String name ='Sington'])=>_cache??=Sington._newObject(name);
//
//  Sington._newObject(this.name);
// }

// settter和setter
// Getter 和 Setter 是一对用来读写对象属性的特殊方法，上面说过实例对象的每一个属性都有一个隐式的 Getter 方法，如果为非 final 属性的话还会有一个 Setter 方法，
// 你可以使用 get 和 set 关键字为额外的属性添加 Getter 和 Setter 方法：


class ReatRangle {
  double left, top, width, height;

  ReatRangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom; 这里直接可以算出right 和 bottom
  double get right => left + width; //隐示的Getter方法展示
  set right(double value) => left = value - width; // 非final可以进行set方法更改
  double get bottom => top + height; //隐示的Getter方法展示
  set bottom(double value) => top = value - height;
}