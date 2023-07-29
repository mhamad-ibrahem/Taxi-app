import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:taxi_app/Local/Core/Constant/imageAsset.dart';
import '../../../Global/Core/functions/show_country_picker.dart';

class CountryButtonPick extends StatelessWidget {
  const CountryButtonPick(
      {super.key,
      required this.onSelect,
      required this.countryImage,
      required this.countryCode});
  final void Function(Country) onSelect;
  final String? countryImage;
  final String? countryCode;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: EdgeInsets.zero,
      minWidth: 0,
      onPressed: () {
        showCountries(
          context: context,
          onSelect: onSelect,
        );
      },
      child: SizedBox(
        width: 120,
        child: Row(
          children: [
            const SizedBox(width: 8),
            SizedBox(
              height: 30,
              width: 30,
              child: countryImage != null
                  ? Text(
                      countryImage!,
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    )
                  : Image.asset(
                      AppImageAsset.syriaFlagImage,
                      height: 20,
                    ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              countryCode!,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(
              width: 2,
            ),
            const Icon(
              Icons.arrow_drop_down_outlined,
            ),
            const SizedBox(
              height: 30,
              child: VerticalDivider(
                width: 1,
                thickness: 1,
                color: Color(0XFFBCBCBC),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
