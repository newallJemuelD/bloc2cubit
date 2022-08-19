import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/companies_details.dart';
import '../resources/api_repository.dart';

part 'companies_details_event.dart';
part 'companies_details_state.dart';

class CompaniesDetailsCubit extends Cubit<CompaniesDetailsState> {
  CompaniesDetailsCubit() : super(CompaniesDetailsInitial());

  final ApiRepository apiRepository = ApiRepository();
  Future<CompaniesDetailsState> getCompaniesData() async {
    try {
      emit(CompaniesDetailsLoading());
      final companiesData = await apiRepository.fetchCompaniesDetails();
      emit(CompaniesDetailsLoaded(companiesData));
      if (companiesData.error != null) {
        emit(CompaniesDetailsError(companiesData.error));
      }
    } on NetworkError {
      emit(const CompaniesDetailsError(
          "Failed to fetch data. is your device online?"));
    }
    throw NetworkError();
  }
}


// on<GetCompaniesData>((event, emit) async {
//       try {
//         emit(CompaniesDetailsLoading());
//         final companiesData = await apiRepository.fetchCompaniesDetails();
//         emit(CompaniesDetailsLoaded(companiesData));
//         if (companiesData.error != null) {
//           emit(CompaniesDetailsError(companiesData.error));
//         }
//       } on NetworkError {
//         emit(const CompaniesDetailsError(
//             "Failed to fetch data. is your device online?"));
//       }
//     });