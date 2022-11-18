import 'package:flutter/material.dart';

import '../theme.dart';
import 'profile/configurations_page.dart';
import 'profile/departements_page.dart';
import 'profile/employees_page.dart';
import 'profile/faqs_page.dart';
import 'purchasingList/purchasing_order_list_page.dart';
import 'profile/edit_profile_page.dart';
import 'profile/cost_center_page.dart';
import 'splash_page.dart';

class ProfilePage extends StatefulWidget {
  static const routeName = '/profilepage';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: edge,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: semiEdge,
              ),
              header(),
              dashboard(),
              myAccount(),
            ],
          ),
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      child: Column(
        children: [
          Center(
            child: Text(
              'Profile',
              style: titleTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: edge,
          ),
          profile(),
        ],
      ),
    );
  }

  Widget profile() {
    return Row(
      children: [
        Image.asset(
          'assets/profile.png',
          width: 50,
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User',
              style: titleTextStyle.copyWith(
                fontSize: 18,
                color: greenColor,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Indonesia',
              style: descTextStyle.copyWith(
                color: blackColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget dashboard() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: edge,
          ),
          Text(
            'Dashboard',
            style: descTextStyle,
          ),
          SizedBox(
            height: semiEdge,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfilePage(),
                ),
              );
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/ic-edit-profile.png',
                  height: 24,
                  width: 24,
                  color: Color(0xffC6D6EB),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Edit Profile',
                      style: titleTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Username, password',
                      style: seeAllTextStyle,
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Color(0xffC6D6EB),
                  size: 20.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: semiEdge,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CostCenterPage(),
                ),
              );
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/ic-cost-center.png',
                  height: 24,
                  width: 24,
                  color: Color(0xffC6D6EB),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cost Center',
                      style: titleTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Finansial allocation',
                      style: seeAllTextStyle,
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Color(0xffC6D6EB),
                  size: 20.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: semiEdge,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ConfigurationsPage(),
                ),
              );
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/ic-categories.png',
                  height: 24,
                  width: 24,
                  color: Color(0xffC6D6EB),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Configurations',
                      style: titleTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Distributors list, Medicines list',
                      style: seeAllTextStyle,
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Color(0xffC6D6EB),
                  size: 20.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: semiEdge,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EmployeesPage(),
                ),
              );
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/ic-employees.png',
                  height: 24,
                  width: 24,
                  color: Color(0xffC6D6EB),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Employees',
                      style: titleTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Data employees, positions',
                      style: seeAllTextStyle,
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Color(0xffC6D6EB),
                  size: 20.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: semiEdge,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DepartementsPage(),
                ),
              );
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/ic-departements.png',
                  height: 24,
                  width: 24,
                  color: Color(0xffC6D6EB),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Departements',
                      style: titleTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Data Departements, members',
                      style: seeAllTextStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Color(0xffC6D6EB),
                  size: 20.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: semiEdge,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PurchasingOrderListPage(),
                ),
              );
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/ic-purchasing-list.png',
                  height: 24,
                  width: 24,
                  color: Color(0xffC6D6EB),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Purchasing List',
                      style: titleTextStyle.copyWith(
                        fontSize: 14,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Container(
                      width: 250,
                      child: Text(
                        'Restock product list, purchasing status',
                        style: seeAllTextStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Color(0xffC6D6EB),
                  size: 20.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: semiEdge,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PurchasingOrderListPage(),
                ),
              );
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/ic-goods-receipt.png',
                  height: 24,
                  width: 24,
                  color: Color(0xffC6D6EB),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Goods Receipt',
                      style: titleTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Purchasing check, return',
                      style: seeAllTextStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Color(0xffC6D6EB),
                  size: 20.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: semiEdge,
          ),
        ],
      ),
    );
  }

  Widget myAccount() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: edge,
          ),
          Text(
            'My Account',
            style: descTextStyle,
          ),
          SizedBox(
            height: semiEdge,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FaqsPage(),
                ),
              );
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/ic-faqs.png',
                  height: 24,
                  width: 24,
                  color: Color(0xffC6D6EB),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'FAQs',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Color(0xffC6D6EB),
                  size: 20.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: semiEdge,
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Image.asset(
                  'assets/ic-handbook.png',
                  height: 24,
                  width: 24,
                  color: Color(0xffC6D6EB),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Our Handbook',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Color(0xffC6D6EB),
                  size: 20.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: semiEdge,
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (c) => AlertDialog(
                  content: Text(
                    'Choose an account',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        'Choose',
                        style: descTextStyle.copyWith(
                          color: greenColor,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/ic-switch-account.png',
                  height: 24,
                  width: 24,
                  color: Color(0xffC6D6EB),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Switch to other employee',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Color(0xffC6D6EB),
                  size: 20.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: semiEdge,
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (c) => AlertDialog(
                  content: Text(
                    'Are you sure?',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => SplashPage(),
                        ),
                      ),
                      child: Text(
                        'Yes',
                        style: descTextStyle.copyWith(
                          color: greenColor,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        'No',
                        style: descTextStyle.copyWith(
                          color: greenColor,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/ic-logout.png',
                  height: 24,
                  width: 24,
                  color: Color(0xffC6D6EB),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Logout',
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: edge,
          ),
        ],
      ),
    );
  }
}
