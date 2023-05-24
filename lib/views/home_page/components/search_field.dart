import 'package:flutter/cupertino.dart';
import 'package:tazee/export_screens.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 2.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(width: 2, color: Colors.white),
        color: Colors.grey.shade300,
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(CupertinoIcons.search),
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade300,
                filled: true,
                border: InputBorder.none,
                hintText: "Find a Tourist destination",
                hintStyle: TextStyle(
                  fontFamily: GoogleFonts.ubuntu().fontFamily,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
