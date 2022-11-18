import 'package:apoo_flutter/models/data_product.dart';
import 'package:apoo_flutter/pages/sales/detailselling.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({Key key}) : super(key: key);

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  var database;

  List<Dataary> cart = <Dataary>[];

//open database
  Future initDb() async {
    database = await openDatabase(
      join(await getDatabasesPath(), 'dataary_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE dataary(id INTEGER, name TEXT, producent TEXT, imageUrl TEXT, price TEXT, stocks TEXT, unit TEXT, location TEXT, category TEXT)',
        );
      },
      version: 1,
    );

    getcart().then((value) {
      setState(() {
        cart = value;
      });
    });
  }

//Read
  Future<List<Dataary>> getcart() async {
    final Database db = await database;

    final List<Map<String, dynamic>> maps = await db.query('dataary');
    print(cart.toString());

    return List.generate(maps.length, (i) {
      return Dataary(
        id: maps[i]['id'] as int,
        name: maps[i]['name'] as String,
        producent: maps[i]['producent'] as String,
        imageUrl: maps[i]['imageUrl'] as String,
        price: maps[i]['price'],
        stocks: maps[i]['stocks'],
        unit: maps[i]['unit'],
        location: maps[i]['location'],
        category: maps[i]['category'],
      );
    });
  }

//Delete data
  Future<void> deleteResult(int id) async {
    final db = await database;
    await db.delete(
      'dataary',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  @override
  void initState() {
    super.initState();
    initDb();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          'Cart',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: cart.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onLongPress: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text("Delete " + cart[index].name.toString()),
                  content: Text("Are you sure to delete " +
                      cart[index].name.toString() +
                      " from cart?"),
                  actions: <Widget>[
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("No")),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          deleteResult(cart[index].id).then((value) {
                            getcart().then((value) {
                              setState(() {
                                cart = value;
                              });
                            });
                          });
                        },
                        child: Text("Yes")),
                  ],
                ),
              );
            },
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detailtopselling(
                      dataary: cart[index],
                    ),
                  ));
            },
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
                        cart[index].imageUrl,
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
                            cart[index].name,
                            style: titleTextStyle,
                          ),
                          Spacer(),
                          Text(
                            cart[index].producent,
                            style: descTextStyle.copyWith(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
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
