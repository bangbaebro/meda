import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Meda',
                style: TextStyle(
                  color: Color(0xff000435),
                ),
              ),
              Icon(
                Icons.attach_money,
                color: Color(0xff000435),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000435),
                      ),
                      'Departure'),
                  const SizedBox(
                    height: 36,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xFF75b1ed),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xFF75b1ed),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xff000435),
                          ),
                        ),
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        labelText: 'Enter departure location',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000435),
                      ),
                      'Arrival'),
                  const SizedBox(
                    height: 36,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xFF75b1ed),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xFF75b1ed),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xff000435),
                          ),
                        ),
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        labelText: 'Enter Arrival location',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(double.infinity, 42),
                      backgroundColor: const Color(0xFF75b1ed),
                    ),
                    onPressed: () {
                      print('Calculate Fare');
                    },
                    child: const Text(
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        'Calculate'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000435),
                      ),
                      'Arrival'),
                  const SizedBox(
                    height: 36,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xFF75b1ed),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xFF75b1ed),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xff000435),
                          ),
                        ),
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        labelText: 'Enter Arrival location',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: const Color(0xFF75b1ed),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Estimated Time',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black45),
                                ),
                                Text(
                                  '20 mins',
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: const Color(0xFF75b1ed),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Estimated Cost',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black45),
                                ),
                                Text(
                                  '\$25.0',
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(double.infinity, 42),
                      backgroundColor: const Color(0xFF75b1ed),
                    ),
                    onPressed: () {
                      print('Calculate Fare');
                    },
                    child: const Text(
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      'Start Ride',
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFF75b1ed),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                child: Lottie.asset(
                                  'assets/cheetah.json',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Text(
                                      '0.0km/h',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff000435),
                                      ),
                                    ),
                                    RichText(
                                      text: const TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '\$0.00',
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff000435),
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' (￦ 0)',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff000435),
                                            ),
                                          ),
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
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightBlue,
                  height: 160,
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: Colors.white,
        indicatorColor: const Color(0xFF75b1ed),
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.summarize_outlined,
                color: currentPageIndex == 0
                    ? Colors.white
                    : const Color(0xFF75b1ed)),
            selectedIcon:
                const Icon(Icons.summarize_outlined, color: Colors.white),
            label: 'History',
          ),
          NavigationDestination(
            icon: Icon(Icons.local_taxi_outlined,
                color: currentPageIndex == 1
                    ? Colors.white
                    : const Color(0xFF75b1ed)),
            selectedIcon:
                const Icon(Icons.local_taxi_outlined, color: Colors.white),
            label: 'Meter',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined,
                color: currentPageIndex == 2
                    ? Colors.white
                    : const Color(0xFF75b1ed)),
            selectedIcon:
                const Icon(Icons.settings_outlined, color: Colors.white),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
