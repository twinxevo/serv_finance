import 'package:fintech_app/screens/auth_screen/userDetailsScreen.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
              height: 300,
              padding: const EdgeInsets.symmetric(vertical: 30.0 - 10),
              child: Center(
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      SizedBox(
                        width: size.width * .7,
                        child: const Text(
                          'Email OTP',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3,
                            height: 1.5,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        height: 55,
                        width: size.width * .7,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.go,
                          autofillHints: const [AutofillHints.oneTimeCode],
                          decoration: const InputDecoration(
                            floatingLabelStyle:
                                TextStyle(color: Colors.blueGrey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
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

                      const SizedBox(height: 20),

                      //Next Button
                      SizedBox(
                        width: size.width * .7,
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
                                          const UserDetailsScreen()),
                                );
                              },
                              child: const Text(
                                'Varify Email',
                                style: TextStyle(fontSize: 17),
                              )),
                        ),
                      ),

                      const SizedBox(height: 10),

                      SizedBox(
                        width: size.width * .7,
                        child: const Text(
                          'Check the inbox, promotion and spam/junk folder of your email',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
