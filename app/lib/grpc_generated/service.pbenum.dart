//
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Support_SupportType extends $pb.ProtobufEnum {
  static const Support_SupportType UNKNOWN = Support_SupportType._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const Support_SupportType ROLLER_SUPPORT = Support_SupportType._(1, _omitEnumNames ? '' : 'ROLLER_SUPPORT');
  static const Support_SupportType HINGE_SUPPORT = Support_SupportType._(2, _omitEnumNames ? '' : 'HINGE_SUPPORT');
  static const Support_SupportType FIXED_SUPPORT = Support_SupportType._(3, _omitEnumNames ? '' : 'FIXED_SUPPORT');

  static const $core.List<Support_SupportType> values = <Support_SupportType> [
    UNKNOWN,
    ROLLER_SUPPORT,
    HINGE_SUPPORT,
    FIXED_SUPPORT,
  ];

  static final $core.Map<$core.int, Support_SupportType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Support_SupportType? valueOf($core.int value) => _byValue[value];

  const Support_SupportType._($core.int v, $core.String n) : super(v, n);
}

class VerticallyDistributedLoad_Orientation extends $pb.ProtobufEnum {
  static const VerticallyDistributedLoad_Orientation UNKNOWN = VerticallyDistributedLoad_Orientation._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const VerticallyDistributedLoad_Orientation LEFT = VerticallyDistributedLoad_Orientation._(1, _omitEnumNames ? '' : 'LEFT');
  static const VerticallyDistributedLoad_Orientation RIGHT = VerticallyDistributedLoad_Orientation._(2, _omitEnumNames ? '' : 'RIGHT');

  static const $core.List<VerticallyDistributedLoad_Orientation> values = <VerticallyDistributedLoad_Orientation> [
    UNKNOWN,
    LEFT,
    RIGHT,
  ];

  static final $core.Map<$core.int, VerticallyDistributedLoad_Orientation> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VerticallyDistributedLoad_Orientation? valueOf($core.int value) => _byValue[value];

  const VerticallyDistributedLoad_Orientation._($core.int v, $core.String n) : super(v, n);
}

class Load_LoadType extends $pb.ProtobufEnum {
  static const Load_LoadType UNKNOWN = Load_LoadType._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const Load_LoadType COUPLE = Load_LoadType._(1, _omitEnumNames ? '' : 'COUPLE');
  static const Load_LoadType POINT_LOAD = Load_LoadType._(2, _omitEnumNames ? '' : 'POINT_LOAD');
  static const Load_LoadType UNIFORMLY_DISTRIBUTED_LOAD = Load_LoadType._(3, _omitEnumNames ? '' : 'UNIFORMLY_DISTRIBUTED_LOAD');
  static const Load_LoadType VERTICALLY_DISTRIBUTED_LOAD = Load_LoadType._(4, _omitEnumNames ? '' : 'VERTICALLY_DISTRIBUTED_LOAD');

  static const $core.List<Load_LoadType> values = <Load_LoadType> [
    UNKNOWN,
    COUPLE,
    POINT_LOAD,
    UNIFORMLY_DISTRIBUTED_LOAD,
    VERTICALLY_DISTRIBUTED_LOAD,
  ];

  static final $core.Map<$core.int, Load_LoadType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Load_LoadType? valueOf($core.int value) => _byValue[value];

  const Load_LoadType._($core.int v, $core.String n) : super(v, n);
}

class Component_ComponentType extends $pb.ProtobufEnum {
  static const Component_ComponentType UNKNOWN = Component_ComponentType._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const Component_ComponentType MEMBER = Component_ComponentType._(1, _omitEnumNames ? '' : 'MEMBER');
  static const Component_ComponentType SUPPORT = Component_ComponentType._(2, _omitEnumNames ? '' : 'SUPPORT');

  static const $core.List<Component_ComponentType> values = <Component_ComponentType> [
    UNKNOWN,
    MEMBER,
    SUPPORT,
  ];

  static final $core.Map<$core.int, Component_ComponentType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Component_ComponentType? valueOf($core.int value) => _byValue[value];

  const Component_ComponentType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
