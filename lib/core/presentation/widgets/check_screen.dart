import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:animated_check/animated_check.dart';

import '/core/shared/auto_route/router.dart';
import '/core/shared/utils/colors_repository.dart';

class CheckScreen extends StatefulWidget {
  const CheckScreen({Key? key}) : super(key: key);

  @override
  State<CheckScreen> createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOutCirc,
      ),
    );
    _animationController.forward().whenComplete(() {
      Future.delayed(const Duration(seconds: 2),(){
        context.router.replace(const ComicsRoute());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: AnimatedCheck(
            progress: _animation,
            size: 200,
            color: ColorsRepository.marvelRed
          ),
        ),
      ),
    );
  }
}
