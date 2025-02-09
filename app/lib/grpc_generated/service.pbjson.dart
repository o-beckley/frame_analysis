//
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use analysisLogDescriptor instead')
const AnalysisLog$json = {
  '1': 'AnalysisLog',
  '2': [
    {'1': 'messages', '3': 1, '4': 3, '5': 9, '10': 'messages'},
  ],
};

/// Descriptor for `AnalysisLog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analysisLogDescriptor = $convert.base64Decode(
    'CgtBbmFseXNpc0xvZxIaCghtZXNzYWdlcxgBIAMoCVIIbWVzc2FnZXM=');

@$core.Deprecated('Use rollerSupportDescriptor instead')
const RollerSupport$json = {
  '1': 'RollerSupport',
  '2': [
    {'1': 'v_reaction', '3': 1, '4': 1, '5': 2, '10': 'vReaction'},
    {'1': 'settlement', '3': 2, '4': 1, '5': 2, '10': 'settlement'},
  ],
};

/// Descriptor for `RollerSupport`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rollerSupportDescriptor = $convert.base64Decode(
    'Cg1Sb2xsZXJTdXBwb3J0Eh0KCnZfcmVhY3Rpb24YASABKAJSCXZSZWFjdGlvbhIeCgpzZXR0bG'
    'VtZW50GAIgASgCUgpzZXR0bGVtZW50');

@$core.Deprecated('Use hingeSupportDescriptor instead')
const HingeSupport$json = {
  '1': 'HingeSupport',
  '2': [
    {'1': 'v_reaction', '3': 1, '4': 1, '5': 2, '10': 'vReaction'},
    {'1': 'h_reaction', '3': 2, '4': 1, '5': 2, '10': 'hReaction'},
    {'1': 'settlement', '3': 3, '4': 1, '5': 2, '10': 'settlement'},
  ],
};

/// Descriptor for `HingeSupport`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hingeSupportDescriptor = $convert.base64Decode(
    'CgxIaW5nZVN1cHBvcnQSHQoKdl9yZWFjdGlvbhgBIAEoAlIJdlJlYWN0aW9uEh0KCmhfcmVhY3'
    'Rpb24YAiABKAJSCWhSZWFjdGlvbhIeCgpzZXR0bGVtZW50GAMgASgCUgpzZXR0bGVtZW50');

@$core.Deprecated('Use fixedSupportDescriptor instead')
const FixedSupport$json = {
  '1': 'FixedSupport',
  '2': [
    {'1': 'v_reaction', '3': 1, '4': 1, '5': 2, '10': 'vReaction'},
    {'1': 'h_reaction', '3': 2, '4': 1, '5': 2, '10': 'hReaction'},
    {'1': 'm_reaction', '3': 3, '4': 1, '5': 2, '10': 'mReaction'},
    {'1': 'settlement', '3': 4, '4': 1, '5': 2, '10': 'settlement'},
  ],
};

/// Descriptor for `FixedSupport`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fixedSupportDescriptor = $convert.base64Decode(
    'CgxGaXhlZFN1cHBvcnQSHQoKdl9yZWFjdGlvbhgBIAEoAlIJdlJlYWN0aW9uEh0KCmhfcmVhY3'
    'Rpb24YAiABKAJSCWhSZWFjdGlvbhIdCgptX3JlYWN0aW9uGAMgASgCUgltUmVhY3Rpb24SHgoK'
    'c2V0dGxlbWVudBgEIAEoAlIKc2V0dGxlbWVudA==');

@$core.Deprecated('Use supportDescriptor instead')
const Support$json = {
  '1': 'Support',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.Support.Type', '10': 'type'},
    {'1': 'position_x', '3': 2, '4': 1, '5': 2, '10': 'positionX'},
    {'1': 'position_y', '3': 3, '4': 1, '5': 2, '10': 'positionY'},
    {'1': 'roller', '3': 4, '4': 1, '5': 11, '6': '.RollerSupport', '9': 0, '10': 'roller'},
    {'1': 'hinge', '3': 5, '4': 1, '5': 11, '6': '.HingeSupport', '9': 0, '10': 'hinge'},
    {'1': 'fixed', '3': 6, '4': 1, '5': 11, '6': '.FixedSupport', '9': 0, '10': 'fixed'},
  ],
  '4': [Support_Type$json],
  '8': [
    {'1': 'support'},
  ],
};

