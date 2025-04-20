import 'package:flutter/material.dart';
import 'package:pulse_board_app/shared/app_enums.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveWidget({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  static DeviceScreenType getDeviceType(BoxConstraints constraints) {
    double width = constraints.maxWidth;

    if (width >= 950) return DeviceScreenType.desktop;
    if (width >= 600) return DeviceScreenType.tablet;
    return DeviceScreenType.mobile;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        final deviceType = getDeviceType(constraints);
        switch (deviceType) {
          case DeviceScreenType.desktop:
            return desktop;
          case DeviceScreenType.tablet:
            return tablet;
          case DeviceScreenType.mobile:
          return mobile;
        }
      },
    );
  }
}
