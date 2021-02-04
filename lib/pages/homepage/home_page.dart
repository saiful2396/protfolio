import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../pages/navbar/navbar.dart';
import '../../pages/aboutpage/about_page.dart';
import '../../pages/portfoliopage/portfolio_page.dart';
import '../../pages/servicespage/services_page.dart';
import '../../pages/contactpage/contact_page.dart';
import '../../providers/utility_provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   final  utilityProvider = Provider.of<UtilityProvider>(context);
    return SingleChildScrollView(
      controller: utilityProvider.getScrollController(),
      physics: BouncingScrollPhysics(),
      child: ListView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: [
          TopNavbar(),
          AboutPage(),
          ServicesPage(),
          PortfolioPage(),
          ContactPage()
        ],
      ),
    );
  }
}
