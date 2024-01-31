import 'package:buma_test/common/style/home_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  CustomSwitch({Key? key, required this.value, required this.onChanged})
      : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  Animation? _circleAnimation;
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController!, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController!.isCompleted) {
              _animationController!.reverse();
            } else {
              _animationController!.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              width: 44.0,
              height: 24.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: _circleAnimation!.value == Alignment.centerLeft
                    ? HomeTheme.redColor
                    : HomeTheme.greenColor,
              ),
              child: Row(
                mainAxisAlignment: widget.value
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Container(
                      height: 16.h,
                      width: 16.w,
                      decoration: const BoxDecoration(
                          color: HomeTheme.whiteColor, shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
