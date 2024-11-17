import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_practise/bloc/movies_bloc/movies_bloc.dart';
import 'package:freezed_practise/views/home/widgets/movies_state_handler.dart';

class MoviesContent extends StatelessWidget {
  final MoviesBloc moviesBloc;

  const MoviesContent({required this.moviesBloc, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) {
        return MoviesStateHandler(state: state, moviesBloc: moviesBloc);
      },
    );
  }
}
