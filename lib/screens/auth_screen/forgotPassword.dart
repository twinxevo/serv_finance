import 'package:fintech_app/screens/auth_screen/otpScreen.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                  height: 260,
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
                                  'Password Reset',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 5),
                                ),
                                Text(
                                  ' 🔐',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 5),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 35),

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
                                labelText: 'Email',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                suffixIcon: Icon(
                                  Icons.email_rounded,
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

                          const SizedBox(height: 25),

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
                                              const OtpScreen()),
                                    );
                                  },
                                  child: const Text(
                                    'Reset',
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
          ],
        ),
      ),
    );
  }
}
