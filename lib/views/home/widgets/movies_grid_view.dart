import 'package:flutter/material.dart';
import 'package:freezed_practise/config/color/colors.dart';

class MoviesGridView extends StatelessWidget {
  final dynamic moviesList;

  const MoviesGridView({required this.moviesList, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: moviesList.tvShow.length,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 2 / 3,
      ),
      itemBuilder: (context, index) {
        final tvShow = moviesList.tvShow[index];
        return MovieGridItem(tvShow: tvShow, index: index);
      },
    );
  }
}

class MovieGridItem extends StatefulWidget {
  final dynamic tvShow;
  final int index;

  const MovieGridItem({required this.tvShow, required this.index, super.key});

  @override
  State<MovieGridItem> createState() => _MovieGridItemState();
}

class _MovieGridItemState extends State<MovieGridItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(

          // Slightly longer for smoother effect
          milliseconds: 500),
      vsync: this,
    );

    // Fade-in animation
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeIn,
      ),
    );

    // Scale-up animation (Zoom-in effect)
    _scaleAnimation = Tween<double>(begin: 0.9, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ),
    );

    // Trigger the animations when the widget is built
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final tvShow = widget.tvShow;
    return FadeTransition(
      opacity: _fadeAnimation,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Stack(
          children: [
            
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.network(
                      tvShow.imageThumbnailPath,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      tvShow.total.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      tvShow.permalink.toString(),
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(
                      tvShow.network.toString(),
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 6,
              top: 4,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: AppColors.primaryColor,
                ),
                child: Text(tvShow.status.toString()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
