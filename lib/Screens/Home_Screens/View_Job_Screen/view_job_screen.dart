import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:upbuddy/Screens/Home_Screens/View_More_Screens/view_more_screen.dart';

import '../../../../Widgets/container_jobs_screen.dart';


class ViewJobScreen extends StatelessWidget {
  const ViewJobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: ListTile(
          title: Text('Jobs'),
          trailing: TextButton(
            onPressed: () {},
            child: const Text('Enable Alerts'),
          ),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ContainerJobsScreen(
            onClick: () {},
            title: 'I need app publisher on google play store - Upwork I need app publisher on google play store - Upwork',
            rate: '\$20-\$30',
            time: '2 hours ago',
            workLocation: 'China',
            description: 'You can enter keywords matching your skills, specify minimum price and country to get job targeted job alerts matching your criteria.                        ',
            catagory1: 'Mobile Development',
            catagory2: 'Web Development', onViewMore: () {
              Get.to(()=>const ViewMoreScreen());
        },),
      ),
    );
  }
}
