import 'dart:async';
import 'package:get/get.dart';

class FooderlichTab {
  static const int explore = 0;
  static const int recipes = 1;
  static const int toBuy = 2;
}

class AppStateManager extends GetxController {
  final _initialized = false.obs;
  final _loggedIn = false.obs;
  final _onboardingComplete = false.obs;
  final _selectedTab = FooderlichTab.explore.obs;

  bool get isInitialized => _initialized.value;
  bool get isLoggedIn => _loggedIn.value;
  bool get onboardingComplete => _onboardingComplete.value;
  int get getSelectedTab => _selectedTab.value;

  void initializeApp() {
    Timer(
      const Duration(milliseconds: 2000),
      () {
        _initialized.value = true;
      },
    );
  }

  void login(String username, String password) {
    _loggedIn.value = true;
  }

  void completeOnboarding() {
    _onboardingComplete.value = true;
  }

  void goToTab(index) {
    _selectedTab.value = index;
  }

  void goToRecipes() {
    _selectedTab.value = FooderlichTab.recipes;
  }

  void logout() {
    _loggedIn.value = false;
    _onboardingComplete.value = false;
    _initialized.value = false;
    _selectedTab.value = 0;

    initializeApp();
  }
}
