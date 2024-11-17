// rough code

/* import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_practise/bloc/movies_bloc/movies_bloc.dart';
import 'package:freezed_practise/config/color/colors.dart';
import 'package:freezed_practise/config/components/internet_exception_widget.dart';
import 'package:freezed_practise/main.dart';
import 'package:freezed_practise/services/logout/logout.dart';
import 'package:freezed_practise/utils/enum.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late MoviesBloc moviesBloc;

  @override
  void initState() {
    super.initState();
    moviesBloc = MoviesBloc(moviesRepository: getIt());
  }

  @override
  void dispose() {
    moviesBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.solidBlack,
      appBar: AppBar(
        backgroundColor: AppColors.solidBlack,
        automaticallyImplyLeading: false,
        title: const Text('Movies'),
        actions: [
          IconButton(
              onPressed: () {
                Logout(context).execute();
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: BlocProvider(
        create: (_) => moviesBloc..add(MoviesFetched()),
        child: BlocBuilder<MoviesBloc, MoviesState>(
          builder: (context, state) {
            switch (state.moviesList.status) {
              case Status.loading:
                return const Center(child: CircularProgressIndicator());
              case Status.error:
                if (state.moviesList.message == 'No Internet Connection') {
                  return InternetExceptionWidget(onPressed: () {
                    moviesBloc.add(MoviesFetched());
                  });
                }

                return Center(child: Text(state.moviesList.message.toString()));
              case Status.completed:
                if (state.moviesList.data == null) {
                  return const Center(
                    child: Text("No data found"),
                  );
                }
                final moviesList = state.moviesList.data!;
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
                    return Card(
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
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              tvShow.permalink.toString(),
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 8.0),
                            child: Text(
                              tvShow.network.toString(),
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );

              default:
                return const Center(child: Text('No Data Found'));
            }
          },
        ),
      ),
    );
  }
}
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_practise/bloc/movies_bloc/movies_bloc.dart';
import 'package:freezed_practise/config/color/colors.dart';
import 'package:freezed_practise/main.dart';
import 'package:freezed_practise/services/popscope/pop_scope_widget.dart';
import 'package:freezed_practise/views/home/widgets/custom_appbar.dart';
import 'package:freezed_practise/views/home/widgets/movies_content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late MoviesBloc moviesBloc;

  @override
  void initState() {
    super.initState();
    moviesBloc = MoviesBloc(moviesRepository: getIt());
  }

  @override
  void dispose() {
    moviesBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScopeWidget(
      child: Scaffold(
        backgroundColor: AppColors.solidBlack,
        appBar: const CustomAppBar(),
        body: BlocProvider(
          create: (_) => moviesBloc..add(MoviesFetched()),
          child: MoviesContent(moviesBloc: moviesBloc),
        ),
      ),
    );
  }
}
