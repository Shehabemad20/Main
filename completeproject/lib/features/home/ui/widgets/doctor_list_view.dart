import 'package:completeproject/features/home/data/models/specialization_response_model.dart';
import 'package:completeproject/features/home/ui/widgets/doctor_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? DoctorsList;
  const DoctorsListView({super.key, this.DoctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: DoctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorListViewItem(
            doctorsmodel: DoctorsList?[index],
          );
        },
      ),
    );
  }
}
