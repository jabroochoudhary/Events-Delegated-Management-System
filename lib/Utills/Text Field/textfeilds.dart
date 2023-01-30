import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Theme/app_config.dart';
import 'package:get/get.dart';

class AppTextFormFiledWithLabel extends StatefulWidget {
  final String text;
  final double width;
  final double height;
  final bool isPassword;
  final bool isNumber;
  final double textSize;
  final Function(String)? validation;
  final TextEditingController? cntr;
  final TextInputType? keyboardtype;
  final bool readOnly;
  final GestureTapCallback? onTextFieldClick;
  final FontWeight? fontweight;

  TextEditingController? controller;
  AppTextFormFiledWithLabel(
      {Key? key,
      this.width = 0,
      this.isPassword = false,
      this.isNumber = false,
      this.text = "  example@gmail.com",
      this.textSize = 15,
      this.height = 0,
      this.validation,
      this.onTextFieldClick,
      this.keyboardtype,
      this.readOnly = false,
      this.fontweight = FontWeight.w400,
      this.cntr})
      : super(key: key);

  @override
  State<AppTextFormFiledWithLabel> createState() =>
      _AppTextFormFiledWithLabelState();
}

class _AppTextFormFiledWithLabelState extends State<AppTextFormFiledWithLabel> {
  bool isObscure = false;
  @override
  void initState() {
    super.initState();
    print(widget.isPassword == true);
    setState(() {
      isObscure = widget.isPassword == true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      onTap: widget.onTextFieldClick,
      readOnly: widget.readOnly,
      validator: widget.validation as String? Function(String?)?,
      obscureText: isObscure,
      cursorColor: Colors.black,
      style: GoogleFonts.poppins(
        color: Colors.black,
        fontWeight: widget.fontweight,
        fontSize: widget.textSize,
      ),
      controller: widget.cntr,
      keyboardType: widget.keyboardtype,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Get.theme.primaryColor),
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Get.theme.primaryColor)),

        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                child: Icon(
                  isObscure ? Icons.visibility : Icons.visibility_off,
                  color: Color(0xffC4C4C4),
                  size: 20,
                ))
            : SizedBox(
                width: 0,
              ),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(67),
        //   borderSide: BorderSide(
        //     color: Colors.white,
        //     width: 1.0,
        //   ),
        // ),
        focusColor: Get.theme.primaryColor,
        // focusedBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(67),
        //     borderSide: const BorderSide(
        //       width: 1.0,
        //       color: Colors.transparent,
        //     )),

        hintText: widget.text,
        label: Text(widget.text),
        labelStyle: GoogleFonts.poppins(
            color: Color(0xffADADAD),
            fontSize: widget.textSize,
            fontWeight: FontWeight.w400),

        hintStyle: GoogleFonts.poppins(
            color: Color(0xffADADAD),
            fontSize: widget.textSize,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
//////////////////////////////////////////////////////
///

class AppTextFormFiledWithOutLabel extends StatefulWidget {
  final String text;
  final double width;
  final double height;
  final bool isPassword;
  final bool isNumber;
  final double textSize;
  final Function(String)? validation;
  final TextEditingController? cntr;
  final TextInputType? keyboardtype;
  final bool readOnly;
  final GestureTapCallback? onTextFieldClick;
  final FontWeight? fontweight;

  TextEditingController? controller;
  AppTextFormFiledWithOutLabel(
      {Key? key,
      this.width = 0,
      this.isPassword = false,
      this.isNumber = false,
      this.text = "  example@gmail.com",
      this.textSize = 15,
      this.height = 0,
      this.validation,
      this.onTextFieldClick,
      this.keyboardtype,
      this.readOnly = false,
      this.fontweight = FontWeight.w400,
      this.cntr})
      : super(key: key);

  @override
  State<AppTextFormFiledWithOutLabel> createState() =>
      _AppTextFormFiledWithOutLabelState();
}

class _AppTextFormFiledWithOutLabelState
    extends State<AppTextFormFiledWithOutLabel> {
  bool isObscure = false;
  @override
  void initState() {
    super.initState();
    print(widget.isPassword == true);
    setState(() {
      isObscure = widget.isPassword == true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      onTap: widget.onTextFieldClick,
      readOnly: widget.readOnly,
      validator: widget.validation as String? Function(String?)?,
      obscureText: isObscure,
      cursorColor: Colors.black,
      style: GoogleFonts.poppins(
        color: Colors.black,
        fontWeight: widget.fontweight,
        fontSize: widget.textSize,
      ),
      controller: widget.cntr,
      keyboardType: widget.keyboardtype,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Get.theme.primaryColor),
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Get.theme.primaryColor)),

        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                child: Icon(
                  isObscure ? Icons.visibility : Icons.visibility_off,
                  color: Color(0xffC4C4C4),
                  size: 20,
                ))
            : SizedBox(
                width: 0,
              ),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(67),
        //   borderSide: BorderSide(
        //     color: Colors.white,
        //     width: 1.0,
        //   ),
        // ),
        focusColor: Get.theme.primaryColor,
        // focusedBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(67),
        //     borderSide: const BorderSide(
        //       width: 1.0,
        //       color: Colors.transparent,
        //     )),

        hintText: widget.text,

        hintStyle: GoogleFonts.poppins(
            color: Color(0xffADADAD),
            fontSize: widget.textSize,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}

///
/////////////////////////////////////
class AppTextFeild {
  searchFeild({
    required BuildContext context,
    required String hintText,
    String? errorMessage,
    FocusNode? focusNode,
    Function? onChange,
    Function? onSearch,
    bool isFilter = true,
    GestureTapCallback? onFilterClick,
    initialValue,
    // TextEditingController? textfeildController,
  }) {
    return Material(
      elevation: 0.4,
      // shadowColor: AppColor.dark.withOpacity(0.5),
      borderRadius: BorderRadius.circular(13),
      child: TextFormField(
        textCapitalization: TextCapitalization.sentences,
        textInputAction: TextInputAction.search,
        keyboardType: TextInputType.text,
        initialValue: initialValue,
        textAlignVertical: TextAlignVertical.center,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return errorMessage;
          }
          return null;
        },
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.transparent),
            borderRadius: BorderRadius.all(
              Radius.circular(13.0),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.backgroundColor),
            borderRadius: BorderRadius.all(
              Radius.circular(13.0),
            ),
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            color: AppColor.darkPrimaryColor.withOpacity(0.4),
            fontSize: AppConfig(context).width / 29,
            fontWeight: FontWeight.w500,
          ),
          alignLabelWithHint: true,
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(20, 0, 10, 10),
          prefixIcon: Container(
            width: AppConfig(context).width / 10,
            height: 30,
            color: AppColor.transparent,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 0,
              ),
              child: Icon(
                Icons.search_sharp,
                size: 25,
                color: AppColor.dark.withOpacity(0.5),
              ),
            ),
          ),
          suffixIcon: isFilter
              ? GestureDetector(
                  onTap: onFilterClick,
                  child: Container(
                    width: AppConfig(context).width / 10,
                    height: 30,
                    color: AppColor.transparent,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 0,
                      ),
                      child: Icon(
                        Icons.tune_sharp,
                        size: 25,
                        color: AppColor.dark.withOpacity(0.5),
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ),
        style: GoogleFonts.poppins(
          color: AppColor.dark,
          fontSize: AppConfig(context).width / 27,
          fontWeight: FontWeight.w500,
        ),
        cursorColor: AppColor.dark,
        focusNode: focusNode,
        onChanged: (value) {
          // print(value);
          onChange!(value);
        },
        onEditingComplete: () {
          onSearch!();
        },
      ),
    );
  }
}
