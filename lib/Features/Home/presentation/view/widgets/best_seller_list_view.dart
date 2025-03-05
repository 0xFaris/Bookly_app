import 'package:bookly_app/Core/widgets/custom_circularprogressIndicator.dart';
import 'package:bookly_app/Core/widgets/custom_error.dart';
import 'package:bookly_app/Features/Home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/best_seller_list_view_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (BuildContext context, NewestBooksState state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: BestSellerListViewItem(
                  books: state.books[index],
                ),
              ),
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
              child: CustomError(errorMessage: state.message));
        } else {
          return SliverToBoxAdapter(child: CustomCircularprogressindicator());
        }
      },
    );
  }
}
