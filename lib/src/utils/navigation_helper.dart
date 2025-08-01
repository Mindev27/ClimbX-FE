import 'package:flutter/material.dart';
import '../screens/main_page.dart';
import '../screens/login_page.dart';

/// 공통 네비게이션 처리 헬퍼
class NavigationHelper {
  /// 로그인 성공 후 MainPage로 이동
  static void navigateToMainAfterLogin(BuildContext context) {
    Navigator.pushReplacement(
      context,
      _createPageRoute(const MainPage()),
    );
  }

  /// 로그아웃 후 LoginPage로 이동 (모든 페이지 스택 제거)
  static void navigateToLoginAfterLogout(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      _createPageRoute(const LoginPage()),
      (route) => false, // 모든 이전 페이지 제거
    );
  }

  /// 공통 페이지 라우트 생성 (애니메이션 없음)
  static PageRouteBuilder<T> _createPageRoute<T extends Widget>(T page) {
    return PageRouteBuilder<T>(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
    );
  }
} 