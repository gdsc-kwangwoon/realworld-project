import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_world/bloc/authentication/auth_bloc.dart';
import 'package:real_world/pages/realworld_router.dart';
import 'package:real_world/repository/article_repository.dart';
import 'package:real_world/repository/auth_repository.dart';
import 'package:real_world/repository/profile_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepository(),
        ),
        RepositoryProvider(
          create: (context) => ProfileRepository(),
        ),
        RepositoryProvider(
          create: (context) => ArticleRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(
              authRepository: context.read<AuthRepository>(),
            ),
          ),
        ],
        child: const RealWorldRouter(),
      ),
    );
  }
}
