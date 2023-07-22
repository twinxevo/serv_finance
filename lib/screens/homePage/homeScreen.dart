import 'package:fintech_app/screens/homePage/transactionHistory.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, top: 10.0, right: 10.0, bottom: 10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 23,
                      ),
                    ),
                    Text(
                      'Hi 😀, -- username --',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 15.0, top: 10.0, right: 20.0, bottom: 10.0),
                  child: Icon(
                    Icons.notifications,
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SizedBox(
                height: size.height * 1,
                width: size.width * .9,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Container(
                        height: size.height * .3,
                        width: size.width * 1,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 40.0),
                              child: Text(
                                '₦ 200,000.00',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              height: 2,
                              width: size.width * .8,
                              color: const Color.fromARGB(255, 42, 34, 34),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 70.0, top: 15.0, right: 70.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        size: 30,
                                        Icons.add_box_rounded,
                                        color: Colors.white,
                                      ),
                                      Icon(
                                        size: 30,
                                        Icons.send_rounded,
                                        color: Colors.white,
                                      ),
                                      Icon(
                                        size: 30,
                                        Icons.arrow_circle_right_rounded,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 50.0, top: 5.0, right: 60.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Add Money',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Send',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Withdraw',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 170),
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 30.0 - 10),
                        child: Card(
                          elevation: 1,
                          child: SizedBox(
                            height: size.height * 1,
                            width: size.width * .9,
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                Card(
                                  elevation: 5,
                                  child: SizedBox(
                                    height: 200,
                                    width: size.width * .7,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30.0,
                                              top: 10.0,
                                              right: 30.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: const [
                                                  CircleAvatar(
                                                    radius: 20,
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 224, 233, 234),
                                                    child: Icon(
                                                      size: 25,
                                                      Icons
                                                          .wifi_calling_rounded,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  CircleAvatar(
                                                    radius: 20,
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 224, 233, 234),
                                                    child: Icon(
                                                      size: 25,
                                                      Icons
                                                          .signal_wifi_4_bar_rounded,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  CircleAvatar(
                                                    radius: 25,
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 224, 233, 234),
                                                    child: Icon(
                                                      size: 30,
                                                      Icons.tv_rounded,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 3),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: const [
                                                  Text('Airtime'),
                                                  Text('Data'),
                                                  Text('Cable/Tv'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30.0,
                                              top: 20.0,
                                              bottom: 20.0,
                                              right: 30.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: const [
                                                  CircleAvatar(
                                                    radius: 20,
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 224, 233, 234),
                                                    child: Icon(
                                                      size: 25,
                                                      Icons.car_rental_rounded,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  CircleAvatar(
                                                    radius: 20,
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 224, 233, 234),
                                                    child: Icon(
                                                      size: 25,
                                                      Icons.lock,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  CircleAvatar(
                                                    radius: 25,
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 224, 233, 234),
                                                    child: Icon(
                                                      size: 30,
                                                      Icons.more_horiz_rounded,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 3),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5.0, right: 8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: const [
                                                    Text('Ride'),
                                                    Text('Escrow'),
                                                    Text('More'),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 25),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    children: const [
                                      Text(
                                        'Earn/Serv Offers',
                                        style:
                                            TextStyle(color: Colors.blueGrey),
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  color: Colors.blueGrey,
                                  elevation: 5,
                                  child: SizedBox(
                                    height: 60,
                                    width: size.width * .7,
                                  ),
                                ),
                                const SizedBox(height: 30),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const TransactionHistory();
                                    }));
                                  },
                                  child: Hero(
                                    tag: '',
                                    child: Card(
                                      elevation: 5,
                                      child: SizedBox(
                                        height: 100,
                                        width: size.width * .7,
                                        child: Column(
                                          children: [
                                            const SizedBox(height: 5),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0,
                                                  bottom: 20.0,
                                                  right: 10.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: const [
                                                  Text(
                                                    'Recent Transactions',
                                                    style: TextStyle(
                                                        color: Colors.blueGrey),
                                                  ),
                                                  Text(
                                                    'SEE ALL',
                                                    style: TextStyle(
                                                      color: Colors.blueGrey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15.0, right: 15),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: const [
                                                      Text('Money in '),
                                                      Text(
                                                        '+₦50,000.00',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.green),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: const [
                                                      Text(
                                                        '- Esevoka Onoyovwere',
                                                        style: TextStyle(
                                                            fontStyle: FontStyle
                                                                .italic),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 2),
                                                  Row(
                                                    children: const [
                                                      Text(
                                                        '11:52 AM',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.blueGrey,
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
                                  ),
                                ),
                              ],
                            ),
                          ),
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
    );
  }
}
