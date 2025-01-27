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
    {'1': 'support_type', '3': 1, '4': 1, '5': 14, '6': '.Support.SupportType', '10': 'supportType'},
    {'1': 'roller_support', '3': 2, '4': 1, '5': 11, '6': '.RollerSupport', '9': 0, '10': 'rollerSupport'},
    {'1': 'hinge_support', '3': 3, '4': 1, '5': 11, '6': '.HingeSupport', '9': 0, '10': 'hingeSupport'},
    {'1': 'fixed_support', '3': 4, '4': 1, '5': 11, '6': '.FixedSupport', '9': 0, '10': 'fixedSupport'},
  ],
  '4': [Support_SupportType$json],
  '8': [
    {'1': 'support'},
  ],
};

@$core.Deprecated('Use supportDescriptor instead')
const Support_SupportType$json = {
  '1': 'SupportType',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'ROLLER_SUPPORT', '2': 1},
    {'1': 'HINGE_SUPPORT', '2': 2},
    {'1': 'FIXED_SUPPORT', '2': 3},
  ],
};

/// Descriptor for `Support`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supportDescriptor = $convert.base64Decode(
    'CgdTdXBwb3J0EjcKDHN1cHBvcnRfdHlwZRgBIAEoDjIULlN1cHBvcnQuU3VwcG9ydFR5cGVSC3'
    'N1cHBvcnRUeXBlEjcKDnJvbGxlcl9zdXBwb3J0GAIgASgLMg4uUm9sbGVyU3VwcG9ydEgAUg1y'
    'b2xsZXJTdXBwb3J0EjQKDWhpbmdlX3N1cHBvcnQYAyABKAsyDS5IaW5nZVN1cHBvcnRIAFIMaG'
    'luZ2VTdXBwb3J0EjQKDWZpeGVkX3N1cHBvcnQYBCABKAsyDS5GaXhlZFN1cHBvcnRIAFIMZml4'
    'ZWRTdXBwb3J0IlQKC1N1cHBvcnRUeXBlEgsKB1VOS05PV04QABISCg5ST0xMRVJfU1VQUE9SVB'
    'ABEhEKDUhJTkdFX1NVUFBPUlQQAhIRCg1GSVhFRF9TVVBQT1JUEANCCQoHc3VwcG9ydA==');

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
    {'1': 'load_type', '3': 1, '4': 1, '5': 14, '6': '.Load.LoadType', '10': 'loadType'},
    {'1': 'point_load', '3': 2, '4': 1, '5': 11, '6': '.PointLoad', '9': 0, '10': 'pointLoad'},
    {'1': 'couple', '3': 3, '4': 1, '5': 11, '6': '.Couple', '9': 0, '10': 'couple'},
    {'1': 'uniformly_distributed_load', '3': 4, '4': 1, '5': 11, '6': '.UniformlyDistributedLoad', '9': 0, '10': 'uniformlyDistributedLoad'},
    {'1': 'vertically_distributed_load', '3': 5, '4': 1, '5': 11, '6': '.VerticallyDistributedLoad', '9': 0, '10': 'verticallyDistributedLoad'},
  ],
  '4': [Load_LoadType$json],
  '8': [
    {'1': 'load'},
  ],
};

@$core.Deprecated('Use loadDescriptor instead')
const Load_LoadType$json = {
  '1': 'LoadType',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'COUPLE', '2': 1},
    {'1': 'POINT_LOAD', '2': 2},
    {'1': 'UNIFORMLY_DISTRIBUTED_LOAD', '2': 3},
    {'1': 'VERTICALLY_DISTRIBUTED_LOAD', '2': 4},
  ],
};

