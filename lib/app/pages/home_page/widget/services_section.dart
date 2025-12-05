import 'package:bandobast/app/pages/home_page/widget/service_widget.dart';
import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> services = [
      {
        'icon': Icons.cleaning_services,
        'name': 'Cleaners',
      },
      {
        'icon': Icons.ac_unit,
        'name': 'AC service',
      },
      {
        'icon': Icons.electrical_services,
        'name': 'Electricians',
      },
      {
        'icon': Icons.plumbing,
        'name': 'Plumbers',
      },
      {
        'icon': Icons.handshake_rounded,
        'name': 'Company',
      },
      {
        'icon': Icons.cast_for_education,
        'name': 'Consultation',
      },
      {
        'icon': Icons.drive_eta_rounded,
        'name': 'Drivers',
      },
      {
        'icon': Icons.directions_run,
        'name': 'Errand service',
      },
      {
        'icon': Icons.more_horiz_rounded,
        'name': 'More',
      },
    ];
    return GridView.builder(
      itemCount: services.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return ServiceWidget(
          icon: services[index]['icon'],
          serviceName: services[index]['name'],
        );
      },
    );
  }
}