@$core.Deprecated('Use supportDescriptor instead')
const Support_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'ROLLER', '2': 1},
    {'1': 'HINGE', '2': 2},
    {'1': 'FIXED', '2': 3},
  ],
};

/// Descriptor for `Support`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supportDescriptor = $convert.base64Decode(
    'CgdTdXBwb3J0EiEKBHR5cGUYASABKA4yDS5TdXBwb3J0LlR5cGVSBHR5cGUSHQoKcG9zaXRpb2'
    '5feBgCIAEoAlIJcG9zaXRpb25YEh0KCnBvc2l0aW9uX3kYAyABKAJSCXBvc2l0aW9uWRIoCgZy'
    'b2xsZXIYBCABKAsyDi5Sb2xsZXJTdXBwb3J0SABSBnJvbGxlchIlCgVoaW5nZRgFIAEoCzINLk'
    'hpbmdlU3VwcG9ydEgAUgVoaW5nZRIlCgVmaXhlZBgGIAEoCzINLkZpeGVkU3VwcG9ydEgAUgVm'
    'aXhlZCI1CgRUeXBlEgsKB1VOS05PV04QABIKCgZST0xMRVIQARIJCgVISU5HRRACEgkKBUZJWE'
    'VEEANCCQoHc3VwcG9ydA==');

@$core.Deprecated('Use hingedJointDescriptor instead')
const HingedJoint$json = {
  '1': 'HingedJoint',
};

/// Descriptor for `HingedJoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hingedJointDescriptor = $convert.base64Decode(
    'CgtIaW5nZWRKb2ludA==');

@$core.Deprecated('Use fixedJointDescriptor instead')
const FixedJoint$json = {
  '1': 'FixedJoint',
};

/// Descriptor for `FixedJoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fixedJointDescriptor = $convert.base64Decode(
    'CgpGaXhlZEpvaW50');

@$core.Deprecated('Use jointDescriptor instead')
const Joint$json = {
  '1': 'Joint',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.Joint.Type', '10': 'type'},
    {'1': 'position_x', '3': 2, '4': 1, '5': 2, '10': 'positionX'},
    {'1': 'position_y', '3': 3, '4': 1, '5': 2, '10': 'positionY'},
    {'1': 'hinged', '3': 4, '4': 1, '5': 11, '6': '.HingedJoint', '9': 0, '10': 'hinged'},
    {'1': 'fixed', '3': 5, '4': 1, '5': 11, '6': '.FixedJoint', '9': 0, '10': 'fixed'},
  ],
  '4': [Joint_Type$json],
  '8': [
    {'1': 'joint'},
  ],
};

@$core.Deprecated('Use jointDescriptor instead')
const Joint_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'HINGED', '2': 1},
    {'1': 'FIXED', '2': 2},
  ],
};

/// Descriptor for `Joint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jointDescriptor = $convert.base64Decode(
    'CgVKb2ludBIfCgR0eXBlGAEgASgOMgsuSm9pbnQuVHlwZVIEdHlwZRIdCgpwb3NpdGlvbl94GA'
    'IgASgCUglwb3NpdGlvblgSHQoKcG9zaXRpb25feRgDIAEoAlIJcG9zaXRpb25ZEiYKBmhpbmdl'
    'ZBgEIAEoCzIMLkhpbmdlZEpvaW50SABSBmhpbmdlZBIjCgVmaXhlZBgFIAEoCzILLkZpeGVkSm'
    '9pbnRIAFIFZml4ZWQiKgoEVHlwZRILCgdVTktOT1dOEAASCgoGSElOR0VEEAESCQoFRklYRUQQ'
    'AkIHCgVqb2ludA==');

@$core.Deprecated('Use nodeDescriptor instead')
const Node$json = {
  '1': 'Node',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.Node.Type', '10': 'type'},
    {'1': 'support', '3': 2, '4': 1, '5': 11, '6': '.Support', '9': 0, '10': 'support'},
    {'1': 'joint', '3': 3, '4': 1, '5': 11, '6': '.Joint', '9': 0, '10': 'joint'},
  ],
  '4': [Node_Type$json],
  '8': [
    {'1': 'node'},
  ],
};

@$core.Deprecated('Use nodeDescriptor instead')
const Node_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'SUPPORT', '2': 1},
    {'1': 'JOINT', '2': 2},
  ],
};

