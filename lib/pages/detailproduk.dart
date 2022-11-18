import 'package:apoo_flutter/models/data_product.dart';
import 'package:apoo_flutter/theme.dart';
import 'package:apoo_flutter/widgets/detail_catalog.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DetailProduct extends StatefulWidget {
  DetailProduct({Key key, this.dataprodk}) : super(key: key);
  Dataprodk dataprodk;

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  bool isEmailValid = true;
  bool onthefav = false;
  var database;

  void initState() {
    // TODO: implement initState
    super.initState();
    initDb();
  }

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
    onthefav = await read(widget.dataprodk.id);
    setState(() {});
  }

  //Read
  Future<bool> read(int id) async {
    final Database db = await database;
    final data = await db.query('dataary', where: "id = ?", whereArgs: [id]);
    if (data.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  //update
  Future<void> update(Dataprodk dataprodk) async {
    final db = await database;
    await db.update(
      'dataary',
      dataprodk.updateproduk(),
      where: "id = ?",
      whereArgs: [dataprodk.id],
    );
    setState(() {
      onthefav = false;
    });
  }

  Future<void> insertApi(Dataprodk dataprodk) async {
    final db = await database;
    await db.insert(
      'dataary',
      dataprodk.toMapproduk(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    setState(() {
      onthefav = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Catalog',
          style: titleTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
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
              SizedBox(
                height: edge,
              ),
              DetailCatalog(
                DataProduct(
                  name: widget.dataprodk.name,
                  price: widget.dataprodk.price,
                  unit: widget.dataprodk.unit,
                  stocks: widget.dataprodk.stocks,
                  producent: widget.dataprodk.producent,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 135,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: whiteColor,
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
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: edge,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: whiteColor,
                border: Border.all(
                  color: greenColor,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    onthefav
                        ? update(widget.dataprodk)
                        : insertApi(widget.dataprodk);
                  },
                  child: Image.asset(
                    'assets/icon-order-green.png',
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: semiEdge,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/checkoutsalespage');
              },
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: greenColor,
                  border: Border.all(
                    color: greenColor,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Checkout',
                    style: titleTextStyle.copyWith(
                      fontSize: 18,
                      color: whiteColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: edge,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
