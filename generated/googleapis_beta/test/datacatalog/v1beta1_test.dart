// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis_beta/datacatalog/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed7298() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7298(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed7298();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition! as api.Expr);
    checkUnnamed7298(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  var o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterExpr--;
}

core.int buildCounterGetIamPolicyRequest = 0;
api.GetIamPolicyRequest buildGetIamPolicyRequest() {
  var o = api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    o.options = buildGetPolicyOptions();
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

void checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    checkGetPolicyOptions(o.options! as api.GetPolicyOptions);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
api.GetPolicyOptions buildGetPolicyOptions() {
  var o = api.GetPolicyOptions();
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGetPolicyOptions--;
  return o;
}

void checkGetPolicyOptions(api.GetPolicyOptions o) {
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    unittest.expect(
      o.requestedPolicyVersion!,
      unittest.equals(42),
    );
  }
  buildCounterGetPolicyOptions--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec = 0;
api.GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec
    buildGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec() {
  var o = api.GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec();
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec < 3) {
    o.dataset = 'foo';
    o.shardCount = 'foo';
    o.tablePrefix = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec(
    api.GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec < 3) {
    unittest.expect(
      o.dataset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shardCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tablePrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec = 0;
api.GoogleCloudDatacatalogV1beta1BigQueryTableSpec
    buildGoogleCloudDatacatalogV1beta1BigQueryTableSpec() {
  var o = api.GoogleCloudDatacatalogV1beta1BigQueryTableSpec();
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec < 3) {
    o.tableSourceType = 'foo';
    o.tableSpec = buildGoogleCloudDatacatalogV1beta1TableSpec();
    o.viewSpec = buildGoogleCloudDatacatalogV1beta1ViewSpec();
  }
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1BigQueryTableSpec(
    api.GoogleCloudDatacatalogV1beta1BigQueryTableSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec < 3) {
    unittest.expect(
      o.tableSourceType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1beta1TableSpec(
        o.tableSpec! as api.GoogleCloudDatacatalogV1beta1TableSpec);
    checkGoogleCloudDatacatalogV1beta1ViewSpec(
        o.viewSpec! as api.GoogleCloudDatacatalogV1beta1ViewSpec);
  }
  buildCounterGoogleCloudDatacatalogV1beta1BigQueryTableSpec--;
}

core.List<api.GoogleCloudDatacatalogV1beta1ColumnSchema> buildUnnamed7299() {
  var o = <api.GoogleCloudDatacatalogV1beta1ColumnSchema>[];
  o.add(buildGoogleCloudDatacatalogV1beta1ColumnSchema());
  o.add(buildGoogleCloudDatacatalogV1beta1ColumnSchema());
  return o;
}

void checkUnnamed7299(
    core.List<api.GoogleCloudDatacatalogV1beta1ColumnSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1ColumnSchema(
      o[0] as api.GoogleCloudDatacatalogV1beta1ColumnSchema);
  checkGoogleCloudDatacatalogV1beta1ColumnSchema(
      o[1] as api.GoogleCloudDatacatalogV1beta1ColumnSchema);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema = 0;
api.GoogleCloudDatacatalogV1beta1ColumnSchema
    buildGoogleCloudDatacatalogV1beta1ColumnSchema() {
  var o = api.GoogleCloudDatacatalogV1beta1ColumnSchema();
  buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema < 3) {
    o.column = 'foo';
    o.description = 'foo';
    o.mode = 'foo';
    o.subcolumns = buildUnnamed7299();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ColumnSchema(
    api.GoogleCloudDatacatalogV1beta1ColumnSchema o) {
  buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema < 3) {
    unittest.expect(
      o.column!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    checkUnnamed7299(o.subcolumns!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1ColumnSchema--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1Entry = 0;
api.GoogleCloudDatacatalogV1beta1Entry
    buildGoogleCloudDatacatalogV1beta1Entry() {
  var o = api.GoogleCloudDatacatalogV1beta1Entry();
  buildCounterGoogleCloudDatacatalogV1beta1Entry++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Entry < 3) {
    o.bigqueryDateShardedSpec =
        buildGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec();
    o.bigqueryTableSpec = buildGoogleCloudDatacatalogV1beta1BigQueryTableSpec();
    o.description = 'foo';
    o.displayName = 'foo';
    o.gcsFilesetSpec = buildGoogleCloudDatacatalogV1beta1GcsFilesetSpec();
    o.integratedSystem = 'foo';
    o.linkedResource = 'foo';
    o.name = 'foo';
    o.schema = buildGoogleCloudDatacatalogV1beta1Schema();
    o.sourceSystemTimestamps =
        buildGoogleCloudDatacatalogV1beta1SystemTimestamps();
    o.type = 'foo';
    o.usageSignal = buildGoogleCloudDatacatalogV1beta1UsageSignal();
    o.userSpecifiedSystem = 'foo';
    o.userSpecifiedType = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1Entry--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1Entry(
    api.GoogleCloudDatacatalogV1beta1Entry o) {
  buildCounterGoogleCloudDatacatalogV1beta1Entry++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Entry < 3) {
    checkGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec(
        o.bigqueryDateShardedSpec!
            as api.GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec);
    checkGoogleCloudDatacatalogV1beta1BigQueryTableSpec(o.bigqueryTableSpec!
        as api.GoogleCloudDatacatalogV1beta1BigQueryTableSpec);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1beta1GcsFilesetSpec(
        o.gcsFilesetSpec! as api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec);
    unittest.expect(
      o.integratedSystem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkedResource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1beta1Schema(
        o.schema! as api.GoogleCloudDatacatalogV1beta1Schema);
    checkGoogleCloudDatacatalogV1beta1SystemTimestamps(o.sourceSystemTimestamps!
        as api.GoogleCloudDatacatalogV1beta1SystemTimestamps);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1beta1UsageSignal(
        o.usageSignal! as api.GoogleCloudDatacatalogV1beta1UsageSignal);
    unittest.expect(
      o.userSpecifiedSystem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userSpecifiedType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1Entry--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1EntryGroup = 0;
api.GoogleCloudDatacatalogV1beta1EntryGroup
    buildGoogleCloudDatacatalogV1beta1EntryGroup() {
  var o = api.GoogleCloudDatacatalogV1beta1EntryGroup();
  buildCounterGoogleCloudDatacatalogV1beta1EntryGroup++;
  if (buildCounterGoogleCloudDatacatalogV1beta1EntryGroup < 3) {
    o.dataCatalogTimestamps =
        buildGoogleCloudDatacatalogV1beta1SystemTimestamps();
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1EntryGroup--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1EntryGroup(
    api.GoogleCloudDatacatalogV1beta1EntryGroup o) {
  buildCounterGoogleCloudDatacatalogV1beta1EntryGroup++;
  if (buildCounterGoogleCloudDatacatalogV1beta1EntryGroup < 3) {
    checkGoogleCloudDatacatalogV1beta1SystemTimestamps(o.dataCatalogTimestamps!
        as api.GoogleCloudDatacatalogV1beta1SystemTimestamps);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1EntryGroup--;
}

core.List<api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy>
    buildUnnamed7300() {
  var o = <api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy>[];
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy());
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy());
  return o;
}

void checkUnnamed7300(
    core.List<api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(
      o[0] as api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy);
  checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(
      o[1] as api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse = 0;
api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse
    buildGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse() {
  var o = api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse < 3) {
    o.taxonomies = buildUnnamed7300();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse(
    api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse < 3) {
    checkUnnamed7300(o.taxonomies!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1FieldType = 0;
api.GoogleCloudDatacatalogV1beta1FieldType
    buildGoogleCloudDatacatalogV1beta1FieldType() {
  var o = api.GoogleCloudDatacatalogV1beta1FieldType();
  buildCounterGoogleCloudDatacatalogV1beta1FieldType++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldType < 3) {
    o.enumType = buildGoogleCloudDatacatalogV1beta1FieldTypeEnumType();
    o.primitiveType = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldType--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1FieldType(
    api.GoogleCloudDatacatalogV1beta1FieldType o) {
  buildCounterGoogleCloudDatacatalogV1beta1FieldType++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldType < 3) {
    checkGoogleCloudDatacatalogV1beta1FieldTypeEnumType(
        o.enumType! as api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType);
    unittest.expect(
      o.primitiveType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldType--;
}

core.List<api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue>
    buildUnnamed7301() {
  var o = <api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue>[];
  o.add(buildGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue());
  o.add(buildGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue());
  return o;
}

void checkUnnamed7301(
    core.List<api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(
      o[0] as api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue);
  checkGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(
      o[1] as api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType = 0;
api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType
    buildGoogleCloudDatacatalogV1beta1FieldTypeEnumType() {
  var o = api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType();
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType < 3) {
    o.allowedValues = buildUnnamed7301();
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1FieldTypeEnumType(
    api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType o) {
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType < 3) {
    checkUnnamed7301(o.allowedValues!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumType--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue =
    0;
api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue
    buildGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue() {
  var o = api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue();
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue < 3) {
    o.displayName = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(
    api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue o) {
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue++;
  if (buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec = 0;
api.GoogleCloudDatacatalogV1beta1GcsFileSpec
    buildGoogleCloudDatacatalogV1beta1GcsFileSpec() {
  var o = api.GoogleCloudDatacatalogV1beta1GcsFileSpec();
  buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec < 3) {
    o.filePath = 'foo';
    o.gcsTimestamps = buildGoogleCloudDatacatalogV1beta1SystemTimestamps();
    o.sizeBytes = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1GcsFileSpec(
    api.GoogleCloudDatacatalogV1beta1GcsFileSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec < 3) {
    unittest.expect(
      o.filePath!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1beta1SystemTimestamps(
        o.gcsTimestamps! as api.GoogleCloudDatacatalogV1beta1SystemTimestamps);
    unittest.expect(
      o.sizeBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1GcsFileSpec--;
}

core.List<core.String> buildUnnamed7302() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7302(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.GoogleCloudDatacatalogV1beta1GcsFileSpec> buildUnnamed7303() {
  var o = <api.GoogleCloudDatacatalogV1beta1GcsFileSpec>[];
  o.add(buildGoogleCloudDatacatalogV1beta1GcsFileSpec());
  o.add(buildGoogleCloudDatacatalogV1beta1GcsFileSpec());
  return o;
}

void checkUnnamed7303(
    core.List<api.GoogleCloudDatacatalogV1beta1GcsFileSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1GcsFileSpec(
      o[0] as api.GoogleCloudDatacatalogV1beta1GcsFileSpec);
  checkGoogleCloudDatacatalogV1beta1GcsFileSpec(
      o[1] as api.GoogleCloudDatacatalogV1beta1GcsFileSpec);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec = 0;
api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec
    buildGoogleCloudDatacatalogV1beta1GcsFilesetSpec() {
  var o = api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec();
  buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec < 3) {
    o.filePatterns = buildUnnamed7302();
    o.sampleGcsFileSpecs = buildUnnamed7303();
  }
  buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1GcsFilesetSpec(
    api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec < 3) {
    checkUnnamed7302(o.filePatterns!);
    checkUnnamed7303(o.sampleGcsFileSpecs!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1GcsFilesetSpec--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest = 0;
api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest
    buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest() {
  var o = api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest();
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest < 3) {
    o.inlineSource = buildGoogleCloudDatacatalogV1beta1InlineSource();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest(
    api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest o) {
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest < 3) {
    checkGoogleCloudDatacatalogV1beta1InlineSource(
        o.inlineSource! as api.GoogleCloudDatacatalogV1beta1InlineSource);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest--;
}

core.List<api.GoogleCloudDatacatalogV1beta1Taxonomy> buildUnnamed7304() {
  var o = <api.GoogleCloudDatacatalogV1beta1Taxonomy>[];
  o.add(buildGoogleCloudDatacatalogV1beta1Taxonomy());
  o.add(buildGoogleCloudDatacatalogV1beta1Taxonomy());
  return o;
}

void checkUnnamed7304(core.List<api.GoogleCloudDatacatalogV1beta1Taxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1Taxonomy(
      o[0] as api.GoogleCloudDatacatalogV1beta1Taxonomy);
  checkGoogleCloudDatacatalogV1beta1Taxonomy(
      o[1] as api.GoogleCloudDatacatalogV1beta1Taxonomy);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse = 0;
api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse
    buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse() {
  var o = api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse < 3) {
    o.taxonomies = buildUnnamed7304();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse(
    api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse < 3) {
    checkUnnamed7304(o.taxonomies!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse--;
}

core.List<api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy>
    buildUnnamed7305() {
  var o = <api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy>[];
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy());
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy());
  return o;
}

void checkUnnamed7305(
    core.List<api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(
      o[0] as api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy);
  checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(
      o[1] as api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1InlineSource = 0;
api.GoogleCloudDatacatalogV1beta1InlineSource
    buildGoogleCloudDatacatalogV1beta1InlineSource() {
  var o = api.GoogleCloudDatacatalogV1beta1InlineSource();
  buildCounterGoogleCloudDatacatalogV1beta1InlineSource++;
  if (buildCounterGoogleCloudDatacatalogV1beta1InlineSource < 3) {
    o.taxonomies = buildUnnamed7305();
  }
  buildCounterGoogleCloudDatacatalogV1beta1InlineSource--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1InlineSource(
    api.GoogleCloudDatacatalogV1beta1InlineSource o) {
  buildCounterGoogleCloudDatacatalogV1beta1InlineSource++;
  if (buildCounterGoogleCloudDatacatalogV1beta1InlineSource < 3) {
    checkUnnamed7305(o.taxonomies!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1InlineSource--;
}

core.List<api.GoogleCloudDatacatalogV1beta1Entry> buildUnnamed7306() {
  var o = <api.GoogleCloudDatacatalogV1beta1Entry>[];
  o.add(buildGoogleCloudDatacatalogV1beta1Entry());
  o.add(buildGoogleCloudDatacatalogV1beta1Entry());
  return o;
}

void checkUnnamed7306(core.List<api.GoogleCloudDatacatalogV1beta1Entry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1Entry(
      o[0] as api.GoogleCloudDatacatalogV1beta1Entry);
  checkGoogleCloudDatacatalogV1beta1Entry(
      o[1] as api.GoogleCloudDatacatalogV1beta1Entry);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse = 0;
api.GoogleCloudDatacatalogV1beta1ListEntriesResponse
    buildGoogleCloudDatacatalogV1beta1ListEntriesResponse() {
  var o = api.GoogleCloudDatacatalogV1beta1ListEntriesResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse < 3) {
    o.entries = buildUnnamed7306();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ListEntriesResponse(
    api.GoogleCloudDatacatalogV1beta1ListEntriesResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse < 3) {
    checkUnnamed7306(o.entries!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListEntriesResponse--;
}

core.List<api.GoogleCloudDatacatalogV1beta1EntryGroup> buildUnnamed7307() {
  var o = <api.GoogleCloudDatacatalogV1beta1EntryGroup>[];
  o.add(buildGoogleCloudDatacatalogV1beta1EntryGroup());
  o.add(buildGoogleCloudDatacatalogV1beta1EntryGroup());
  return o;
}

void checkUnnamed7307(
    core.List<api.GoogleCloudDatacatalogV1beta1EntryGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1EntryGroup(
      o[0] as api.GoogleCloudDatacatalogV1beta1EntryGroup);
  checkGoogleCloudDatacatalogV1beta1EntryGroup(
      o[1] as api.GoogleCloudDatacatalogV1beta1EntryGroup);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse = 0;
api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse
    buildGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse() {
  var o = api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse < 3) {
    o.entryGroups = buildUnnamed7307();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse(
    api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse < 3) {
    checkUnnamed7307(o.entryGroups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse--;
}

core.List<api.GoogleCloudDatacatalogV1beta1PolicyTag> buildUnnamed7308() {
  var o = <api.GoogleCloudDatacatalogV1beta1PolicyTag>[];
  o.add(buildGoogleCloudDatacatalogV1beta1PolicyTag());
  o.add(buildGoogleCloudDatacatalogV1beta1PolicyTag());
  return o;
}

void checkUnnamed7308(core.List<api.GoogleCloudDatacatalogV1beta1PolicyTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1PolicyTag(
      o[0] as api.GoogleCloudDatacatalogV1beta1PolicyTag);
  checkGoogleCloudDatacatalogV1beta1PolicyTag(
      o[1] as api.GoogleCloudDatacatalogV1beta1PolicyTag);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse = 0;
api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse
    buildGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse() {
  var o = api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse < 3) {
    o.nextPageToken = 'foo';
    o.policyTags = buildUnnamed7308();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse(
    api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7308(o.policyTags!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse--;
}

core.List<api.GoogleCloudDatacatalogV1beta1Tag> buildUnnamed7309() {
  var o = <api.GoogleCloudDatacatalogV1beta1Tag>[];
  o.add(buildGoogleCloudDatacatalogV1beta1Tag());
  o.add(buildGoogleCloudDatacatalogV1beta1Tag());
  return o;
}

void checkUnnamed7309(core.List<api.GoogleCloudDatacatalogV1beta1Tag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1Tag(
      o[0] as api.GoogleCloudDatacatalogV1beta1Tag);
  checkGoogleCloudDatacatalogV1beta1Tag(
      o[1] as api.GoogleCloudDatacatalogV1beta1Tag);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse = 0;
api.GoogleCloudDatacatalogV1beta1ListTagsResponse
    buildGoogleCloudDatacatalogV1beta1ListTagsResponse() {
  var o = api.GoogleCloudDatacatalogV1beta1ListTagsResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse < 3) {
    o.nextPageToken = 'foo';
    o.tags = buildUnnamed7309();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ListTagsResponse(
    api.GoogleCloudDatacatalogV1beta1ListTagsResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7309(o.tags!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListTagsResponse--;
}

core.List<api.GoogleCloudDatacatalogV1beta1Taxonomy> buildUnnamed7310() {
  var o = <api.GoogleCloudDatacatalogV1beta1Taxonomy>[];
  o.add(buildGoogleCloudDatacatalogV1beta1Taxonomy());
  o.add(buildGoogleCloudDatacatalogV1beta1Taxonomy());
  return o;
}

void checkUnnamed7310(core.List<api.GoogleCloudDatacatalogV1beta1Taxonomy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1Taxonomy(
      o[0] as api.GoogleCloudDatacatalogV1beta1Taxonomy);
  checkGoogleCloudDatacatalogV1beta1Taxonomy(
      o[1] as api.GoogleCloudDatacatalogV1beta1Taxonomy);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse = 0;
api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse
    buildGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse() {
  var o = api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse();
  buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse < 3) {
    o.nextPageToken = 'foo';
    o.taxonomies = buildUnnamed7310();
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse(
    api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7310(o.taxonomies!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse--;
}

core.List<core.String> buildUnnamed7311() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7311(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudDatacatalogV1beta1PolicyTag = 0;
api.GoogleCloudDatacatalogV1beta1PolicyTag
    buildGoogleCloudDatacatalogV1beta1PolicyTag() {
  var o = api.GoogleCloudDatacatalogV1beta1PolicyTag();
  buildCounterGoogleCloudDatacatalogV1beta1PolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1PolicyTag < 3) {
    o.childPolicyTags = buildUnnamed7311();
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.parentPolicyTag = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1PolicyTag--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1PolicyTag(
    api.GoogleCloudDatacatalogV1beta1PolicyTag o) {
  buildCounterGoogleCloudDatacatalogV1beta1PolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1PolicyTag < 3) {
    checkUnnamed7311(o.childPolicyTags!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentPolicyTag!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1PolicyTag--;
}

core.int
    buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest =
    0;
api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest
    buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest() {
  var o =
      api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest();
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest <
      3) {
    o.newEnumValueDisplayName = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest(
    api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest o) {
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest <
      3) {
    unittest.expect(
      o.newEnumValueDisplayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest--;
}

core.int
    buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest = 0;
api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest
    buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest() {
  var o = api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest();
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest <
      3) {
    o.newTagTemplateFieldId = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest(
    api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest o) {
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest <
      3) {
    unittest.expect(
      o.newTagTemplateFieldId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest--;
}

core.List<api.GoogleCloudDatacatalogV1beta1ColumnSchema> buildUnnamed7312() {
  var o = <api.GoogleCloudDatacatalogV1beta1ColumnSchema>[];
  o.add(buildGoogleCloudDatacatalogV1beta1ColumnSchema());
  o.add(buildGoogleCloudDatacatalogV1beta1ColumnSchema());
  return o;
}

void checkUnnamed7312(
    core.List<api.GoogleCloudDatacatalogV1beta1ColumnSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1ColumnSchema(
      o[0] as api.GoogleCloudDatacatalogV1beta1ColumnSchema);
  checkGoogleCloudDatacatalogV1beta1ColumnSchema(
      o[1] as api.GoogleCloudDatacatalogV1beta1ColumnSchema);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1Schema = 0;
api.GoogleCloudDatacatalogV1beta1Schema
    buildGoogleCloudDatacatalogV1beta1Schema() {
  var o = api.GoogleCloudDatacatalogV1beta1Schema();
  buildCounterGoogleCloudDatacatalogV1beta1Schema++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Schema < 3) {
    o.columns = buildUnnamed7312();
  }
  buildCounterGoogleCloudDatacatalogV1beta1Schema--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1Schema(
    api.GoogleCloudDatacatalogV1beta1Schema o) {
  buildCounterGoogleCloudDatacatalogV1beta1Schema++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Schema < 3) {
    checkUnnamed7312(o.columns!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1Schema--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest = 0;
api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest
    buildGoogleCloudDatacatalogV1beta1SearchCatalogRequest() {
  var o = api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest();
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest < 3) {
    o.orderBy = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.query = 'foo';
    o.scope = buildGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope();
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SearchCatalogRequest(
    api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest o) {
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest < 3) {
    unittest.expect(
      o.orderBy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope(
        o.scope! as api.GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope);
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequest--;
}

core.List<core.String> buildUnnamed7313() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7313(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed7314() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7314(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed7315() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7315(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope = 0;
api.GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope
    buildGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope() {
  var o = api.GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope();
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope < 3) {
    o.includeGcpPublicDatasets = true;
    o.includeOrgIds = buildUnnamed7313();
    o.includeProjectIds = buildUnnamed7314();
    o.restrictedLocations = buildUnnamed7315();
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope(
    api.GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope o) {
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope < 3) {
    unittest.expect(o.includeGcpPublicDatasets!, unittest.isTrue);
    checkUnnamed7313(o.includeOrgIds!);
    checkUnnamed7314(o.includeProjectIds!);
    checkUnnamed7315(o.restrictedLocations!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope--;
}

core.List<api.GoogleCloudDatacatalogV1beta1SearchCatalogResult>
    buildUnnamed7316() {
  var o = <api.GoogleCloudDatacatalogV1beta1SearchCatalogResult>[];
  o.add(buildGoogleCloudDatacatalogV1beta1SearchCatalogResult());
  o.add(buildGoogleCloudDatacatalogV1beta1SearchCatalogResult());
  return o;
}

void checkUnnamed7316(
    core.List<api.GoogleCloudDatacatalogV1beta1SearchCatalogResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SearchCatalogResult(
      o[0] as api.GoogleCloudDatacatalogV1beta1SearchCatalogResult);
  checkGoogleCloudDatacatalogV1beta1SearchCatalogResult(
      o[1] as api.GoogleCloudDatacatalogV1beta1SearchCatalogResult);
}

core.List<core.String> buildUnnamed7317() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7317(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse = 0;
api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse
    buildGoogleCloudDatacatalogV1beta1SearchCatalogResponse() {
  var o = api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse();
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse < 3) {
    o.nextPageToken = 'foo';
    o.results = buildUnnamed7316();
    o.unreachable = buildUnnamed7317();
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SearchCatalogResponse(
    api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse o) {
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7316(o.results!);
    checkUnnamed7317(o.unreachable!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResponse--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult = 0;
api.GoogleCloudDatacatalogV1beta1SearchCatalogResult
    buildGoogleCloudDatacatalogV1beta1SearchCatalogResult() {
  var o = api.GoogleCloudDatacatalogV1beta1SearchCatalogResult();
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult < 3) {
    o.linkedResource = 'foo';
    o.modifyTime = 'foo';
    o.relativeResourceName = 'foo';
    o.searchResultSubtype = 'foo';
    o.searchResultType = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SearchCatalogResult(
    api.GoogleCloudDatacatalogV1beta1SearchCatalogResult o) {
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult < 3) {
    unittest.expect(
      o.linkedResource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modifyTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relativeResourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.searchResultSubtype!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.searchResultType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1SearchCatalogResult--;
}

core.List<api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag>
    buildUnnamed7318() {
  var o = <api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag>[];
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag());
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag());
  return o;
}

void checkUnnamed7318(
    core.List<api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(
      o[0] as api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag);
  checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(
      o[1] as api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag = 0;
api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag
    buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag() {
  var o = api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag();
  buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag < 3) {
    o.childPolicyTags = buildUnnamed7318();
    o.description = 'foo';
    o.displayName = 'foo';
    o.policyTag = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(
    api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag o) {
  buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag < 3) {
    checkUnnamed7318(o.childPolicyTags!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policyTag!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1SerializedPolicyTag--;
}

core.List<core.String> buildUnnamed7319() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7319(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag>
    buildUnnamed7320() {
  var o = <api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag>[];
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag());
  o.add(buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag());
  return o;
}

void checkUnnamed7320(
    core.List<api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(
      o[0] as api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag);
  checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(
      o[1] as api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy = 0;
api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy
    buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy() {
  var o = api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy();
  buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy < 3) {
    o.activatedPolicyTypes = buildUnnamed7319();
    o.description = 'foo';
    o.displayName = 'foo';
    o.policyTags = buildUnnamed7320();
  }
  buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(
    api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy o) {
  buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy < 3) {
    checkUnnamed7319(o.activatedPolicyTypes!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed7320(o.policyTags!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1SerializedTaxonomy--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps = 0;
api.GoogleCloudDatacatalogV1beta1SystemTimestamps
    buildGoogleCloudDatacatalogV1beta1SystemTimestamps() {
  var o = api.GoogleCloudDatacatalogV1beta1SystemTimestamps();
  buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps < 3) {
    o.createTime = 'foo';
    o.expireTime = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1SystemTimestamps(
    api.GoogleCloudDatacatalogV1beta1SystemTimestamps o) {
  buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps++;
  if (buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1SystemTimestamps--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TableSpec = 0;
api.GoogleCloudDatacatalogV1beta1TableSpec
    buildGoogleCloudDatacatalogV1beta1TableSpec() {
  var o = api.GoogleCloudDatacatalogV1beta1TableSpec();
  buildCounterGoogleCloudDatacatalogV1beta1TableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TableSpec < 3) {
    o.groupedEntry = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1TableSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1TableSpec(
    api.GoogleCloudDatacatalogV1beta1TableSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1TableSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TableSpec < 3) {
    unittest.expect(
      o.groupedEntry!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1TableSpec--;
}

core.Map<core.String, api.GoogleCloudDatacatalogV1beta1TagField>
    buildUnnamed7321() {
  var o = <core.String, api.GoogleCloudDatacatalogV1beta1TagField>{};
  o['x'] = buildGoogleCloudDatacatalogV1beta1TagField();
  o['y'] = buildGoogleCloudDatacatalogV1beta1TagField();
  return o;
}

void checkUnnamed7321(
    core.Map<core.String, api.GoogleCloudDatacatalogV1beta1TagField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1TagField(
      o['x']! as api.GoogleCloudDatacatalogV1beta1TagField);
  checkGoogleCloudDatacatalogV1beta1TagField(
      o['y']! as api.GoogleCloudDatacatalogV1beta1TagField);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1Tag = 0;
api.GoogleCloudDatacatalogV1beta1Tag buildGoogleCloudDatacatalogV1beta1Tag() {
  var o = api.GoogleCloudDatacatalogV1beta1Tag();
  buildCounterGoogleCloudDatacatalogV1beta1Tag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Tag < 3) {
    o.column = 'foo';
    o.fields = buildUnnamed7321();
    o.name = 'foo';
    o.template = 'foo';
    o.templateDisplayName = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1Tag--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1Tag(
    api.GoogleCloudDatacatalogV1beta1Tag o) {
  buildCounterGoogleCloudDatacatalogV1beta1Tag++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Tag < 3) {
    unittest.expect(
      o.column!,
      unittest.equals('foo'),
    );
    checkUnnamed7321(o.fields!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.template!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.templateDisplayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1Tag--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TagField = 0;
api.GoogleCloudDatacatalogV1beta1TagField
    buildGoogleCloudDatacatalogV1beta1TagField() {
  var o = api.GoogleCloudDatacatalogV1beta1TagField();
  buildCounterGoogleCloudDatacatalogV1beta1TagField++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagField < 3) {
    o.boolValue = true;
    o.displayName = 'foo';
    o.doubleValue = 42.0;
    o.enumValue = buildGoogleCloudDatacatalogV1beta1TagFieldEnumValue();
    o.order = 42;
    o.stringValue = 'foo';
    o.timestampValue = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagField--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1TagField(
    api.GoogleCloudDatacatalogV1beta1TagField o) {
  buildCounterGoogleCloudDatacatalogV1beta1TagField++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagField < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    checkGoogleCloudDatacatalogV1beta1TagFieldEnumValue(
        o.enumValue! as api.GoogleCloudDatacatalogV1beta1TagFieldEnumValue);
    unittest.expect(
      o.order!,
      unittest.equals(42),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestampValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagField--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue = 0;
api.GoogleCloudDatacatalogV1beta1TagFieldEnumValue
    buildGoogleCloudDatacatalogV1beta1TagFieldEnumValue() {
  var o = api.GoogleCloudDatacatalogV1beta1TagFieldEnumValue();
  buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue < 3) {
    o.displayName = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1TagFieldEnumValue(
    api.GoogleCloudDatacatalogV1beta1TagFieldEnumValue o) {
  buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagFieldEnumValue--;
}

core.Map<core.String, api.GoogleCloudDatacatalogV1beta1TagTemplateField>
    buildUnnamed7322() {
  var o = <core.String, api.GoogleCloudDatacatalogV1beta1TagTemplateField>{};
  o['x'] = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
  o['y'] = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
  return o;
}

void checkUnnamed7322(
    core.Map<core.String, api.GoogleCloudDatacatalogV1beta1TagTemplateField>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1TagTemplateField(
      o['x']! as api.GoogleCloudDatacatalogV1beta1TagTemplateField);
  checkGoogleCloudDatacatalogV1beta1TagTemplateField(
      o['y']! as api.GoogleCloudDatacatalogV1beta1TagTemplateField);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TagTemplate = 0;
api.GoogleCloudDatacatalogV1beta1TagTemplate
    buildGoogleCloudDatacatalogV1beta1TagTemplate() {
  var o = api.GoogleCloudDatacatalogV1beta1TagTemplate();
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplate++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagTemplate < 3) {
    o.displayName = 'foo';
    o.fields = buildUnnamed7322();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplate--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1TagTemplate(
    api.GoogleCloudDatacatalogV1beta1TagTemplate o) {
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplate++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagTemplate < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed7322(o.fields!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplate--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField = 0;
api.GoogleCloudDatacatalogV1beta1TagTemplateField
    buildGoogleCloudDatacatalogV1beta1TagTemplateField() {
  var o = api.GoogleCloudDatacatalogV1beta1TagTemplateField();
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.isRequired = true;
    o.name = 'foo';
    o.order = 42;
    o.type = buildGoogleCloudDatacatalogV1beta1FieldType();
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1TagTemplateField(
    api.GoogleCloudDatacatalogV1beta1TagTemplateField o) {
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField++;
  if (buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isRequired!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.order!,
      unittest.equals(42),
    );
    checkGoogleCloudDatacatalogV1beta1FieldType(
        o.type! as api.GoogleCloudDatacatalogV1beta1FieldType);
  }
  buildCounterGoogleCloudDatacatalogV1beta1TagTemplateField--;
}

core.List<core.String> buildUnnamed7323() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7323(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudDatacatalogV1beta1Taxonomy = 0;
api.GoogleCloudDatacatalogV1beta1Taxonomy
    buildGoogleCloudDatacatalogV1beta1Taxonomy() {
  var o = api.GoogleCloudDatacatalogV1beta1Taxonomy();
  buildCounterGoogleCloudDatacatalogV1beta1Taxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Taxonomy < 3) {
    o.activatedPolicyTypes = buildUnnamed7323();
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.policyTagCount = 42;
    o.taxonomyTimestamps = buildGoogleCloudDatacatalogV1beta1SystemTimestamps();
  }
  buildCounterGoogleCloudDatacatalogV1beta1Taxonomy--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1Taxonomy(
    api.GoogleCloudDatacatalogV1beta1Taxonomy o) {
  buildCounterGoogleCloudDatacatalogV1beta1Taxonomy++;
  if (buildCounterGoogleCloudDatacatalogV1beta1Taxonomy < 3) {
    checkUnnamed7323(o.activatedPolicyTypes!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policyTagCount!,
      unittest.equals(42),
    );
    checkGoogleCloudDatacatalogV1beta1SystemTimestamps(o.taxonomyTimestamps!
        as api.GoogleCloudDatacatalogV1beta1SystemTimestamps);
  }
  buildCounterGoogleCloudDatacatalogV1beta1Taxonomy--;
}

core.Map<core.String, api.GoogleCloudDatacatalogV1beta1UsageStats>
    buildUnnamed7324() {
  var o = <core.String, api.GoogleCloudDatacatalogV1beta1UsageStats>{};
  o['x'] = buildGoogleCloudDatacatalogV1beta1UsageStats();
  o['y'] = buildGoogleCloudDatacatalogV1beta1UsageStats();
  return o;
}

void checkUnnamed7324(
    core.Map<core.String, api.GoogleCloudDatacatalogV1beta1UsageStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogV1beta1UsageStats(
      o['x']! as api.GoogleCloudDatacatalogV1beta1UsageStats);
  checkGoogleCloudDatacatalogV1beta1UsageStats(
      o['y']! as api.GoogleCloudDatacatalogV1beta1UsageStats);
}

core.int buildCounterGoogleCloudDatacatalogV1beta1UsageSignal = 0;
api.GoogleCloudDatacatalogV1beta1UsageSignal
    buildGoogleCloudDatacatalogV1beta1UsageSignal() {
  var o = api.GoogleCloudDatacatalogV1beta1UsageSignal();
  buildCounterGoogleCloudDatacatalogV1beta1UsageSignal++;
  if (buildCounterGoogleCloudDatacatalogV1beta1UsageSignal < 3) {
    o.updateTime = 'foo';
    o.usageWithinTimeRange = buildUnnamed7324();
  }
  buildCounterGoogleCloudDatacatalogV1beta1UsageSignal--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1UsageSignal(
    api.GoogleCloudDatacatalogV1beta1UsageSignal o) {
  buildCounterGoogleCloudDatacatalogV1beta1UsageSignal++;
  if (buildCounterGoogleCloudDatacatalogV1beta1UsageSignal < 3) {
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed7324(o.usageWithinTimeRange!);
  }
  buildCounterGoogleCloudDatacatalogV1beta1UsageSignal--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1UsageStats = 0;
api.GoogleCloudDatacatalogV1beta1UsageStats
    buildGoogleCloudDatacatalogV1beta1UsageStats() {
  var o = api.GoogleCloudDatacatalogV1beta1UsageStats();
  buildCounterGoogleCloudDatacatalogV1beta1UsageStats++;
  if (buildCounterGoogleCloudDatacatalogV1beta1UsageStats < 3) {
    o.totalCancellations = 42.0;
    o.totalCompletions = 42.0;
    o.totalExecutionTimeForCompletionsMillis = 42.0;
    o.totalFailures = 42.0;
  }
  buildCounterGoogleCloudDatacatalogV1beta1UsageStats--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1UsageStats(
    api.GoogleCloudDatacatalogV1beta1UsageStats o) {
  buildCounterGoogleCloudDatacatalogV1beta1UsageStats++;
  if (buildCounterGoogleCloudDatacatalogV1beta1UsageStats < 3) {
    unittest.expect(
      o.totalCancellations!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.totalCompletions!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.totalExecutionTimeForCompletionsMillis!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.totalFailures!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1UsageStats--;
}

core.int buildCounterGoogleCloudDatacatalogV1beta1ViewSpec = 0;
api.GoogleCloudDatacatalogV1beta1ViewSpec
    buildGoogleCloudDatacatalogV1beta1ViewSpec() {
  var o = api.GoogleCloudDatacatalogV1beta1ViewSpec();
  buildCounterGoogleCloudDatacatalogV1beta1ViewSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ViewSpec < 3) {
    o.viewQuery = 'foo';
  }
  buildCounterGoogleCloudDatacatalogV1beta1ViewSpec--;
  return o;
}

void checkGoogleCloudDatacatalogV1beta1ViewSpec(
    api.GoogleCloudDatacatalogV1beta1ViewSpec o) {
  buildCounterGoogleCloudDatacatalogV1beta1ViewSpec++;
  if (buildCounterGoogleCloudDatacatalogV1beta1ViewSpec < 3) {
    unittest.expect(
      o.viewQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatacatalogV1beta1ViewSpec--;
}

core.List<api.Binding> buildUnnamed7325() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed7325(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed7325();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed7325(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterPolicy--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  var o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy! as api.Policy);
  }
  buildCounterSetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed7326() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7326(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed7326();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed7326(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed7327() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7327(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed7327();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed7327(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed7328() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7328(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

void main() {
  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBinding();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od as api.Binding);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      var o = buildExpr();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od as api.Expr);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGetIamPolicyRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetIamPolicyRequest(od as api.GetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGetPolicyOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GetPolicyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetPolicyOptions(od as api.GetPolicyOptions);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec(
          od as api.GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1BigQueryTableSpec',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1BigQueryTableSpec();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1BigQueryTableSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1BigQueryTableSpec(
          od as api.GoogleCloudDatacatalogV1beta1BigQueryTableSpec);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1ColumnSchema', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1ColumnSchema();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1ColumnSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ColumnSchema(
          od as api.GoogleCloudDatacatalogV1beta1ColumnSchema);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1Entry', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1Entry();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1Entry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1Entry(
          od as api.GoogleCloudDatacatalogV1beta1Entry);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1EntryGroup', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1EntryGroup();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1EntryGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1EntryGroup(
          od as api.GoogleCloudDatacatalogV1beta1EntryGroup);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse(
          od as api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1FieldType', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1FieldType();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1FieldType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1FieldType(
          od as api.GoogleCloudDatacatalogV1beta1FieldType);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1FieldTypeEnumType',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1FieldTypeEnumType();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1FieldTypeEnumType(
          od as api.GoogleCloudDatacatalogV1beta1FieldTypeEnumType);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue(
          od as api.GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1GcsFileSpec', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1GcsFileSpec();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1GcsFileSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1GcsFileSpec(
          od as api.GoogleCloudDatacatalogV1beta1GcsFileSpec);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1GcsFilesetSpec', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1GcsFilesetSpec();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1GcsFilesetSpec(
          od as api.GoogleCloudDatacatalogV1beta1GcsFilesetSpec);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest(
          od as api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse(
          od as api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1InlineSource', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1InlineSource();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1InlineSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1InlineSource(
          od as api.GoogleCloudDatacatalogV1beta1InlineSource);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1ListEntriesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1ListEntriesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1ListEntriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ListEntriesResponse(
          od as api.GoogleCloudDatacatalogV1beta1ListEntriesResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse(
          od as api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse(
          od as api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1ListTagsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1ListTagsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1ListTagsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ListTagsResponse(
          od as api.GoogleCloudDatacatalogV1beta1ListTagsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse(
          od as api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1PolicyTag', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1PolicyTag();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1PolicyTag.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1PolicyTag(
          od as api.GoogleCloudDatacatalogV1beta1PolicyTag);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest',
      () {
    unittest.test('to-json--from-json', () async {
      var o =
          buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest(
          od as api
              .GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest(
          od as api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1Schema', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1Schema();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1Schema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1Schema(
          od as api.GoogleCloudDatacatalogV1beta1Schema);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1SearchCatalogRequest',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1SearchCatalogRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1SearchCatalogRequest(
          od as api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1SearchCatalogRequestScope(
          od as api.GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatacatalogV1beta1SearchCatalogResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1SearchCatalogResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1SearchCatalogResponse(
          od as api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1SearchCatalogResult',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1SearchCatalogResult();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1SearchCatalogResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1SearchCatalogResult(
          od as api.GoogleCloudDatacatalogV1beta1SearchCatalogResult);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1SerializedPolicyTag',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1SerializedPolicyTag();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1SerializedPolicyTag(
          od as api.GoogleCloudDatacatalogV1beta1SerializedPolicyTag);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1SerializedTaxonomy',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1SerializedTaxonomy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1SerializedTaxonomy(
          od as api.GoogleCloudDatacatalogV1beta1SerializedTaxonomy);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1SystemTimestamps',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1SystemTimestamps();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1SystemTimestamps.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1SystemTimestamps(
          od as api.GoogleCloudDatacatalogV1beta1SystemTimestamps);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1TableSpec', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1TableSpec();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1TableSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1TableSpec(
          od as api.GoogleCloudDatacatalogV1beta1TableSpec);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1Tag', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1Tag();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1Tag.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1Tag(
          od as api.GoogleCloudDatacatalogV1beta1Tag);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1TagField', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1TagField();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1TagField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1TagField(
          od as api.GoogleCloudDatacatalogV1beta1TagField);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1TagFieldEnumValue',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1TagFieldEnumValue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1TagFieldEnumValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1TagFieldEnumValue(
          od as api.GoogleCloudDatacatalogV1beta1TagFieldEnumValue);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1TagTemplate', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1TagTemplate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1TagTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1TagTemplate(
          od as api.GoogleCloudDatacatalogV1beta1TagTemplate);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1TagTemplateField',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1TagTemplateField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1TagTemplateField(
          od as api.GoogleCloudDatacatalogV1beta1TagTemplateField);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1Taxonomy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1Taxonomy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1Taxonomy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1Taxonomy(
          od as api.GoogleCloudDatacatalogV1beta1Taxonomy);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1UsageSignal', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1UsageSignal();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1UsageSignal.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1UsageSignal(
          od as api.GoogleCloudDatacatalogV1beta1UsageSignal);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1UsageStats', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1UsageStats();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1UsageStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1UsageStats(
          od as api.GoogleCloudDatacatalogV1beta1UsageStats);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogV1beta1ViewSpec', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudDatacatalogV1beta1ViewSpec();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudDatacatalogV1beta1ViewSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatacatalogV1beta1ViewSpec(
          od as api.GoogleCloudDatacatalogV1beta1ViewSpec);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSetIamPolicyRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od as api.SetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTestIamPermissionsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od as api.TestIamPermissionsRequest);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTestIamPermissionsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-CatalogResource', () {
    unittest.test('method--search', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).catalog;
      var arg_request =
          buildGoogleCloudDatacatalogV1beta1SearchCatalogRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1SearchCatalogRequest(
            obj as api.GoogleCloudDatacatalogV1beta1SearchCatalogRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals("v1beta1/catalog:search"),
        );
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1SearchCatalogResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_request, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1SearchCatalogResponse(
          response as api.GoogleCloudDatacatalogV1beta1SearchCatalogResponse);
    });
  });

  unittest.group('resource-EntriesResource', () {
    unittest.test('method--lookup', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).entries;
      var arg_linkedResource = 'foo';
      var arg_sqlResource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals("v1beta1/entries:lookup"),
        );
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["linkedResource"]!.first,
          unittest.equals(arg_linkedResource),
        );
        unittest.expect(
          queryMap["sqlResource"]!.first,
          unittest.equals(arg_sqlResource),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Entry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lookup(
          linkedResource: arg_linkedResource,
          sqlResource: arg_sqlResource,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Entry(
          response as api.GoogleCloudDatacatalogV1beta1Entry);
    });
  });

  unittest.group('resource-ProjectsLocationsEntryGroupsResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      var arg_request = buildGoogleCloudDatacatalogV1beta1EntryGroup();
      var arg_parent = 'foo';
      var arg_entryGroupId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1EntryGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1EntryGroup(
            obj as api.GoogleCloudDatacatalogV1beta1EntryGroup);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["entryGroupId"]!.first,
          unittest.equals(arg_entryGroupId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1EntryGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          entryGroupId: arg_entryGroupId, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1EntryGroup(
          response as api.GoogleCloudDatacatalogV1beta1EntryGroup);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      var arg_name = 'foo';
      var arg_force = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["force"]!.first,
          unittest.equals("$arg_force"),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      var arg_name = 'foo';
      var arg_readMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["readMask"]!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1EntryGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, readMask: arg_readMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1EntryGroup(
          response as api.GoogleCloudDatacatalogV1beta1EntryGroup);
    });

    unittest.test('method--getIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj as api.GetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1ListEntryGroupsResponse(
          response as api.GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      var arg_request = buildGoogleCloudDatacatalogV1beta1EntryGroup();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1EntryGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1EntryGroup(
            obj as api.GoogleCloudDatacatalogV1beta1EntryGroup);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1EntryGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1EntryGroup(
          response as api.GoogleCloudDatacatalogV1beta1EntryGroup);
    });

    unittest.test('method--setIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsEntryGroupsEntriesResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Entry();
      var arg_parent = 'foo';
      var arg_entryId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1Entry.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1Entry(
            obj as api.GoogleCloudDatacatalogV1beta1Entry);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["entryId"]!.first,
          unittest.equals(arg_entryId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Entry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          entryId: arg_entryId, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Entry(
          response as api.GoogleCloudDatacatalogV1beta1Entry);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Entry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Entry(
          response as api.GoogleCloudDatacatalogV1beta1Entry);
    });

    unittest.test('method--getIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj as api.GetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_readMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["readMask"]!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1ListEntriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1ListEntriesResponse(
          response as api.GoogleCloudDatacatalogV1beta1ListEntriesResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Entry();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1Entry.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1Entry(
            obj as api.GoogleCloudDatacatalogV1beta1Entry);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Entry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Entry(
          response as api.GoogleCloudDatacatalogV1beta1Entry);
    });

    unittest.test('method--testIamPermissions', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups.entries;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsEntryGroupsEntriesTagsResource',
      () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries.tags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Tag();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1Tag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1Tag(
            obj as api.GoogleCloudDatacatalogV1beta1Tag);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDatacatalogV1beta1Tag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Tag(
          response as api.GoogleCloudDatacatalogV1beta1Tag);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries.tags;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries.tags;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1ListTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1ListTagsResponse(
          response as api.GoogleCloudDatacatalogV1beta1ListTagsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res =
          api.DataCatalogApi(mock).projects.locations.entryGroups.entries.tags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Tag();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1Tag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1Tag(
            obj as api.GoogleCloudDatacatalogV1beta1Tag);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDatacatalogV1beta1Tag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Tag(
          response as api.GoogleCloudDatacatalogV1beta1Tag);
    });
  });

  unittest.group('resource-ProjectsLocationsEntryGroupsTagsResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups.tags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Tag();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1Tag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1Tag(
            obj as api.GoogleCloudDatacatalogV1beta1Tag);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDatacatalogV1beta1Tag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Tag(
          response as api.GoogleCloudDatacatalogV1beta1Tag);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups.tags;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups.tags;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1ListTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1ListTagsResponse(
          response as api.GoogleCloudDatacatalogV1beta1ListTagsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.entryGroups.tags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Tag();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1Tag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1Tag(
            obj as api.GoogleCloudDatacatalogV1beta1Tag);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDatacatalogV1beta1Tag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Tag(
          response as api.GoogleCloudDatacatalogV1beta1Tag);
    });
  });

  unittest.group('resource-ProjectsLocationsTagTemplatesResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.tagTemplates;
      var arg_request = buildGoogleCloudDatacatalogV1beta1TagTemplate();
      var arg_parent = 'foo';
      var arg_tagTemplateId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1TagTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1TagTemplate(
            obj as api.GoogleCloudDatacatalogV1beta1TagTemplate);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["tagTemplateId"]!.first,
          unittest.equals(arg_tagTemplateId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          tagTemplateId: arg_tagTemplateId, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1TagTemplate(
          response as api.GoogleCloudDatacatalogV1beta1TagTemplate);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.tagTemplates;
      var arg_name = 'foo';
      var arg_force = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["force"]!.first,
          unittest.equals("$arg_force"),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.tagTemplates;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1TagTemplate(
          response as api.GoogleCloudDatacatalogV1beta1TagTemplate);
    });

    unittest.test('method--getIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.tagTemplates;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj as api.GetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.tagTemplates;
      var arg_request = buildGoogleCloudDatacatalogV1beta1TagTemplate();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1TagTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1TagTemplate(
            obj as api.GoogleCloudDatacatalogV1beta1TagTemplate);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1TagTemplate(
          response as api.GoogleCloudDatacatalogV1beta1TagTemplate);
    });

    unittest.test('method--setIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.tagTemplates;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.tagTemplates;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsTagTemplatesFieldsResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.tagTemplates.fields;
      var arg_request = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
      var arg_parent = 'foo';
      var arg_tagTemplateFieldId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1TagTemplateField.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1TagTemplateField(
            obj as api.GoogleCloudDatacatalogV1beta1TagTemplateField);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["tagTemplateFieldId"]!.first,
          unittest.equals(arg_tagTemplateFieldId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplateField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          tagTemplateFieldId: arg_tagTemplateFieldId, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1TagTemplateField(
          response as api.GoogleCloudDatacatalogV1beta1TagTemplateField);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.tagTemplates.fields;
      var arg_name = 'foo';
      var arg_force = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["force"]!.first,
          unittest.equals("$arg_force"),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.tagTemplates.fields;
      var arg_request = buildGoogleCloudDatacatalogV1beta1TagTemplateField();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1TagTemplateField.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1TagTemplateField(
            obj as api.GoogleCloudDatacatalogV1beta1TagTemplateField);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplateField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1TagTemplateField(
          response as api.GoogleCloudDatacatalogV1beta1TagTemplateField);
    });

    unittest.test('method--rename', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.tagTemplates.fields;
      var arg_request =
          buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest(obj
            as api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplateField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.rename(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1TagTemplateField(
          response as api.GoogleCloudDatacatalogV1beta1TagTemplateField);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsTagTemplatesFieldsEnumValuesResource', () {
    unittest.test('method--rename', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock)
          .projects
          .locations
          .tagTemplates
          .fields
          .enumValues;
      var arg_request =
          buildGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest(
            obj as api
                .GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1TagTemplateField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.rename(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1TagTemplateField(
          response as api.GoogleCloudDatacatalogV1beta1TagTemplateField);
    });
  });

  unittest.group('resource-ProjectsLocationsTaxonomiesResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Taxonomy();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1Taxonomy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1Taxonomy(
            obj as api.GoogleCloudDatacatalogV1beta1Taxonomy);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Taxonomy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Taxonomy(
          response as api.GoogleCloudDatacatalogV1beta1Taxonomy);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--export', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      var arg_parent = 'foo';
      var arg_serializedTaxonomies = true;
      var arg_taxonomies = buildUnnamed7328();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["serializedTaxonomies"]!.first,
          unittest.equals("$arg_serializedTaxonomies"),
        );
        unittest.expect(
          queryMap["taxonomies"]!,
          unittest.equals(arg_taxonomies),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.export(arg_parent,
          serializedTaxonomies: arg_serializedTaxonomies,
          taxonomies: arg_taxonomies,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse(response
          as api.GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Taxonomy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Taxonomy(
          response as api.GoogleCloudDatacatalogV1beta1Taxonomy);
    });

    unittest.test('method--getIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj as api.GetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--import', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      var arg_request =
          buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest(
            obj as api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse(response
          as api.GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1ListTaxonomiesResponse(
          response as api.GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      var arg_request = buildGoogleCloudDatacatalogV1beta1Taxonomy();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1Taxonomy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1Taxonomy(
            obj as api.GoogleCloudDatacatalogV1beta1Taxonomy);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1Taxonomy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1Taxonomy(
          response as api.GoogleCloudDatacatalogV1beta1Taxonomy);
    });

    unittest.test('method--setIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      var mock = HttpServerMock();
      var res = api.DataCatalogApi(mock).projects.locations.taxonomies;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsTaxonomiesPolicyTagsResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1PolicyTag();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1PolicyTag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1PolicyTag(
            obj as api.GoogleCloudDatacatalogV1beta1PolicyTag);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1PolicyTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1PolicyTag(
          response as api.GoogleCloudDatacatalogV1beta1PolicyTag);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1PolicyTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1PolicyTag(
          response as api.GoogleCloudDatacatalogV1beta1PolicyTag);
    });

    unittest.test('method--getIamPolicy', () async {
      var mock = HttpServerMock();
      var res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj as api.GetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1ListPolicyTagsResponse(
          response as api.GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_request = buildGoogleCloudDatacatalogV1beta1PolicyTag();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatacatalogV1beta1PolicyTag.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatacatalogV1beta1PolicyTag(
            obj as api.GoogleCloudDatacatalogV1beta1PolicyTag);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatacatalogV1beta1PolicyTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatacatalogV1beta1PolicyTag(
          response as api.GoogleCloudDatacatalogV1beta1PolicyTag);
    });

    unittest.test('method--setIamPolicy', () async {
      var mock = HttpServerMock();
      var res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      var mock = HttpServerMock();
      var res =
          api.DataCatalogApi(mock).projects.locations.taxonomies.policyTags;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });
}
