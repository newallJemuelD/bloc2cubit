import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/companies_details_bloc.dart';
import 'components/bottom_navbar_widget.dart';
import 'components/details_listview_widget.dart';
import 'components/topbar_widget.dart';

class HomePage extends StatelessWidget {
  // final CompaniesDetailsBloc companiesInfoBloc = CompaniesDetailsBloc();
  final CompaniesDetailsCubit companiesDetailsCubit = CompaniesDetailsCubit();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider<CompaniesDetailsCubit>(
          create: (_) => CompaniesDetailsCubit(),
          child: Column(
            children: const [
              TopbarWidget(), //appbar section
              DetailsListviewWidget(), //main listivew builder section
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBar(), //bottom nav bar
      ),
    );
  }
}
