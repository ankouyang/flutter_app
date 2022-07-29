void main(){
  // print('mmp');
  // throw new FormatException('格式异常');
  // throw new NullThrownError();//'Null错误'
  //  任意非null对象
  // throw '空指针异常';



// try catch 异常对象捕捉
  try{
     // throw new NullThrownError();//空指针error异常
    throw new FormatException('格式异常');
  }on Error{
    print('error类型');
  }on Exception{
    print('exception类型');
  } catch(e,s){ //1.异常对象  2 StackTrace对象
    print(e);
    print(s);
  }
}