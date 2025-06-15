import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_porject/Features/home/data/models/product_model/product_model.dart';
import 'package:task_porject/Features/home/data/repo/home_repo.dart';
import 'package:task_porject/core/constants/api.dart';
import 'package:task_porject/core/errors/failure.dart';
import 'package:task_porject/core/services/api_service.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;
  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<ProductModel>>> getProducts() async {
    try {
      final List<dynamic> response = await apiService.getReq(
        endPoint: ApiConstants.productsEndPoint,
        baseUrl: ApiConstants.baseUrl,
      );
      List<ProductModel> productsList = parsingData(response);
      return right(productsList);
    } on DioException catch (e) {
      return left(ServerFailure(errorMessage: e.message.toString()));
    } catch (e) {
      return left(Failure(errorMessage: e.toString()));
    }
  }

  List<ProductModel> parsingData(List<dynamic> response) {
    List<ProductModel> products = [];
    for (var i = 0; i < response.length; i++) {
      products.add(ProductModel.fromJsonData(response[i]));
    }
    return products;
  }
}
