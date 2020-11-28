import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_dimens.dart';

class AppIcons {
  AppIcons._();

  static const Icon checkIcon = Icon(
    Icons.check,
    size: AppDimens.ICON_SMALL,
    color: AppColors.white,
  );

  static const Icon emailIcon = Icon(
  Icons.mail,
  color: AppColors.grey,
  );

  static const Icon addIcon = Icon(
    Icons.add,
    size: AppDimens.ICON_MEDIUM,
    color: AppColors.white,
  );

  static const Icon removeIcon = Icon(
    Icons.remove,
    size: AppDimens.ICON_MEDIUM,
    color: AppColors.white,
  );
}