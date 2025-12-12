// settings_page.dart
import 'package:car_app_new/core/app/app_cubit/app_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DarkAndLangButtons(),
        ],
      ),
    );
  }
}

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        final cubit = context.read<AppCubit>();
        
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // ✅ Dark Mode Button
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                iconSize: 32,
                icon: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (child, animation) {
                    return RotationTransition(
                      turns: animation,
                      child: FadeTransition(
                        opacity: animation,
                        child: child,
                      ),
                    );
                  },
                  child: Icon(
                    cubit.isDarkMode ? Icons.dark_mode : Icons.light_mode,
                    key: ValueKey(cubit.isDarkMode),
                    color: cubit.isDarkMode 
                        ? Colors.blue 
                        : Colors.orange,
                  ),
                ),
                onPressed: () async {
                  // ✅ استخدم toggleTheme للسهولة
                  await cubit.toggleTheme();
                  
                  // ✅ عرض رسالة تأكيد
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          cubit.isDarkMode 
                              ? 'Dark mode enabled' 
                              : 'Light mode enabled',
                        ),
                        duration: const Duration(seconds: 1),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
              ),
            ),
            
            // Language Button (يمكنك إضافته لاحقاً)
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                iconSize: 32,
                icon: const Icon(Icons.language),
                onPressed: () {
                  // TODO: Add language change logic
                },
              ),
            ),
          ],
        );
      },
    );
  }
}