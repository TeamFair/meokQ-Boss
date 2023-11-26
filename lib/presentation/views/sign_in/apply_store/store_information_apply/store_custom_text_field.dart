import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/store_information/store_information_bloc.dart';

// TODO: 
class StoreCustomTextField extends StatelessWidget {
  const StoreCustomTextField({
    super.key,
    required this.storeTextInputType,
    required this.textInputType,
  });

  final StoreTextInputType storeTextInputType;

  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            storeTextInputType.text,
            style: TextS.caption1().copyWith(color: ColorS.applyGray),
          ),
          const SizedBox(
            height: 5,
          ),
          BlocBuilder<StoreInformationBloc, StoreInformationState>(
            builder: (context, state) {
              return Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 7.5),
                decoration: ShapeDecoration(
                  color: ColorS.background,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: TextField(
                  style: TextS.content().copyWith(
                    color: ColorS.gray400,
                  ),
                  onChanged: (text) => context.read<StoreInformationBloc>().add(
                        ChangeTextField(
                          newText: text,
                          storeTextInputType: storeTextInputType,
                        ),
                      ),
                  keyboardType: textInputType,
                  cursorColor: ColorS.applyGray,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: storeTextInputType.inTextField,
                    hintStyle: TextS.content().copyWith(
                      color: ColorS.applyGray,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
