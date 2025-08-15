import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CircleIconButton extends StatefulWidget {
  const CircleIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  State<CircleIconButton> createState() => _CircleIconButtonState();
}

class _CircleIconButtonState extends State<CircleIconButton> {
  Timer? _holdTimer;
  Timer? _delayTimer;
  bool _isHolding = false;

  void _onTapDown() {
    // Start a short delay before continuous increments
    _delayTimer = Timer(const Duration(milliseconds: 300), () {
      _isHolding = true;
      _holdTimer = Timer.periodic(const Duration(milliseconds: 100), (_) {
        widget.onPressed();
      });
    });
  }

  void _onTapUp() {
    if (!_isHolding) {
      // Short press → one increment
      widget.onPressed();
    }
    _stopTimers();
  }

  void _onTapCancel() {
    _stopTimers();
  }

  void _stopTimers() {
    _delayTimer?.cancel();
    _holdTimer?.cancel();
    _isHolding = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _onTapDown(),
      onTapUp: (_) => _onTapUp(),
      onTapCancel: _onTapCancel,
      child: Material(
        shape: const CircleBorder(),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(widget.icon, size: 22),
        ),
      ),
    );
  }
}