/// Descriptor for `Node`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeDescriptor = $convert.base64Decode(
    'CgROb2RlEh4KBHR5cGUYASABKA4yCi5Ob2RlLlR5cGVSBHR5cGUSJAoHc3VwcG9ydBgCIAEoCz'
    'IILlN1cHBvcnRIAFIHc3VwcG9ydBIeCgVqb2ludBgDIAEoCzIGLkpvaW50SABSBWpvaW50IisK'
    'BFR5cGUSCwoHVU5LTk9XThAAEgsKB1NVUFBPUlQQARIJCgVKT0lOVBACQgYKBG5vZGU=');

@$core.Deprecated('Use pointLoadDescriptor instead')
const PointLoad$json = {
  '1': 'PointLoad',
  '2': [
    {'1': 'x_value', '3': 1, '4': 1, '5': 2, '10': 'xValue'},
    {'1': 'y_value', '3': 2, '4': 1, '5': 2, '10': 'yValue'},
    {'1': 'point_of_application', '3': 3, '4': 1, '5': 2, '10': 'pointOfApplication'},
  ],
};

/// Descriptor for `PointLoad`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointLoadDescriptor = $convert.base64Decode(
    'CglQb2ludExvYWQSFwoHeF92YWx1ZRgBIAEoAlIGeFZhbHVlEhcKB3lfdmFsdWUYAiABKAJSBn'
    'lWYWx1ZRIwChRwb2ludF9vZl9hcHBsaWNhdGlvbhgDIAEoAlIScG9pbnRPZkFwcGxpY2F0aW9u');

@$core.Deprecated('Use coupleDescriptor instead')
const Couple$json = {
  '1': 'Couple',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 2, '10': 'value'},
    {'1': 'point_of_application', '3': 2, '4': 1, '5': 2, '10': 'pointOfApplication'},
  ],
};

/// Descriptor for `Couple`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coupleDescriptor = $convert.base64Decode(
    'CgZDb3VwbGUSFAoFdmFsdWUYASABKAJSBXZhbHVlEjAKFHBvaW50X29mX2FwcGxpY2F0aW9uGA'
    'IgASgCUhJwb2ludE9mQXBwbGljYXRpb24=');

@$core.Deprecated('Use uniformlyDistributedLoadDescriptor instead')
const UniformlyDistributedLoad$json = {
  '1': 'UniformlyDistributedLoad',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 2, '10': 'value'},
    {'1': 'starting_point', '3': 2, '4': 1, '5': 2, '10': 'startingPoint'},
    {'1': 'length', '3': 3, '4': 1, '5': 2, '10': 'length'},
  ],
};

/// Descriptor for `UniformlyDistributedLoad`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uniformlyDistributedLoadDescriptor = $convert.base64Decode(
    'ChhVbmlmb3JtbHlEaXN0cmlidXRlZExvYWQSFAoFdmFsdWUYASABKAJSBXZhbHVlEiUKDnN0YX'
    'J0aW5nX3BvaW50GAIgASgCUg1zdGFydGluZ1BvaW50EhYKBmxlbmd0aBgDIAEoAlIGbGVuZ3Ro');

@$core.Deprecated('Use verticallyDistributedLoadDescriptor instead')
const VerticallyDistributedLoad$json = {
  '1': 'VerticallyDistributedLoad',
  '2': [
    {'1': 'orientation', '3': 1, '4': 1, '5': 14, '6': '.VerticallyDistributedLoad.Orientation', '10': 'orientation'},
    {'1': 'vertex', '3': 2, '4': 1, '5': 2, '10': 'vertex'},
    {'1': 'starting_point', '3': 3, '4': 1, '5': 2, '10': 'startingPoint'},
    {'1': 'length', '3': 4, '4': 1, '5': 2, '10': 'length'},
  ],
  '4': [VerticallyDistributedLoad_Orientation$json],
};

@$core.Deprecated('Use verticallyDistributedLoadDescriptor instead')
const VerticallyDistributedLoad_Orientation$json = {
  '1': 'Orientation',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'LEFT', '2': 1},
    {'1': 'RIGHT', '2': 2},
  ],
};

