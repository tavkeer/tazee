import 'package:tazee/export_screens.dart';

class LandingPage extends StatelessWidget {
  final String? name;
  const LandingPage({
    Key? key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //screen height
    final double height = MediaQuery.of(context).size.height;

    //screen width
    final double width = MediaQuery.of(context).size.width;

    //search controller
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 57),
        child: LandingPageAppBar(name: name),
      ),
      body: Body(
        height: height,
        width: width,
        controller: controller,
      ),
    );
  }
}
