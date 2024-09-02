//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

//import 'package:fintech_app/screens/ride_screen/globalVars.dart';
//import 'package:flutter/cupertino.dart';
import 'package:fintech_app/screens/ride_screen/startTrip.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class SearchLocation extends StatefulWidget {
  const SearchLocation({super.key});

  @override
  State<SearchLocation> createState() => _SearchLocationState();
}

class _SearchLocationState extends State<SearchLocation> {
  final TextEditingController _pickupLocationController =
      TextEditingController();
  final TextEditingController DestinationController = TextEditingController();

  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: TextField(
              controller: _pickupLocationController,
              autofocus: false,
              textInputAction: TextInputAction.next,
              autofillHints: [AutofillHints.location],
              //style: TextStyle(fontSize: 20),
              decoration: const InputDecoration(
                floatingLabelStyle: TextStyle(color: Colors.blueGrey),
                hintText: 'Pickup Location',
                //hintStyle: TextStyle(fontSize: 20),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: Icon(
                  Icons.search_rounded,
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
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: TextField(
              controller: DestinationController,
              autofocus: false,
              textInputAction: TextInputAction.next,
              autofillHints: [AutofillHints.location],
              //style: TextStyle(fontSize: 20),
              decoration: const InputDecoration(
                floatingLabelStyle: TextStyle(color: Colors.blueGrey),
                hintText: 'Final Destination',
                //hintStyle: TextStyle(fontSize: 20),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: Icon(
                  Icons.my_location,
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
          SizedBox(height: 30),
          ElevatedButton(
              onPressed: _searchRide, child: Text('Search Available Ride')),
          if (_isSearching)
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }

  void _searchRide() async {
    setState(() {
      _isSearching = true;
      //CircularProgressIndicator();
    });

    // Simulate a delay to represent searching for a ride
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      _isSearching = false;
    });

    // Show the bottom sheet after the delay
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
            height: 400,
            child: Center(
              child: Column(
                children: [
                  // Driver 1

                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Close'),
                            ),
                          ],
                          title: const Text(
                              'Your ride has been Rejected by EMMA.'),
                          contentPadding: const EdgeInsets.all(20.0),
                          content: const Text(
                              'Return back to try a different amount.'),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 40.0, right: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.car_rental_outlined,
                            size: 40,
                          ),
                          Text(
                            '₦5,000.00 \n 0.00434 Sol',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '10 Mins away',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, top: 20, right: 20.0),
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),

                  //Driver 2

                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        fullscreenDialog: true,
                                        builder: (context) {
                                          return const StartRideScreen();
                                        }));
                              },
                              child: const Text('I have seen the driver'),
                            ),
                          ],
                          title: const Text(
                              'Your ride has been accepted by Esevoka.'),
                          contentPadding: const EdgeInsets.all(20.0),
                          content: const Text(
                              'The driver will be with you in 10mins. \n₦7,200.00 locked in a blockchain Escrow'),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 40.0, right: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.car_crash_outlined,
                            size: 40,
                          ),
                          Text(
                            '₦7,200.00 \n 0.00514 Sol',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '6 Mins away \n Comfort',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, top: 20, right: 20.0),
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),

                  //Driver 3

                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        fullscreenDialog: true,
                                        builder: (context) {
                                          return const StartRideScreen();
                                        }));
                              },
                              child: const Text('I have seen the driver'),
                            ),
                          ],
                          title: const Text(
                              'Your ride has been accepted by OGHENEMARO.'),
                          contentPadding: const EdgeInsets.all(20.0),
                          content: const Text(
                              'The driver will be with you in 10mins. \n₦5,500.00 is securely locked in a blockchain Escrow.'),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 40.0, right: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.car_rental_outlined,
                            size: 40,
                          ),
                          Text(
                            '₦5,500.00 \n 0.00434 Sol',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '7 Mins away',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, top: 20, right: 20.0),
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
