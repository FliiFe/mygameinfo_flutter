import 'dart:math';

import 'package:flutter/material.dart';

Color toPastel(Color originalColor, {bool light = false}) {
  List<double> hsl = rgbToHsl(originalColor);

  double pastelSaturation = 0.8;
  double pastelLightness = 0.85;
  pastelLightness = light ? pastelLightness : 1 - pastelLightness;

  Color pastelColor = hslToColor(hsl[0], pastelSaturation, pastelLightness);

  return pastelColor;
}

List<double> rgbToHsl(Color color) {
  double r = color.red / 255.0;
  double g = color.green / 255.0;
  double b = color.blue / 255.0;

  double maxV = [r, g, b].reduce(max);
  double minV = [r, g, b].reduce(min);
  double delta = maxV - minV;

  double h;
  if (delta == 0) {
    h = 0.0;
  } else if (maxV == r) {
    h = ((g - b) / delta) % 6;
  } else if (maxV == g) {
    h = ((b - r) / delta) + 2;
  } else {
    h = ((r - g) / delta) + 4;
  }
  h *= 60;

  if (h < 0) {
    h += 360;
  }

  double l = (maxV + minV) / 2;

  double s = delta == 0 ? 0 : delta / (1 - (2 * l - 1).abs());

  return [h, s, l];
}

Color hslToColor(double h, double s, double l) {
  double c = (1 - (2 * l - 1).abs()) * s;
  double x = c * (1 - ((h / 60) % 2 - 1).abs());
  double m = l - c / 2;
  double r, g, b;

  if (h < 60) {
    r = c;
    g = x;
    b = 0;
  } else if (h < 120) {
    r = x;
    g = c;
    b = 0;
  } else if (h < 180) {
    r = 0;
    g = c;
    b = x;
  } else if (h < 240) {
    r = 0;
    g = x;
    b = c;
  } else if (h < 300) {
    r = x;
    g = 0;
    b = c;
  } else {
    r = c;
    g = 0;
    b = x;
  }

  r = (r + m) * 255;
  g = (g + m) * 255;
  b = (b + m) * 255;

  return Color.fromRGBO(r.round(), g.round(), b.round(), 1);
}
