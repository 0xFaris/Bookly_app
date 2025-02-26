import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Core/utils/assets.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView);
      },
      child: Row(
        children: [
          SizedBox(
            height: 130,
            child: AspectRatio(
              aspectRatio: 2.4 / 3.5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange,
                  image: DecorationImage(
                    image: AssetImage(AssetsData.testBanner),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.60,
                  child: Text(
                    "Harry Potter and the Goblebt of Fire",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle30,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "J.K. Rowling",
                  style: Styles.textStyle14,
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      r"14.5 $",
                      style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    BookRating()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
