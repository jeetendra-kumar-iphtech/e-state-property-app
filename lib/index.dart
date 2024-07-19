import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/alert_page.dart';
import 'package:flutter_application_2/pages/home_page.dart';
import 'package:flutter_application_2/pages/menu_page.dart';
import 'package:flutter_application_2/pages/post_page.dart';
import 'package:flutter_application_2/pages/saved_page.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _MyIndexPageState();
}

class _MyIndexPageState extends State<IndexPage> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomePage(),
    const SavedPage(),
    const PostPage(),
    const AlertPage(),
    const MenuPage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Left TabBar Icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const HomePage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color:
                              currentTab == 0 ? Colors.deepPurple : Colors.grey,
                        ),
                        Text(
                          'Explore',
                          style: TextStyle(
                              color: currentTab == 0
                                  ? Colors.deepPurple
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const SavedPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.bookmark_border,
                          color:
                              currentTab == 1 ? Colors.deepPurple : Colors.grey,
                        ),
                        Text(
                          'Saved',
                          style: TextStyle(
                              color: currentTab == 1
                                  ? Colors.deepPurple
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              /// Right TabBar Icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const AlertPage();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.notifications_none_outlined,
                          color:
                              currentTab == 3 ? Colors.deepPurple : Colors.grey,
                        ),
                        Text(
                          'Alerts',
                          style: TextStyle(
                              color: currentTab == 3
                                  ? Colors.deepPurple
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const MenuPage();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.menu_rounded,
                          color:
                              currentTab == 4 ? Colors.deepPurple : Colors.grey,
                        ),
                        Text(
                          'Menu',
                          style: TextStyle(
                              color: currentTab == 4
                                  ? Colors.deepPurple
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
