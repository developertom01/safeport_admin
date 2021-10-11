import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:safeport_admin/utils/ui_itils/color_utils.dart';

class CutomCountryPicker extends StatelessWidget {
  final ValueChanged<CountryCode> onChanged;
  final String _countryCode;

  const CutomCountryPicker({
    Key? key,
    required String countryCode,
    required this.onChanged,
  })  : _countryCode = countryCode,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    return CountryCodePicker(
      initialSelection: _countryCode,
      onChanged: onChanged,
      showCountryOnly: true,
      builder: (code) => Container(
        width: size.width,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(
                code!.flagUri ?? "",
                package: "country_code_picker",
                width: 35,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                code.name ?? "",
                style: textTheme.button?.copyWith(
                  color: customWhiteColor,
                  fontSize: 16,
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.expand_more,
                  color: customWhiteColor,
                  size: 25,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
