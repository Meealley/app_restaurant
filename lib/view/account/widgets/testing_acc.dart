import 'package:flutter/material.dart';

class UserAccountPage extends StatelessWidget {
  const UserAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                final bool isExpanded = constraints.maxHeight > 100;
                return FlexibleSpaceBar(
                  collapseMode: CollapseMode.none,
                  title: isExpanded
                      ? const Text(
                          'Hi, Mujin Park',
                          style: TextStyle(color: Colors.black),
                        )
                      : const ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                NetworkImage('https://via.placeholder.com/150'),
                          ),
                          title: Text(
                            "Mujin Park ",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                  background: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (isExpanded)
                        const SizedBox(
                            height:
                                100), // Adjusted height for the expanded FlexibleSpaceBar
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage('https://via.placeholder.com/150'),
                      ),
                      const SizedBox(height: 40),
                      isExpanded ? const Text('Total Balance: \$1000') : const SizedBox(),
                    ],
                  ),
                );
              },
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('List Tile $index'),
                );
              },
              childCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: UserAccountPage(),
  ));
}
