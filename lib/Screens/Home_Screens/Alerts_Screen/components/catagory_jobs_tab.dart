import 'package:flutter/material.dart';
import '../../../../../Widgets/container_jobs_screen.dart';
import '../../../../Widgets/custom_outline_button.dart';
class CategoryTab extends StatelessWidget {
  const CategoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Skills'),
          Container(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
              CusOutlineButton(child: 'Web Development', onTap: (){}),
              CusOutlineButton(child: 'Mobile App Development', onTap: (){}),
              CusOutlineButton(child: 'Mobile App Development', onTap: (){}),
            ],
            ),
          ),
          Expanded(child: ListView.builder(itemBuilder: (context, index) =>
              ContainerJobsScreen(
                  onClick: () {},
                  title: 'I need app publisher on google play store - Upwork I need app publisher on google play store - Upwork',
                  rate: '\$20-\$30',
                  time: '2 hours ago',
                  workLocation: 'China',
                  description: 'You can enter keywords matching your skills, specify minimum price and country to get job targeted job alerts matching your criteria.                        ',
                  catagory1: 'Mobile Development',
                  catagory2: 'Web Development', onViewMore: () {

              },),
            )
          )
        ],
      ),
    );
  }
}
