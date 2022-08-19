import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/companies_details_bloc.dart';
import '../../models/companies_details.dart';

class DetailsListviewWidget extends StatefulWidget {
  const DetailsListviewWidget({Key? key}) : super(key: key);

  @override
  State<DetailsListviewWidget> createState() => _DetailsListviewWidgetState();
}

class _DetailsListviewWidgetState extends State<DetailsListviewWidget> {
  final companiesDetailsCubit = CompaniesDetailsCubit();

  @override
  void initState() {
    companiesDetailsCubit.getCompaniesData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<CompaniesDetailsCubit, CompaniesDetailsState>(
        // child: BlocConsumer<CompaniesDetailsCubit, CompaniesDetailsState>(
        // listener: (context, state) {
        // },
        builder: (context, state) {
          if (state is CompaniesDetailsInitial) {
            return _buildLoading();
          } else if (state is CompaniesDetailsLoading) {
            return _buildLoading();
          } else if (state is CompaniesDetailsLoaded) {
            return _buildCard(context, state.companiesDetails);
          } else if (state is CompaniesDetailsError) {
            return Container();
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());

  Widget _buildCard(BuildContext context, CompaniesDetails details) {
    // return RefreshIndicator(
    // onRefresh: () async {
    //   BlocProvider.of<CompaniesDetailsBloc>(context).add(GetCompaniesData());
    // },
    return ListView.separated(
        itemCount: details.response!.data!.symbols!.length,
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemBuilder: ((context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Company name: ${details.response!.data!.symbols![index].companyName} ",
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Security number: ${details.response!.data!.symbols![index].isin} ",
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
