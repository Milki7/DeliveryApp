import 'package:deliveryapp/components/catagories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Color.fromRGBO(252, 201, 110, 1),
      body: SafeArea(
        child: SingleChildScrollView(
            child:  Column(
              children: [
                 Container(
                  padding: const EdgeInsets.only(left:15,right:20 ,top: 10),

                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu),
                     InkWell(
                      onTap: () {
                        
                      },
                      child: Icon(CupertinoIcons.cart),
                     )
                    ],
                  ) ,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top:15, left:45,right: 45,bottom: 15),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child:    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(
                        margin:const EdgeInsets.only(left: 10) ,
                        width: 250,
                        child:const TextField(
                          decoration: const  InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(Icons.search)
                    ],),

                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                      )
                    ),
                    child: const Column(children: [
                      Catagories(),
                    ],),
                  )
              ],
              
            ),
        ),
        ),
    );
  }
}