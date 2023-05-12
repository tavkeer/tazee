import 'package:tazee/export_screens.dart';

class SearchBar extends StatelessWidget {
  final double height;
  final double width;
  final TextEditingController controler;
  const SearchBar({
    Key? key,
    required this.height,
    required this.width,
    required this.controler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width - 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(width: 2, color: Colors.grey.shade400),
      ),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: InputBorder.none,
          hintText: 'Search Location',
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
