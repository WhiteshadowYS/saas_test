import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_params.freezed.dart';
// part 'home_screen_params.g.dart';

@freezed
class HomeScreenParams with _$HomeScreenParams {
  const HomeScreenParams._();

  @JsonSerializable()
  factory HomeScreenParams({
    @JsonKey(name: 'callback') required VoidCallback callback,
  }) = _HomeScreenParams;

  factory HomeScreenParams.fromJson(Map<String, dynamic> json) => _$HomeScreenParamsFromJson(json);
}
