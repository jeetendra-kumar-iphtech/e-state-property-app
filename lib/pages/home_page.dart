import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/property_page.dart';
import 'package:flutter_application_2/utils/routes.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:standard_searchbar/new/standard_search_anchor.dart';
import 'package:standard_searchbar/new/standard_search_bar.dart';
import 'package:standard_searchbar/new/standard_suggestion.dart';
import 'package:standard_searchbar/new/standard_suggestions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.profileRoute);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/home_logo.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              /// Search Bar
              const SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      child: StandardSearchAnchor(
                        searchBar: StandardSearchBar(),
                        suggestions: StandardSuggestions(
                          suggestions: [
                            StandardSuggestion(text: 'Property 1'),
                            StandardSuggestion(text: 'Property 1'),
                            StandardSuggestion(text: 'Property 1'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 35),

              /// Cities Slider
              SizedBox(
                height: 80,
                child: Swiper(
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 158, 204, 241),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1572883454114-1cf0031ede2a?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'San Francisco',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              Text(
                                '830 properties',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: 3,
                  autoplay: true,
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              /// Call Property Page
              for (int i = 1; i <= 3; i++) PropertyPage(i),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
