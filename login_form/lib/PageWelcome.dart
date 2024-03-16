import 'package:flutter/material.dart';
import 'package:login_form/PageLogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:login_form/PageWelcome.dart';

class PageWelcome extends StatelessWidget {
  const PageWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            children: [
              Text('Welcome !'),
              ElevatedButton(
                onPressed: (){
                  // Dấu / ại diện cho trang home
                  // Nếu không thì truyền trang vào sau dấu /
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                }, child: Text('Get home'),
              ),
            ],
          ),
        ),
    );
  }
}