/// Descriptor for `VerticallyDistributedLoad`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verticallyDistributedLoadDescriptor = $convert.base64Decode(
    'ChlWZXJ0aWNhbGx5RGlzdHJpYnV0ZWRMb2FkEkgKC29yaWVudGF0aW9uGAEgASgOMiYuVmVydG'
    'ljYWxseURpc3RyaWJ1dGVkTG9hZC5PcmllbnRhdGlvblILb3JpZW50YXRpb24SFgoGdmVydGV4'
    'GAIgASgCUgZ2ZXJ0ZXgSJQoOc3RhcnRpbmdfcG9pbnQYAyABKAJSDXN0YXJ0aW5nUG9pbnQSFg'
    'oGbGVuZ3RoGAQgASgCUgZsZW5ndGgiLwoLT3JpZW50YXRpb24SCwoHVU5LTk9XThAAEggKBExF'
    'RlQQARIJCgVSSUdIVBAC');

@$core.Deprecated('Use loadDescriptor instead')
const Load$json = {
  '1': 'Load',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.Load.Type', '10': 'type'},
    {'1': 'point_load', '3': 2, '4': 1, '5': 11, '6': '.PointLoad', '9': 0, '10': 'pointLoad'},
    {'1': 'couple', '3': 3, '4': 1, '5': 11, '6': '.Couple', '9': 0, '10': 'couple'},
    {'1': 'uniformly_distributed_load', '3': 4, '4': 1, '5': 11, '6': '.UniformlyDistributedLoad', '9': 0, '10': 'uniformlyDistributedLoad'},
    {'1': 'vertically_distributed_load', '3': 5, '4': 1, '5': 11, '6': '.VerticallyDistributedLoad', '9': 0, '10': 'verticallyDistributedLoad'},
  ],
  '4': [Load_Type$json],
  '8': [
    {'1': 'load'},
  ],
};

@$core.Deprecated('Use loadDescriptor instead')
const Load_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'COUPLE', '2': 1},
    {'1': 'POINT', '2': 2},
    {'1': 'UNIFORMLY_DISTRIBUTED', '2': 3},
    {'1': 'VERTICALLY_DISTRIBUTED', '2': 4},
  ],
};

/// Descriptor for `Load`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadDescriptor = $convert.base64Decode(
    'CgRMb2FkEh4KBHR5cGUYASABKA4yCi5Mb2FkLlR5cGVSBHR5cGUSKwoKcG9pbnRfbG9hZBgCIA'
    'EoCzIKLlBvaW50TG9hZEgAUglwb2ludExvYWQSIQoGY291cGxlGAMgASgLMgcuQ291cGxlSABS'
    'BmNvdXBsZRJZChp1bmlmb3JtbHlfZGlzdHJpYnV0ZWRfbG9hZBgEIAEoCzIZLlVuaWZvcm1seU'
    'Rpc3RyaWJ1dGVkTG9hZEgAUhh1bmlmb3JtbHlEaXN0cmlidXRlZExvYWQSXAobdmVydGljYWxs'
    'eV9kaXN0cmlidXRlZF9sb2FkGAUgASgLMhouVmVydGljYWxseURpc3RyaWJ1dGVkTG9hZEgAUh'
    'l2ZXJ0aWNhbGx5RGlzdHJpYnV0ZWRMb2FkImEKBFR5cGUSCwoHVU5LTk9XThAAEgoKBkNPVVBM'
    'RRABEgkKBVBPSU5UEAISGQoVVU5JRk9STUxZX0RJU1RSSUJVVEVEEAMSGgoWVkVSVElDQUxMWV'
    '9ESVNUUklCVVRFRBAEQgYKBGxvYWQ=');

@$core.Deprecated('Use memberDescriptor instead')
const Member$json = {
  '1': 'Member',
  '2': [
    {'1': 'length', '3': 1, '4': 1, '5': 2, '10': 'length'},
    {'1': 'elastic_modulus', '3': 2, '4': 1, '5': 2, '9': 0, '10': 'elasticModulus', '17': true},
    {'1': 'moment_of_inertia', '3': 3, '4': 1, '5': 2, '9': 1, '10': 'momentOfInertia', '17': true},
    {'1': 'position_x', '3': 4, '4': 1, '5': 2, '10': 'positionX'},
    {'1': 'position_y', '3': 5, '4': 1, '5': 2, '10': 'positionY'},
    {'1': 'loadings', '3': 6, '4': 3, '5': 11, '6': '.Load', '10': 'loadings'},
  ],
  '8': [
    {'1': '_elastic_modulus'},
    {'1': '_moment_of_inertia'},
  ],
};

