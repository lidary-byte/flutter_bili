import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/config/routes/app_pages.dart';
import 'package:flutter_bili/pages/home/bloc/home_bloc.dart';
import 'package:flutter_bili/pages/main/bloc/main_bloc.dart';
import 'package:flutter_bili/pages/main/bloc/main_event.dart';
import 'package:flutter_bili/pages/main/bloc/main_state.dart';
import 'package:flutter_bili/pages/main/widget/bottom_navbar.dart';
import 'package:flutter_bili/pages/main/widget/slider_navbar.dart';
import 'package:flutter_bili/shared_components/responsive_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => MainBloc()),
          BlocProvider(create: (_) => HomeBloc())
        ],
        child: Scaffold(
          bottomNavigationBar: (!ResponsiveBuilder.isMobile(context))
              ? null
              : BlocBuilder<MainBloc, MainState>(
                  builder: (context, state) => BottomNavbar(
                      currentIndex: state.index ?? 0,
                      onSelected: (position) {
                        context.read<MainBloc>().add(SwitchPageEvent(position));
                      })),
          body: SafeArea(
              child: ResponsiveBuilder(mobileBuilder: (context, constraints) {
            return _buildPageContentWidget(context);
          }, tabletBuilder: (context, constraints) {
            return _buildPageContentWidget(context);
          }, desktopBuilder: (context, constraints) {
            return _buildPageContentWidget(context);
          })),
        ));
  }

  Widget _buildPageContentWidget(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
        builder: (context, state) => ResponsiveBuilder.isMobile(context)
            ? _buildMainPage(context, state)

            // Column(
            //     children: [_topWidget(), _buildContentWidget(context)],
            //   )
            : Row(
                children: [
                  Container(
                    width: 200,
                    height: double.infinity,
                    color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .backgroundColor,
                    child: SliderNavBar(
                        currentIndex: state.index ?? 0,
                        onSelected: (position) {
                          context
                              .read<MainBloc>()
                              .add(SwitchPageEvent(position));
                        }),
                  ),
                  Expanded(child: _buildMainPage(context, state)

                      //      Column(
                      //   children: [_topWidget(), _buildContentWidget(context)],
                      // )

                      )
                ],
              ));
  }

  Widget _buildMainPage(BuildContext context, MainState state) {
    return PageTransitionSwitcher(
        reverse: state.animReverse ?? true,
        transitionBuilder: (
          Widget child,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) {
          return SharedAxisTransition(
            fillColor: Colors.transparent,
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            transitionType: SharedAxisTransitionType.vertical,
            child: child,
          );
        },
        child: AppPages.mainViewPager[state.index ?? 0]);
  }
}
