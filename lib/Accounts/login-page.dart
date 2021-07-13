import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod_hooks1/Page_States/loginPageState.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
  @override
  Widget build(BuildContext context) {
    LoginPageState loginPageState = useProvider(loginPageProvider);
    final _formKey = GlobalKey<FormState>();
    final _emailFieldKey = GlobalKey<FormFieldState>();
    final _passwordFieldKey = GlobalKey<FormFieldState>();
    // _formKey.currentState.
    return Scaffold(
      // backgroundColor: Colors.grey.shade300,
      body: Container(
        child: Form(
          key: _formKey,
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
                  key: _emailFieldKey,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      print('yes');
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    emailChanged(_emailFieldKey, context);
                  },
                  // style: TextStyle(color: Colors.green),
                  // obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2.0, color: Colors.green),
                        // gapPadding: 20,
                      ),
                      // enabledBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(10),
                      //   borderSide: BorderSide(width: 2.0),
                      //   // gapPadding: 20,
                      // ),
                      // errorBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(10),
                      //   borderSide: BorderSide(width: 2.0, color: Colors.green),
                      //   // gapPadding: 20,
                      // ),
                      // disabledBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(10),
                      //   borderSide: BorderSide(width: 2.0, color: Colors.green),
                      //   // gapPadding: 20,
                      // ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 3.0, color: Colors.green),
                        // gapPadding: 20,
                      ),
                      labelText: 'Email Address',
                      hintText: 'Email'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 12),
                child: TextFormField(
                  key: _passwordFieldKey,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      print('yes');
                      return 'Please enter password';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    passwordChanged(_passwordFieldKey, context);
                  },
                  // style: TextStyle(color: Colors.green),
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2.0, color: Colors.green),
                      // gapPadding: 20,
                    ),
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(width: 2.0),
                    //   // gapPadding: 20,
                    // ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 3.0, color: Colors.green),
                      // gapPadding: 20,
                    ),
                    labelText: 'Password',
                    hintText: 'Password',
                  ),
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 12),
                  child: SizedBox(
                    height: 50,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor: loginPageState.isLoginProcess
                              ? Colors.green.shade300
                              : Colors.green,
                        ),
                        onPressed: () {
                          if (!loginPageState.isLoginProcess) {
                            loginPressed(loginPageState);
                          }
                        },
                        child: buildLoginButton(loginPageState)),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLoginButton(LoginPageState pageState) {
    if (pageState.isLoginProcess) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(
              color: Colors.white,
              // value: 1.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      );
    } else {
      return Text(
        'Login',
        style: TextStyle(
          color: Colors.white,
        ),
      );
    }
  }

  void emailChanged(GlobalKey<FormFieldState> _formKey, BuildContext context) {
    // print(value);
    _formKey.currentState.validate();
    _formKey.currentState.value;
    // if (_formKey.currentState.validate()) {
    //   // If the form is valid, display a snackbar. In the real world,
    //   // you'd often call a server or save the information in a database.
    //   ScaffoldMessenger.of(context)
    //       .showSnackBar(SnackBar(content: Text('Processing Data')));
    // }
  }

  void passwordChanged(
      GlobalKey<FormFieldState> _formKey, BuildContext context) {
    // print(value);
    _formKey.currentState.validate();
    // if (_formKey.currentState.validate()) {
    //   // If the form is valid, display a snackbar. In the real world,
    //   // you'd often call a server or save the information in a database.
    //   ScaffoldMessenger.of(context)
    //       .showSnackBar(SnackBar(content: Text('Processing Data')));
    // }
  }

  void loginPressed(LoginPageState pageState) {
    pageState.isLoginProcess = !pageState.isLoginProcess;
    pageState.applyNotifier();
  }
}
