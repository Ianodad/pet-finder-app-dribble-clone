import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static final Map<String, Color> _colorCache = {};

  static Color? primaryGreenDarkSea = fromHex('#7eba94');
  static Color? primaryGreen = fromHex('#22c993');
  static Color? primaryGreenTurquoise = fromHex('#91c4a4');
  static Color? secondaryGreenLight = fromHex('#8ed3a8');
  static Color? primaryRed = fromHex('#f99393');
  static Color? primaryRedLight = fromHex('#f8b5af');
  static Color? primaryYellow = fromHex('#fed951');
  static Color? primaryYellowLight = fromHex('#ffe483');
  static Color? primaryYellow200 = fromHex('#fdf2cc');
  static Color? successGreen = fromHex('#65dc41');
  static Color? blueLight = fromHex('#a4e0f1');
  static Color? blueCoolMint = fromHex('#e0f0f5');
  static Color? purple = fromHex('#635bac');
  static Color? orange = fromHex('#f3b051');
  static Color? grey = fromHex('#cfcfcf');
  static Color? gray94 = fromHex('#f0f0f0');
  static Color? flashWhite = fromHex('#EEEEEE');

// takes a  hexadecimal string
  static Color? fromHex(String hexString) {
    // check if color is in cache return
    {
      if (_colorCache.containsKey(hexString)) {
        return _colorCache[hexString];
      }
      final buffer = StringBuffer();
      if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
      buffer.write(hexString.replaceFirst('#', ''));
      final color = Color(int.parse(buffer.toString(), radix: 16));
      _colorCache[hexString] = color;
      return color;
    }
  }
}
