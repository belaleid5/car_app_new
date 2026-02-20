import 'package:flutter/material.dart';

class DialogHeader extends StatelessWidget {
  final VoidCallback onClose;

  const DialogHeader({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 12, 0),
      child: Row(
        children: [
          const Text(
            'Birth Date & Time',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          const Spacer(),
          IconButton(
            onPressed: onClose,
            icon: const Icon(Icons.close, size: 20),
            splashRadius: 18,
          ),
        ],
      ),
    );
  }
}
