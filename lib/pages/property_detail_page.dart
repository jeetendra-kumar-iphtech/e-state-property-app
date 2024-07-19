import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/videos_page.dart';
import 'package:flutter_application_2/utils/routes.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class PropertyDetailPage extends StatefulWidget {
  const PropertyDetailPage({super.key});

  @override
  State<PropertyDetailPage> createState() => _MyPropertyDetailPageState();
}

class _MyPropertyDetailPageState extends State<PropertyDetailPage> {
  final List<String> imgUrls = [
    'https://images.unsplash.com/photo-1583847268964-b28dc8f51f92?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1556020685-ae41abfc9365?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aG9tZXxlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1618220179428-22790b461013?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGhvbWV8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1502005229762-cf1b2da7c5d6?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGhvbWV8ZW58MHx8MHx8fDA%3D',
    'https://plus.unsplash.com/premium_photo-1678375722686-c7ea507c3003?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fGhvbWV8ZW58MHx8MHx8fDA%3D',
  ];

  final String description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec erat a leo auctor eleifend. Vivamus feugiat lacus a risus lacinia consequat.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 80.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: RichText(
                      text: const TextSpan(
                          text: '\$2,300',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                            text: ' /month',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold))
                      ]))),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.chatRoute);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.deepPurple,
                  ),
                  child: const Text(
                    'Start Chat',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ///Property Photos

              SizedBox(
                height: 450,
                child: Swiper(
                  itemCount: imgUrls.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage(imgUrls[index]),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Positioned(
                          top: 15,
                          left: 15,
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color.fromARGB(
                                              255, 133, 133, 133)
                                          .withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: const Offset(3, 4))
                                ]),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, MyRoutes.indexRoute);
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_new,
                                  size: 26,
                                )),
                          ),
                        ),
                        Positioned(
                          top: 15,
                          right: 15,
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color.fromARGB(
                                              255, 133, 133, 133)
                                          .withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: const Offset(3, 4))
                                ]),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, MyRoutes.homePageRoute);
                                },
                                icon: const Icon(
                                  Icons.bookmark_border,
                                  size: 28,
                                )),
                          ),
                        ),
                      ],
                    );
                  },
                  autoplay: true,
                  autoplayDelay: 4000,
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              /// Property Owner Details

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=764&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Amanda Simons',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const Text(
                    '2h ago',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 95, 95, 95)),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),

              /// Location Details

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 250,
                    height: 80,
                    child: Text(
                      '64 Rosewood Street #2 San Francisco, CA',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.maps_home_work_rounded,
                    size: 50,
                    color: Colors.grey,
                  )
                ],
              ),

              /// Amenities Details

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.bed_rounded,
                        size: 28,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '2 bedrooms',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 111, 111, 111)),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.bathtub_outlined,
                        size: 28,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '2 baths',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 111, 111, 111)),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.merge,
                        size: 28,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '1,335 sqft',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 111, 111, 111)),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 2,
                color: Color.fromARGB(255, 214, 214, 214),
              ),
              const SizedBox(
                height: 20,
              ),

              /// Property Description

              Text(
                description,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Read More',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 14,
                        color: Colors.black),
                  )),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 1,
                color: Color.fromARGB(255, 215, 215, 215),
              ),
              const SizedBox(
                height: 20,
              ),

              const Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Property Video',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 360,
                    child: VideoPage(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
