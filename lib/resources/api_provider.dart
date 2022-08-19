import 'package:dio/dio.dart';

import '../models/companies_details.dart';

class ApiProvider {
  final Dio _dio = Dio();
  final String _url =
      'https://run.mocky.io/v3/ec1a0f0c-3739-4914-b5c0-2140e5165fe5';

  Future<CompaniesDetails> fetchCompaniesDetails() async {
    try {
      Response response = await _dio.get(_url);
      // print(response);
      CompaniesDetails result = CompaniesDetails.fromJson(response.data);
      // print(result.response!.data!.symbols![1].companyName);
      return result;
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return CompaniesDetails.withError("Data not found / Connection issue");
    }
  }
}
