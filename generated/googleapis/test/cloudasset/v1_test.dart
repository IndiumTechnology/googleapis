library googleapis.cloudasset.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/cloudasset/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed2325() {
  var o = new core.List<api.GoogleCloudOrgpolicyV1Policy>();
  o.add(buildGoogleCloudOrgpolicyV1Policy());
  o.add(buildGoogleCloudOrgpolicyV1Policy());
  return o;
}

checkUnnamed2325(core.List<api.GoogleCloudOrgpolicyV1Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudOrgpolicyV1Policy(o[0]);
  checkGoogleCloudOrgpolicyV1Policy(o[1]);
}

core.int buildCounterAsset = 0;
buildAsset() {
  var o = new api.Asset();
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    o.accessLevel = buildGoogleIdentityAccesscontextmanagerV1AccessLevel();
    o.accessPolicy = buildGoogleIdentityAccesscontextmanagerV1AccessPolicy();
    o.assetType = "foo";
    o.iamPolicy = buildPolicy();
    o.name = "foo";
    o.orgPolicy = buildUnnamed2325();
    o.resource = buildResource();
    o.servicePerimeter =
        buildGoogleIdentityAccesscontextmanagerV1ServicePerimeter();
  }
  buildCounterAsset--;
  return o;
}

checkAsset(api.Asset o) {
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    checkGoogleIdentityAccesscontextmanagerV1AccessLevel(o.accessLevel);
    checkGoogleIdentityAccesscontextmanagerV1AccessPolicy(o.accessPolicy);
    unittest.expect(o.assetType, unittest.equals('foo'));
    checkPolicy(o.iamPolicy);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2325(o.orgPolicy);
    checkResource(o.resource);
    checkGoogleIdentityAccesscontextmanagerV1ServicePerimeter(
        o.servicePerimeter);
  }
  buildCounterAsset--;
}

