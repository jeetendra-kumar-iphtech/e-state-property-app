import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/utils/routes.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Column(children: [
        Stack(children: [
          Container(
            height: 150,
            color: const Color.fromARGB(255, 235, 229, 247),
          ),
          Positioned(
            top: 15,
            left: 15,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: const Color.fromARGB(255, 133, 133, 133)
                            .withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(3, 4))
                  ]),
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.indexRoute);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 26,
                  )),
            ),
          ),
          Positioned(
            top: 60,
            left: 150,
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 3),
                        spreadRadius: 3,
                        blurRadius: 7)
                  ],
                  border: Border.all(
                      color: const Color.fromARGB(255, 236, 235, 235),
                      width: 4),
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=764&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                      fit: BoxFit.cover)),
            ),
          ),
        ]),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Madelynn Griffin',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.lightbulb_rounded,
                  size: 18,
                ),
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                            colors: [Colors.yellow, Colors.orange])
                        .createShader(bounds);
                  },
                  child: const Text(
                    ' Gold Member',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Phone',
                    style: TextStyle(
                        color: Color.fromARGB(255, 179, 178, 178),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '+59999-666-1111',
                    style: TextStyle(
                        color: Color.fromARGB(255, 75, 75, 75),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Mail',
                    style: TextStyle(
                        color: Color.fromARGB(255, 179, 178, 178),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'marin@gmail.com',
                    style: TextStyle(
                        color: Color.fromARGB(255, 75, 75, 75),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Color.fromARGB(255, 242, 242, 242),
              height: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.nightlight_round,
                            size: 16,
                            color: Color.fromARGB(255, 107, 107, 107),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Dark Mode',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 112, 112, 112)),
                          ),
                        ],
                      ),
                      Transform.scale(
                        scale: 0.6,
                        child: Switch(
                          value: themeProvider.themeData == darkTheme,
                          onChanged: (_) => themeProvider.toggleTheme(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 1,
                    color: Color.fromARGB(255, 243, 243, 243),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.card_membership,
                            size: 20,
                            color: Color.fromARGB(255, 107, 107, 107),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Cards',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 112, 112, 112)),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_rounded,
                          size: 16, color: Color.fromARGB(255, 194, 193, 193))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 1,
                    color: Color.fromARGB(255, 243, 243, 243),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: 20,
                            color: Color.fromARGB(255, 107, 107, 107),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Profile details',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 112, 112, 112)),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_rounded,
                          size: 16, color: Color.fromARGB(255, 194, 193, 193))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 1,
                    color: Color.fromARGB(255, 243, 243, 243),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.settings,
                            size: 20,
                            color: Color.fromARGB(255, 107, 107, 107),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Settings',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 112, 112, 112)),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_rounded,
                          size: 16, color: Color.fromARGB(255, 194, 193, 193))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 1,
                    color: Color.fromARGB(255, 243, 243, 243),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.logout,
                            size: 20,
                            color: Color.fromARGB(255, 107, 107, 107),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, MyRoutes.signupRoute);
                            },
                            child: const Text(
                              'Logout',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 112, 112, 112)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}
