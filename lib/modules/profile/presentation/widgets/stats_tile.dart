part of '../profile.dart';

class _StatsTile extends StatelessWidget {
  const _StatsTile({
    super.key,
    required this.colors,
    required this.title,
    required this.data, required this.icon,
  });

  final List<Color> colors;
  final String title;
  final String data;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InfoTile(
        isGradient: true,
        gradientColors: colors,
        data: data,
        title: title,
        icon: icon,
      ),
    );
  }
}
