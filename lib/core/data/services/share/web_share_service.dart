import 'package:share_plus/share_plus.dart';
import 'package:tweetguess/core/domain/services/share/share_service_interface.dart';
import 'package:web/web.dart' as web;

class WebShareService implements IShareService {
  @override
  Future<void> share({required String text, String? subject}) async {
    try {
      Share.share(text, subject: subject);
    } catch (e) {
      // Fallback for browsers that don't support Web Share API
      // Sneakily copying the text
      final textarea = web.HTMLTextAreaElement()
        ..value = text
        ..style.position = 'fixed'
        ..style.opacity = '0';
      web.document.body!.append(textarea);
      textarea.select();
      web.document.execCommand('copy');
      textarea.remove();
    }
  }
}

IShareService getShareService() => WebShareService();
