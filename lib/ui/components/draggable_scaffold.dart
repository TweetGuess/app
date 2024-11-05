import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:tweetguess/ui/components/scaffold.dart';

class DraggableScaffold extends StatefulWidget {
  const DraggableScaffold({
    super.key,
    required this.bodyChild,
    required this.title,
    required this.headerWidget,
    this.curvedBodyRadius = 20,
    this.scrollController,
  });

  final Widget bodyChild;
  final Widget title;
  final Widget headerWidget;
  final ScrollController? scrollController;
  final double curvedBodyRadius;

  num get headerExpandedHeight => 0.4;

  get stretchMaxHeight => 0.9;

  @override
  State<DraggableScaffold> createState() => _DraggableScaffoldState();
}

class _DraggableScaffoldState extends State<DraggableScaffold> {
  final BehaviorSubject<bool> isFullyExpanded =
      BehaviorSubject<bool>.seeded(false);
  final BehaviorSubject<bool> isFullyCollapsed =
      BehaviorSubject<bool>.seeded(false);

  @override
  void dispose() {
    isFullyExpanded.close();
    isFullyCollapsed.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double appBarHeight =
        AppBar().preferredSize.height + widget.curvedBodyRadius;

    final double topPadding = MediaQuery.of(context).padding.top;

    final double expandedHeight =
        MediaQuery.of(context).size.height * widget.headerExpandedHeight;

    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification.metrics.axis == Axis.vertical) {
          if (notification.metrics.extentBefore >
              AppBar().preferredSize.height - 40) {
            if (!(isFullyCollapsed.value)) isFullyCollapsed.add(true);
          } else {
            if ((isFullyCollapsed.value)) isFullyCollapsed.add(false);
          }
        }
        return false;
      },
      child: StreamBuilder<bool>(
        stream: isFullyCollapsed.stream,
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          final bool fullyCollapsed = (snapshot.data ?? false);

          return Container(
            color: Theme.of(context).colorScheme.surface,
            child: SafeArea(
              child: UIScaffold(
                backgroundColor:
                    Theme.of(context).colorScheme.surface.lighten(),
                bodyPadding: EdgeInsets.zero,
                body: body(
                  context,
                  appBarHeight,
                  topPadding,
                  fullyCollapsed,
                  expandedHeight,
                  widget.bodyChild,
                  widget.title,
                  widget.headerWidget,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  NestedScrollView body(
    BuildContext context,
    double appBarHeight,
    double topPadding,
    bool fullyCollapsed,
    double expandedHeight,
    Widget bodyChild,
    Widget title,
    Widget headerWidget,
  ) {
    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      controller: widget.scrollController,
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverSafeArea(
              sliver: MultiSliver(
                children: [
                  SliverAppBar(
                    title: title,
                    centerTitle: true,
                    stretch: true,
                    pinned: true,
                    elevation: 1,
                    scrolledUnderElevation: 0,
                    collapsedHeight: appBarHeight,
                    expandedHeight: expandedHeight,
                    flexibleSpace: Stack(
                      children: [
                        FlexibleSpaceBar(
                          background: Container(
                            color: Theme.of(context).colorScheme.surface,
                            margin: const EdgeInsets.only(bottom: 0.2),
                            child: headerWidget,
                          ),
                        ),
                        Positioned(
                          bottom: -1,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: widget.curvedBodyRadius,
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .surface
                                  .lighten(),
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(widget.curvedBodyRadius),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: widget.curvedBodyRadius,
                          child: AnimatedContainer(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            curve: Curves.easeInOutCirc,
                            duration: const Duration(milliseconds: 100),
                            height: fullyCollapsed ? 0 : kToolbarHeight,
                            width: MediaQuery.of(context).size.width,
                            child:
                                fullyCollapsed ? const SizedBox() : Container(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ];
      },
      body: SizedBox(
        height: MediaQuery.of(context).size.height - appBarHeight + topPadding,
        child: Stack(
          children: [
            Container(
              color: Theme.of(context).colorScheme.surface.lighten(),
            ),
            bodyChild,
          ],
        ),
      ),
    );
  }
}
