import 'package:flutter/material.dart';
import 'package:monday08042403/controll/HomeScreencontroller.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Providerobj = Provider.of<HomeScreenController>(context);
    return Scaffold(
      backgroundColor: Providerobj.Value,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  Provider.of<HomeScreenController>(context, listen: false)
                      .Value = Colors.red;
                });
              },
              child: Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Providerobj.Value = Colors.yellow;
                setState(() {});
              },
              child: Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Provider.of<HomeScreenController>(context, listen: false)
                    .Value = Colors.green;
                setState(() {});
              },
              child: Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Provider.of<HomeScreenController>(context, listen: false)
                    .Value = Colors.purple;
                setState(() {});
              },
              child: Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
