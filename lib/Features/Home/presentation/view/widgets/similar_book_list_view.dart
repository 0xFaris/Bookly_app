import 'package:bookly_app/Core/widgets/custom_circularprogressIndicator.dart';
import 'package:bookly_app/Core/widgets/custom_error.dart';
import 'package:bookly_app/Features/Home/presentation/manger/similar_book_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
      if (state is SimilarBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.12,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CustomBookImage(
                  imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,
                ),
              );
            },
          ),
        );
      } else if (state is SimilarBooksFailure) {
        return CustomError(errorMessage: state.message);
      } else {
        return CustomCircularprogressindicator();
      }
    });
  }
}
