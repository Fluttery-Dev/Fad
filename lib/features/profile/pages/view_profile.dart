import 'package:fad/common/styling.dart';
import 'package:fad/common/widgets/back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ViewProfile extends ConsumerStatefulWidget {
  const ViewProfile({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ViewProfileState();
}

class _ViewProfileState extends ConsumerState<ViewProfile>
    with TickerProviderStateMixin {
  final posts = [
    'https://images.pexels.com/photos/1926769/pexels-photo-1926769.jpeg?cs=srgb&dl=pexels-konstantin-mishchenko-1926769.jpg&fm=jpg',
    'https://media.istockphoto.com/id/1297633362/photo/her-beauty-makes-it-hard-not-to-stare.jpg?s=612x612&w=0&k=20&c=_9EUpPSnGGbnkD-Ejfa-wTcso_ET10QQhpgglHcyUyM=',
    'https://media.istockphoto.com/id/1294339577/photo/young-beautiful-woman.jpg?s=612x612&w=0&k=20&c=v41m_jNzYXQtxrr8lZ9dE8hH3CGWh6HqpieWkdaMAAM=',
    'https://img.freepik.com/free-photo/high-fashion-look-glamor-closeup-portrait-beautiful-sexy-stylish-caucasian-young-woman-model_158538-2774.jpg?w=2000',
    'https://hips.hearstapps.com/hmg-prod/images/gettyimages-610398742-1538405260.jpg?resize=480:*',
    'https://images.pexels.com/photos/2681751/pexels-photo-2681751.jpeg?cs=srgb&dl=pexels-ali-pazani-2681751.jpg&fm=jpg'
  ];
  // DefaultTabController _tabController = DefaultTabController(length: 2, child: )
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: BackIcon(),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  expandedHeight: screenHeight * 0.45,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '6\nPosts',
                                  textAlign: TextAlign.center,
                                  style: TextStyles.subTitle,
                                ),
                                Text(
                                  '10\nFollowers',
                                  textAlign: TextAlign.center,
                                  style: TextStyles.subTitle,
                                ),
                              ],
                            ),
                            CircleAvatar(
                              backgroundImage: const AssetImage(
                                'assets/images/profile.png',
                              ),
                              radius: 60.r,
                            ),
                          ],
                        ),
                        Gap(20.h),
                        Text(
                          'Lokesh Mishra',
                          style: TextStyles.title,
                        ),
                        Gap(5.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.white,
                              size: 25.r,
                            ),
                            Gap(5.w),
                            Text(
                              'Level 20',
                              style: TextStyles.descp,
                            ),
                          ],
                        ),
                        Gap(20.h),
                        Text(
                          "Hi there! I'm Elizabeth \nbut you can call me Liz!",
                          style: TextStyles.descp,
                          softWrap: true,
                        ),
                        Gap(20.h),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: appPink,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          ),
                          child: Text(
                            'Edit Profile',
                            style: TextStyles.descp.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.transparent,
                    labelStyle: TextStyles.subTitle.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    labelPadding: EdgeInsets.zero,
                    tabs: const [
                      BorderTab(text: 'Posts'),
                      Tab(
                        text: 'Clips',
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        GridView.builder(
                          itemCount: posts.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                          ),
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(10.r),
                              child: Image.network(
                                posts[index],
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        ),
                        GridView.builder(
                          itemCount: posts.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                image: DecorationImage(
                                  image: NetworkImage(posts[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BorderTab extends StatelessWidget {
  const BorderTab({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Colors.black,
            width: 2.w,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: Tab(
        text: text,
      ),
    );
  }
}
