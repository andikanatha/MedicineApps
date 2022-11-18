import 'package:apoo_flutter/models/data_detail_transaction.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:apoo_flutter/widgets/detail_transactions.dart';
import 'package:flutter/material.dart';

class DetailTransactionSalesPage extends StatefulWidget {
  static const routeName = '/detailtransactionsalespage';

  @override
  State<DetailTransactionSalesPage> createState() =>
      _DetailTransactionSalesPageState();
}

class _DetailTransactionSalesPageState
    extends State<DetailTransactionSalesPage> {
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
              DetailTransactions(
                DataDetailTransaction(
                  id: 1,
                  code: '#3882128763678',
                  cashier: 'Rachel Pandawa (Cashier-1)',
                  imageUrl: 'assets/status-completed.png',
                  product: 'Bodrexin Medical Center 15 gr 10 Tablet 1 Strip',
                  quantity: '3',
                  unit: 'strips',
                  price: '8.000',
                  payment: 'Credit Card (BCA)',
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - (2 * edge),
                child: RaisedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (c) => AlertDialog(
                        content: Text(
                          'Printed!',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              'Close',
                              style: descTextStyle.copyWith(
                                color: greenColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  color: greenColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      Text(
                        'Print',
                        style: buttonTextStyle,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: semiEdge,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/basepage');
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - (2 * edge),
                  child: Row(
                    children: [
                      Spacer(),
                      Text(
                        'Back to home',
                        style: titleTextStyle.copyWith(
                          color: secondColor,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: semiEdge,
              ),
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
          InkWell(
            onTap: () {
              Navigator.pop(
                context,
              );
            },
            child: Image.asset(
              'assets/ic-back.png',
              height: 30,
              width: 30,
            ),
          ),
          Spacer(),
          Center(
            child: Text(
              'Detail Transaction',
              style: titleTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 30,
            width: 30,
          ),
        ],
      ),
    );
  }
}
