import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Talha is here'),
    );
  }
}

class LoginPage extends HookWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade300,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Sign in',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 40,
                  // background: Colors.amber
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 12),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    print('yes');
                    return 'Please enter some text';
                  }
                  return null;
                },
                onChanged: emailChanged,
                // style: TextStyle(color: Colors.green),
                // obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2.0, color: Colors.green),
                      // gapPadding: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2.0),
                      // gapPadding: 20,
                    ),
                    labelText: 'Email Address',
                    hintText: 'Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 12),
              child: TextField(
                // style: TextStyle(color: Colors.green),
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 2.0, color: Colors.green),
                    // gapPadding: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 2.0),
                    // gapPadding: 20,
                  ),
                  labelText: 'Password',
                  hintText: 'Text',
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 12),
                child: SizedBox(
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Enabled',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  void emailChanged(String value) {
    // print(value);
  }
}
