import 'package:tweetguess/core/services/share/domain/share_service_interface.dart';

class ShareController {
  final IShareService _shareService;

  ShareController({required IShareService shareService})
      : _shareService = shareService;

  Future<void> shareGameResults({
    required int points,
    required int rounds,
    required String shareText,
  }) async {
    final formattedText = shareText
        .replaceAll('{points}', points.toString())
        .replaceAll('{rounds}', rounds.toString());

    await _shareService.share(
      text: formattedText,
      subject: 'TweetGuess Score',
    );
  }
}