/// Descriptor for `Member`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberDescriptor = $convert.base64Decode(
    'CgZNZW1iZXISFgoGbGVuZ3RoGAEgASgCUgZsZW5ndGgSLAoPZWxhc3RpY19tb2R1bHVzGAIgAS'
    'gCSABSDmVsYXN0aWNNb2R1bHVziAEBEi8KEW1vbWVudF9vZl9pbmVydGlhGAMgASgCSAFSD21v'
    'bWVudE9mSW5lcnRpYYgBARIdCgpwb3NpdGlvbl94GAQgASgCUglwb3NpdGlvblgSHQoKcG9zaX'
    'Rpb25feRgFIAEoAlIJcG9zaXRpb25ZEiEKCGxvYWRpbmdzGAYgAygLMgUuTG9hZFIIbG9hZGlu'
    'Z3NCEgoQX2VsYXN0aWNfbW9kdWx1c0IUChJfbW9tZW50X29mX2luZXJ0aWE=');

@$core.Deprecated('Use beamComponentDescriptor instead')
const BeamComponent$json = {
  '1': 'BeamComponent',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.BeamComponent.Type', '10': 'type'},
    {'1': 'member', '3': 2, '4': 1, '5': 11, '6': '.Member', '9': 0, '10': 'member'},
    {'1': 'support', '3': 3, '4': 1, '5': 11, '6': '.Support', '9': 0, '10': 'support'},
  ],
  '4': [BeamComponent_Type$json],
  '8': [
    {'1': 'component'},
  ],
};

@$core.Deprecated('Use beamComponentDescriptor instead')
const BeamComponent_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'MEMBER', '2': 1},
    {'1': 'SUPPORT', '2': 2},
  ],
};

/// Descriptor for `BeamComponent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beamComponentDescriptor = $convert.base64Decode(
    'Cg1CZWFtQ29tcG9uZW50EicKBHR5cGUYASABKA4yEy5CZWFtQ29tcG9uZW50LlR5cGVSBHR5cG'
    'USIQoGbWVtYmVyGAIgASgLMgcuTWVtYmVySABSBm1lbWJlchIkCgdzdXBwb3J0GAMgASgLMggu'
    'U3VwcG9ydEgAUgdzdXBwb3J0IiwKBFR5cGUSCwoHVU5LTk9XThAAEgoKBk1FTUJFUhABEgsKB1'
    'NVUFBPUlQQAkILCgljb21wb25lbnQ=');

@$core.Deprecated('Use componentDescriptor instead')
const Component$json = {
  '1': 'Component',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.Component.Type', '10': 'type'},
    {'1': 'node', '3': 2, '4': 1, '5': 11, '6': '.Node', '9': 0, '10': 'node'},
    {'1': 'member', '3': 3, '4': 1, '5': 11, '6': '.Member', '9': 0, '10': 'member'},
  ],
  '4': [Component_Type$json],
  '8': [
    {'1': 'component'},
  ],
};

@$core.Deprecated('Use componentDescriptor instead')
const Component_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'MEMBER', '2': 1},
    {'1': 'NODE', '2': 2},
  ],
};

/// Descriptor for `Component`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentDescriptor = $convert.base64Decode(
    'CglDb21wb25lbnQSIwoEdHlwZRgBIAEoDjIPLkNvbXBvbmVudC5UeXBlUgR0eXBlEhsKBG5vZG'
    'UYAiABKAsyBS5Ob2RlSABSBG5vZGUSIQoGbWVtYmVyGAMgASgLMgcuTWVtYmVySABSBm1lbWJl'
    'ciIpCgRUeXBlEgsKB1VOS05PV04QABIKCgZNRU1CRVIQARIICgROT0RFEAJCCwoJY29tcG9uZW'
    '50');

@$core.Deprecated('Use beamDescriptor instead')
const Beam$json = {
  '1': 'Beam',
  '2': [
    {'1': 'components', '3': 1, '4': 3, '5': 11, '6': '.BeamComponent', '10': 'components'},
    {'1': 'log', '3': 2, '4': 1, '5': 11, '6': '.AnalysisLog', '10': 'log'},
  ],
};

/// Descriptor for `Beam`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beamDescriptor = $convert.base64Decode(
    'CgRCZWFtEi4KCmNvbXBvbmVudHMYASADKAsyDi5CZWFtQ29tcG9uZW50Ugpjb21wb25lbnRzEh'
    '4KA2xvZxgCIAEoCzIMLkFuYWx5c2lzTG9nUgNsb2c=');

