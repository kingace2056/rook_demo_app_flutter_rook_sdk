import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:rook_impl/controllers/user_data_controller.dart';

class OverallDataView extends StatelessWidget {
  const OverallDataView({super.key});

  @override
  Widget build(BuildContext context) {
    final UserDataController controller = Get.put(UserDataController());

    return Scaffold(
      appBar: AppBar(title: const Text('Overall Data')),
      body: Obx(() {
        if (controller.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (controller.userData?.data?.types?.sleepSummaries == null ||
            controller.userData?.data?.types?.sleepSummaries?.isEmpty == true) {
          return const Center(child: Text('No user data available'));
        } else {
          return ListView.builder(
            itemCount:
                controller.userData?.data?.types?.sleepSummaries?.length ?? 0,
            itemBuilder: (context, index) {
              final data =
                  controller.userData?.data?.types?.sleepSummaries?[index];

              // Format the date properly
              String formattedDate = 'No date';
              if (data?.createdAtRook != null) {
                try {
                  formattedDate = DateFormat(
                    'yyyy MMMM d, \'at\' h:mm a',
                  ).format(data!.createdAtRook!);
                } catch (e) {
                  formattedDate = 'Invalid date: $e';
                }
              }

              return ListTile(
                title: Text(formattedDate),
                subtitle: Text(
                  'Light Sleep: ${data?.sleepHealth?.summary?.sleepSummary?.duration?.lightSleepDurationSecondsInt ?? 'N/A'} mins \n rem Sleep: ${data?.sleepHealth?.summary?.sleepSummary?.duration?.remSleepDurationSecondsInt ?? 'N/A'} mins \n Deep Sleep: ${data?.sleepHealth?.summary?.sleepSummary?.duration?.deepSleepDurationSecondsInt ?? 'N/A'} mins \n Total Sleep: ${data?.sleepHealth?.summary?.sleepSummary?.duration?.remSleepDurationSecondsInt ?? 'N/A'} mins ',
                ),
              );
            },
          );
        }
      }),
    );
  }
}
