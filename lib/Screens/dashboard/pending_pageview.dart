import 'package:blood_365/Screens/dashboard/request_popup.dart';
import 'package:blood_365/domain/request_blood/request.dart';
import 'package:flutter/material.dart';

class PendingPageView extends StatelessWidget {
  final List<RequestData> pendingList;
  PendingPageView(this.pendingList, {Key? key}) : super(key: key);

  final PageController controller = PageController(viewportFraction: 0.90);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: PageView.builder(
          controller: controller,
          itemCount: pendingList.length,
          itemBuilder: (context, index) => RequestPopup(pendingList[index])),
    );
  }
}
