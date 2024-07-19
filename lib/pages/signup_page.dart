import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routes.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var formKey = _formKey;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/signup_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 500,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25.0, horizontal: 0.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/home_logo.jpeg'),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      const Text(
                        'Sign in to your Account',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Material(
                        color: const Color.fromARGB(255, 239, 237, 237),
                        borderRadius: BorderRadius.circular(8),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 250,
                            height: 35,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/google_icon.png',
                                  fit: BoxFit.cover,
                                  height: 20,
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'Sign in with Google',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Material(
                        color: const Color.fromARGB(255, 239, 237, 237),
                        borderRadius: BorderRadius.circular(8),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 250,
                            height: 35,
                            alignment: Alignment.center,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.apple,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Sign in with Apple',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Or continue with',
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromARGB(255, 155, 154, 154)),
                              )
                            ],
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        child: Form(
                            key: formKey,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 65,
                                    width: 250,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 203, 203, 203))),
                                          labelText: 'Email Address',
                                          labelStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13)),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter your email';
                                        } else if (!RegExp(r'^.+@gmail\.com$')
                                            .hasMatch(value)) {
                                          return 'Please Enter a valid Email Address';
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 65,
                                    width: 250,
                                    child: TextFormField(
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 203, 203, 203))),
                                          labelText: 'Password',
                                          labelStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13)),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter correct password';
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Forget password?',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            decoration:
                                                TextDecoration.underline),
                                      )),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Material(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    borderRadius: BorderRadius.circular(8),
                                    child: InkWell(
                                      onTap: () {
                                        if (_formKey.currentState!.validate()) {
                                          Navigator.pushNamed(
                                              context, MyRoutes.indexRoute);
                                        }
                                      },
                                      child: Container(
                                        width: 250,
                                        height: 35,
                                        alignment: Alignment.center,
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              'Continue',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Not a Member?  ',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 14),
                            children: [
                          TextSpan(
                              text: 'Create an account',
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(
                                      context, MyRoutes.signupRoute);
                                })
                        ]))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
