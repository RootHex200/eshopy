import 'package:eshopy/src/core/utils/colors/app_colors.dart';
import 'package:flutter/material.dart';

class DetailsTabbar extends StatefulWidget {
  const DetailsTabbar({super.key});

  @override
  State<DetailsTabbar> createState() => _DetailsTabbarState();
}

class _DetailsTabbarState extends State<DetailsTabbar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Theme(
          data: theme.copyWith(
            colorScheme: theme.colorScheme.copyWith(
              surfaceVariant: Colors.transparent,
            ),
          ),
          child: TabBar(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Appcolor.contentmain,
            labelColor: Appcolor.primaryColor,
            labelStyle: const TextStyle(
              fontSize: 20,
              
              fontWeight: FontWeight.bold,
            ),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),

              color: Appcolor.white,
            
            ),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              indicatorColor: Colors.transparent,
              controller: _tabController,
              tabs: const [
                Tab(
                  text: "Product",
                ),
                Tab(
                  text: "Details",
                ),
                Tab(
                  text: "Reviews",
                ),
              ]),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children:  [
            Container(),
            const Center(child: Text("Details"),),
            const Center(child: Text("Reviews"),),
          ]),
        )
      ],
    );
  }
}
