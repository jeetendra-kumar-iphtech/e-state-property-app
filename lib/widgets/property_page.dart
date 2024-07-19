import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routes.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class PropertyPage extends StatefulWidget {
  const PropertyPage(int i, {super.key});

  @override
  State<PropertyPage> createState() => _MyPropertyPageState();
}

class _MyPropertyPageState extends State<PropertyPage> {
  final List<String> imageUrls = [
    'https://plus.unsplash.com/premium_photo-1680100256017-c4270c309354?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1680100256017-c4270c309354?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1516455590571-18256e5bb9ff?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=764&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Amanda',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Text(
              '2h ago',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 129, 128, 128)),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 200,
          child: Swiper(
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, MyRoutes.propertyDetailRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(
                                imageUrls[index],
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Positioned(
                      top: 20.0,
                      left: 20.0,
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(221, 25, 25, 25),
                        ),
                        child: const Text(
                          '₹ 2,300/mo',
                          style: TextStyle(
                            color: Color.fromARGB(255, 246, 245, 245),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ))
                ],
              );
            },
            autoplay: false,
            pagination: const SwiperPagination(),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.bed_rounded,
                  size: 20,
                  color: Color.fromARGB(255, 99, 98, 98),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '2 bedroom',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 102, 101, 101)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.bathtub_outlined,
                  size: 20,
                  color: Color.fromARGB(255, 99, 98, 98),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '2 baths',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 102, 101, 101)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.merge,
                  size: 20,
                  color: Color.fromARGB(255, 99, 98, 98),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '455 sqft',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 102, 101, 101)),
                )
              ],
            ),
            Icon(Icons.bookmark_border,
                size: 20, color: Color.fromARGB(255, 99, 98, 98))
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          height: 1,
          color: Color.fromARGB(255, 215, 215, 215),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
