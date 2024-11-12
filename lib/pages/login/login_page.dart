import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 模拟登录成功后跳转到主页
            context.go('/');
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
