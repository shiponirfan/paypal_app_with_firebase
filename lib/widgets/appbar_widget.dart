import 'package:flutter/material.dart';

PreferredSizeWidget appBarWidget(
    {required String title, IconButton? iconButton}) {
  return AppBar(
    centerTitle: true,
    title: Text(title),
    forceMaterialTransparency: true,
    actions: [iconButton ?? const SizedBox()],
  );
}
