import 'package:apoo_flutter/models/data_product.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';

class Topsell extends StatefulWidget {
  const Topsell({Key key}) : super(key: key);

  @override
  State<Topsell> createState() => _TopsellState();
}

class _TopsellState extends State<Topsell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: dataary.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 90,
                width: MediaQuery.of(context).size.width - (2 * edge),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Image.asset(
                        dataary[index].imageUrl,
                        width: 66,
                        height: 66,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dataary[index].name,
                            style: titleTextStyle,
                          ),
                          Spacer(),
                          Text(
                            dataary[index].producent,
                            style: descTextStyle.copyWith(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 12,
                      ),
                      child: Text.rich(
                        TextSpan(
                          text: 'Rp.',
                          style: descTextStyle.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: greenColor,
                          ),
                          children: [
                            TextSpan(
                              text: dataary[index].price,
                              style: descTextStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: greenColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
