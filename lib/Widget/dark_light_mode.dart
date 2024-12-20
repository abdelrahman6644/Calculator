import 'package:calculator/provider/mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DarkLightMode extends StatefulWidget {
  const DarkLightMode({super.key});

  @override
  State<DarkLightMode> createState() => _DarkLightModeState();
}

class _DarkLightModeState extends State<DarkLightMode> {
  bool isChange = false;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => Align(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            SizedBox(
              width: 120.w,
              child: Switch(
                  activeColor: const Color(0xffD2D3DA),
                  activeTrackColor: Colors.white,
                  inactiveThumbColor: Colors.grey[600],
                  inactiveTrackColor: Colors.grey[850],
                  value: isChange,
                  onChanged: (bool value) {
                    setState(() {
                      Provider.of<ModeProvider>(context, listen: false)
                          .changeMode();
                      isChange = value;
                    });
                  }),
            ),
            Positioned(
              left: !isChange ? 60.0.w : 36.0.w,
              child: Icon(
                !isChange
                    ? Icons.nightlight_outlined
                    : Icons.light_mode_outlined,
                color: const Color(0xff4B5EFC),
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
