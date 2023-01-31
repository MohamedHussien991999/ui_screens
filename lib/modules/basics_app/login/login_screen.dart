import 'package:flutter/material.dart';
import 'package:ui_screens/shared/components/components.dart';

class Login_Screen extends StatefulWidget {
  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  var emailcontroller = TextEditingController();

  var passcontroller = TextEditingController();

  var formkey = GlobalKey<FormState>();

  late bool isPasswordcheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Login",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 20.0,
                  ),

                  //Email textField
                  defaultFormField(
                      controller: emailcontroller,
                      type: TextInputType.emailAddress,
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'email address must not be empty';
                        }
                        return null;
                      },
                      label: 'Email address',
                      prefix: Icons.email),
                  const SizedBox(
                    height: 20.0,
                  ),

                  //password textField
                  defaultFormField(
                    controller: passcontroller,
                    type: TextInputType.visiblePassword,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'pasword must not be empty';
                      }
                      return null;
                    },
                    label: "Password",
                    prefix: Icons.lock,
                    suffix: isPasswordcheck
                        ? Icons.visibility
                        : Icons.visibility_off,
                    isPassword: isPasswordcheck,
                    onPressed: () {
                      setState(() {
                        isPasswordcheck = !isPasswordcheck;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  //Login Button
                  defaultButton(
                      width: double.infinity,
                      background: Colors.blue,
                      function: () {
                        if (formkey.currentState!.validate()) {
                          print("Email Controller => " +
                              emailcontroller.text +
                              "\n Pass Controller => " +
                              passcontroller.text);
                        }
                      },
                      text: "Login"),
                  const SizedBox(height: 20.0),
                  //Register Button
                  defaultButton(
                      width: double.infinity,
                      background: Colors.blue,
                      function: () {},
                      text: "Register"),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have already account "),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Register now"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
