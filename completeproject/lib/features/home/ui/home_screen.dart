import 'package:completeproject/core/helpers/spacing.dart';
import 'package:completeproject/core/networking/api_error_handler.dart';
import 'package:completeproject/features/home/data/models/specialization_response_model.dart';
import 'package:completeproject/features/home/logic/cubit/home_cubit.dart';
import 'package:completeproject/features/home/logic/cubit/home_state.dart';
import 'package:completeproject/features/home/ui/widgets/doctor_speciality_listview.dart';
import 'package:completeproject/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:completeproject/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:completeproject/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doctor_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeTopBar(),
            const DoctorsBlueContainer(),
            verticalSpace(24.h),
            const DoctorSpecialitySeeAll(),
            verticalSpace(20.h),
            BlocBuilder<HomeCubit, HomeState>(
              buildWhen: (previous, current) =>
                  current is SpecializationsLoading ||
                  current is SpecializationsSuccess ||
                  current is SpecializationsSuccess,
              builder: (context, state) {
                return state.maybeWhen(specializationsLoading: () {
                  return const CircularProgressIndicator();
                }, specializationsSuccess: (specializationsResponseModel) {
                  var specializationslist =
                      specializationsResponseModel.specializationDataList;
                  return Expanded(
                    child: Column(
                      children: [
                        DoctorSpecialityListview(
                          specializationsDatalist: specializationslist ?? [],
                        ),
                        verticalSpace(8.h),
                        DoctorsListView(
                          DoctorsList: specializationslist?[0]?.doctorsList,
                        )
                      ],
                    ),
                  );
                }, specializationsError: (ErrorHandler) {
                  return SizedBox.shrink();
                }, orElse: () {
                  return SizedBox.shrink();
                });
              },
            ),
          ],
        ),
      )),
    );
  }
}
