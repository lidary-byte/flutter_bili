import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/constants/app_constants.dart';
import 'package:flutter_bili/shared_components/selection_button.dart';

// ignore: must_be_immutable
class SliderNavBar extends StatelessWidget {
  int currentIndex = 0;
  SliderNavBar(
      {super.key, required this.currentIndex, required this.onSelected});
  final Function(int position) onSelected;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.all(10),
            child: SelectionButton(
              initialSelected: currentIndex,
              data: [
                SelectionButtonData(
                  activeIcon: EvaIcons.home,
                  icon: EvaIcons.homeOutline,
                  label: "主页",
                ),
                SelectionButtonData(
                    activeIcon: EvaIcons.bell,
                    icon: EvaIcons.bellOutline,
                    label: "精选"),
                SelectionButtonData(
                    activeIcon: EvaIcons.checkmarkCircle2,
                    icon: EvaIcons.keypadOutline,
                    label: "动态"),
                SelectionButtonData(
                  activeIcon: EvaIcons.person,
                  icon: EvaIcons.personOutline,
                  label: "我的",
                ),
              ],
              onSelected: (position, data) {
                onSelected.call(position);
              },
            )),
        const Divider(
          indent: 20,
          thickness: 1,
          endIndent: 20,
          height: 60,
        ),
        // Member(member: controller.member),
        const SizedBox(height: kSpacing),
        // TaskMenu(
        //   onSelected: controller.onSelectedTaskMenu,
        // ),
        // Expanded(child: SizedBox()),
        const SizedBox(height: kSpacing),
        IconButton(onPressed: () {}, icon: const Icon(Icons.dark_mode))
      ],
    ));
  }
}
