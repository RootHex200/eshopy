
import 'package:eshopy/src/core/common/widgets/custom_drop_down.dart';
import 'package:eshopy/src/core/common/widgets/custom_text_field.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class Addresstextfieldswidget extends StatelessWidget {
  const Addresstextfieldswidget({
    super.key,
    required this.addresscontroller,
    required this.apartemetcontroller,
    required this.zipcontroller,
    this.selectedCountry,
    this.selectedState,
    this.selectedCity,
    this.selectedZip,
    this.selectedApartment,
    this.selectedAddress,
  });

  final TextEditingController addresscontroller;
  final TextEditingController apartemetcontroller;
  final TextEditingController zipcontroller;
  final String? selectedCountry;
  final String? selectedState;
  final String? selectedCity;
  final String? selectedZip;
  final String? selectedApartment;
  final String? selectedAddress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          initialValue: selectedAddress,
          hintText: "Address",
          controller: addresscontroller,
        ),
        const VerticalSpace(height: 20),
        CustomTextField(
          initialValue: selectedApartment,
          hintText: "Apartment, Suite, etc",
          controller: apartemetcontroller,
        ),
        const VerticalSpace(height: 20),
        Customdropdown(
            selectedValue: selectedCountry,
            onChanged: (value) {},
            items: const ['USA', 'Canada', 'UK', 'Australia'],
            hintText: "Country / region"),
        const VerticalSpace(height: 20),
        Customdropdown(
            selectedValue: selectedCountry,
            onChanged: (value) {},
            items: const ['State A', 'State B', 'State C'],
            hintText: "state / province"),
        const VerticalSpace(height: 20),
        Customdropdown(
            selectedValue: selectedCountry,
            onChanged: (value) {},
            items: const ['State A', 'State B', 'State C'],
            hintText: "City"),
        const VerticalSpace(height: 20),
        CustomTextField(
          initialValue: selectedZip,
          hintText: "zip / postal code (optional)",
          controller: zipcontroller,
        ),
      ],
    );
  }
}
