void main(){
  //事件循环
  testFuture();
}
//事件队列和微任务队列
void testFuture(){
  Future f = Future(() => print('f1'));
  Future f1 = Future(() => null);
  Future f2 = Future(() => null);
  Future f3 = Future(() => null);
  Future f4 = Future(() => null);
  f3.then((_)=>print('f2'));
  f2.then((_){
    print('f3');
    Future(()=>print('f4'));
    //添加 f1 之前已经执行过所以放在微任务队列
    f1.then((_)=>{
      print('f5')
    });
    //添加，F4还未执行，先放入事件队列里面去
    f4.then((_)=>{
      print('f8')
    });
  });
  f1.then((_)=>{
    print('f6')
  });
  print('f7');

}

//  f f1 f2 f3添加到事件队列
//  先打印F7  然后逐步清空事件队列  执行f 打印f1  执行f1打印f6 然后再执行f2，打印f3，然后有添加一个f4到事件队列最后，f1已经执行了，现在又执行then，直接添加到微任务队列，优先执行微任务队列，直接打印f5，执行f3 打印f2， 一轮过完后 再看下微任务队列是还存在f4，执行f4 打印f4
// 最后的结果是 f7 f1  f6 f3 f5 f2 f4