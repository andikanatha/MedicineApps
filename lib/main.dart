import 'package:apoo_flutter/pages/base_page.dart';
import 'package:apoo_flutter/pages/history_page.dart';
import 'package:apoo_flutter/pages/home_page.dart';
import 'package:apoo_flutter/pages/login_page.dart';
import 'package:apoo_flutter/pages/profile_page.dart';
import 'package:apoo_flutter/pages/purchasing/add_catalog_product.dart';
import 'package:apoo_flutter/pages/purchasing/checkout_purchasing_page.dart';
import 'package:apoo_flutter/pages/purchasing/detail-transaction-processed-purchasing.dart';
import 'package:apoo_flutter/pages/purchasing/detail_purchasing_page.dart';
import 'package:apoo_flutter/pages/purchasing/distributor_catalog_page.dart';
import 'package:apoo_flutter/pages/purchasing/loading_purchasing_page.dart';
import 'package:apoo_flutter/pages/purchasing/option_payment_purchasing_page.dart';
import 'package:apoo_flutter/pages/purchasing_page.dart';
import 'package:apoo_flutter/pages/register_page.dart';
import 'package:apoo_flutter/pages/sales/checkout_sales_page.dart';
import 'package:apoo_flutter/pages/sales/detail_sales_page.dart';
import 'package:apoo_flutter/pages/sales/detail_transaction-sales-page.dart';
import 'package:apoo_flutter/pages/sales/loading_sales_page.dart';
import 'package:apoo_flutter/pages/product_page.dart';
import 'package:apoo_flutter/pages/splash_page.dart';
import 'package:apoo_flutter/pages/started_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.routeName,
      routes: {
        SplashPage.routeName: (context) => SplashPage(),
        StartedPage.routeName: (context) => StartedPage(),
        LoginPage.routeName: (context) => LoginPage(),
        RegisterPage.routeName: (contxt) => RegisterPage(),
        BasePage.routeName: (context) => BasePage(),
        HomePage.routeName: (context) => HomePage(),
        SalesPage.routeName: (context) => SalesPage(),
        DetailSalesPage.routeName: (context) => DetailSalesPage(),
        CheckoutSalesPage.routeName: (context) => CheckoutSalesPage(),
        LoadingSalesPage.routeName: (context) => LoadingSalesPage(),
        DetailTransactionSalesPage.routeName: (context) =>
            DetailTransactionSalesPage(),
        PurchasingPage.routeName: (context) => PurchasingPage(),
        AddCatalogProductPage.routeName: (context) => AddCatalogProductPage(),
        CheckoutPurchasingPage.routeName: (context) => CheckoutPurchasingPage(),
        DetailTransactionPurchasingPage.routeName: (context) =>
            DetailTransactionPurchasingPage(),
        DetailPurchasingPage.routeName: (context) => DetailPurchasingPage(),
        DistributorCatalogPage.routeName: (context) => DistributorCatalogPage(),
        LoadingPurchasingPage.routeName: (context) => LoadingPurchasingPage(),
        OptionPaymentPurchasingPage.routeName: (context) =>
            OptionPaymentPurchasingPage(),
        HistoryPage.routeName: (context) => HistoryPage(),
        ProfilePage.routeName: (context) => ProfilePage(),
      },
    );
  }
}