buildUnnamed2326() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed2326(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed2326();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed2326(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed2327() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2327(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed2327();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed2327(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

buildUnnamed2328() {
  var o = new core.List<api.TemporalAsset>();
  o.add(buildTemporalAsset());
  o.add(buildTemporalAsset());
  return o;
}

checkUnnamed2328(core.List<api.TemporalAsset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTemporalAsset(o[0]);
  checkTemporalAsset(o[1]);
}

core.int buildCounterBatchGetAssetsHistoryResponse = 0;
buildBatchGetAssetsHistoryResponse() {
  var o = new api.BatchGetAssetsHistoryResponse();
  buildCounterBatchGetAssetsHistoryResponse++;
  if (buildCounterBatchGetAssetsHistoryResponse < 3) {
    o.assets = buildUnnamed2328();
  }
  buildCounterBatchGetAssetsHistoryResponse--;
  return o;
}

checkBatchGetAssetsHistoryResponse(api.BatchGetAssetsHistoryResponse o) {
  buildCounterBatchGetAssetsHistoryResponse++;
  if (buildCounterBatchGetAssetsHistoryResponse < 3) {
    checkUnnamed2328(o.assets);
  }
  buildCounterBatchGetAssetsHistoryResponse--;
}

core.int buildCounterBigQueryDestination = 0;
buildBigQueryDestination() {
  var o = new api.BigQueryDestination();
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    o.dataset = "foo";
    o.force = true;
    o.table = "foo";
  }
  buildCounterBigQueryDestination--;
  return o;
}

checkBigQueryDestination(api.BigQueryDestination o) {
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    unittest.expect(o.dataset, unittest.equals('foo'));
    unittest.expect(o.force, unittest.isTrue);
    unittest.expect(o.table, unittest.equals('foo'));
  }
  buildCounterBigQueryDestination--;
}

buildUnnamed2329() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2329(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed2329();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed2329(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

buildUnnamed2330() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2330(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExportAssetsRequest = 0;
buildExportAssetsRequest() {
  var o = new api.ExportAssetsRequest();
  buildCounterExportAssetsRequest++;
  if (buildCounterExportAssetsRequest < 3) {
    o.assetTypes = buildUnnamed2330();
    o.contentType = "foo";
    o.outputConfig = buildOutputConfig();
    o.readTime = "foo";
  }
  buildCounterExportAssetsRequest--;
  return o;
}

checkExportAssetsRequest(api.ExportAssetsRequest o) {
  buildCounterExportAssetsRequest++;
  if (buildCounterExportAssetsRequest < 3) {
    checkUnnamed2330(o.assetTypes);
    unittest.expect(o.contentType, unittest.equals('foo'));
    checkOutputConfig(o.outputConfig);
    unittest.expect(o.readTime, unittest.equals('foo'));
  }
  buildCounterExportAssetsRequest--;
}

core.int buildCounterExpr = 0;
buildExpr() {
  var o = new api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.int buildCounterGcsDestination = 0;
buildGcsDestination() {
  var o = new api.GcsDestination();
  buildCounterGcsDestination++;
  if (buildCounterGcsDestination < 3) {
    o.uri = "foo";
    o.uriPrefix = "foo";
  }
  buildCounterGcsDestination--;
  return o;
}

checkGcsDestination(api.GcsDestination o) {
  buildCounterGcsDestination++;
  if (buildCounterGcsDestination < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
    unittest.expect(o.uriPrefix, unittest.equals('foo'));
  }
  buildCounterGcsDestination--;
}

core.int buildCounterGoogleCloudOrgpolicyV1BooleanPolicy = 0;
buildGoogleCloudOrgpolicyV1BooleanPolicy() {
  var o = new api.GoogleCloudOrgpolicyV1BooleanPolicy();
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1BooleanPolicy < 3) {
    o.enforced = true;
  }
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy--;
  return o;
}

checkGoogleCloudOrgpolicyV1BooleanPolicy(
    api.GoogleCloudOrgpolicyV1BooleanPolicy o) {
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1BooleanPolicy < 3) {
    unittest.expect(o.enforced, unittest.isTrue);
  }
  buildCounterGoogleCloudOrgpolicyV1BooleanPolicy--;
}

buildUnnamed2331() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2331(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2332() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2332(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudOrgpolicyV1ListPolicy = 0;
buildGoogleCloudOrgpolicyV1ListPolicy() {
  var o = new api.GoogleCloudOrgpolicyV1ListPolicy();
  buildCounterGoogleCloudOrgpolicyV1ListPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1ListPolicy < 3) {
    o.allValues = "foo";
    o.allowedValues = buildUnnamed2331();
    o.deniedValues = buildUnnamed2332();
    o.inheritFromParent = true;
    o.suggestedValue = "foo";
  }
  buildCounterGoogleCloudOrgpolicyV1ListPolicy--;
  return o;
}

checkGoogleCloudOrgpolicyV1ListPolicy(api.GoogleCloudOrgpolicyV1ListPolicy o) {
  buildCounterGoogleCloudOrgpolicyV1ListPolicy++;
  if (buildCounterGoogleCloudOrgpolicyV1ListPolicy < 3) {
    unittest.expect(o.allValues, unittest.equals('foo'));
    checkUnnamed2331(o.allowedValues);
    checkUnnamed2332(o.deniedValues);
    unittest.expect(o.inheritFromParent, unittest.isTrue);
    unittest.expect(o.suggestedValue, unittest.equals('foo'));
  }
  buildCounterGoogleCloudOrgpolicyV1ListPolicy--;
}

core.int buildCounterGoogleCloudOrgpolicyV1Policy = 0;
buildGoogleCloudOrgpolicyV1Policy() {
  var o = new api.GoogleCloudOrgpolicyV1Policy();
  buildCounterGoogleCloudOrgpolicyV1Policy++;
  if (buildCounterGoogleCloudOrgpolicyV1Policy < 3) {
    o.booleanPolicy = buildGoogleCloudOrgpolicyV1BooleanPolicy();
    o.constraint = "foo";
    o.etag = "foo";
    o.listPolicy = buildGoogleCloudOrgpolicyV1ListPolicy();
    o.restoreDefault = buildGoogleCloudOrgpolicyV1RestoreDefault();
    o.updateTime = "foo";
    o.version = 42;
  }
  buildCounterGoogleCloudOrgpolicyV1Policy--;
  return o;
}

checkGoogleCloudOrgpolicyV1Policy(api.GoogleCloudOrgpolicyV1Policy o) {
  buildCounterGoogleCloudOrgpolicyV1Policy++;
  if (buildCounterGoogleCloudOrgpolicyV1Policy < 3) {
    checkGoogleCloudOrgpolicyV1BooleanPolicy(o.booleanPolicy);
    unittest.expect(o.constraint, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkGoogleCloudOrgpolicyV1ListPolicy(o.listPolicy);
    checkGoogleCloudOrgpolicyV1RestoreDefault(o.restoreDefault);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterGoogleCloudOrgpolicyV1Policy--;
}

core.int buildCounterGoogleCloudOrgpolicyV1RestoreDefault = 0;
buildGoogleCloudOrgpolicyV1RestoreDefault() {
  var o = new api.GoogleCloudOrgpolicyV1RestoreDefault();
  buildCounterGoogleCloudOrgpolicyV1RestoreDefault++;
  if (buildCounterGoogleCloudOrgpolicyV1RestoreDefault < 3) {}
  buildCounterGoogleCloudOrgpolicyV1RestoreDefault--;
  return o;
}

checkGoogleCloudOrgpolicyV1RestoreDefault(
    api.GoogleCloudOrgpolicyV1RestoreDefault o) {
  buildCounterGoogleCloudOrgpolicyV1RestoreDefault++;
  if (buildCounterGoogleCloudOrgpolicyV1RestoreDefault < 3) {}
  buildCounterGoogleCloudOrgpolicyV1RestoreDefault--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel = 0;
buildGoogleIdentityAccesscontextmanagerV1AccessLevel() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1AccessLevel();
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel < 3) {
    o.basic = buildGoogleIdentityAccesscontextmanagerV1BasicLevel();
    o.createTime = "foo";
    o.description = "foo";
    o.name = "foo";
    o.title = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1AccessLevel(
    api.GoogleIdentityAccesscontextmanagerV1AccessLevel o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel < 3) {
    checkGoogleIdentityAccesscontextmanagerV1BasicLevel(o.basic);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessLevel--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy = 0;
buildGoogleIdentityAccesscontextmanagerV1AccessPolicy() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1AccessPolicy();
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy < 3) {
    o.createTime = "foo";
    o.name = "foo";
    o.parent = "foo";
    o.title = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1AccessPolicy(
    api.GoogleIdentityAccesscontextmanagerV1AccessPolicy o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1AccessPolicy--;
}

buildUnnamed2333() {
  var o = new core.List<api.GoogleIdentityAccesscontextmanagerV1Condition>();
  o.add(buildGoogleIdentityAccesscontextmanagerV1Condition());
  o.add(buildGoogleIdentityAccesscontextmanagerV1Condition());
  return o;
}

checkUnnamed2333(
    core.List<api.GoogleIdentityAccesscontextmanagerV1Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1Condition(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1Condition(o[1]);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel = 0;
buildGoogleIdentityAccesscontextmanagerV1BasicLevel() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1BasicLevel();
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel < 3) {
    o.combiningFunction = "foo";
    o.conditions = buildUnnamed2333();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1BasicLevel(
    api.GoogleIdentityAccesscontextmanagerV1BasicLevel o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel < 3) {
    unittest.expect(o.combiningFunction, unittest.equals('foo'));
    checkUnnamed2333(o.conditions);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1BasicLevel--;
}

buildUnnamed2334() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2334(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2335() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2335(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2336() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2336(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2337() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2337(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1Condition = 0;
buildGoogleIdentityAccesscontextmanagerV1Condition() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1Condition();
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1Condition < 3) {
    o.devicePolicy = buildGoogleIdentityAccesscontextmanagerV1DevicePolicy();
    o.ipSubnetworks = buildUnnamed2334();
    o.members = buildUnnamed2335();
    o.negate = true;
    o.regions = buildUnnamed2336();
    o.requiredAccessLevels = buildUnnamed2337();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1Condition(
    api.GoogleIdentityAccesscontextmanagerV1Condition o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1Condition < 3) {
    checkGoogleIdentityAccesscontextmanagerV1DevicePolicy(o.devicePolicy);
    checkUnnamed2334(o.ipSubnetworks);
    checkUnnamed2335(o.members);
    unittest.expect(o.negate, unittest.isTrue);
    checkUnnamed2336(o.regions);
    checkUnnamed2337(o.requiredAccessLevels);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1Condition--;
}

buildUnnamed2338() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2338(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2339() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2339(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2340() {
  var o = new core.List<api.GoogleIdentityAccesscontextmanagerV1OsConstraint>();
  o.add(buildGoogleIdentityAccesscontextmanagerV1OsConstraint());
  o.add(buildGoogleIdentityAccesscontextmanagerV1OsConstraint());
  return o;
}

checkUnnamed2340(
    core.List<api.GoogleIdentityAccesscontextmanagerV1OsConstraint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityAccesscontextmanagerV1OsConstraint(o[0]);
  checkGoogleIdentityAccesscontextmanagerV1OsConstraint(o[1]);
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy = 0;
buildGoogleIdentityAccesscontextmanagerV1DevicePolicy() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1DevicePolicy();
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy < 3) {
    o.allowedDeviceManagementLevels = buildUnnamed2338();
    o.allowedEncryptionStatuses = buildUnnamed2339();
    o.osConstraints = buildUnnamed2340();
    o.requireAdminApproval = true;
    o.requireCorpOwned = true;
    o.requireScreenlock = true;
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1DevicePolicy(
    api.GoogleIdentityAccesscontextmanagerV1DevicePolicy o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy < 3) {
    checkUnnamed2338(o.allowedDeviceManagementLevels);
    checkUnnamed2339(o.allowedEncryptionStatuses);
    checkUnnamed2340(o.osConstraints);
    unittest.expect(o.requireAdminApproval, unittest.isTrue);
    unittest.expect(o.requireCorpOwned, unittest.isTrue);
    unittest.expect(o.requireScreenlock, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1DevicePolicy--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint = 0;
buildGoogleIdentityAccesscontextmanagerV1OsConstraint() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1OsConstraint();
  buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint < 3) {
    o.minimumVersion = "foo";
    o.osType = "foo";
    o.requireVerifiedChromeOs = true;
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1OsConstraint(
    api.GoogleIdentityAccesscontextmanagerV1OsConstraint o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint < 3) {
    unittest.expect(o.minimumVersion, unittest.equals('foo'));
    unittest.expect(o.osType, unittest.equals('foo'));
    unittest.expect(o.requireVerifiedChromeOs, unittest.isTrue);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1OsConstraint--;
}

core.int buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter = 0;
buildGoogleIdentityAccesscontextmanagerV1ServicePerimeter() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter();
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter < 3) {
    o.createTime = "foo";
    o.description = "foo";
    o.name = "foo";
    o.perimeterType = "foo";
    o.status =
        buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
    o.title = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1ServicePerimeter(
    api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.perimeterType, unittest.equals('foo'));
    checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(o.status);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeter--;
}

buildUnnamed2341() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2341(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2342() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2342(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2343() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2343(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
    buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig = 0;
buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig() {
  var o = new api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig <
      3) {
    o.accessLevels = buildUnnamed2341();
    o.resources = buildUnnamed2342();
    o.restrictedServices = buildUnnamed2343();
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig--;
  return o;
}

checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(
    api.GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig o) {
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig++;
  if (buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig <
      3) {
    checkUnnamed2341(o.accessLevels);
    checkUnnamed2342(o.resources);
    checkUnnamed2343(o.restrictedServices);
  }
  buildCounterGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig--;
}

buildUnnamed2344() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed2344(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed2345() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed2345(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed2344();
    o.name = "foo";
    o.response = buildUnnamed2345();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed2344(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2345(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOutputConfig = 0;
buildOutputConfig() {
  var o = new api.OutputConfig();
  buildCounterOutputConfig++;
  if (buildCounterOutputConfig < 3) {
    o.bigqueryDestination = buildBigQueryDestination();
    o.gcsDestination = buildGcsDestination();
  }
  buildCounterOutputConfig--;
  return o;
}

checkOutputConfig(api.OutputConfig o) {
  buildCounterOutputConfig++;
  if (buildCounterOutputConfig < 3) {
    checkBigQueryDestination(o.bigqueryDestination);
    checkGcsDestination(o.gcsDestination);
  }
  buildCounterOutputConfig--;
}

buildUnnamed2346() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed2346(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed2347() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed2347(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed2346();
    o.bindings = buildUnnamed2347();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed2346(o.auditConfigs);
    checkUnnamed2347(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

buildUnnamed2348() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed2348(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

core.int buildCounterResource = 0;
buildResource() {
  var o = new api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.data = buildUnnamed2348();
    o.discoveryDocumentUri = "foo";
    o.discoveryName = "foo";
    o.parent = "foo";
    o.resourceUrl = "foo";
    o.version = "foo";
  }
  buildCounterResource--;
  return o;
}

checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkUnnamed2348(o.data);
    unittest.expect(o.discoveryDocumentUri, unittest.equals('foo'));
    unittest.expect(o.discoveryName, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.resourceUrl, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterResource--;
}

buildUnnamed2349() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed2349(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o["y"]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

buildUnnamed2350() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2349());
  o.add(buildUnnamed2349());
  return o;
}

checkUnnamed2350(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2349(o[0]);
  checkUnnamed2349(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2350();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2350(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTemporalAsset = 0;
buildTemporalAsset() {
  var o = new api.TemporalAsset();
  buildCounterTemporalAsset++;
  if (buildCounterTemporalAsset < 3) {
    o.asset = buildAsset();
    o.deleted = true;
    o.window = buildTimeWindow();
  }
  buildCounterTemporalAsset--;
  return o;
}

checkTemporalAsset(api.TemporalAsset o) {
  buildCounterTemporalAsset++;
  if (buildCounterTemporalAsset < 3) {
    checkAsset(o.asset);
    unittest.expect(o.deleted, unittest.isTrue);
    checkTimeWindow(o.window);
  }
  buildCounterTemporalAsset--;
}

core.int buildCounterTimeWindow = 0;
buildTimeWindow() {
  var o = new api.TimeWindow();
  buildCounterTimeWindow++;
  if (buildCounterTimeWindow < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
  }
  buildCounterTimeWindow--;
  return o;
}

checkTimeWindow(api.TimeWindow o) {
  buildCounterTimeWindow++;
  if (buildCounterTimeWindow < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterTimeWindow--;
}

buildUnnamed2351() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2351(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-Asset", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsset();
      var od = new api.Asset.fromJson(o.toJson());
      checkAsset(od);
    });
  });

  unittest.group("obj-schema-AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditConfig();
      var od = new api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od);
    });
  });

  unittest.group("obj-schema-AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditLogConfig();
      var od = new api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od);
    });
  });

  unittest.group("obj-schema-BatchGetAssetsHistoryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchGetAssetsHistoryResponse();
      var od = new api.BatchGetAssetsHistoryResponse.fromJson(o.toJson());
      checkBatchGetAssetsHistoryResponse(od);
    });
  });

  unittest.group("obj-schema-BigQueryDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildBigQueryDestination();
      var od = new api.BigQueryDestination.fromJson(o.toJson());
      checkBigQueryDestination(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-ExportAssetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportAssetsRequest();
      var od = new api.ExportAssetsRequest.fromJson(o.toJson());
      checkExportAssetsRequest(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-GcsDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGcsDestination();
      var od = new api.GcsDestination.fromJson(o.toJson());
      checkGcsDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudOrgpolicyV1BooleanPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudOrgpolicyV1BooleanPolicy();
      var od = new api.GoogleCloudOrgpolicyV1BooleanPolicy.fromJson(o.toJson());
      checkGoogleCloudOrgpolicyV1BooleanPolicy(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudOrgpolicyV1ListPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudOrgpolicyV1ListPolicy();
      var od = new api.GoogleCloudOrgpolicyV1ListPolicy.fromJson(o.toJson());
      checkGoogleCloudOrgpolicyV1ListPolicy(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudOrgpolicyV1Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudOrgpolicyV1Policy();
      var od = new api.GoogleCloudOrgpolicyV1Policy.fromJson(o.toJson());
      checkGoogleCloudOrgpolicyV1Policy(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudOrgpolicyV1RestoreDefault", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudOrgpolicyV1RestoreDefault();
      var od =
          new api.GoogleCloudOrgpolicyV1RestoreDefault.fromJson(o.toJson());
      checkGoogleCloudOrgpolicyV1RestoreDefault(od);
    });
  });

  unittest.group("obj-schema-GoogleIdentityAccesscontextmanagerV1AccessLevel",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1AccessLevel();
      var od = new api.GoogleIdentityAccesscontextmanagerV1AccessLevel.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1AccessLevel(od);
    });
  });

  unittest.group("obj-schema-GoogleIdentityAccesscontextmanagerV1AccessPolicy",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1AccessPolicy();
      var od =
          new api.GoogleIdentityAccesscontextmanagerV1AccessPolicy.fromJson(
              o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1AccessPolicy(od);
    });
  });

  unittest.group("obj-schema-GoogleIdentityAccesscontextmanagerV1BasicLevel",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1BasicLevel();
      var od = new api.GoogleIdentityAccesscontextmanagerV1BasicLevel.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1BasicLevel(od);
    });
  });

  unittest.group("obj-schema-GoogleIdentityAccesscontextmanagerV1Condition",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1Condition();
      var od = new api.GoogleIdentityAccesscontextmanagerV1Condition.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1Condition(od);
    });
  });

  unittest.group("obj-schema-GoogleIdentityAccesscontextmanagerV1DevicePolicy",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1DevicePolicy();
      var od =
          new api.GoogleIdentityAccesscontextmanagerV1DevicePolicy.fromJson(
              o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1DevicePolicy(od);
    });
  });

  unittest.group("obj-schema-GoogleIdentityAccesscontextmanagerV1OsConstraint",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1OsConstraint();
      var od =
          new api.GoogleIdentityAccesscontextmanagerV1OsConstraint.fromJson(
              o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1OsConstraint(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleIdentityAccesscontextmanagerV1ServicePerimeter", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1ServicePerimeter();
      var od =
          new api.GoogleIdentityAccesscontextmanagerV1ServicePerimeter.fromJson(
              o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1ServicePerimeter(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig();
      var od = new api
              .GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig.fromJson(
          o.toJson());
      checkGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-OutputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildOutputConfig();
      var od = new api.OutputConfig.fromJson(o.toJson());
      checkOutputConfig(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-Resource", () {
    unittest.test("to-json--from-json", () {
      var o = buildResource();
      var od = new api.Resource.fromJson(o.toJson());
      checkResource(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-TemporalAsset", () {
    unittest.test("to-json--from-json", () {
      var o = buildTemporalAsset();
      var od = new api.TemporalAsset.fromJson(o.toJson());
      checkTemporalAsset(od);
    });
  });

  unittest.group("obj-schema-TimeWindow", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeWindow();
      var od = new api.TimeWindow.fromJson(o.toJson());
      checkTimeWindow(od);
    });
  });

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.CloudassetApi(mock).operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-V1ResourceApi", () {
    unittest.test("method--batchGetAssetsHistory", () {
      var mock = new HttpServerMock();
      api.V1ResourceApi res = new api.CloudassetApi(mock).v1;
      var arg_parent = "foo";
      var arg_contentType = "foo";
      var arg_readTimeWindow_endTime = "foo";
      var arg_readTimeWindow_startTime = "foo";
      var arg_assetNames = buildUnnamed2351();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["contentType"].first, unittest.equals(arg_contentType));
        unittest.expect(queryMap["readTimeWindow.endTime"].first,
            unittest.equals(arg_readTimeWindow_endTime));
        unittest.expect(queryMap["readTimeWindow.startTime"].first,
            unittest.equals(arg_readTimeWindow_startTime));
        unittest.expect(
            queryMap["assetNames"], unittest.equals(arg_assetNames));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBatchGetAssetsHistoryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchGetAssetsHistory(arg_parent,
              contentType: arg_contentType,
              readTimeWindow_endTime: arg_readTimeWindow_endTime,
              readTimeWindow_startTime: arg_readTimeWindow_startTime,
              assetNames: arg_assetNames,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchGetAssetsHistoryResponse(response);
      })));
    });

    unittest.test("method--exportAssets", () {
      var mock = new HttpServerMock();
      api.V1ResourceApi res = new api.CloudassetApi(mock).v1;
      var arg_request = buildExportAssetsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ExportAssetsRequest.fromJson(json);
        checkExportAssetsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .exportAssets(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });
}
