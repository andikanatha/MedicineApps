import 'package:apoo_flutter/models/data_distributors.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:apoo_flutter/widgets/list_distributor.dart';
import 'package:apoo_flutter/widgets/top_distributor.dart';
import 'package:flutter/material.dart';
import 'purchasing/checkout_purchasing_page.dart';
import 'purchasing/distributor_catalog_page.dart';

class PurchasingPage extends StatefulWidget {
  static const routeName = '/purchasingpage';

  @override
  State<PurchasingPage> createState() => _PurchasingPageState();
}

class _PurchasingPageState extends State<PurchasingPage> {
  bool isEmailValid = true;

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
              search(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DistributorCatalogPage(),
                    ),
                  );
                },
                child: topDistributor(),
              ),
              findYourDistributor(),
            ],
          ),
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
          ),
          Spacer(),
          Center(
            child: Text(
              'Search',
              style: titleTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ),
          Spacer(),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (c) => CheckoutPurchasingPage(),
          //       ),
          //     );
          //   },
          //   // child: Image.asset(
          //   //   'assets/ic-cart.png',
          //   //   height: 28,
          //   //   width: 28,
          //   // ),
          // ),
        ],
      ),
    );
  }

  Widget search() {
    return Padding(
      padding: EdgeInsets.only(
        top: semiEdge,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 10.0,
              spreadRadius: 0.2,
              offset: Offset(
                0.5,
                0.5,
              ),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  fillColor: whiteColor,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search your medicine',
                  hintStyle: descTextStyle.copyWith(
                    color: thirdColor,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  )),
              style: TextStyle(
                color: isEmailValid ? Color(0xff2A2B3D) : Color(0xffFD4F56),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget topDistributor() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: edge,
          ),
          Row(
            children: [
              Text(
                'Recommended for you',
                style: titleTextStyle,
              ),
              Spacer(),
              Text(
                'See all',
                style: seeAllTextStyle,
              )
            ],
          ),
          SizedBox(
            height: semiEdge - 2,
          ),
          Container(
            height: 126,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              children: [
                SizedBox(
                  width: semiEdge,
                ),
                TopDistributor(
                  DataDistributor(
                    id: 1,
                    name: 'Kalbe Farma',
                    stocks: '241',
                    imageUrl: 'assets/topDist1.png',
                    location: 'Kota Bandung',
                  ),
                ),
                SizedBox(
                  width: semiEdge,
                ),
                TopDistributor(
                  DataDistributor(
                    id: 2,
                    name: 'Sanbe Farma',
                    stocks: '114',
                    imageUrl: 'assets/topDist2.png',
                    location: 'Kota Cimahi',
                  ),
                ),
                SizedBox(
                  width: semiEdge,
                ),
                TopDistributor(
                  DataDistributor(
                    id: 3,
                    name: 'Dexa Medica',
                    stocks: '321',
                    imageUrl: 'assets/topDist3.png',
                    location: 'Kota Sukabumi',
                  ),
                ),
                SizedBox(
                  width: edge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget topSellingProduct() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: edge,
          ),
          Row(
            children: [
              Text(
                'Top Selling Distributor',
                style: titleTextStyle,
              ),
              Spacer(),
              Text(
                'See all',
                style: seeAllTextStyle,
              )
            ],
          ),
          SizedBox(
            height: semiEdge,
          ),
          Container(
            height: 230,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: semiEdge,
                ),
                ListDistributor(
                  DataDistributor(
                    id: 1,
                    imageUrl: 'assets/top1.png',
                    name: 'Paracetamol',
                    stocks: '71',
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                ListDistributor(
                  DataDistributor(
                    id: 2,
                    imageUrl: 'assets/top2.png',
                    name: 'Bodrexin',
                    stocks: '102',
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                ListDistributor(
                  DataDistributor(
                    id: 3,
                    imageUrl: 'assets/top3.png',
                    name: 'Bodrex',
                    stocks: '102',
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                ListDistributor(
                  DataDistributor(
                    id: 4,
                    imageUrl: 'assets/top1.png',
                    name: 'FG Thochest',
                    stocks: '213',
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                ListDistributor(
                  DataDistributor(
                    id: 5,
                    imageUrl: 'assets/top2.png',
                    name: 'Combantrin',
                    stocks: '112',
                  ),
                ),
                SizedBox(
                  width: semiEdge,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget findYourDistributor() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: edge,
          ),
          Row(
            children: [
              Text(
                'Find Your Distributors',
                style: titleTextStyle,
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: semiEdge,
          ),
          Wrap(
            spacing: semiEdge,
            children: [
              ListDistributor(
                DataDistributor(
                  id: 1,
                  imageUrl: 'assets/dist1.png',
                  name: 'Kalbe Farma',
                  location: 'Kota Bandung',
                  stocks: '71',
                ),
              ),
              ListDistributor(
                DataDistributor(
                  id: 2,
                  imageUrl: 'assets/dist2.png',
                  name: 'Sanbe Farma',
                  location: 'Kota Bandung',
                  stocks: '102',
                ),
              ),
              ListDistributor(
                DataDistributor(
                  id: 3,
                  imageUrl: 'assets/dist3.png',
                  name: 'Dexa Medica',
                  location: 'Kota Bandung',
                  stocks: '381',
                ),
              ),
              ListDistributor(
                DataDistributor(
                  id: 4,
                  imageUrl: 'assets/dist4.png',
                  name: 'Pharos Indonesia',
                  location: 'Kota Bandung',
                  stocks: '143',
                ),
              ),
              ListDistributor(
                DataDistributor(
                  id: 5,
                  imageUrl: 'assets/dist5.png',
                  name: 'Tempo Scan Pasific Bandung',
                  location: 'Kota Bandung',
                  stocks: '347',
                ),
              ),
              ListDistributor(
                DataDistributor(
                  id: 6,
                  imageUrl: 'assets/dist2.png',
                  name: 'Farmindo',
                  location: 'Kota Bandung',
                  stocks: '222',
                ),
              ),
              ListDistributor(
                DataDistributor(
                  id: 7,
                  imageUrl: 'assets/dist3.png',
                  name: 'Apex Pharma Indonesia',
                  location: 'Kota Bandung',
                  stocks: '711',
                ),
              ),
              ListDistributor(
                DataDistributor(
                  id: 8,
                  imageUrl: 'assets/dist1.png',
                  name: 'Armoxindo Farma',
                  location: 'Kota Bandung',
                  stocks: '102',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
