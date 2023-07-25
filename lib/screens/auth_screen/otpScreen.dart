import 'package:fintech_app/screens/auth_screen/userDetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

String otpValues = '';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController otp1 = TextEditingController();
    TextEditingController otp2 = TextEditingController();
    TextEditingController otp3 = TextEditingController();
    TextEditingController otp4 = TextEditingController();
    TextEditingController otp5 = TextEditingController();
    TextEditingController otp6 = TextEditingController();
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
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
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
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 45,
                              width: 45,
                              child: TextFormField(
                                showCursor: false,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                controller: otp1,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                // autofillHints: const [
                                //   AutofillHints.oneTimeCode
                                // ],
                                decoration: const InputDecoration(
                                  hintText: '0',
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
                            const SizedBox(width: 5),
                            SizedBox(
                              height: 45,
                              width: 45,
                              child: TextFormField(
                                showCursor: false,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                controller: otp2,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                // autofillHints: const [
                                //   AutofillHints.oneTimeCode
                                // ],
                                decoration: const InputDecoration(
                                  hintText: '0',
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
                            const SizedBox(width: 5),
                            SizedBox(
                              height: 45,
                              width: 45,
                              child: TextFormField(
                                showCursor: false,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                controller: otp3,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                // autofillHints: const [
                                //   AutofillHints.oneTimeCode
                                // ],
                                decoration: const InputDecoration(
                                  hintText: '0',
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
                            const SizedBox(width: 5),
                            SizedBox(
                              height: 45,
                              width: 45,
                              child: TextFormField(
                                showCursor: false,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                controller: otp4,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                // autofillHints: const [
                                //   AutofillHints.oneTimeCode
                                // ],
                                decoration: const InputDecoration(
                                  hintText: '0',
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
                            const SizedBox(width: 5),
                            SizedBox(
                              height: 45,
                              width: 45,
                              child: TextFormField(
                                showCursor: false,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                controller: otp5,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                // autofillHints: const [
                                //   AutofillHints.oneTimeCode
                                // ],
                                decoration: const InputDecoration(
                                  hintText: '0',
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
                            const SizedBox(width: 5),
                            SizedBox(
                              height: 45,
                              width: 45,
                              child: TextFormField(
                                showCursor: false,
                                controller: otp6,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                decoration: const InputDecoration(
                                  hintText: '0',
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
                          ],
                        ),
                      ),

                      const SizedBox(height: 40),

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
                                otpValues = otp1.text +
                                    otp2.text +
                                    otp3.text +
                                    otp4.text +
                                    otp5.text +
                                    otp6.text;
                                print('the otp is $otpValues');
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
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold),
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
