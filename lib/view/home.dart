import 'package:flutter/material.dart';
import 'package:warehouse_version1/helper/global.dart';
import 'package:warehouse_version1/helper/myTheme.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomAppBar(
        color:  Global.primary, //MyTheme.isDarkTheme.value ? Global.primary : Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (){

                },
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: Icon(
                      Icons.home,
                    color: MyTheme.isDarkTheme.value ? Global.customGrey : Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 0),
              GestureDetector(
                onTap: (){

                },
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: Icon(
                      Icons.home,
                    color: MyTheme.isDarkTheme.value ? Global.customGrey : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: MyTheme.isDarkTheme.value ? Global.customGrey : Colors.white),
        onPressed: (){

        },
      ),
      body: SafeArea(
        child: Container(

          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        )
      ),
    );
  }
}
