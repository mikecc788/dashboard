import 'package:flutter/foundation.dart';
import 'dart:html' as html;

class TitleManager {
  // 定义每个页面的标题
  static final Map<String, String> _titles = {
    '/': '仪表盘 - 管理系统',
    '/analytics': '数据分析 - 管理系统',
    '/users': '用户管理 - 管理系统',
    '/products': '产品管理 - 管理系统',
    '/settings': '系统设置 - 管理系统',
    '/profile': '个人资料 - 管理系统',
    '/login': '登录 - 管理系统',
  };

  // 更新标题的方法
  static void updateTitle(String routeName) {
    if (kIsWeb) {
      // 仅在 Web 平台执行
      if (_titles.containsKey(routeName)) {
        _updateWebTitle(_titles[routeName]!);
      }
    }
  }

  // 更新 Web 标题的具体实现
  static void _updateWebTitle(String title) {
    if (kIsWeb) {
      html.document.title = title;
    }
  }
}
