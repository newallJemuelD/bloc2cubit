import '../models/companies_details.dart';
import 'api_provider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<CompaniesDetails> fetchCompaniesDetails() {
    return _provider.fetchCompaniesDetails();
  }
}

class NetworkError extends Error {}
