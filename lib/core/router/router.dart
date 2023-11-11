import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_search_day46/data/repository/pixabay_photo_repository.dart';
import 'package:image_search_day46/domain/use_case/get_top_five_most_viewd_use_case.dart';
import 'package:image_search_day46/presentation/main/main_view_model.dart';
import 'package:provider/provider.dart';
import '../../presentation/main/main_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return ChangeNotifierProvider(
          create: (_) => MainViewModel(
            GetTopFiveMostViewdImagesUseCase(
              PixabayPhotoRepositoryImpl(),
            ),
          ),
          child: const MainScreen(),
        );
      },
    ),
  ],
);
