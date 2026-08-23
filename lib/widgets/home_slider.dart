import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 119.0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
          items: images.map((i) => Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 8),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.network(i).image,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Positioned(
          bottom: 8,
          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: images.length,
            effect: ExpandingDotsEffect(
              activeDotColor: Color(0xff53B175),
              dotColor: Colors.grey,
              dotHeight: 8,
              dotWidth: 8,
              spacing: 4,
            ),
          ),
        ),
      ],
    );
  }
}

List<String> images = [
  'https://img.magnific.com/free-vector/flat-design-grocery-store-facebook-cover_23-2151074216.jpg',
  'https://i.pinimg.com/1200x/bf/d7/fb/bfd7fb3d443e57f80b2ecb49744db331.jpg',
  'https://img.magnific.com/free-vector/hand-drawn-grocery-shopping-facebook-cover_23-2151008791.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShQk8nM7I1SacxYkgwzCoWRzYBqGakV0rrh_cjAFjTdRlb6dhb6PVzZGdo&s=10',
];