import 'package:deckspace/core/constants/app_colors.dart';
import 'package:deckspace/core/constants/app_text_styles.dart';
import 'package:deckspace/core/pages/app_page_state.dart';
import 'package:deckspace/modules/splash/presentation/cubit/splash_cubit.dart';
import 'package:deckspace/modules/splash/presentation/cubit/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ModularCubitState<SplashPage, SplashCubit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: BlocBuilder<SplashCubit, SplashState>(
        bloc: cubit,
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'SplashPage rendering',
                  style: AppTextStyles.robotoRegular16
                      .copyWith(color: AppColors.textColor),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
