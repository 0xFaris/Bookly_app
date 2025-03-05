import 'package:bookly_app/Core/widgets/custom_circularprogressIndicator.dart';
import 'package:bookly_app/Core/widgets/custom_error.dart';
import 'package:bookly_app/Features/Home/presentation/manger/featured_books_cubit.dart/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureCustomListView extends StatelessWidget {
  const FeatureCustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (BuildContext context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomError(errorMessage: state.message);
        } else {
          return const CustomCircularprogressindicator();
        }
      },
    );
  }
}
