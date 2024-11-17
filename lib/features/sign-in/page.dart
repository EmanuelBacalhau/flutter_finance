import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_finance/constants/app_color.dart';
import 'package:flutter_finance/constants/app_image.dart';
import 'package:flutter_finance/features/sign-up/page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isVisibilityPassword = false;

  void toggleVisibilityPassword() {
    setState(() {
      isVisibilityPassword = !isVisibilityPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: AppColor.gradientBlue,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              Image(
                image: const AssetImage(AppImage.signIn),
                width: screenWidth * 0.9,
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Form(
                  child: Column(
                    children: [
                      emailField(),
                      const SizedBox(height: 16),
                      passwordField(),
                      const SizedBox(height: 16),
                      loginButton(),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          overlayColor: Colors.transparent,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Não tem uma conta?',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Cadastre-se',
                              style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      cursorRadius: const Radius.circular(8),
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.email,
          color: Colors.white,
        ),
        labelText: 'Email',
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      cursorRadius: const Radius.circular(8),
      keyboardType: TextInputType.visiblePassword,
      obscureText: !isVisibilityPassword,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: toggleVisibilityPassword,
          icon: Icon(
            isVisibilityPassword ? Icons.visibility : Icons.visibility_off,
            color: Colors.white,
          ),
        ),
        prefixIcon: const Icon(
          Icons.password,
          color: Colors.white,
        ),
        labelText: 'Password',
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget loginButton() {
    return ElevatedButton(
      onPressed: () {
        // Navigator.pushAndRemoveUntil(
        //   context,
        //   MaterialPageRoute(builder: (context) => const HomePage()),
        //   (route) => false,
        // );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: const Text(
        'Entrar',
        style: TextStyle(
          color: Color(AppColor.darkBlue),
          fontSize: 14,
        ),
      ),
    );
  }
}
