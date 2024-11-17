import 'package:flutter/material.dart';
import 'package:freezed_practise/bloc/movies_bloc/movies_bloc.dart';
import 'package:freezed_practise/config/color/colors.dart';
import 'package:freezed_practise/config/components/internet_exception_widget.dart';
import 'package:freezed_practise/utils/enum.dart';
import 'package:freezed_practise/views/home/widgets/movies_grid_view.dart';
import 'package:freezed_practise/views/shimmer_effect/home_screen_shimmer.dart';

class MoviesStateHandler extends StatelessWidget {
  final MoviesState state;
  final MoviesBloc moviesBloc;

  const MoviesStateHandler(
      {required this.state, required this.moviesBloc, super.key});

  @override
  Widget build(BuildContext context) {
    switch (state.moviesList.status) {
      case Status.loading:
        return const HomeScreenShimmer();
      case Status.error:
        if (state.moviesList.message == 'No Internet Connection') {
          return Center(
            child: InternetExceptionWidget(onPressed: () {
              moviesBloc.add(MoviesFetched());
            }),
          );
        }
        return Center(child: Text(state.moviesList.message.toString()));
      case Status.completed:
        if (state.moviesList.data == null) {
          return const Center(child: Text("No data found"));
        }
        return RefreshIndicator(
            color: AppColors.primaryColor,
            onRefresh: () async {
              moviesBloc.add(MoviesFetched());
              await Future.delayed(const Duration(seconds: 2));
            },
            child: MoviesGridView(moviesList: state.moviesList.data!));
      default:
        return const Center(child: Text('No Data Found'));
    }
  }
}
