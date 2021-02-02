import 'package:flutter/material.dart';
import '../../pages/navbar/navbar.dart';
import '../../pages/aboutpage/about_page.dart';
import '../../pages/portfoliopage/portfolio_page.dart';
import '../../pages/servicespage/services_page.dart';
import '../../pages/contactpage/contact_page.dart';
import 'package:provider/provider.dart';
import '../../providers/utility_provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var utilityProvider;
  var width;
  var height;
  //ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    utilityProvider = Provider.of<UtilityProvider>(context);
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
        controller: utilityProvider.getScrollController(),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            TopNavbar(),
            AboutPage(),
            ServicesPage(),
            PortfolioPage(),
            ContactPage()
          ],
        ));
  }
}
