import 'package:flutter/material.dart';
import 'dart:async';

class HomeAnimation extends StatefulWidget {
  final Widget child;
  final int delay;

  const HomeAnimation({required this.delay, required this.child});

  @override
  _HomeAnimationState createState() => _HomeAnimationState();
}

class _HomeAnimationState extends State<HomeAnimation> with SingleTickerProviderStateMixin {
  // préciser comportement animation
  late AnimationController _controller;
  late Animation<Offset> _animOffset;

  // init
  @override
  initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    
    final curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate
    );

    _animOffset = Tween<Offset>(
      begin: Offset(0.0, -0.35),
      end: Offset.zero,
    ).animate(curve);

    Timer(Duration (microseconds: widget.delay),(){
      _controller.forward();
    });
    }

    Widget build(BuildContext context) {
      return FadeTransition(
        opacity: _controller,
        child: SlideTransition(
          position: _animOffset,
          child: widget.child,
          ),
        );
    }
}