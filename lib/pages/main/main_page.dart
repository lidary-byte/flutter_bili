

import 'package:flutter_bili/constants/app_constants.dart';
import 'package:flutter_bili/pages/main/main_controller.dart';
import 'package:flutter_bili/pages/main/widget/bottom_navbar.dart';
import 'package:flutter_bili/pages/main/widget/header_weekly_task.dart';
import 'package:flutter_bili/pages/main/widget/main_menu.dart';
import 'package:flutter_bili/pages/main/widget/member.dart';
import 'package:flutter_bili/pages/main/widget/task_group.dart';
import 'package:flutter_bili/pages/main/widget/task_in_progress.dart';
import 'package:flutter_bili/pages/main/widget/task_menu.dart';
import 'package:flutter_bili/pages/main/widget/weekly_task.dart';
import 'package:flutter_bili/shared_components/header_text.dart';
import 'package:flutter_bili/shared_components/responsive_builder.dart';
import 'package:flutter_bili/shared_components/search_field.dart';
import 'package:flutter_bili/shared_components/task_progress.dart';
import 'package:flutter_bili/utils/helpers/app_helpers.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scafoldKey,
      drawer: ResponsiveBuilder.isDesktop(context)
          ? null
          : Drawer(
              child: SafeArea(
                child: SingleChildScrollView(child: _buildSidebar(context)),
              ),
            ),
      bottomNavigationBar: (ResponsiveBuilder.isDesktop(context) || kIsWeb)
          ? null
          : const BottomNavbar(),
      body: SafeArea(
        child: ResponsiveBuilder(
          mobileBuilder: (context, constraints) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTaskContent(
                    onPressedMenu: () => controller.openDrawer(),
                  ),
                  _buildCalendarContent(),
                ],
              ),
            );
          },
          tabletBuilder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: constraints.maxWidth > 800 ? 8 : 7,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildTaskContent(
                      onPressedMenu: () => controller.openDrawer(),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const VerticalDivider(),
                ),
                Flexible(
                  flex: 4,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildCalendarContent(),
                  ),
                ),
              ],
            );
          },
          desktopBuilder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: constraints.maxWidth > 1350 ? 3 : 4,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildSidebar(context),
                  ),
                ),
                Flexible(
                  flex: constraints.maxWidth > 1350 ? 10 : 9,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildTaskContent(),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const VerticalDivider(),
                ),
                Flexible(
                  flex: 4,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: _buildCalendarContent(),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildSidebar(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: MainMenu(onSelected: controller.onSelectedMainMenu),
        ),
        const Divider(
          indent: 20,
          thickness: 1,
          endIndent: 20,
          height: 60,
        ),
        Member(member: controller.member),
        const SizedBox(height: kSpacing),
        TaskMenu(
          onSelected: controller.onSelectedTaskMenu,
        ),
        const SizedBox(height: kSpacing),
        Padding(
          padding: const EdgeInsets.all(kSpacing),
          child: Text(
            "2021 Teamwork lisence",
            style: Theme.of(context).textTheme.caption,
          ),
        ),
      ],
    );
  }

  Widget _buildTaskContent({Function()? onPressedMenu}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: Column(
        children: [
          const SizedBox(height: kSpacing),
          Row(
            children: [
              if (onPressedMenu != null)
                Padding(
                  padding: const EdgeInsets.only(right: kSpacing / 2),
                  child: IconButton(
                    onPressed: onPressedMenu,
                    icon: const Icon(Icons.menu),
                  ),
                ),
              Expanded(
                child: SearchField(
                  onSearch: controller.searchTask,
                  hintText: "Search Task .. ",
                ),
              ),
            ],
          ),
          const SizedBox(height: kSpacing),
          Row(
            children: [
              Expanded(
                child: HeaderText(
                  DateTime.now().formatdMMMMY(),
                ),
              ),
              const SizedBox(width: kSpacing / 2),
              SizedBox(
                width: 200,
                child: TaskProgress(data: controller.dataTask),
              ),
            ],
          ),
          const SizedBox(height: kSpacing),
          TaskInProgress(data: controller.taskInProgress),
          const SizedBox(height: kSpacing * 2),
          const HeaderWeeklyTask(),
          const SizedBox(height: kSpacing),
          WeeklyTask(
            data: controller.weeklyTask,
            onPressed: controller.onPressedTask,
            onPressedAssign: controller.onPressedAssignTask,
            onPressedMember: controller.onPressedMemberTask,
          )
        ],
      ),
    );
  }

  Widget _buildCalendarContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: Column(
        children: [
          const SizedBox(height: kSpacing),
          Row(
            children: [
              const Expanded(child: HeaderText("Calendar")),
              IconButton(
                onPressed: controller.onPressedCalendar,
                icon: const Icon(EvaIcons.calendarOutline),
                tooltip: "calendar",
              )
            ],
          ),
          const SizedBox(height: kSpacing),
          ...controller.taskGroup
              .map(
                (e) => TaskGroup(
                  title: DateFormat('d MMMM').format(e[0].date),
                  data: e,
                  onPressed: controller.onPressedTaskGroup,
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
