import 'package:flutter/material.dart';
import 'package:flutter_finance/constants/app_color.dart';
import 'package:flutter_finance/constants/app_image.dart';
import 'package:flutter_finance/features/sign-in/page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isVisibilityPassword = false;
  bool isVisibilityConfirmPassword = false;

  void toggleVisibilityPassword() {
    setState(() {
      isVisibilityPassword = !isVisibilityPassword;
    });
  }

  void toggleVisibilityConfirmPassword() {
    setState(() {
      isVisibilityConfirmPassword = !isVisibilityConfirmPassword;
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
                'Cadastro',
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
                      nameField(),
                      const SizedBox(height: 16),
                      emailField(),
                      const SizedBox(height: 16),
                      passwordField(),
                      const SizedBox(height: 16),
                      confirmPasswordField(),
                      const SizedBox(height: 16),
                      signUpButton(),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignInPage(),
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
                              'Já possui uma conta?',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Acesse',
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
        labelText: 'E-mail',
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

  Widget nameField() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      cursorRadius: const Radius.circular(8),
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.person,
          color: Colors.white,
        ),
        labelText: 'Nome',
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
        labelText: 'Senha',
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

  Widget confirmPasswordField() {
    return TextFormField(
      cursorRadius: const Radius.circular(8),
      keyboardType: TextInputType.visiblePassword,
      obscureText: !isVisibilityConfirmPassword,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: toggleVisibilityConfirmPassword,
          icon: Icon(
            isVisibilityPassword ? Icons.visibility : Icons.visibility_off,
            color: Colors.white,
          ),
        ),
        prefixIcon: const Icon(
          Icons.password,
          color: Colors.white,
        ),
        labelText: 'Confirme a senha',
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

  Widget signUpButton() {
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
        'Criar conta',
        style: TextStyle(
          color: Color(AppColor.darkBlue),
          fontSize: 14,
        ),
      ),
    );
  }
}
