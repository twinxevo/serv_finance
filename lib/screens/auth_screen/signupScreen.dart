import 'package:fintech_app/screens/auth_screen/otpScreen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Container(
        alignment: const Alignment(0, 0),
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 10,
          child: Container(
            height: 500,
            padding: const EdgeInsets.symmetric(vertical: 30.0 - 10),
            child: Center(
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width * .8,
                      child: const Row(
                        children: [
                          Text(
                            'Welcome Onboard',
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 2,
                            ),
                          ),
                          Text(
                            '😎',
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
                          floatingLabelStyle: TextStyle(color: Colors.blueGrey),
                          labelText: 'Email',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          suffixIcon: Icon(
                            Icons.email_outlined,
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

                    const SizedBox(height: 10),

                    SizedBox(
                      height: 55,
                      width: size.width * .8,
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        autofillHints: const [AutofillHints.username],
                        decoration: const InputDecoration(
                          floatingLabelStyle: TextStyle(color: Colors.blueGrey),
                          labelText: 'Username (Nick Name)',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          suffixIcon: Icon(
                            Icons.supervised_user_circle_outlined,
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

                    const SizedBox(height: 10),

                    SizedBox(
                      height: 55,
                      width: size.width * .8,
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.next,
                        autofillHints: const [AutofillHints.password],
                        decoration: const InputDecoration(
                          floatingLabelStyle: TextStyle(color: Colors.blueGrey),
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

                    const SizedBox(height: 10),

                    SizedBox(
                      height: 55,
                      width: size.width * .8,
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.go,
                        autofillHints: const [AutofillHints.password],
                        decoration: const InputDecoration(
                          floatingLabelStyle: TextStyle(color: Colors.blueGrey),
                          labelText: 'Confirm Password',
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

                    // TextButton(
                    //   onPressed: () {},
                    //   child: const Text('show/hide password'),
                    // ),

                    // const SizedBox(height: 10),

                    const SizedBox(height: 30),

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
                                    builder: (context) => const OtpScreen()),
                              );
                            },
                            child: const Text(
                              'Next',
                              style: TextStyle(fontSize: 17),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
