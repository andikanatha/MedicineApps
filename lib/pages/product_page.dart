import 'package:apoo_flutter/models/data_distributors.dart';
import 'package:apoo_flutter/models/data_product.dart';
import 'package:apoo_flutter/pages/detailproduk.dart';
import 'package:apoo_flutter/pages/sales/detailselling.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:apoo_flutter/widgets/top_distributor.dart';
import 'package:apoo_flutter/widgets/top_product.dart';
import 'package:flutter/material.dart';

import 'purchasing/distributor_catalog_page.dart';

class SalesPage extends StatefulWidget {
  static const routeName = '/salespage';

  @override
  State<SalesPage> createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
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
              findYourMedicine(),
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
              'Product',
              style: titleTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ),
          Spacer(),
          // InkWell(
          //   onTap: () {
          //     Navigator.of(context).pushNamed('checkoutsalespage');
          //   },
          //   child: Image.asset(
          //     'assets/ic-cart.png',
          //     height: 28,
          //     width: 28,
          //   ),
          // )
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
                'Top Distributor',
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

  Widget tags() {
    return Padding(
      padding: EdgeInsets.only(
        bottom: semiEdge,
      ),
      child: Container(
          height: 33,
          width: MediaQuery.of(context).size.width - (2 * edge),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: semiEdge,
              ),
              Container(
                height: 30,
                width: 115,
                decoration: BoxDecoration(
                  color: whiteColor,
                  border: Border.all(
                    color: greenColor,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Paracetamol',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                      color: greenColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: semiEdge,
              ),
              Container(
                height: 30,
                width: 115,
                decoration: BoxDecoration(
                  color: whiteColor,
                  border: Border.all(
                    color: greenColor,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'FG Throches',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                      color: greenColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: semiEdge,
              ),
              Container(
                height: 30,
                width: 115,
                decoration: BoxDecoration(
                  color: whiteColor,
                  border: Border.all(
                    color: greenColor,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Caffein',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                      color: greenColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: semiEdge,
              ),
              Container(
                height: 30,
                width: 115,
                decoration: BoxDecoration(
                  color: whiteColor,
                  border: Border.all(
                    color: greenColor,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Amoxillin',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                      color: greenColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: semiEdge,
              ),
              Container(
                height: 30,
                width: 115,
                decoration: BoxDecoration(
                  color: whiteColor,
                  border: Border.all(
                    color: greenColor,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Amiodrone',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                      color: greenColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: semiEdge,
              ),
            ],
          )),
    );
  }

  Widget findYourMedicine() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: edge,
          ),
          Row(
            children: [
              Text(
                'Find your medicines',
                style: titleTextStyle,
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: semiEdge,
          ),
          tags(),
          SizedBox(
            height: semiEdge,
          ),
          Container(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.50),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: dataprodk.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailProduct(
                            dataprodk: dataprodk[index],
                          ),
                        ));
                  },
                  child: Wrap(
                    spacing: semiEdge,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          height: 266,
                          width: 148,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            boxShadow: [
                              BoxShadow(
                                color: secondColor.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: Offset(5.0, 5.0),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 8,
                                  right: 12,
                                  left: 12,
                                ),
                                child: Image.asset(
                                  dataprodk[index].imageUrl,
                                  height: 138,
                                  width: 138,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Text(
                                  dataprodk[index].name,
                                  style: titleTextStyle,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Text.rich(
                                  TextSpan(
                                      text: 'Rp ',
                                      style: titleTextStyle.copyWith(
                                        fontSize: 14,
                                        color: greenColor,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: dataprodk[index].price,
                                          style: titleTextStyle.copyWith(
                                            fontSize: 18,
                                            color: greenColor,
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 12,
                                      bottom: 12,
                                    ),
                                    child: Text.rich(
                                      TextSpan(
                                          text: 'stocks ',
                                          style: seeAllTextStyle.copyWith(
                                            color: secondColor,
                                            fontSize: 12,
                                          ),
                                          children: [
                                            TextSpan(
                                                text: dataprodk[index].stocks,
                                                children: [
                                                  TextSpan(
                                                    text: ' ' +
                                                        dataprodk[index].unit,
                                                  )
                                                ]),
                                          ]),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
