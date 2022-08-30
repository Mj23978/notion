import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/extensions.dart';
import '../../widgets/sidebar/sidebar.dart';

class HomeView extends ConsumerWidget {
  HomeView({Key? key}) : super(key: key);

  final _controller = SidebarController(selectedIndex: 0);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: Row(
        children: [
          Sidebar(
            controller: _controller,
            theme: SidebarTheme(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: canvasColor,
                borderRadius: BorderRadius.circular(20),
              ),
              hoverColor: const Color(0xFF384047),
              textStyle: const TextStyle(fontSize: 12, color: Colors.white),
              selectedTextStyle: const TextStyle(fontSize: 12, color: Color(0xFF0AB4FF)),
              itemTextPadding: const EdgeInsets.only(left: 20),
              selectedItemTextPadding: const EdgeInsets.only(left: 20),
              itemDecoration: BoxDecoration(
                border: Border.all(color: canvasColor),
              ),
              selectedItemDecoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(10),
                border: Border(
                  left: BorderSide(
                    color: Color(0xFF0AB4FF),
                    width: 4,                    
                  )
                ),
                // gradient:LinearGradient(
                //   colors: [accentCanvasColor, canvasColor],
                // ),
                color: const Color(0xFF28404C),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.28),
                    blurRadius: 30,
                  )
                ],
              ),
              iconTheme: const IconThemeData(
                color: Color(0xFF757C86),
                size: 20,
              ),
            ),

            extendedTheme: SidebarTheme(
              width: 200,
              decoration: BoxDecoration(
                color: canvasColor,
              ),
              margin: EdgeInsets.only(right: 10),
              selectedIconTheme: const IconThemeData(
                color: Color(0xFF0AB4FF),
                size: 20,
              ),
            ),
            footerDivider: divider,
            headerBuilder: (context, extended) {
              return SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('assets/images/avatar.png'),
                ),
              );
            },
            items: [
              (theme, ac, ex, se) => SidebarCell(
                    icon: Icons.home,
                    animationController: ac,
                    theme: theme,
                    extended: ex,
                    selected: se,
                    label: 'Home',
                    onTap: () {
                      _controller.selectIndex(0);
                      debugPrint('Hello');
                    },
                  ),
              (theme, ac, ex, se) => SidebarCell(
                    animationController: ac,
                    theme: theme,
                    icon: Icons.search,
                    extended: ex,
                    selected: se,
                    label: 'Search',
                    onTap: () {
                      _controller.selectIndex(1);
                      debugPrint('Hello');
                    },
                  ),
              (theme, ac, ex, se) => SidebarCell(
                    animationController: ac,
                    theme: theme,
                    extended: ex,
                    selected: se,
                    icon: Icons.people,
                    label: 'People',
                    onTap: () {
                      _controller.selectIndex(2);
                      debugPrint('Hello');
                    },
                  ),
              (theme, ac, ex, se) => SidebarCell(
                    animationController: ac,
                    theme: theme,
                    extended: ex,
                    selected: se,
                    icon: Icons.favorite,
                    label: 'Favorite',
                    onTap: () {
                      _controller.selectIndex(3);
                      debugPrint('Hello');
                    },
                  ),
            ],
          ),
          Expanded(
            child: Center(
              child: _ScreensExample(controller: _controller),
            ),
          ),
        ],
      ),
    );
  }
}

class _ScreensExample extends StatelessWidget {
  const _ScreensExample({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        switch (controller.selectedIndex) {
          case 0:
            return ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              itemBuilder: (context, index) => Container(
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).canvasColor,
                  boxShadow: const [BoxShadow()],
                ),
              ),
            );
          case 1:
            return Text(
              'Search',
              style: theme.textTheme.headline5,
            );
          case 2:
            return Text(
              'People',
              style: theme.textTheme.headline5,
            );
          case 3:
            return Text(
              'Favorites',
              style: theme.textTheme.headline5,
            );
          default:
            return Text(
              'Not found page',
              style: theme.textTheme.headline5,
            );
        }
      },
    );
  }
}

const primaryColor = Color(0xFF685BFF);
final canvasColor = "#2B343B".toColor();
const scaffoldBackgroundColor = Color(0xFF464667);
const accentCanvasColor = Color(0xFF3E3E61);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);

final divider = Divider(color: white.withOpacity(0.3), height: 1);
