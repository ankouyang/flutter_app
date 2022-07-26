void main(){

 // print(add(1));
 //  print(add1(1));
  print(str('sss'));
}

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
String  str(String a,{String?b='',String?c=''}){
    return '${a}${b}${c}';
}

//可选位置参数
// int add1(int a, {int b=0,int c=0}){
//   return a+b+c;
// }
