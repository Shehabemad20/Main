import 'package:completeproject/features/home/data/models/specialization_response_model.dart';
import 'package:completeproject/features/home/ui/widgets/doctor_%20speciality_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorSpecialityListview extends StatelessWidget {
  final List<SpecializationsData?> specializationsDatalist;
  const DoctorSpecialityListview(
      {super.key, required this.specializationsDatalist});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: specializationsDatalist.length,
          itemBuilder: (context, index) {
            return DoctorSpecialityListViewItem(
              itemindex: index,
              specializationsData: specializationsDatalist[index],
            );
          }),
    );
  }
}
