import 'package:fintech_app/screens/auth_screen/forgotPassword.dart';
import 'package:fintech_app/screens/auth_screen/signupScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: const Alignment(0, 0),
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 10,
              child: Container(
                height: 400,
                padding: const EdgeInsets.symmetric(vertical: 30.0 - 10),
                child: Center(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: size.width * .8,
                          child: Row(
                            children: const [
                              Text(
                                'Welcome Back',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 5),
                              ),
                              Text(
                                '🤗',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 5),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),

                        SizedBox(
                          height: 55,
                          width: size.width * .8,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            autofillHints: const [AutofillHints.email],
                            decoration: const InputDecoration(
                              floatingLabelStyle:
                                  TextStyle(color: Colors.blueGrey),
                              labelText: 'Email/Username',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              suffixIcon: Icon(
                                Icons.person_outline_outlined,
                                color: Colors.black87,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                              ),
                              //border: OutlineInputBorder(),
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        SizedBox(
                          height: 55,
                          width: size.width * .8,
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                            autofillHints: const [AutofillHints.password],
                            decoration: const InputDecoration(
                              floatingLabelStyle:
                                  TextStyle(color: Colors.blueGrey),
                              labelText: 'Password',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              suffixIcon: Icon(
                                Icons.fingerprint_outlined,
                                color: Colors.black87,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                              ),
                              //border: OutlineInputBorder(),
                            ),
                          ),
                        ),

                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgotPassword()),
                                );
                              },
                              child: const Text(
                                'Forgot Password...',
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 15),

                        //Next Button
                        SizedBox(
                          width: size.width * .8,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  minimumSize: const Size.fromHeight(50),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignupScreen()),
                                  );
                                },
                                child: const Text(
                                  'Login',
                                  style: TextStyle(fontSize: 17),
                                )),
                          ),
                        ),

                        const SizedBox(height: 5),

                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupScreen()),
                            );
                          },
                          child: const Text(
                            'Create account',
                            style: TextStyle(color: Colors.blueGrey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
