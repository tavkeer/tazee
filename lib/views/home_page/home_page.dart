import 'package:tazee/export_screens.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: 500,
          child: MyButton(
            text: "Signout",
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
