import 'package:bookly_app/Features/Home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.12,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhy-20aYpXG_nP_kh0D-jM5Gc4lhfU0BAWyw&s',
            ),
          );
        },
      ),
    );
  }
}
