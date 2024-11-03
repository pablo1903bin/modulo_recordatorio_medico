// lib/app/presentation/screens/splash_screen.dart
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/colores.dart';
import 'package:my_flutter_module/app/presentation/modules/splash/widgets/background_image_widget.dart';
import 'package:my_flutter_module/app/presentation/modules/splash/widgets/loading_animations_widget.dart';

import '../../../../domain/repositories/authentication_repository.dart';
import '../../../../domain/repositories/conectivity_repository.dart';
import '../../../routes/route_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _init();
    });
  }

  Future<void> _init() async {
    await Future.delayed(const Duration(seconds: 2));

    final conectivityRepository = GetIt.instance<ConectivityRepository>();
    final hayInternet = await conectivityRepository.hasInternet;
    if (hayInternet) {
      final authenticationRepository = GetIt.instance<AuthenticationRepository>();
      final isSignedIn = await authenticationRepository.isSignedIn ?? false;
      if (isSignedIn) {

              GoRouter.of(context).pushReplacement(RoutePath.home);
      } else {

        GoRouter.of(context).pushReplacement(RoutePath.loguin);
      }
    } else {
      if (mounted) {
        context.go(
          RoutePath.offline,
          extra: () {
            print("⚡ Intentando reconectar... ⚡");
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo personalizada
          const BackgroundImage(
            assetPath: 'lib/app/images/mi_app_icon.png',
            backgroundColor: colorBackground, // Color de fondo personalizado
          ),
          // Animación de carga
          Positioned(
            bottom: MediaQuery.of(context).size.height / 20,
            left: 0,
            right: 0,
            child: const Center(
              child: LoadingAnimation(
                animationPath: 'lib/app/images/loading_splash2.json',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
