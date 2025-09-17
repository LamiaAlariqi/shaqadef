import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/images.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/constants/routes.dart';
import 'package:shaqadef/widget/custom/custom_icon_logo.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);

    _pulseAnimation = Tween<double>(
      begin: 0.95,
      end: 1.05,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    Future.delayed(const Duration(seconds: 3), _goToNextView);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _goToNextView() {
    Navigator.of(
      context,
    ).pushNamedAndRemoveUntil(Routes.defination1, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: Center(
        child: ScaleTransition(
          scale: _pulseAnimation,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            
            ),
            child: CustomIconLogo(
              backgroundColor: PrimaryColor,
              backgroundImage: Images.logo2,
              radius: hScreen * 0.2,
            ),
          ),
        ),
      ),
    );
  }
}
