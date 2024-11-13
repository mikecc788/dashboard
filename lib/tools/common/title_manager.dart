import 'dart:html' as html;

class TitleManager{
  // 定义每个页面的标题
  static final Map<String, String> _titles ={
    '/':'Home Page',
    '/profile': 'Profile Page',
    '/settings': 'Settings Page',
  };

  // 更新标题的方法，根据当前路由名称设置标题
  static void updateTitle(String? routeName) {
    if (routeName != null && _titles.containsKey(routeName)) {
      html.document.title = _titles[routeName]!;
    }
  }
}