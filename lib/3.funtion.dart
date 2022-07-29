void main(){

 // print(add(1));
 //  print(add2(list:[2,3,4]));
  // print(str('sss'));
  // printFunc();
  // printFunc1('mmp');
  // var a =test(['1','2','3','4'],test1);
  // print(a);
  // var  demo =  ['a','b','c','c'];
  // demo.forEach((item)=>print(item));
  print(makeAddFunc(999)(1));
  //
  //  MyFunc addFun = add(11, 22);
  //  print(addFun);
  //  MyFunc  divideFun = divide(33, 3);
  //  print(divideFun);

}


// 闭包
Function makeAddFunc(int a){
  a++;
  return (y)=>a+y;
}

// 函数别名

// typedef MyFunc = Function(int a,int b);
//
//  add(int a,int b){
//     print(a+b);
// }
//  divide(int a,int b){
//    print(a/b);
// }

// add(){
//    print('打印出来');
//    return  null;//一切皆对象， 默认值为null,dart函数在没有设置返回值的时候，会默认返回null 这个和js默认返回undefined是一样的
// }
//必填参数方式一
//int add (int a,int b) => a+b;

//必填参数方式二
// int add ({required int a,required int b}){
//   return a+b;
// }

//常用标准的函数 形参设置 函数体调用
// int add ({int a?int a,int b?int b}){
//   return a+b;
// }

// 箭头函数方式
// int add (int a,int b) => a+b;

//可选参数

// add2({List list = const [1,2,3,4]}){
//   return list;
// }

//可选位置参数
// int add1(int a, {int b=0,int c=0}){
//   return a+b+c;
// }


// var printFunc =  ()=> print('dsads');


// var printFunc1 =  (name)=> print(name);

// 匿名函数作为参数


// List test(List list,String func(str)){
//   for(var i=0;i<list.length;i++){
//         list[i] = func(list[i]);
//   }
//   return list;
// }
//
// String test1(str){
//   return str*2;
// }
//


