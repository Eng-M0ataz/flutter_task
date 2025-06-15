import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_porject/Features/home/data/models/product_model/product_model.dart';
import 'package:task_porject/Features/home/data/repo/home_repo.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final HomeRepo homeRepo;
  ProductsCubit({required this.homeRepo}) : super(ProductsInitial());

  void getProducts() async {
    emit(ProductsLoading());
    final result = await homeRepo.getProducts();
    result.fold(
      (failure) => emit(ProductsFailure(errorMessage: failure.errorMessage)),
      (products) => emit(ProductsSuccess(productsList: products)),
    );
  }
}