/// Descriptor for `Load`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadDescriptor = $convert.base64Decode(
    'CgRMb2FkEisKCWxvYWRfdHlwZRgBIAEoDjIOLkxvYWQuTG9hZFR5cGVSCGxvYWRUeXBlEisKCn'
    'BvaW50X2xvYWQYAiABKAsyCi5Qb2ludExvYWRIAFIJcG9pbnRMb2FkEiEKBmNvdXBsZRgDIAEo'
    'CzIHLkNvdXBsZUgAUgZjb3VwbGUSWQoadW5pZm9ybWx5X2Rpc3RyaWJ1dGVkX2xvYWQYBCABKA'
    'syGS5Vbmlmb3JtbHlEaXN0cmlidXRlZExvYWRIAFIYdW5pZm9ybWx5RGlzdHJpYnV0ZWRMb2Fk'
    'ElwKG3ZlcnRpY2FsbHlfZGlzdHJpYnV0ZWRfbG9hZBgFIAEoCzIaLlZlcnRpY2FsbHlEaXN0cm'
    'lidXRlZExvYWRIAFIZdmVydGljYWxseURpc3RyaWJ1dGVkTG9hZCJ0CghMb2FkVHlwZRILCgdV'
    'TktOT1dOEAASCgoGQ09VUExFEAESDgoKUE9JTlRfTE9BRBACEh4KGlVOSUZPUk1MWV9ESVNUUk'
    'lCVVRFRF9MT0FEEAMSHwobVkVSVElDQUxMWV9ESVNUUklCVVRFRF9MT0FEEARCBgoEbG9hZA==');

@$core.Deprecated('Use memberDescriptor instead')
const Member$json = {
  '1': 'Member',
  '2': [
    {'1': 'length', '3': 1, '4': 1, '5': 2, '10': 'length'},
    {'1': 'elastic_modulus', '3': 2, '4': 1, '5': 2, '9': 0, '10': 'elasticModulus', '17': true},
    {'1': 'moment_of_inertia', '3': 3, '4': 1, '5': 2, '9': 1, '10': 'momentOfInertia', '17': true},
    {'1': 'loadings', '3': 4, '4': 3, '5': 11, '6': '.Load', '10': 'loadings'},
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
    'bWVudE9mSW5lcnRpYYgBARIhCghsb2FkaW5ncxgEIAMoCzIFLkxvYWRSCGxvYWRpbmdzQhIKEF'
    '9lbGFzdGljX21vZHVsdXNCFAoSX21vbWVudF9vZl9pbmVydGlh');

@$core.Deprecated('Use componentDescriptor instead')
const Component$json = {
  '1': 'Component',
  '2': [
    {'1': 'component_type', '3': 1, '4': 1, '5': 14, '6': '.Component.ComponentType', '10': 'componentType'},
    {'1': 'support', '3': 2, '4': 1, '5': 11, '6': '.Support', '9': 0, '10': 'support'},
    {'1': 'member', '3': 3, '4': 1, '5': 11, '6': '.Member', '9': 0, '10': 'member'},
  ],
  '4': [Component_ComponentType$json],
  '8': [
    {'1': 'component'},
  ],
};

@$core.Deprecated('Use componentDescriptor instead')
const Component_ComponentType$json = {
  '1': 'ComponentType',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'MEMBER', '2': 1},
    {'1': 'SUPPORT', '2': 2},
  ],
};

/// Descriptor for `Component`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentDescriptor = $convert.base64Decode(
    'CglDb21wb25lbnQSPwoOY29tcG9uZW50X3R5cGUYASABKA4yGC5Db21wb25lbnQuQ29tcG9uZW'
    '50VHlwZVINY29tcG9uZW50VHlwZRIkCgdzdXBwb3J0GAIgASgLMgguU3VwcG9ydEgAUgdzdXBw'
    'b3J0EiEKBm1lbWJlchgDIAEoCzIHLk1lbWJlckgAUgZtZW1iZXIiNQoNQ29tcG9uZW50VHlwZR'
    'ILCgdVTktOT1dOEAASCgoGTUVNQkVSEAESCwoHU1VQUE9SVBACQgsKCWNvbXBvbmVudA==');

@$core.Deprecated('Use beamDescriptor instead')
const Beam$json = {
  '1': 'Beam',
  '2': [
    {'1': 'components', '3': 1, '4': 3, '5': 11, '6': '.Component', '10': 'components'},
  ],
};

/// Descriptor for `Beam`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beamDescriptor = $convert.base64Decode(
    'CgRCZWFtEioKCmNvbXBvbmVudHMYASADKAsyCi5Db21wb25lbnRSCmNvbXBvbmVudHM=');

