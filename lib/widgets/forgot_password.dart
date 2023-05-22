import 'package:tazee/export_screens.dart';

class ForgotPasswordSection extends StatelessWidget {
  const ForgotPasswordSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text(
            'Forgot Password?',
            style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
