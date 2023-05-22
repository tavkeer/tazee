import 'package:tazee/export_screens.dart';

class ToggleLoginSignup extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final void Function()? ontap;

  const ToggleLoginSignup({
    Key? key,
    required this.textOne,
    required this.textTwo,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textOne,
          style: const TextStyle(color: Colors.grey),
        ),
        const SizedBox(width: 4),
        InkWell(
          onTap: ontap,
          child: Text(
            textTwo,
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
