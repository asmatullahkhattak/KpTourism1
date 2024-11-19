import 'package:flutter/material.dart';
import 'package:kptourism/widgets/detail_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'assets/places/img15.jpg',
    price: '',
    photographer: 'Safdar haroon',
    title: 'Kumrat',
    details: "Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
        " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
        "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
        " trekking opportunities, and a chance to experience the local culture and hospitality"
  ),
  ImageDetails(
    imagePath: 'assets/places/img16.jpg',
    price: '',
    photographer: 'Safdar haroon',
    title: 'Kumrat',
    details:"Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
        " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
        "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
        " trekking opportunities, and a chance to experience the local culture and hospitality"
  ),
  ImageDetails(
    imagePath: 'assets/places/img17.jpg',
    price: '',
    photographer: 'Safdar haroon',
    title: 'Kumrat',
    details:"Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
        " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
        "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
        " trekking opportunities, and a chance to experience the local culture and hospitality"
  ),
  ImageDetails(
    imagePath: 'assets/places/img18.jpg',
    price: '',
    photographer: 'Safdar haroon',
    title: 'Kumrat',
    details:"Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
        " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
        "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
        " trekking opportunities, and a chance to experience the local culture and hospitality"
  ),
  ImageDetails(
    imagePath: 'assets/places/img19.jpg',
    price: '',
    photographer: 'Safdar haroon',
    title: 'Kumrat',
    details: "Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
        " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
        "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
        " trekking opportunities, and a chance to experience the local culture and hospitality"
  ),
  ImageDetails(
    imagePath: 'assets/places/img20.jpg',
    price: '\$20.00',
    photographer: 'Safdar haroon',
    title: 'Swat',
    details: "Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
        " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
        "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
        " trekking opportunities, and a chance to experience the local culture and hospitality"
  ),
  ImageDetails(
    imagePath: 'assets/places/img21.jpg',
    price: '',
    photographer: 'Safdar haroon',
    title: 'Kumrat',
    details: "Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
        " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
        "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
        " trekking opportunities, and a chance to experience the local culture and hospitality"
  ),
  ImageDetails(
    imagePath: 'assets/places/img22.jpg',
    price: '',
    photographer: 'Safdar haroon',
    title: 'Kumrat',
    details: "Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
        " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
        "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
        " trekking opportunities, and a chance to experience the local culture and hospitality"
  ),
  ImageDetails(
    imagePath: 'assets/places/img23.jpg',
    price: '',
      photographer: 'Safdar haroon',
      title: 'Kumrat',
    details:"Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
        " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
        "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
        " trekking opportunities, and a chance to experience the local culture and hospitality"
  ),
  ImageDetails(
    imagePath: 'assets/places/img24.jpg',
    price: '',
      photographer: 'Safdar haroon',
      title: 'Kumrat',
    details:"Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
        " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
        "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
        " trekking opportunities, and a chance to experience the local culture and hospitality"
  ),
  ImageDetails(
    imagePath: 'assets/places/img25.jpg',
    price: '',
    photographer: 'Safdar haroon',
    title: 'Kumrat',
    details: "Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
        " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
        "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
        " trekking opportunities, and a chance to experience the local culture and hospitality"
  ),
  ImageDetails(
    imagePath: 'assets/places/img26.jpg',
    price: '',
      photographer: 'Safdar haroon',
      title: 'Kumrat',
    details: "Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
        " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
        "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
        " trekking opportunities, and a chance to experience the local culture and hospitality"
  ),
  ImageDetails(
    imagePath: 'assets/places/img27.jpg',
    price: '',
    photographer: 'Safdar haroon',
    title: 'Kumrat',
    details: "Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
        " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
        "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
        " trekking opportunities, and a chance to experience the local culture and hospitality"
  ),
  ImageDetails(
    imagePath: 'assets/places/img28.jpg',
    price: '',
    photographer: 'Asmat',
    title: 'Naran',
    details: "Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
        " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
        "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
        " trekking opportunities, and a chance to experience the local culture and hospitality"
  ),
  ImageDetails(
    imagePath: 'assets/places/img29.jpg',
    price: '',
    photographer: 'Sikandar ',
    title: 'Kumrat',
    details: "Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
        " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
        "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
        " trekking opportunities, and a chance to experience the local culture and hospitality"
  ),
  ImageDetails(
    imagePath: 'assets/places/img30.jpg',
    price: '',
    photographer: 'Sikandar',
    title: 'Swat',
    details: "Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
        " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
        "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
        " trekking opportunities, and a chance to experience the local culture and hospitality"
  ),
];

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
             SizedBox(
              height: 5.h,
            ),
            Text(
              'Gallery',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[index].imagePath,
                              title: _images[index].title,
                              photographer: _images[index].photographer,
                              price: _images[index].price,
                              details: _images[index].details,
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  final String price;
  final String photographer;
  final String title;
  final String details;
  ImageDetails({
    required this.imagePath,
    required this.price,
    required this.photographer,
    required this.title,
    required this.details,
  });
}




