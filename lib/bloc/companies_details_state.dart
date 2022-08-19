part of 'companies_details_bloc.dart';

abstract class CompaniesDetailsState extends Equatable {
  const CompaniesDetailsState();

  @override
  List<Object> get props => [];
}

class CompaniesDetailsInitial extends CompaniesDetailsState {}

class CompaniesDetailsLoading extends CompaniesDetailsState {}

class CompaniesDetailsLoaded extends CompaniesDetailsState {
  final CompaniesDetails companiesDetails;

  const CompaniesDetailsLoaded(this.companiesDetails);
}

class CompaniesDetailsError extends CompaniesDetailsState {
  final String? message;

  const CompaniesDetailsError(this.message);
}
