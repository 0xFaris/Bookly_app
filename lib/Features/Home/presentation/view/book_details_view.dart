import 'package:bookly_app/Features/Home/Data/models/books_model/books_model.dart';
import 'package:bookly_app/Features/Home/presentation/manger/similar_book_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BookDetailsBody(
      bookModel: widget.bookModel,
    );
  }
}
