// lib/core/services/share/web_share_service.dart
import 'dart:html' as html;

import 'package:tweetguess/core/services/share/domain/share_service_interface.dart';

class WebShareService implements IShareService {
  @override
  Future<void> share({required String text, String? subject}) async {
    try {
      await html.window.navigator.share({
        'text': text,
        'title': subject,
      });
    } catch (e) {
      // Fallback for browsers that don't support Web Share API
      // Sneakily copying the text
      final textarea = html.TextAreaElement()
        ..value = text
        ..style.position = 'fixed'
        ..style.opacity = '0';
      html.document.body!.append(textarea);
      textarea.select();
      html.document.execCommand('copy');
      textarea.remove();
    }
  }
}
