// car_feature_icon_mapper.dart
import 'package:car_app_new/core/styles/app_images.dart';

class CarFeatureIconMapper {
  CarFeatureIconMapper._();

  static String getIcon(String featureName) {
    final name = featureName.toLowerCase();

    if (name.contains('seat') || name.contains('capacity')) {
      return AppImages.capacityIcon;
    } else if (name.contains('speed') || name.contains('max speed')) {
      return AppImages.speedIcon;
    } else if (name.contains('engine') || name.contains('transmission') ||
        name.contains('fuel') || name.contains('hp')) {
      return AppImages.engineOutIcon;
    } else if (name.contains('charge') || name.contains('electric') ||
        name.contains('battery') || name.contains('miles') ||
        name.contains('bluetooth') || name.contains('gps')) {
      return AppImages.chargeIcon;
    } else if (name.contains('park')) {
      return AppImages.parkingIcon;
    } else {
      return AppImages.advanceIcon; 
    }
  }
}