import 'dart:async';

void main(){
  print('looper2');
}


// dart 微任务队列
void testScheduleMicrotask(){
  scheduleMicrotask(()=>print('s1'));
  Future(() => null);
  Future(() =>print('s3'))
      .then((value){
        print('s4');
       scheduleMicrotask(()=>print('s5'));
  }).then((_)=> print('s6'));
  Future(() => print('s7'));
  scheduleMicrotask(()=>print('s8'));
  print('s9');
}