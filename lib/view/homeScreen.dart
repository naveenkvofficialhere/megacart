import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenLight extends StatefulWidget {
  const HomeScreenLight({Key? key}) : super(key: key);

  @override
  State<HomeScreenLight> createState() => _HomeScreenLightState();
}

class _HomeScreenLightState extends State<HomeScreenLight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: const Color(0xffF7F7F7),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: ListView(
          shrinkWrap: true,
          children: [
            userBlock(),
            SingleChildScrollView(
              physics: ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  flagBlock(
                      flagName: 'assets/uk.png',
                      amount: "£15,256,486.00",
                      currency: "GBP",
                      main: "Main ."),
                  flagBlock(
                      flagName: 'assets/us.png',
                      amount: "\$14,897,421.60",
                      currency: "USD",
                      main: ""),
                  flagBlock(
                      flagName: 'assets/canada.png',
                      amount: "\$18,585,625.89",
                      currency: "CAD",
                      main: ""),
                  flagBlock(
                      flagName: 'assets/uk.png',
                      amount: "£15,256,486.00",
                      currency: "GBP",
                      main: ""),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            actionRequiredBox(context),
            SizedBox(
              height: 32,
            ),
            recentTransactions(),
            SizedBox(
              height: 24,
            ),
            rentBlock(context,
                arrowName: 'assets/arrowup.svg',
                amount: "-\$850.00",
                col: Color(0xffFFB6BA)),
            rentBlock(context,
                arrowName: 'assets/arrowup.svg',
                amount: "-\$850.00",
                col: Color(0xffFFB6BA)),
            rentBlock(context,
                arrowName: 'assets/arrowdown.svg',
                amount: "+\$850.00",
                col: Color(0xffAFE2BD)),
            rentBlock(context,
                arrowName: 'assets/arrowdown.svg',
                amount: "+\$850.00",
                col: Color(0xffAFE2BD)),
            rentBlock(context,
                arrowName: 'assets/arrowup.svg',
                amount: "-\$850.00",
                col: Color(0xffFFB6BA)),
          ],
        ),
        bottomNavigationBar: Container(
            height: 76,
            decoration: BoxDecoration(
              color: Colors.green,
              // color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 2),
                    color: Colors.black38,
                    spreadRadius: 1,
                    blurRadius: 1),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  // backgroundColor: Color(0xffFFFFFF),
                  backgroundColor: Theme.of(context).backgroundColor,
                  selectedItemColor: Color(0xff0CABDF),
                  unselectedItemColor: Color(0xff76808A),
                  selectedFontSize: 10,
                  unselectedFontSize: 10,
                  selectedLabelStyle:
                      TextStyle(color: Color(0xff0CABDF), fontFamily: 'noto'),
                  unselectedLabelStyle:
                      TextStyle(color: Color(0xff76808A), fontFamily: 'noto'),
                  onTap: (value) {
                    // Respond to item press.
                  },
                  items: [
                    BottomNavigationBarItem(
                      label: 'Home',
                      icon: SvgPicture.asset('assets/menu1.svg',
                          height: 24, width: 24),
                    ),
                    BottomNavigationBarItem(
                      label: 'Loans',
                      icon: SvgPicture.asset('assets/menu2.svg',
                          height: 24, width: 24),
                    ),
                    BottomNavigationBarItem(
                      label: 'Contracts',
                      icon: SvgPicture.asset('assets/menu3.svg',
                          height: 24, width: 24),
                    ),
                    BottomNavigationBarItem(
                      label: 'Teams',
                      icon: SvgPicture.asset('assets/menu4.svg',
                          height: 24, width: 24),
                    ),
                    BottomNavigationBarItem(
                      label: 'Chat',
                      icon: SvgPicture.asset('assets/menu5.svg',
                          height: 24, width: 24),
                    ),
                  ]),
            )));
  }

  Padding rentBlock(BuildContext context,
      {String? arrowName, String? amount, Color? col}) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 15, bottom: 4),
      child: Container(
        padding: const EdgeInsets.only(left: 6),
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration:
            BoxDecoration(color: col, borderRadius: BorderRadius.circular(10)),
        child: Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
                // color: Color(0xffFFFFFF),
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xff00455B),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: SvgPicture.asset(arrowName.toString())),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rent",
                      style: TextStyle(
                          // color: Color(0xff000000),
                          color: Theme.of(context).primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'noto'),
                    ),
                    Text(
                      " Sat ·16 Jul · 9.00 pm",
                      style: TextStyle(
                          color: Color(0xff979797),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'noto'),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  amount.toString(),
                  style: TextStyle(
                      // color: Color(0xff000000),
                      color: Theme.of(context).primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'noto'),
                ),
              ],
            )),
      ),
    );
  }

  Padding recentTransactions() {
    return Padding(
      padding: const EdgeInsets.only(left: 31, right: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Recent transactions",
            style: TextStyle(
                color: Color(0xff768089),
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'noto'),
          ),
          Text(
            "See all",
            style: TextStyle(
                color: Color(0xff0CABDF),
                fontSize: 12,
                fontWeight: FontWeight.w600,
                fontFamily: 'noto'),
          ),
        ],
      ),
    );
  }

  Padding actionRequiredBox(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: EdgeInsets.fromLTRB(16, 13, 11, 16),
        height: 85,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xff00455B), borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Action required",
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'noto'),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Expanded(
                  child: const Text(
                    "Lorem Ipsum is simply dummy \ntext of the printing and ",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'noto'),
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  height: 32,
                  width: 91,
                  decoration: BoxDecoration(
                      color: Color(0xff0CABDF),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      "Complete",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'noto'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding flagBlock(
      {String? flagName, String? amount, String? currency, String? main}) {
    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 157,
              width: 121,
              decoration: BoxDecoration(
                  // color: Color(0xffFFFFFF),
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Image.asset(
                      flagName.toString(),
                      width: 48,
                      height: 48,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      amount.toString(),
                      // "£15,256,486.00",
                      style: TextStyle(
                          // color: Color(0xff000000),
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'heebo'),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          // "Main .",
                          main.toString(),

                          style: TextStyle(
                              // color: Color(0xff000000),
                              color: Theme.of(context).primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'noto'),
                        ),
                        Text(
                          currency.toString(),
                          style: TextStyle(
                              color: Color(0xff808E9B),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'noto'),
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding userBlock() {
    return Padding(
      // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 43),
      padding: EdgeInsets.fromLTRB(16, 43, 17, 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
                color: Color(0xffFF9F0A),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "JB",
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 14,
                    fontFamily: 'basier'),
              ),
            ),
          ),
          SvgPicture.asset(
            'assets/bell.svg',
            width: 16,
            height: 18,
          )
        ],
      ),
    );
  }
}
