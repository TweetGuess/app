import 'package:flutter/material.dart';

extension HeroAppBar on AppBar {
  PreferredSizeWidget toHero(Object tag) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Hero(tag: tag, child: this),
    );
  }
}
