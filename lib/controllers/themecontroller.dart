import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  // Observable boolean for theme state
  RxBool isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
    // Load saved theme preference on initialization
    isDarkMode.value = _box.read(_key) ?? false;
  }

  // Toggle theme
  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
    _box.write(_key, isDarkMode.value);
  }
}