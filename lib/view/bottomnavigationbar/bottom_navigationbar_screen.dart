import 'package:flutter/material.dart';
import 'package:kfc_restaurant/view/account/account_screen.dart';
import 'package:kfc_restaurant/view/addfooditem/addfooditem_screen.dart';
import 'package:kfc_restaurant/view/bottomnavigationbar/widgets/bottom_nav_widgets.dart';
import 'package:kfc_restaurant/view/menuscreen/menu_screen.dart';
import 'package:kfc_restaurant/view/registrationscreen/restaurant_reg_screen.dart';
import 'package:kfc_restaurant/view/statusscreen/status_screen.dart';

import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavigationUser extends StatefulWidget {
  const BottomNavigationUser({super.key});

  @override
  State<BottomNavigationUser> createState() => _BottomNavigationUserState();
}

class _BottomNavigationUserState extends State<BottomNavigationUser> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      // const HomeScreen(),
      // const AddFoodItemScreen(),
      const RestaurantRegistrationScreen(),
      const MenuScreen(),
      const StatusScreen(),
      const AccountScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        // title: ("Home"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.menu_book_rounded),
        // title: ("Home"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.start),
        // title: ("Home"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        // title: ("Account"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavWidgets(
      controller: _controller,
      buildScreens: _buildScreens(),
      navBarItems: _navBarsItems(),
    );
  }
}
