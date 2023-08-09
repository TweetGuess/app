import 'package:flutter/material.dart';
import 'package:info_popup/info_popup.dart';

class InfoTooltip extends StatelessWidget {
  const InfoTooltip({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return InfoPopupWidget(
      contentTitle: message,
      arrowTheme: const InfoPopupArrowTheme(
        color: Colors.black26,
      ),
      contentTheme: const InfoPopupContentTheme(
        infoTextStyle: TextStyle(color: Colors.white),
      ),
      dismissTriggerBehavior: PopupDismissTriggerBehavior.anyWhere,
      areaBackgroundColor: Colors.transparent,
      indicatorOffset: Offset.zero,
      contentOffset: Offset.zero,
      child: const Icon(
        Icons.info_outline,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}

class ToolTipCustomShape extends ShapeBorder {
  final bool usePadding;

  const ToolTipCustomShape({this.usePadding = true});

  @override
  EdgeInsetsGeometry get dimensions =>
      EdgeInsets.only(bottom: usePadding ? 20 : 0);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    rect =
        Rect.fromPoints(rect.topLeft, rect.bottomRight - const Offset(0, 20));
    return Path()
      ..addRRect(
        RRect.fromRectAndRadius(rect, Radius.circular(rect.height / 3)),
      )
      ..moveTo(rect.bottomCenter.dx - 10, rect.bottomCenter.dy)
      ..relativeLineTo(10, 20)
      ..relativeLineTo(10, -20)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;
}
