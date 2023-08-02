import 'package:flutter/material.dart';
import 'package:netfly/Widgets/menu_row_widget.dart';

class HeaderWidget extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return RowMenuWidget();
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 110;

  @override
  // TODO: implement minExtent
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }

}