import 'package:share_plus/share_plus.dart';
import 'package:tweetguess/core/domain/services/share/share_service_interface.dart';

class MobileShareService implements IShareService {
  @override
  Future<void> share({required String text, String? subject}) async {
    await Share.share(
      text,
      subject: subject,
    );
  }
}

IShareService getShareService() => MobileShareService();
  