import 'package:tazee/export_screens.dart';

class LandingPageAppBar extends StatelessWidget {
  const LandingPageAppBar({
    super.key,
    required this.name,
  });

  final String? name;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: CircleAvatar(
          backgroundColor: Colors.grey,
          child: Icon(Icons.person),
        ),
      ),
      title: Text(
        name ?? "Dummy_Name",
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
