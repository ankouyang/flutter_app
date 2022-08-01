import 'dart:async'; //scheduleMicrotask  dart中:async中一个异步函数的包

void main(){
  print('looper2');
  testScheduleMicrotask();
}


// dart 微任务队列
void testScheduleMicrotask(){
  // task1
  scheduleMicrotask(()=>print('s1')); // scheduleMicrotask这就是声明他是一个微任务
  //  task2  delay 延迟
  Future.delayed(Duration(seconds: 1),()=>print('s2'));
  // task3
  Future(() =>print('s3'))
      .then((value){
        print('s4');
       scheduleMicrotask(()=>print('s5'));
  }).then((_)=> print('s6'));
  // task4
  Future(() => print('s7'));
  // task5
  scheduleMicrotask(()=>print('s8'));
  // task6
  print('s9');
}

//  task1放在微任务队列   task2 放入事件队列的最后 因为他有一个delay 延迟  task3 放入事件队列  task4放入事件队列   task5 方法微任务队列
// 执行task6 打印s9 主线程执行完毕  执行微队列  打印 s1 s8
// 然后清空事件队列 首先是task3 打印s3  s4 把s5放入微任务队列 继续执行任务列表中s6 打印s6 然后清空微任务队列 打印s5，继续执行事件队列中的task4 打印s7 ，最后执行task2 打印 s2
// 此时 事件队列都执行完毕。


// 所以整体执行顺序 是  s9 s1 s8 s3 s4 s6 s5 s7 s2