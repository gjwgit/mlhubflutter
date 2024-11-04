/// About button widget contains app related information(version number, authors, license).
///
/// Copyright (C) 2024 The Authors
///
/// Licensed under the GNU General Public License, Version 3 (the "License");
///
/// License: https://www.gnu.org/licenses/gpl-3.0.en.html
//
// This program is free software: you can redistribute it and/or modify it under
// the terms of the GNU General Public License as published by the Free Software
// Foundation, either version 3 of the License, or (at your option) any later
// version.
//
// This program is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
// FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
// details.
//
// You should have received a copy of the GNU General Public License along with
// this program.  If not, see <https://www.gnu.org/licenses/>.
///
/// Authors: Ting Tang

library;

import 'package:flutter/material.dart';

Widget aboutButton(BuildContext context, String appVersion) {
  return IconButton(
    icon: const Icon(
      Icons.info,
      color: Colors.blue,
    ),
    onPressed: () => showAboutDialog(
      context: context,
      applicationVersion: 'Current version: $appVersion',
      applicationLegalese: '© 2024 Authors',
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: SelectableText(
            'MLHub app provides you with easy access to the latest state of the art in AI, Machine Learning, and Data Science.\nVisit the MLHub Book at https://survivor.togaware.com/mlhub/',
          ),
        ),
      ],
    ),
  );
}
