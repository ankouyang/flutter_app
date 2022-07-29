void main(){
  // print('222');
  print(fangXing());

  // StringCache().getBykey('a');
}

abstract class Cache<T extends Object>{
  T getBykey(String key);
  void setByKey(String key,T value);
}


class StringCache extends Cache<Object>{
  @override
  Object getBykey(String key) {
    // TODO: implement getBykey
    print(key);
    throw UnimplementedError();
  }

  @override
  void setByKey(String key, Object value) {
    // TODO: implement setByKey
  }
  
}

List fangXing(){
  var  names =<String>[];
  names.addAll(['ankouang','lilin','chenzhenlin']);
   print(names is List<String>);
   print(names.runtimeType);
  return  names;
}