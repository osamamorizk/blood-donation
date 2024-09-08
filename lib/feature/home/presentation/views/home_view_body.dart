import 'package:blood_donation/core/helpers/consts.dart';
import 'package:blood_donation/feature/home/presentation/views/articles_view.dart';
import 'package:blood_donation/feature/home/presentation/views/blood_donner_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List<Widget> taps = [
    const ArticlesView(),
    const BloodDonationView(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: taps.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: const TabBar(
            labelStyle: TextStyle(fontSize: 20),
            dividerColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                text: 'المقالات',
              ),
              Tab(text: 'التبرع بالدم'),
            ],
          ),
        ),
        body: TabBarView(children: taps),
      ),
    );
  }
}
