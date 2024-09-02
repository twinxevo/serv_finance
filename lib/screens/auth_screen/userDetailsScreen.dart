import 'package:fintech_app/screens/homePage/bottomNavigation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  // Initial Selected Value
  String dropdownvalue = '-- Select --';

  // List of items in our dropdown menu
  var genderSelection = [
    '-- Select --',
    'Male',
    'Female',
  ];

  TextEditingController dboController = TextEditingController();
  @override
  void initState() {
    super.initState();
    dboController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: const Alignment(0, 0),
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
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
                              'Tell us about yourself',
                              style: TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 2,
                              ),
                            ),
                            Text(
                              ' 😊',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 55,
                        width: size.width * .8,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          autofillHints: const [AutofillHints.familyName],
                          decoration: const InputDecoration(
                            floatingLabelStyle:
                                TextStyle(color: Colors.blueGrey),
                            labelText: 'Last Name (Family Name)',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            suffixIcon: Icon(
                              Icons.family_restroom,
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
                          autofillHints: const [AutofillHints.givenName],
                          decoration: const InputDecoration(
                            floatingLabelStyle:
                                TextStyle(color: Colors.blueGrey),
                            labelText: 'First Name (Given Name)',
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
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 55,
                        width: size.width * .8,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          autofillHints: const [AutofillHints.telephoneNumber],
                          decoration: const InputDecoration(
                            floatingLabelStyle:
                                TextStyle(color: Colors.blueGrey),
                            labelText: 'Mobile Number',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            suffixIcon: Icon(
                              Icons.phone_iphone_outlined,
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
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: SizedBox(
                              height: 55,
                              width: size.width * .5,
                              child: TextFormField(
                                controller: dboController,
                                readOnly: true,
                                onTap: () async {
                                  DateTime? dobPicked = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1914),
                                    lastDate: DateTime(2024),
                                  );

                                  String formatedDob = DateFormat('yyyy-MM-dd')
                                      .format(dobPicked!);
                                  setState(() {
                                    dboController.text = formatedDob.toString();
                                  });
                                },
                                decoration: const InputDecoration(
                                  floatingLabelStyle:
                                      TextStyle(color: Colors.blueGrey),
                                  labelText: 'Date of Birth',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  suffixIcon: Icon(
                                    Icons.calendar_month_outlined,
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
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: Container(
                              alignment: const AlignmentDirectional(0, 0),
                              height: 55,
                              width: size.width * .5,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(3)),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: DropdownButton(
                                  value: dropdownvalue,
                                  items: genderSelection.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

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
                                          const BottomNavigationB()),
                                );
                              },
                              child: const Text(
                                'All Done',
                                style: TextStyle(fontSize: 17),
                              )),
                        ),
                      ),
                    ],
                  )),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
