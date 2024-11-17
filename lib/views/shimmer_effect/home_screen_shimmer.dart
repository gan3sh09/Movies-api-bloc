import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreenShimmer extends StatefulWidget {
  const HomeScreenShimmer({super.key});

  @override
  State<HomeScreenShimmer> createState() => _HomeScreenShimmerState();
}

class _HomeScreenShimmerState extends State<HomeScreenShimmer> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 2 / 3,
      ),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          enabled: true,
          baseColor: const Color(0xFF121212),
          highlightColor: const Color(0xFF1E1E1E),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 16.0,
                    width: 100.0,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: 14.0,
                    width: 150.0,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Container(
                    height: 14.0,
                    width: 80.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
