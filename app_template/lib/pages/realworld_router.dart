import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:real_world/pages/home/home_page.dart';

class RealWorldRouter extends StatefulWidget {
  const RealWorldRouter({super.key});

  @override
  State<RealWorldRouter> createState() => _RealWorldRouterState();
}

class _RealWorldRouterState extends State<RealWorldRouter> {
  late final GoRouter _routerConf;

  @override
  void initState() {
    super.initState();

    _routerConf = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _routerConf,
      debugShowCheckedModeBanner: false,
      title: 'RealWorld Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
