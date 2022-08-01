import 'dart:async';

void main(){
  // print('generatot迭代器');
  // var  iterator = getSyncGenerator(10).iterator; // 注意getSyncGenerator(10).iterator 返回的是一个 Iterable对象
  //  while(iterator .moveNext()){ // 调用 iterator moveNext() 才会执行 sync* 函数体的逻辑
  //   print(iterator.current);
  // }

  StreamSubscription   subscription = getAsyncGenerator(5).listen(null);
  subscription.onData((value){
    print(value);
  });
}

//  同步生成器
//  关键字  sync* 返回的是  Iterable  对象
Iterable <int> getSyncGenerator(int n)  sync*{
  print('start');
  int k = n;
  while(k>0){
    yield k-- ;  // yield暂停
  }
  print('end');
}


// 异步 生成器
//  关键字  async* 返回的是   Stream   对象 数据是一次性以流的方式传递
Stream<int> getAsyncGenerator(int n)  async*{
  print('start');
  int k = 0;
  while(k<n){
    yield k++ ;
  }
  print('end');
}
