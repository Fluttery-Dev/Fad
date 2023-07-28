import 'package:fad/common/styling.dart';
import 'package:fad/common/widgets/back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewProfile extends ConsumerStatefulWidget {
  const ViewProfile({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ViewProfileState();
}

class _ViewProfileState extends ConsumerState<ViewProfile>
    with TickerProviderStateMixin {
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
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
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
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '6\nPosts',
                      textAlign: TextAlign.center,
                      style: TextStyles.subTitle,
                    ),
                    CircleAvatar(
                      foregroundImage: AssetImage(
                        'assets/images/profile.png',
                      ),
                      radius: 60.r,
                    ),
                    Text(
                      '10\nFollowers',
                      textAlign: TextAlign.center,
                      style: TextStyles.subTitle,
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    'Lokesh Mishra',
                    style: TextStyles.title,
                  ),
                ),
              ],
            ),
          ),
          TabBar(tabs: [Text('Posts'), Text('Clips')])
        ],
      ),
    );
  }
}
