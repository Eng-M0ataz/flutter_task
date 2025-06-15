import 'package:dartz/dartz.dart';
import 'package:task_porject/Features/home/data/models/product_model/product_model.dart';
import 'package:task_porject/core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductModel>>> getProducts();
}
