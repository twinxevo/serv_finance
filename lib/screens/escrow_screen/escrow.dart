import 'package:flutter/material.dart';

class EscrowPage extends StatefulWidget {
  const EscrowPage({super.key});

  @override
  State<EscrowPage> createState() => _EscrowPageState();
}

class _EscrowPageState extends State<EscrowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.grey[100],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.grey[100],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
