import 'package:flutter/material.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Hero(
          tag: '',
          child: Container(
            alignment: const Alignment(0, 0),
            child: Column(
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back_ios_rounded),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: const [
                        Text(
                          'Transaction History',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 100,
                            width: size.width * .8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text('Money in '),
                                          Text(
                                            '+₦50,000.00',
                                            style:
                                                TextStyle(color: Colors.green),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            '- Esevoka Onoyovwere',
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 2),
                                      Row(
                                        children: const [
                                          Text(
                                            '11:52 AM',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //Another
                        const SizedBox(height: 5),

                        Card(
                          elevation: 5,
                          child: SizedBox(
                            height: 100,
                            width: size.width * .8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text('Money Out '),
                                          Text(
                                            '-₦49,000.00',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            '- Emmanuel Olokor',
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 2),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            '12:25 PM',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 12),
                                          ),
                                          Text(
                                            'Successful',
                                            style: TextStyle(
                                              color: Colors.green,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
