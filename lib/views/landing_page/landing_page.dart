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
      appBar: AppBar(
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
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              "Let's Travel\nNow",
              style: TextStyle(
                fontSize: 45,
                height: 0.95,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            SearchBar(
              height: height,
              width: width,
              controler: controller,
            ),
            const SizedBox(height: 20),
            const Text(
              "Travel Planning",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: width * 0.3,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CustomContainer(
                    imgPath: 'assets/camping.png',
                    desc: "Camping",
                    width: width * 0.45,
                  ),
                  CustomContainer(
                    imgPath: 'assets/hiking.png',
                    desc: "Hiking",
                    width: width * 0.33,
                  ),
                  CustomContainer(
                    imgPath: 'assets/alpine_lakes.png',
                    desc: "Alpine Lakes",
                    width: width * 0.45,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: width * 0.3,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CustomContainer(
                    imgPath: 'assets/alpine_lakes.png',
                    desc: "Alpine Lakes",
                    width: width * 0.6,
                  ),
                  CustomContainer(
                    imgPath: 'assets/camping.png',
                    desc: "Camping",
                    width: width * 0.6,
                  ),
                  CustomContainer(
                    imgPath: 'assets/hiking.png',
                    desc: "Hiking",
                    width: width * 0.6,
                  ),
                  CustomContainer(
                    imgPath: 'assets/alpine_lakes.png',
                    desc: "Alpine Lakes",
                    width: width * 0.6,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Popular Places",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  PopularPlacesContainer(
                    imgPath: 'assets/pahalgam.jpeg',
                    title: "Pahalgam",
                    subtitle: "Anatnag\nJ&K",
                    rating: "4.5",
                    width: width * 0.5,
                  ),
                  PopularPlacesContainer(
                    imgPath: 'assets/gul.jpeg',
                    title: "Gulmarag",
                    subtitle: "Baramullah\nJ&K",
                    rating: "4.5",
                    width: width * 0.5,
                  ),
                  PopularPlacesContainer(
                    imgPath: 'assets/pahalgam.jpeg',
                    title: "Pahalgam",
                    subtitle: "Anatnag\nJ&K",
                    rating: "4.5",
                    width: width * 0.5,
                  ),
                  PopularPlacesContainer(
                    imgPath: 'assets/gul.jpeg',
                    title: "Gulmarag",
                    subtitle: "Baramullah\nJ&K",
                    rating: "4.5",
                    width: width * 0.5,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 95),
          ],
        ),
      ),
    );
  }
}
