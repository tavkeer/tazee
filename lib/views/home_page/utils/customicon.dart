import 'package:tazee/export_screens.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  const CustomIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        shape: BoxShape.circle,
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.all(5.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
    );
  }
}
