import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:taxi_app/Local/Core/Constant/Colors.dart';

import '../../../Local/Data/static/countryData.dart';

showCountries({
  required BuildContext context,
  required void Function(Country) onSelect,
}) {
  return showCountryPicker(
    context: context,
    countryListTheme: CountryListThemeData(
      flagSize: 25,
      backgroundColor: Colors.white,
      searchTextStyle: Theme.of(context).textTheme.headline3,
      textStyle: Theme.of(context).textTheme.headline3,
      bottomSheetHeight: 500,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      inputDecoration: InputDecoration(
          labelText: 'Search',
          labelStyle: const TextStyle(color: AppColor.greenPrimary),
          hintText: 'Start typing to search',
          prefixIcon: const Icon(
            Icons.search,
            color: AppColor.greenPrimary,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: const Color(0xFF8C98A8).withOpacity(0.2),
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: AppColor.greenPrimary, width: 2))),
    ),
    showPhoneCode: true,
    countryFilter: countriesCode,
    // exclude: countries,
    onSelect: onSelect,
  );
}
