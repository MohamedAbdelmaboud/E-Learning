import 'package:flutter/material.dart';

abstract class AppStyles {
  // Regular
  static TextStyle _regular({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'PlusJakarta',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular12 = _regular(
    color: const Color(0xFFAAAAAA),
    fontSize: 12,
  );

  static TextStyle regular14 = _regular(
    color: const Color(0xFFAAAAAA),
    fontSize: 14,
  );

  static TextStyle regular16 = _regular(
    color: const Color(0xFF064061),
    fontSize: 16,
  );

  // Medium
  static TextStyle _medium({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'PlusJakarta',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle medium16 = _medium(
    color: const Color(0xFF064061),
    fontSize: 16,
  );

  static TextStyle medium20 = _medium(
    color: Colors.white,
    fontSize: 20,
  );

  // Semi Bold
  static TextStyle _semiBold({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'PlusJakarta',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold16 = _semiBold(
    color: const Color(0xFF064061),
    fontSize: 16,
  );

  static TextStyle semiBold18 = _semiBold(
    color: const Color(0xFF4EB7F2),
    fontSize: 18,
  );

  static TextStyle semiBold20 = _semiBold(
    color: const Color(0xFF064061),
    fontSize: 20,
  );

  static TextStyle semiBold24 = _semiBold(
    color: const Color(0xFF4EB7F2),
    fontSize: 24,
  );

  // Bold
  static TextStyle bold({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'PlusJakarta',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle bold16 = bold(
    color: const Color(0xFF4EB7F2),
    fontSize: 16,
  );
}
