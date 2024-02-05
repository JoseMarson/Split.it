import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/modules/home/widgets/add_button_widget.dart';
import 'package:split_it/modules/home/widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  final VoidCallback onTapAddButton;
  AppBarWidget({required this.user, required this.onTapAddButton})
      : super(
            child: Stack(
              children: [
                Container(
                  height: 265,
                  color: AppTheme.colors.backgroundSecondary,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 62),
                      child: ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              user.photoUrl!,
                            )),
                        title: Text(user.name!,
                            style: GoogleFonts.montserrat(
                                color: AppTheme.colors.nameAppBarHome,
                                fontSize: 24,
                                fontWeight: FontWeight.w700)),
                        trailing: AddButtonWidget(onTap: onTapAddButton),
                      ),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    BottomAppBarWidget(),
                  ],
                ),
              ],
            ),
            preferredSize: Size.fromHeight(330));
}
