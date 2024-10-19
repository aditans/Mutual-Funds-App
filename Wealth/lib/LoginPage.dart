import 'package:wealth/SignUpPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wealth/check_for_login.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.symmetric(horizontal: 100.0),
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Sign In",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade500,
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> LogUserIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usernameController.text.trim(),
        password: passwordController.text.trim(),
      );
      //FirebaseFirestore

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const UserCheck()),
      );
    } on FirebaseAuthException catch (e) {
      print('Login failed: ${e.code}');//debug
      String errorMessage ='';
      if(e.code=='invalid-email')
        {
            errorMessage='Login failed: Please Enter a Registered Email';
        }
      else if(e.code=='invalid-credential')
        {
          errorMessage='Login failed: Please Enter a Valid Password';

        }
      else if(e.code=='channel-error')
      {
        errorMessage='Please Enter Password and Email';

      }

      else
        {
          errorMessage='Login failed: Facing some issues';

        }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage,style: TextStyle(color: Colors.white),),
          duration: const Duration(seconds: 2),
          backgroundColor: Colors.red[300], // Optional: Add a color to make it more noticeable
        ),
      );

    }
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            // Background image with opacity
            Positioned.fill(
              child: Image.asset(
                'lib/icons/background.png', // Replace with your image path
                fit: BoxFit.cover, // Ensures the image fills the background
              ),
            ),
            // Foreground content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Text(
                          'Hey there!',
                          style: TextStyle(
                            fontFamily: 'DegularDisplay',
                            letterSpacing: 5,
                            fontWeight: FontWeight.w500,
                            color: Colors.green,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Text(
                          'LOGIN',
                          style: TextStyle(
                            fontFamily: 'DegularDisplay',
                            letterSpacing: 7,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 75,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  MyTextField(
                    controller: usernameController,
                    hintText: 'Email',
                    obscureText: false,
                  ),
                  const SizedBox(height: 20),
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 50),
                  MyButton(
                    onTap: LogUserIn,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Not a Member?'),
                      const SizedBox(width: 5),
                      RichText(
                        text: TextSpan(
                          text: 'Register now',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SignUp()),
                              );
                            },
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}