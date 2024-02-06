import 'package:flutter/material.dart';
import 'package:todo/common/colors.dart';
import 'package:todo/common/responsive.dart';
import 'package:todo/widgets/dialog.dart';
import 'package:todo/widgets/task_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List tasks = [
  ];
  Widget task = TaskItem();
  void _openDialog() {
    showDialog(context: context, builder: (ctx) => const MyDialog());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 820),
        child: Row(
          children: [
            SizedBox(
              width: Responsive.screenWidth(context) / 7.5,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(61, 0, 0, 0),
              ),
              height: 500,
              width: Responsive.screenWidth(context) / 1.2,
              child: const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.add), border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(width: Responsive.screenWidth(context) / 1.8),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding:
                EdgeInsets.only(right: Responsive.screenWidth(context) / 40),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/khalid.jpg'),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: kBgColor,
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Responsive.screenHeight(context) / 30,
                  horizontal: Responsive.screenWidth(context) / 15),
              child: Container(
                height: Responsive.screenHeight(context) / 22,
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(15)),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      contentPadding: EdgeInsets.all(0),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20,
                      ),
                      border: InputBorder.none),
                ),
              )),
          ...tasks
        ],
      ),
    );
  }
}
