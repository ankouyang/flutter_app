import "package:flutter/material.dart";

// void main() {
//   const lsl = [1, 2, 3, 4, 5];
//   lsl[1] = 3;
//   runApp(MaterialApp(
//     title: 'Login',
//     home: AppPage(),
//   ));
// }

// 可以变成箭头函数的简写，这个和js的箭头函数还是有点区别的
void main() => runApp(MaterialApp(
      title: 'Login',
      home: AppPage(),
    ));

class AppPage extends StatelessWidget {
  GlobalKey<FormState> _loginKey = GlobalKey();
  String _username = '';
  String _password = '';

  void _login() {
    var loginForm = _loginKey.currentState!;
    if (loginForm.validate()) {
      print({'username': _username, 'password': _password});
      loginForm.save();
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple-login'),
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: Center(
            child: Form(
          key: _loginKey,
          child: Center(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: '请输入登录用户名',
                      hintText: '请输入登录用户',
                      border: OutlineInputBorder()),
                  onSaved: (val) {
                    _username = val!;
                  },
                  validator: (val) {
                    var value = val!;
                    if (value.length == 0) return '用户名不能为空';
                  },
                ),
                const SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: '请输入登录密码',
                      hintText: '请输入登录密码',
                      border: OutlineInputBorder()),
                  onSaved: (val) {
                    _password = val!;
                  },
                  validator: (val) {
                    var value = val!;
                    if (value.length < 3) return '用密码不能少于3位';
                    if (value.length > 6) return '用密码不能大于6位';
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: SizedBox(
                    width: 400.0,
                    height: 45.0,
                    child: OutlinedButton(
                        onPressed: _login,
                        child: const Text(
                          '登陆',
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        )),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}


  // child: Column(
  //           children: <Widget>[
  //             TextFormField(
  //               decoration: const InputDecoration(
  //                   labelText: '请输入登录用户名',
  //                   hintText: '请输入登录用户',
  //                   border: OutlineInputBorder()),
  //             ),
  //             const SizedBox(
  //               height: 30.0,
  //             ),
  //             TextFormField(
  //                 decoration: const InputDecoration(
  //                     labelText: '请输入登录密码',
  //                     hintText: '请输入登录密码',
  //                     border: OutlineInputBorder())),
  //             Container(
  //               margin: const EdgeInsets.only(top: 30.0),
  //               child: const SizedBox(
  //                 width: 400.0,
  //                 height: 45.0,
  //                 child: ElevatedButton(
  //                     onPressed: null,
  //                     child: Text(
  //                       '登陆',
  //                       style: TextStyle(color: Colors.black, fontSize: 20.0),
  //                     )),
  //               ),
  //             ),
  //           ],
  //         ),