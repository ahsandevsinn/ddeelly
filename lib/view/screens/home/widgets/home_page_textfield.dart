import 'package:ddeelly/core/imports/imports.dart';

class HomePageTextfield extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final IconData? prefixIcon;
  final Widget? suffix;
  final bool isSuffixShow;
  final bool obscureText;
  final String obscuringCharacter;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final onTap;
  bool readOnly;
  TextInputType? keyboardType;
  int? maxLines;

  HomePageTextfield({
    super.key,
    this.controller,
    this.hintText,
    this.prefixIcon,
    this.validator,
    this.suffix,
    this.keyboardType,
    this.obscureText = false,
    this.isSuffixShow = false,
    this.obscuringCharacter = "*",
    this.onTap,
    this.readOnly = false,
    this.maxLines = 1,
    this.onChanged,
  });

  @override
  _HomePageTextfieldState createState() => _HomePageTextfieldState();
}

class _HomePageTextfieldState extends State<HomePageTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        maxLines: widget.maxLines,
        readOnly: widget.readOnly,
        onTap: widget.onTap,
        obscuringCharacter: widget.obscuringCharacter,
        obscureText: widget.obscureText,
        validator: widget.validator,
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        onChanged: widget.onChanged,
        cursorColor: AppColors.black,
        style: const TextStyle(
            fontSize: 15, color: Colors.black, fontWeight: FontWeight.w400),
        decoration: InputDecoration(
          suffixIcon: widget.suffix,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          fillColor: AppColors.white,
          filled: true,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300,
              color: Color(0xff9E9E9E)),
          prefixIcon: widget.prefixIcon != null
              ? Icon(
                  widget.prefixIcon,
                  color: const Color(0xff9E9E9E),
                  size: 25,
                )
              : null,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: AppColors.white,
          
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: AppColors.white
       
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: AppColors.white
             
            ),
          ),
        ),
      ),
    );
  }
}
