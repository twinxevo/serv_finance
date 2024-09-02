import 'package:fintech_app/screens/homePage/homeScreen.dart';
import 'package:fintech_app/screens/ride_screen/disputePage.dart';
import 'package:flutter/material.dart';

class StartRideScreen extends StatefulWidget {
  const StartRideScreen({super.key});

  @override
  State<StartRideScreen> createState() => _StartRideScreenState();
}

class _StartRideScreenState extends State<StartRideScreen> {
  bool _isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/MapGIF1.gif",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5.0),
              child: Column(
                mainAxisSize: MainAxisSize
                    .min, // Ensures the column only takes up the minimum required space
                children: [
                  if (_isSearching)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 200.0),
                      child: CircularProgressIndicator(),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: _isEndRide,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                          ),
                          child: const Text(
                            'End Trip',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: _isDisputeRide,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          child: const Text(
                            "Dispute",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _isEndRide() async {
    setState(() {
      _isSearching = true;
    });

    // Simulate a delay to represent searching for a ride
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      _isSearching = false;
    });

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) {
                        return const HomeScreen();
                      }));
            },
            child: const Text('Close'),
          ),
        ],
        title: const Text('Releasing Payment from Blockchain Escrow '),
        contentPadding: const EdgeInsets.all(20.0),
        content: const Text('Have a nice day'),
      ),
    );
  }

  void _isDisputeRide() async {
    setState(() {
      _isSearching = true;
    });

    // Simulate a delay to represent searching for a ride
    await Future.delayed(Duration(seconds: 3));

    setState(() {
      _isSearching = false;
    });

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Initiating Dispute'),
        contentPadding: const EdgeInsets.all(20.0),
        content: const Text(
          'Admin will investigate issues raised. Investigation may take between 48-180 hours.\nAre you sure you want to continue?',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog without any action
            },
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog first
              Navigator.push(
                context,
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) {
                    return const ReportIssueScreen();
                  },
                ),
              );
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }
}
