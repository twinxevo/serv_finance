import 'package:fintech_app/screens/homePage/homeScreen.dart';
import 'package:flutter/material.dart';

class ReportIssueScreen extends StatefulWidget {
  const ReportIssueScreen({super.key});

  @override
  State<ReportIssueScreen> createState() => _ReportIssueScreenState();
}

class _ReportIssueScreenState extends State<ReportIssueScreen> {
  final TextEditingController _issueController = TextEditingController();

  bool _isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Explain the issue to the best of your ability:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _issueController,
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: 'Describe your issue here...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _submitIssue,
                child: _isSubmitting
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : const Text(
                        'Submit',
                        style: TextStyle(fontSize: 18),
                      ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submitIssue() async {
    setState(() {
      _isSubmitting = true;
    });

    // Simulate a delay for submitting the issue
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      _isSubmitting = false;
    });

    // Show a confirmation dialog or take other appropriate actions
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Issue Submitted'),
        content: const Text('Thank you for reporting the issue.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) {
                    return const HomeScreen();
                  },
                ),
              );
            },
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
