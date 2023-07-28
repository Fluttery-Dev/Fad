// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../common/controllers/interest_list_provider.dart';
import '../../../../common/styling.dart';
import '../../../../models/interest.dart';

class InterestSelection extends ConsumerWidget {
  const InterestSelection({
    required this.nextPage,
  });
  final void Function() nextPage;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    MultiSelectController interestController = MultiSelectController();
    final interestList = ref.read(interestListProvider);
    return Column(
      children: [
        Gap(30.h),
        Text(
          "Select any 5 interests that match your vibe.",
          style: TextStyles.title,
        ),
        Gap(20.h),
        MultiSelectContainer(
          maxSelectableCount: 5,
          itemsPadding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
          itemsDecoration: MultiSelectDecorations(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.white,
            ),
            selectedDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.transparent.withOpacity(0.5),
            ),
          ),
          controller: interestController,
          items: interestList
              .map(
                (e) => MultiSelectCard(
                  child: InterestWidget(interest: e),
                  value: e.title,
                ),
              )
              .toList(),
          onChange: (selectedItems, selectedItem) {},
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: appPink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          onPressed: () {
            nextPage();
          }, //TODO: To add username logic
          child: Text(
            "Next",
            style: TextStyles.descpSmall,
          ),
        ),
      ],
    );
  }
}

class InterestWidget extends StatelessWidget {
  const InterestWidget({
    Key? key,
    required this.interest,
  }) : super(key: key);
  final Interest interest;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      width: 80.w,
      child: Stack(
        children: [
          Image.network(
            interest.imageUrl,
            fit: BoxFit.fill,
          ),
          Positioned(
            bottom: 0,
            child: Text(
              interest.title,
              style: TextStyles.descpSmall,
            ),
          ),
        ],
      ),
    );
  }
}
