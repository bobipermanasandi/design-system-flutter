import 'dart:convert';

import 'package:yokapos/features/auth/data/models/responses/user.dart';

extension UserJsonString on User {
  String toJsonString() => json.encode(toJson());
}
