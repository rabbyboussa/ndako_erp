import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

extension HoverExtensions on Widget {
  static final appContainer =
  html.window.document.getElementById('app-container');
  Widget get showCursorOnHover {
    return MouseRegion(
      child: this,
      // When the mouse enters the widget set the cursor to pointer
      onHover: (event) {
        appContainer.style.cursor = 'pointer';
      },
      // When it exits set it back to default
      onExit: (event) {
        appContainer.style.cursor = 'default';
      },
    );
  }
}