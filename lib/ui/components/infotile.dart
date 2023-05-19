import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/avatar_utilities.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    this.backgroundColor,
    required this.title,
    required this.data,
    this.gradientColors,
    this.isGradient = false,
  })  : assert(
          !isGradient && backgroundColor != null ||
              isGradient && gradientColors != null,
        ),
        assert(gradientColors != null ? gradientColors.length == 2 : true);

  final Color? backgroundColor;
  final List<Color>? gradientColors;
  final bool isGradient;
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    var gradientPos = getRandomAlignments();

    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor,
            gradient: isGradient
                ? LinearGradient(
                    colors: [
                      gradientColors![0].darken(),
                      gradientColors![1].darken()
                    ],
                    begin: gradientPos[0],
                    end: gradientPos[1],
                    stops: const [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  )
                : null,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
        ),
        ClipRRect(
          // Clip it cleanly.
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.black45.withOpacity(0.3),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AutoSizeText(
                      title,
                      maxLines: 2,
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                letterSpacing: 1.5,
                              ),
                    ),
                    const Spacer(),
                    AutoSizeText(
                      data,
                      maxLines: 1,
                      style: GoogleFonts.robotoMono(
                        textStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontSize: 20.sp, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
