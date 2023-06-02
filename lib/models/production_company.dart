import 'package:freezed_annotation/freezed_annotation.dart';
part 'production_company.freezed.dart';
part 'production_company.g.dart';

@freezed
class ProductionCompany with _$ProductionCompany {
  const factory ProductionCompany({
    required String name,
  }) = _ProductionCompany;

  factory ProductionCompany.fromJson(Map<String, Object?> json) => _$ProductionCompanyFromJson(json);
}
