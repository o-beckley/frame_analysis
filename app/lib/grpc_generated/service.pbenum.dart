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

class Support_Type extends $pb.ProtobufEnum {
  static const Support_Type UNKNOWN = Support_Type._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const Support_Type ROLLER = Support_Type._(1, _omitEnumNames ? '' : 'ROLLER');
  static const Support_Type HINGE = Support_Type._(2, _omitEnumNames ? '' : 'HINGE');
  static const Support_Type FIXED = Support_Type._(3, _omitEnumNames ? '' : 'FIXED');

  static const $core.List<Support_Type> values = <Support_Type> [
    UNKNOWN,
    ROLLER,
    HINGE,
    FIXED,
  ];

  static final $core.Map<$core.int, Support_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Support_Type? valueOf($core.int value) => _byValue[value];

  const Support_Type._($core.int v, $core.String n) : super(v, n);
}

class Joint_Type extends $pb.ProtobufEnum {
  static const Joint_Type UNKNOWN = Joint_Type._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const Joint_Type HINGED = Joint_Type._(1, _omitEnumNames ? '' : 'HINGED');
  static const Joint_Type FIXED = Joint_Type._(2, _omitEnumNames ? '' : 'FIXED');

  static const $core.List<Joint_Type> values = <Joint_Type> [
    UNKNOWN,
    HINGED,
    FIXED,
  ];

  static final $core.Map<$core.int, Joint_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Joint_Type? valueOf($core.int value) => _byValue[value];

  const Joint_Type._($core.int v, $core.String n) : super(v, n);
}

class Node_Type extends $pb.ProtobufEnum {
  static const Node_Type UNKNOWN = Node_Type._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const Node_Type SUPPORT = Node_Type._(1, _omitEnumNames ? '' : 'SUPPORT');
  static const Node_Type JOINT = Node_Type._(2, _omitEnumNames ? '' : 'JOINT');

  static const $core.List<Node_Type> values = <Node_Type> [
    UNKNOWN,
    SUPPORT,
    JOINT,
  ];

  static final $core.Map<$core.int, Node_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Node_Type? valueOf($core.int value) => _byValue[value];

  const Node_Type._($core.int v, $core.String n) : super(v, n);
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

class Load_Type extends $pb.ProtobufEnum {
  static const Load_Type UNKNOWN = Load_Type._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const Load_Type COUPLE = Load_Type._(1, _omitEnumNames ? '' : 'COUPLE');
  static const Load_Type POINT = Load_Type._(2, _omitEnumNames ? '' : 'POINT');
  static const Load_Type UNIFORMLY_DISTRIBUTED = Load_Type._(3, _omitEnumNames ? '' : 'UNIFORMLY_DISTRIBUTED');
  static const Load_Type VERTICALLY_DISTRIBUTED = Load_Type._(4, _omitEnumNames ? '' : 'VERTICALLY_DISTRIBUTED');

  static const $core.List<Load_Type> values = <Load_Type> [
    UNKNOWN,
    COUPLE,
    POINT,
    UNIFORMLY_DISTRIBUTED,
    VERTICALLY_DISTRIBUTED,
  ];

  static final $core.Map<$core.int, Load_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Load_Type? valueOf($core.int value) => _byValue[value];

  const Load_Type._($core.int v, $core.String n) : super(v, n);
}

class BeamComponent_Type extends $pb.ProtobufEnum {
  static const BeamComponent_Type UNKNOWN = BeamComponent_Type._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const BeamComponent_Type MEMBER = BeamComponent_Type._(1, _omitEnumNames ? '' : 'MEMBER');
  static const BeamComponent_Type SUPPORT = BeamComponent_Type._(2, _omitEnumNames ? '' : 'SUPPORT');

  static const $core.List<BeamComponent_Type> values = <BeamComponent_Type> [
    UNKNOWN,
    MEMBER,
    SUPPORT,
  ];

  static final $core.Map<$core.int, BeamComponent_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BeamComponent_Type? valueOf($core.int value) => _byValue[value];

  const BeamComponent_Type._($core.int v, $core.String n) : super(v, n);
}

class Component_Type extends $pb.ProtobufEnum {
  static const Component_Type UNKNOWN = Component_Type._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const Component_Type MEMBER = Component_Type._(1, _omitEnumNames ? '' : 'MEMBER');
  static const Component_Type NODE = Component_Type._(2, _omitEnumNames ? '' : 'NODE');

  static const $core.List<Component_Type> values = <Component_Type> [
    UNKNOWN,
    MEMBER,
    NODE,
  ];

  static final $core.Map<$core.int, Component_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Component_Type? valueOf($core.int value) => _byValue[value];

  const Component_Type._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
