part of 'companies_details_bloc.dart';

abstract class CompaniesDetailsEvent extends Equatable {
  const CompaniesDetailsEvent();

  @override
  List<Object> get props => [];
}

class GetCompaniesData extends CompaniesDetailsEvent {}
