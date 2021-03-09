import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                height: 250.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 70.0),
                child: Column(
                  children: [
                    Text(
                      'PROFILE',
                      style: TextStyle(
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 2.5),
                            blurRadius: 8,
                            color: Colors.black.withOpacity(0.25),
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(),
                                Icon(
                                  Icons.create_outlined,
                                  color: Colors.lightBlue,
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 35.0,
                                  backgroundImage:
                                      AssetImage('images/sadiq.jpg'),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Abubakar Zubair',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  '@armoredTitan',
                                  style: TextStyle(color: Colors.black38),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 70.0,
                    ),
                    ContentIcon(
                      icon: Icons.dashboard_outlined,
                      name: 'Dashboard',
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    ContentIcon(
                      icon: Icons.payment_outlined,
                      name: 'Payment History',
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    ContentIcon(
                      icon: Icons.stacked_bar_chart,
                      name: 'Statistics',
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    ContentIcon(
                      icon: Icons.emoji_events_outlined,
                      name: 'Reward',
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    ContentIcon(
                      icon: Icons.exit_to_app,
                      name: 'Logout',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContentIcon extends StatelessWidget {
  ContentIcon({this.icon, this.name});
  final IconData icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.lightBlue,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 30.0,
            ),
            Text(
              (name),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
