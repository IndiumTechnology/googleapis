library googleapis.androidenterprise.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/androidenterprise/v1.dart' as api;

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

core.int buildCounterAdministrator = 0;
buildAdministrator() {
  var o = new api.Administrator();
  buildCounterAdministrator++;
  if (buildCounterAdministrator < 3) {
    o.email = "foo";
  }
  buildCounterAdministrator--;
  return o;
}

checkAdministrator(api.Administrator o) {
  buildCounterAdministrator++;
  if (buildCounterAdministrator < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
  }
  buildCounterAdministrator--;
}

core.int buildCounterAdministratorWebToken = 0;
buildAdministratorWebToken() {
  var o = new api.AdministratorWebToken();
  buildCounterAdministratorWebToken++;
  if (buildCounterAdministratorWebToken < 3) {
    o.kind = "foo";
    o.token = "foo";
  }
  buildCounterAdministratorWebToken--;
  return o;
}

checkAdministratorWebToken(api.AdministratorWebToken o) {
  buildCounterAdministratorWebToken++;
  if (buildCounterAdministratorWebToken < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterAdministratorWebToken--;
}

buildUnnamed3141() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3141(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdministratorWebTokenSpec = 0;
buildAdministratorWebTokenSpec() {
  var o = new api.AdministratorWebTokenSpec();
  buildCounterAdministratorWebTokenSpec++;
  if (buildCounterAdministratorWebTokenSpec < 3) {
    o.kind = "foo";
    o.managedConfigurations =
        buildAdministratorWebTokenSpecManagedConfigurations();
    o.parent = "foo";
    o.permission = buildUnnamed3141();
    o.playSearch = buildAdministratorWebTokenSpecPlaySearch();
    o.privateApps = buildAdministratorWebTokenSpecPrivateApps();
    o.storeBuilder = buildAdministratorWebTokenSpecStoreBuilder();
    o.webApps = buildAdministratorWebTokenSpecWebApps();
  }
  buildCounterAdministratorWebTokenSpec--;
  return o;
}

checkAdministratorWebTokenSpec(api.AdministratorWebTokenSpec o) {
  buildCounterAdministratorWebTokenSpec++;
  if (buildCounterAdministratorWebTokenSpec < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkAdministratorWebTokenSpecManagedConfigurations(
        o.managedConfigurations);
    unittest.expect(o.parent, unittest.equals('foo'));
    checkUnnamed3141(o.permission);
    checkAdministratorWebTokenSpecPlaySearch(o.playSearch);
    checkAdministratorWebTokenSpecPrivateApps(o.privateApps);
    checkAdministratorWebTokenSpecStoreBuilder(o.storeBuilder);
    checkAdministratorWebTokenSpecWebApps(o.webApps);
  }
  buildCounterAdministratorWebTokenSpec--;
}

core.int buildCounterAdministratorWebTokenSpecManagedConfigurations = 0;
buildAdministratorWebTokenSpecManagedConfigurations() {
  var o = new api.AdministratorWebTokenSpecManagedConfigurations();
  buildCounterAdministratorWebTokenSpecManagedConfigurations++;
  if (buildCounterAdministratorWebTokenSpecManagedConfigurations < 3) {
    o.enabled = true;
  }
  buildCounterAdministratorWebTokenSpecManagedConfigurations--;
  return o;
}

checkAdministratorWebTokenSpecManagedConfigurations(
    api.AdministratorWebTokenSpecManagedConfigurations o) {
  buildCounterAdministratorWebTokenSpecManagedConfigurations++;
  if (buildCounterAdministratorWebTokenSpecManagedConfigurations < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterAdministratorWebTokenSpecManagedConfigurations--;
}

core.int buildCounterAdministratorWebTokenSpecPlaySearch = 0;
buildAdministratorWebTokenSpecPlaySearch() {
  var o = new api.AdministratorWebTokenSpecPlaySearch();
  buildCounterAdministratorWebTokenSpecPlaySearch++;
  if (buildCounterAdministratorWebTokenSpecPlaySearch < 3) {
    o.approveApps = true;
    o.enabled = true;
  }
  buildCounterAdministratorWebTokenSpecPlaySearch--;
  return o;
}

checkAdministratorWebTokenSpecPlaySearch(
    api.AdministratorWebTokenSpecPlaySearch o) {
  buildCounterAdministratorWebTokenSpecPlaySearch++;
  if (buildCounterAdministratorWebTokenSpecPlaySearch < 3) {
    unittest.expect(o.approveApps, unittest.isTrue);
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterAdministratorWebTokenSpecPlaySearch--;
}

core.int buildCounterAdministratorWebTokenSpecPrivateApps = 0;
buildAdministratorWebTokenSpecPrivateApps() {
  var o = new api.AdministratorWebTokenSpecPrivateApps();
  buildCounterAdministratorWebTokenSpecPrivateApps++;
  if (buildCounterAdministratorWebTokenSpecPrivateApps < 3) {
    o.enabled = true;
  }
  buildCounterAdministratorWebTokenSpecPrivateApps--;
  return o;
}

checkAdministratorWebTokenSpecPrivateApps(
    api.AdministratorWebTokenSpecPrivateApps o) {
  buildCounterAdministratorWebTokenSpecPrivateApps++;
  if (buildCounterAdministratorWebTokenSpecPrivateApps < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterAdministratorWebTokenSpecPrivateApps--;
}

core.int buildCounterAdministratorWebTokenSpecStoreBuilder = 0;
buildAdministratorWebTokenSpecStoreBuilder() {
  var o = new api.AdministratorWebTokenSpecStoreBuilder();
  buildCounterAdministratorWebTokenSpecStoreBuilder++;
  if (buildCounterAdministratorWebTokenSpecStoreBuilder < 3) {
    o.enabled = true;
  }
  buildCounterAdministratorWebTokenSpecStoreBuilder--;
  return o;
}

checkAdministratorWebTokenSpecStoreBuilder(
    api.AdministratorWebTokenSpecStoreBuilder o) {
  buildCounterAdministratorWebTokenSpecStoreBuilder++;
  if (buildCounterAdministratorWebTokenSpecStoreBuilder < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterAdministratorWebTokenSpecStoreBuilder--;
}

core.int buildCounterAdministratorWebTokenSpecWebApps = 0;
buildAdministratorWebTokenSpecWebApps() {
  var o = new api.AdministratorWebTokenSpecWebApps();
  buildCounterAdministratorWebTokenSpecWebApps++;
  if (buildCounterAdministratorWebTokenSpecWebApps < 3) {
    o.enabled = true;
  }
  buildCounterAdministratorWebTokenSpecWebApps--;
  return o;
}

checkAdministratorWebTokenSpecWebApps(api.AdministratorWebTokenSpecWebApps o) {
  buildCounterAdministratorWebTokenSpecWebApps++;
  if (buildCounterAdministratorWebTokenSpecWebApps < 3) {
    unittest.expect(o.enabled, unittest.isTrue);
  }
  buildCounterAdministratorWebTokenSpecWebApps--;
}

buildUnnamed3142() {
  var o = new core.List<api.AppRestrictionsSchemaRestriction>();
  o.add(buildAppRestrictionsSchemaRestriction());
  o.add(buildAppRestrictionsSchemaRestriction());
  return o;
}

checkUnnamed3142(core.List<api.AppRestrictionsSchemaRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppRestrictionsSchemaRestriction(o[0]);
  checkAppRestrictionsSchemaRestriction(o[1]);
}

core.int buildCounterAppRestrictionsSchema = 0;
buildAppRestrictionsSchema() {
  var o = new api.AppRestrictionsSchema();
  buildCounterAppRestrictionsSchema++;
  if (buildCounterAppRestrictionsSchema < 3) {
    o.kind = "foo";
    o.restrictions = buildUnnamed3142();
  }
  buildCounterAppRestrictionsSchema--;
  return o;
}

checkAppRestrictionsSchema(api.AppRestrictionsSchema o) {
  buildCounterAppRestrictionsSchema++;
  if (buildCounterAppRestrictionsSchema < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3142(o.restrictions);
  }
  buildCounterAppRestrictionsSchema--;
}

core.int buildCounterAppRestrictionsSchemaChangeEvent = 0;
buildAppRestrictionsSchemaChangeEvent() {
  var o = new api.AppRestrictionsSchemaChangeEvent();
  buildCounterAppRestrictionsSchemaChangeEvent++;
  if (buildCounterAppRestrictionsSchemaChangeEvent < 3) {
    o.productId = "foo";
  }
  buildCounterAppRestrictionsSchemaChangeEvent--;
  return o;
}

checkAppRestrictionsSchemaChangeEvent(api.AppRestrictionsSchemaChangeEvent o) {
  buildCounterAppRestrictionsSchemaChangeEvent++;
  if (buildCounterAppRestrictionsSchemaChangeEvent < 3) {
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterAppRestrictionsSchemaChangeEvent--;
}

buildUnnamed3143() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3143(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3144() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3144(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3145() {
  var o = new core.List<api.AppRestrictionsSchemaRestriction>();
  o.add(buildAppRestrictionsSchemaRestriction());
  o.add(buildAppRestrictionsSchemaRestriction());
  return o;
}

checkUnnamed3145(core.List<api.AppRestrictionsSchemaRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppRestrictionsSchemaRestriction(o[0]);
  checkAppRestrictionsSchemaRestriction(o[1]);
}

core.int buildCounterAppRestrictionsSchemaRestriction = 0;
buildAppRestrictionsSchemaRestriction() {
  var o = new api.AppRestrictionsSchemaRestriction();
  buildCounterAppRestrictionsSchemaRestriction++;
  if (buildCounterAppRestrictionsSchemaRestriction < 3) {
    o.defaultValue = buildAppRestrictionsSchemaRestrictionRestrictionValue();
    o.description = "foo";
    o.entry = buildUnnamed3143();
    o.entryValue = buildUnnamed3144();
    o.key = "foo";
    o.nestedRestriction = buildUnnamed3145();
    o.restrictionType = "foo";
    o.title = "foo";
  }
  buildCounterAppRestrictionsSchemaRestriction--;
  return o;
}

checkAppRestrictionsSchemaRestriction(api.AppRestrictionsSchemaRestriction o) {
  buildCounterAppRestrictionsSchemaRestriction++;
  if (buildCounterAppRestrictionsSchemaRestriction < 3) {
    checkAppRestrictionsSchemaRestrictionRestrictionValue(o.defaultValue);
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed3143(o.entry);
    checkUnnamed3144(o.entryValue);
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed3145(o.nestedRestriction);
    unittest.expect(o.restrictionType, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterAppRestrictionsSchemaRestriction--;
}

buildUnnamed3146() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3146(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAppRestrictionsSchemaRestrictionRestrictionValue = 0;
buildAppRestrictionsSchemaRestrictionRestrictionValue() {
  var o = new api.AppRestrictionsSchemaRestrictionRestrictionValue();
  buildCounterAppRestrictionsSchemaRestrictionRestrictionValue++;
  if (buildCounterAppRestrictionsSchemaRestrictionRestrictionValue < 3) {
    o.type = "foo";
    o.valueBool = true;
    o.valueInteger = 42;
    o.valueMultiselect = buildUnnamed3146();
    o.valueString = "foo";
  }
  buildCounterAppRestrictionsSchemaRestrictionRestrictionValue--;
  return o;
}

checkAppRestrictionsSchemaRestrictionRestrictionValue(
    api.AppRestrictionsSchemaRestrictionRestrictionValue o) {
  buildCounterAppRestrictionsSchemaRestrictionRestrictionValue++;
  if (buildCounterAppRestrictionsSchemaRestrictionRestrictionValue < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.valueBool, unittest.isTrue);
    unittest.expect(o.valueInteger, unittest.equals(42));
    checkUnnamed3146(o.valueMultiselect);
    unittest.expect(o.valueString, unittest.equals('foo'));
  }
  buildCounterAppRestrictionsSchemaRestrictionRestrictionValue--;
}

buildUnnamed3147() {
  var o = new core.List<api.KeyedAppState>();
  o.add(buildKeyedAppState());
  o.add(buildKeyedAppState());
  return o;
}

checkUnnamed3147(core.List<api.KeyedAppState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyedAppState(o[0]);
  checkKeyedAppState(o[1]);
}

core.int buildCounterAppState = 0;
buildAppState() {
  var o = new api.AppState();
  buildCounterAppState++;
  if (buildCounterAppState < 3) {
    o.keyedAppState = buildUnnamed3147();
    o.packageName = "foo";
  }
  buildCounterAppState--;
  return o;
}

checkAppState(api.AppState o) {
  buildCounterAppState++;
  if (buildCounterAppState < 3) {
    checkUnnamed3147(o.keyedAppState);
    unittest.expect(o.packageName, unittest.equals('foo'));
  }
  buildCounterAppState--;
}

core.int buildCounterAppUpdateEvent = 0;
buildAppUpdateEvent() {
  var o = new api.AppUpdateEvent();
  buildCounterAppUpdateEvent++;
  if (buildCounterAppUpdateEvent < 3) {
    o.productId = "foo";
  }
  buildCounterAppUpdateEvent--;
  return o;
}

checkAppUpdateEvent(api.AppUpdateEvent o) {
  buildCounterAppUpdateEvent++;
  if (buildCounterAppUpdateEvent < 3) {
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterAppUpdateEvent--;
}

buildUnnamed3148() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3148(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAppVersion = 0;
buildAppVersion() {
  var o = new api.AppVersion();
  buildCounterAppVersion++;
  if (buildCounterAppVersion < 3) {
    o.isProduction = true;
    o.track = "foo";
    o.trackId = buildUnnamed3148();
    o.versionCode = 42;
    o.versionString = "foo";
  }
  buildCounterAppVersion--;
  return o;
}

checkAppVersion(api.AppVersion o) {
  buildCounterAppVersion++;
  if (buildCounterAppVersion < 3) {
    unittest.expect(o.isProduction, unittest.isTrue);
    unittest.expect(o.track, unittest.equals('foo'));
    checkUnnamed3148(o.trackId);
    unittest.expect(o.versionCode, unittest.equals(42));
    unittest.expect(o.versionString, unittest.equals('foo'));
  }
  buildCounterAppVersion--;
}

core.int buildCounterApprovalUrlInfo = 0;
buildApprovalUrlInfo() {
  var o = new api.ApprovalUrlInfo();
  buildCounterApprovalUrlInfo++;
  if (buildCounterApprovalUrlInfo < 3) {
    o.approvalUrl = "foo";
    o.kind = "foo";
  }
  buildCounterApprovalUrlInfo--;
  return o;
}

checkApprovalUrlInfo(api.ApprovalUrlInfo o) {
  buildCounterApprovalUrlInfo++;
  if (buildCounterApprovalUrlInfo < 3) {
    unittest.expect(o.approvalUrl, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterApprovalUrlInfo--;
}

core.int buildCounterAuthenticationToken = 0;
buildAuthenticationToken() {
  var o = new api.AuthenticationToken();
  buildCounterAuthenticationToken++;
  if (buildCounterAuthenticationToken < 3) {
    o.kind = "foo";
    o.token = "foo";
  }
  buildCounterAuthenticationToken--;
  return o;
}

checkAuthenticationToken(api.AuthenticationToken o) {
  buildCounterAuthenticationToken++;
  if (buildCounterAuthenticationToken < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterAuthenticationToken--;
}

core.int buildCounterAutoInstallConstraint = 0;
buildAutoInstallConstraint() {
  var o = new api.AutoInstallConstraint();
  buildCounterAutoInstallConstraint++;
  if (buildCounterAutoInstallConstraint < 3) {
    o.chargingStateConstraint = "foo";
    o.deviceIdleStateConstraint = "foo";
    o.networkTypeConstraint = "foo";
  }
  buildCounterAutoInstallConstraint--;
  return o;
}

checkAutoInstallConstraint(api.AutoInstallConstraint o) {
  buildCounterAutoInstallConstraint++;
  if (buildCounterAutoInstallConstraint < 3) {
    unittest.expect(o.chargingStateConstraint, unittest.equals('foo'));
    unittest.expect(o.deviceIdleStateConstraint, unittest.equals('foo'));
    unittest.expect(o.networkTypeConstraint, unittest.equals('foo'));
  }
  buildCounterAutoInstallConstraint--;
}

buildUnnamed3149() {
  var o = new core.List<api.AutoInstallConstraint>();
  o.add(buildAutoInstallConstraint());
  o.add(buildAutoInstallConstraint());
  return o;
}

checkUnnamed3149(core.List<api.AutoInstallConstraint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoInstallConstraint(o[0]);
  checkAutoInstallConstraint(o[1]);
}

core.int buildCounterAutoInstallPolicy = 0;
buildAutoInstallPolicy() {
  var o = new api.AutoInstallPolicy();
  buildCounterAutoInstallPolicy++;
  if (buildCounterAutoInstallPolicy < 3) {
    o.autoInstallConstraint = buildUnnamed3149();
    o.autoInstallMode = "foo";
    o.autoInstallPriority = 42;
    o.minimumVersionCode = 42;
  }
  buildCounterAutoInstallPolicy--;
  return o;
}

checkAutoInstallPolicy(api.AutoInstallPolicy o) {
  buildCounterAutoInstallPolicy++;
  if (buildCounterAutoInstallPolicy < 3) {
    checkUnnamed3149(o.autoInstallConstraint);
    unittest.expect(o.autoInstallMode, unittest.equals('foo'));
    unittest.expect(o.autoInstallPriority, unittest.equals(42));
    unittest.expect(o.minimumVersionCode, unittest.equals(42));
  }
  buildCounterAutoInstallPolicy--;
}

buildUnnamed3150() {
  var o = new core.List<api.VariableSet>();
  o.add(buildVariableSet());
  o.add(buildVariableSet());
  return o;
}

checkUnnamed3150(core.List<api.VariableSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariableSet(o[0]);
  checkVariableSet(o[1]);
}

core.int buildCounterConfigurationVariables = 0;
buildConfigurationVariables() {
  var o = new api.ConfigurationVariables();
  buildCounterConfigurationVariables++;
  if (buildCounterConfigurationVariables < 3) {
    o.kind = "foo";
    o.mcmId = "foo";
    o.variableSet = buildUnnamed3150();
  }
  buildCounterConfigurationVariables--;
  return o;
}

checkConfigurationVariables(api.ConfigurationVariables o) {
  buildCounterConfigurationVariables++;
  if (buildCounterConfigurationVariables < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.mcmId, unittest.equals('foo'));
    checkUnnamed3150(o.variableSet);
  }
  buildCounterConfigurationVariables--;
}

core.int buildCounterDevice = 0;
buildDevice() {
  var o = new api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.androidId = "foo";
    o.kind = "foo";
    o.managementType = "foo";
    o.policy = buildPolicy();
    o.report = buildDeviceReport();
  }
  buildCounterDevice--;
  return o;
}

checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    unittest.expect(o.androidId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.managementType, unittest.equals('foo'));
    checkPolicy(o.policy);
    checkDeviceReport(o.report);
  }
  buildCounterDevice--;
}

buildUnnamed3151() {
  var o = new core.List<api.AppState>();
  o.add(buildAppState());
  o.add(buildAppState());
  return o;
}

checkUnnamed3151(core.List<api.AppState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppState(o[0]);
  checkAppState(o[1]);
}

core.int buildCounterDeviceReport = 0;
buildDeviceReport() {
  var o = new api.DeviceReport();
  buildCounterDeviceReport++;
  if (buildCounterDeviceReport < 3) {
    o.appState = buildUnnamed3151();
    o.lastUpdatedTimestampMillis = "foo";
  }
  buildCounterDeviceReport--;
  return o;
}

checkDeviceReport(api.DeviceReport o) {
  buildCounterDeviceReport++;
  if (buildCounterDeviceReport < 3) {
    checkUnnamed3151(o.appState);
    unittest.expect(o.lastUpdatedTimestampMillis, unittest.equals('foo'));
  }
  buildCounterDeviceReport--;
}

core.int buildCounterDeviceReportUpdateEvent = 0;
buildDeviceReportUpdateEvent() {
  var o = new api.DeviceReportUpdateEvent();
  buildCounterDeviceReportUpdateEvent++;
  if (buildCounterDeviceReportUpdateEvent < 3) {
    o.deviceId = "foo";
    o.report = buildDeviceReport();
    o.userId = "foo";
  }
  buildCounterDeviceReportUpdateEvent--;
  return o;
}

checkDeviceReportUpdateEvent(api.DeviceReportUpdateEvent o) {
  buildCounterDeviceReportUpdateEvent++;
  if (buildCounterDeviceReportUpdateEvent < 3) {
    unittest.expect(o.deviceId, unittest.equals('foo'));
    checkDeviceReport(o.report);
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterDeviceReportUpdateEvent--;
}

core.int buildCounterDeviceState = 0;
buildDeviceState() {
  var o = new api.DeviceState();
  buildCounterDeviceState++;
  if (buildCounterDeviceState < 3) {
    o.accountState = "foo";
    o.kind = "foo";
  }
  buildCounterDeviceState--;
  return o;
}

checkDeviceState(api.DeviceState o) {
  buildCounterDeviceState++;
  if (buildCounterDeviceState < 3) {
    unittest.expect(o.accountState, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDeviceState--;
}

buildUnnamed3152() {
  var o = new core.List<api.Device>();
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

checkUnnamed3152(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterDevicesListResponse = 0;
buildDevicesListResponse() {
  var o = new api.DevicesListResponse();
  buildCounterDevicesListResponse++;
  if (buildCounterDevicesListResponse < 3) {
    o.device = buildUnnamed3152();
    o.kind = "foo";
  }
  buildCounterDevicesListResponse--;
  return o;
}

checkDevicesListResponse(api.DevicesListResponse o) {
  buildCounterDevicesListResponse++;
  if (buildCounterDevicesListResponse < 3) {
    checkUnnamed3152(o.device);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDevicesListResponse--;
}

buildUnnamed3153() {
  var o = new core.List<api.Administrator>();
  o.add(buildAdministrator());
  o.add(buildAdministrator());
  return o;
}

checkUnnamed3153(core.List<api.Administrator> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdministrator(o[0]);
  checkAdministrator(o[1]);
}

core.int buildCounterEnterprise = 0;
buildEnterprise() {
  var o = new api.Enterprise();
  buildCounterEnterprise++;
  if (buildCounterEnterprise < 3) {
    o.administrator = buildUnnamed3153();
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.primaryDomain = "foo";
  }
  buildCounterEnterprise--;
  return o;
}

checkEnterprise(api.Enterprise o) {
  buildCounterEnterprise++;
  if (buildCounterEnterprise < 3) {
    checkUnnamed3153(o.administrator);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.primaryDomain, unittest.equals('foo'));
  }
  buildCounterEnterprise--;
}

core.int buildCounterEnterpriseAccount = 0;
buildEnterpriseAccount() {
  var o = new api.EnterpriseAccount();
  buildCounterEnterpriseAccount++;
  if (buildCounterEnterpriseAccount < 3) {
    o.accountEmail = "foo";
    o.kind = "foo";
  }
  buildCounterEnterpriseAccount--;
  return o;
}

checkEnterpriseAccount(api.EnterpriseAccount o) {
  buildCounterEnterpriseAccount++;
  if (buildCounterEnterpriseAccount < 3) {
    unittest.expect(o.accountEmail, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterEnterpriseAccount--;
}

buildUnnamed3154() {
  var o = new core.List<api.Enterprise>();
  o.add(buildEnterprise());
  o.add(buildEnterprise());
  return o;
}

checkUnnamed3154(core.List<api.Enterprise> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterprise(o[0]);
  checkEnterprise(o[1]);
}

core.int buildCounterEnterprisesListResponse = 0;
buildEnterprisesListResponse() {
  var o = new api.EnterprisesListResponse();
  buildCounterEnterprisesListResponse++;
  if (buildCounterEnterprisesListResponse < 3) {
    o.enterprise = buildUnnamed3154();
    o.kind = "foo";
  }
  buildCounterEnterprisesListResponse--;
  return o;
}

checkEnterprisesListResponse(api.EnterprisesListResponse o) {
  buildCounterEnterprisesListResponse++;
  if (buildCounterEnterprisesListResponse < 3) {
    checkUnnamed3154(o.enterprise);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterEnterprisesListResponse--;
}

core.int buildCounterEnterprisesSendTestPushNotificationResponse = 0;
buildEnterprisesSendTestPushNotificationResponse() {
  var o = new api.EnterprisesSendTestPushNotificationResponse();
  buildCounterEnterprisesSendTestPushNotificationResponse++;
  if (buildCounterEnterprisesSendTestPushNotificationResponse < 3) {
    o.messageId = "foo";
    o.topicName = "foo";
  }
  buildCounterEnterprisesSendTestPushNotificationResponse--;
  return o;
}

checkEnterprisesSendTestPushNotificationResponse(
    api.EnterprisesSendTestPushNotificationResponse o) {
  buildCounterEnterprisesSendTestPushNotificationResponse++;
  if (buildCounterEnterprisesSendTestPushNotificationResponse < 3) {
    unittest.expect(o.messageId, unittest.equals('foo'));
    unittest.expect(o.topicName, unittest.equals('foo'));
  }
  buildCounterEnterprisesSendTestPushNotificationResponse--;
}

core.int buildCounterEntitlement = 0;
buildEntitlement() {
  var o = new api.Entitlement();
  buildCounterEntitlement++;
  if (buildCounterEntitlement < 3) {
    o.kind = "foo";
    o.productId = "foo";
    o.reason = "foo";
  }
  buildCounterEntitlement--;
  return o;
}

checkEntitlement(api.Entitlement o) {
  buildCounterEntitlement++;
  if (buildCounterEntitlement < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterEntitlement--;
}

buildUnnamed3155() {
  var o = new core.List<api.Entitlement>();
  o.add(buildEntitlement());
  o.add(buildEntitlement());
  return o;
}

checkUnnamed3155(core.List<api.Entitlement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntitlement(o[0]);
  checkEntitlement(o[1]);
}

core.int buildCounterEntitlementsListResponse = 0;
buildEntitlementsListResponse() {
  var o = new api.EntitlementsListResponse();
  buildCounterEntitlementsListResponse++;
  if (buildCounterEntitlementsListResponse < 3) {
    o.entitlement = buildUnnamed3155();
    o.kind = "foo";
  }
  buildCounterEntitlementsListResponse--;
  return o;
}

checkEntitlementsListResponse(api.EntitlementsListResponse o) {
  buildCounterEntitlementsListResponse++;
  if (buildCounterEntitlementsListResponse < 3) {
    checkUnnamed3155(o.entitlement);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterEntitlementsListResponse--;
}

core.int buildCounterGroupLicense = 0;
buildGroupLicense() {
  var o = new api.GroupLicense();
  buildCounterGroupLicense++;
  if (buildCounterGroupLicense < 3) {
    o.acquisitionKind = "foo";
    o.approval = "foo";
    o.kind = "foo";
    o.numProvisioned = 42;
    o.numPurchased = 42;
    o.permissions = "foo";
    o.productId = "foo";
  }
  buildCounterGroupLicense--;
  return o;
}

checkGroupLicense(api.GroupLicense o) {
  buildCounterGroupLicense++;
  if (buildCounterGroupLicense < 3) {
    unittest.expect(o.acquisitionKind, unittest.equals('foo'));
    unittest.expect(o.approval, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.numProvisioned, unittest.equals(42));
    unittest.expect(o.numPurchased, unittest.equals(42));
    unittest.expect(o.permissions, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterGroupLicense--;
}

buildUnnamed3156() {
  var o = new core.List<api.User>();
  o.add(buildUser());
  o.add(buildUser());
  return o;
}

checkUnnamed3156(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterGroupLicenseUsersListResponse = 0;
buildGroupLicenseUsersListResponse() {
  var o = new api.GroupLicenseUsersListResponse();
  buildCounterGroupLicenseUsersListResponse++;
  if (buildCounterGroupLicenseUsersListResponse < 3) {
    o.kind = "foo";
    o.user = buildUnnamed3156();
  }
  buildCounterGroupLicenseUsersListResponse--;
  return o;
}

checkGroupLicenseUsersListResponse(api.GroupLicenseUsersListResponse o) {
  buildCounterGroupLicenseUsersListResponse++;
  if (buildCounterGroupLicenseUsersListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3156(o.user);
  }
  buildCounterGroupLicenseUsersListResponse--;
}

buildUnnamed3157() {
  var o = new core.List<api.GroupLicense>();
  o.add(buildGroupLicense());
  o.add(buildGroupLicense());
  return o;
}

checkUnnamed3157(core.List<api.GroupLicense> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupLicense(o[0]);
  checkGroupLicense(o[1]);
}

core.int buildCounterGroupLicensesListResponse = 0;
buildGroupLicensesListResponse() {
  var o = new api.GroupLicensesListResponse();
  buildCounterGroupLicensesListResponse++;
  if (buildCounterGroupLicensesListResponse < 3) {
    o.groupLicense = buildUnnamed3157();
    o.kind = "foo";
  }
  buildCounterGroupLicensesListResponse--;
  return o;
}

checkGroupLicensesListResponse(api.GroupLicensesListResponse o) {
  buildCounterGroupLicensesListResponse++;
  if (buildCounterGroupLicensesListResponse < 3) {
    checkUnnamed3157(o.groupLicense);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterGroupLicensesListResponse--;
}

core.int buildCounterInstall = 0;
buildInstall() {
  var o = new api.Install();
  buildCounterInstall++;
  if (buildCounterInstall < 3) {
    o.installState = "foo";
    o.kind = "foo";
    o.productId = "foo";
    o.versionCode = 42;
  }
  buildCounterInstall--;
  return o;
}

checkInstall(api.Install o) {
  buildCounterInstall++;
  if (buildCounterInstall < 3) {
    unittest.expect(o.installState, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.versionCode, unittest.equals(42));
  }
  buildCounterInstall--;
}

core.int buildCounterInstallFailureEvent = 0;
buildInstallFailureEvent() {
  var o = new api.InstallFailureEvent();
  buildCounterInstallFailureEvent++;
  if (buildCounterInstallFailureEvent < 3) {
    o.deviceId = "foo";
    o.failureDetails = "foo";
    o.failureReason = "foo";
    o.productId = "foo";
    o.userId = "foo";
  }
  buildCounterInstallFailureEvent--;
  return o;
}

checkInstallFailureEvent(api.InstallFailureEvent o) {
  buildCounterInstallFailureEvent++;
  if (buildCounterInstallFailureEvent < 3) {
    unittest.expect(o.deviceId, unittest.equals('foo'));
    unittest.expect(o.failureDetails, unittest.equals('foo'));
    unittest.expect(o.failureReason, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterInstallFailureEvent--;
}

buildUnnamed3158() {
  var o = new core.List<api.Install>();
  o.add(buildInstall());
  o.add(buildInstall());
  return o;
}

checkUnnamed3158(core.List<api.Install> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstall(o[0]);
  checkInstall(o[1]);
}

core.int buildCounterInstallsListResponse = 0;
buildInstallsListResponse() {
  var o = new api.InstallsListResponse();
  buildCounterInstallsListResponse++;
  if (buildCounterInstallsListResponse < 3) {
    o.install = buildUnnamed3158();
    o.kind = "foo";
  }
  buildCounterInstallsListResponse--;
  return o;
}

checkInstallsListResponse(api.InstallsListResponse o) {
  buildCounterInstallsListResponse++;
  if (buildCounterInstallsListResponse < 3) {
    checkUnnamed3158(o.install);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterInstallsListResponse--;
}

core.int buildCounterKeyedAppState = 0;
buildKeyedAppState() {
  var o = new api.KeyedAppState();
  buildCounterKeyedAppState++;
  if (buildCounterKeyedAppState < 3) {
    o.data = "foo";
    o.key = "foo";
    o.message = "foo";
    o.severity = "foo";
    o.stateTimestampMillis = "foo";
  }
  buildCounterKeyedAppState--;
  return o;
}

checkKeyedAppState(api.KeyedAppState o) {
  buildCounterKeyedAppState++;
  if (buildCounterKeyedAppState < 3) {
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.stateTimestampMillis, unittest.equals('foo'));
  }
  buildCounterKeyedAppState--;
}

core.int buildCounterLocalizedText = 0;
buildLocalizedText() {
  var o = new api.LocalizedText();
  buildCounterLocalizedText++;
  if (buildCounterLocalizedText < 3) {
    o.locale = "foo";
    o.text = "foo";
  }
  buildCounterLocalizedText--;
  return o;
}

checkLocalizedText(api.LocalizedText o) {
  buildCounterLocalizedText++;
  if (buildCounterLocalizedText < 3) {
    unittest.expect(o.locale, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterLocalizedText--;
}

core.int buildCounterMaintenanceWindow = 0;
buildMaintenanceWindow() {
  var o = new api.MaintenanceWindow();
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    o.durationMs = "foo";
    o.startTimeAfterMidnightMs = "foo";
  }
  buildCounterMaintenanceWindow--;
  return o;
}

checkMaintenanceWindow(api.MaintenanceWindow o) {
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    unittest.expect(o.durationMs, unittest.equals('foo'));
    unittest.expect(o.startTimeAfterMidnightMs, unittest.equals('foo'));
  }
  buildCounterMaintenanceWindow--;
}

buildUnnamed3159() {
  var o = new core.List<api.ManagedProperty>();
  o.add(buildManagedProperty());
  o.add(buildManagedProperty());
  return o;
}

checkUnnamed3159(core.List<api.ManagedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedProperty(o[0]);
  checkManagedProperty(o[1]);
}

core.int buildCounterManagedConfiguration = 0;
buildManagedConfiguration() {
  var o = new api.ManagedConfiguration();
  buildCounterManagedConfiguration++;
  if (buildCounterManagedConfiguration < 3) {
    o.configurationVariables = buildConfigurationVariables();
    o.kind = "foo";
    o.managedProperty = buildUnnamed3159();
    o.productId = "foo";
  }
  buildCounterManagedConfiguration--;
  return o;
}

checkManagedConfiguration(api.ManagedConfiguration o) {
  buildCounterManagedConfiguration++;
  if (buildCounterManagedConfiguration < 3) {
    checkConfigurationVariables(o.configurationVariables);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3159(o.managedProperty);
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterManagedConfiguration--;
}

buildUnnamed3160() {
  var o = new core.List<api.ManagedConfiguration>();
  o.add(buildManagedConfiguration());
  o.add(buildManagedConfiguration());
  return o;
}

checkUnnamed3160(core.List<api.ManagedConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedConfiguration(o[0]);
  checkManagedConfiguration(o[1]);
}

core.int buildCounterManagedConfigurationsForDeviceListResponse = 0;
buildManagedConfigurationsForDeviceListResponse() {
  var o = new api.ManagedConfigurationsForDeviceListResponse();
  buildCounterManagedConfigurationsForDeviceListResponse++;
  if (buildCounterManagedConfigurationsForDeviceListResponse < 3) {
    o.kind = "foo";
    o.managedConfigurationForDevice = buildUnnamed3160();
  }
  buildCounterManagedConfigurationsForDeviceListResponse--;
  return o;
}

checkManagedConfigurationsForDeviceListResponse(
    api.ManagedConfigurationsForDeviceListResponse o) {
  buildCounterManagedConfigurationsForDeviceListResponse++;
  if (buildCounterManagedConfigurationsForDeviceListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3160(o.managedConfigurationForDevice);
  }
  buildCounterManagedConfigurationsForDeviceListResponse--;
}

buildUnnamed3161() {
  var o = new core.List<api.ManagedConfiguration>();
  o.add(buildManagedConfiguration());
  o.add(buildManagedConfiguration());
  return o;
}

checkUnnamed3161(core.List<api.ManagedConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedConfiguration(o[0]);
  checkManagedConfiguration(o[1]);
}

core.int buildCounterManagedConfigurationsForUserListResponse = 0;
buildManagedConfigurationsForUserListResponse() {
  var o = new api.ManagedConfigurationsForUserListResponse();
  buildCounterManagedConfigurationsForUserListResponse++;
  if (buildCounterManagedConfigurationsForUserListResponse < 3) {
    o.kind = "foo";
    o.managedConfigurationForUser = buildUnnamed3161();
  }
  buildCounterManagedConfigurationsForUserListResponse--;
  return o;
}

checkManagedConfigurationsForUserListResponse(
    api.ManagedConfigurationsForUserListResponse o) {
  buildCounterManagedConfigurationsForUserListResponse++;
  if (buildCounterManagedConfigurationsForUserListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3161(o.managedConfigurationForUser);
  }
  buildCounterManagedConfigurationsForUserListResponse--;
}

core.int buildCounterManagedConfigurationsSettings = 0;
buildManagedConfigurationsSettings() {
  var o = new api.ManagedConfigurationsSettings();
  buildCounterManagedConfigurationsSettings++;
  if (buildCounterManagedConfigurationsSettings < 3) {
    o.kind = "foo";
    o.lastUpdatedTimestampMillis = "foo";
    o.mcmId = "foo";
    o.name = "foo";
  }
  buildCounterManagedConfigurationsSettings--;
  return o;
}

checkManagedConfigurationsSettings(api.ManagedConfigurationsSettings o) {
  buildCounterManagedConfigurationsSettings++;
  if (buildCounterManagedConfigurationsSettings < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastUpdatedTimestampMillis, unittest.equals('foo'));
    unittest.expect(o.mcmId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterManagedConfigurationsSettings--;
}

buildUnnamed3162() {
  var o = new core.List<api.ManagedConfigurationsSettings>();
  o.add(buildManagedConfigurationsSettings());
  o.add(buildManagedConfigurationsSettings());
  return o;
}

checkUnnamed3162(core.List<api.ManagedConfigurationsSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedConfigurationsSettings(o[0]);
  checkManagedConfigurationsSettings(o[1]);
}

core.int buildCounterManagedConfigurationsSettingsListResponse = 0;
buildManagedConfigurationsSettingsListResponse() {
  var o = new api.ManagedConfigurationsSettingsListResponse();
  buildCounterManagedConfigurationsSettingsListResponse++;
  if (buildCounterManagedConfigurationsSettingsListResponse < 3) {
    o.kind = "foo";
    o.managedConfigurationsSettings = buildUnnamed3162();
  }
  buildCounterManagedConfigurationsSettingsListResponse--;
  return o;
}

checkManagedConfigurationsSettingsListResponse(
    api.ManagedConfigurationsSettingsListResponse o) {
  buildCounterManagedConfigurationsSettingsListResponse++;
  if (buildCounterManagedConfigurationsSettingsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3162(o.managedConfigurationsSettings);
  }
  buildCounterManagedConfigurationsSettingsListResponse--;
}

buildUnnamed3163() {
  var o = new core.List<api.ManagedPropertyBundle>();
  o.add(buildManagedPropertyBundle());
  o.add(buildManagedPropertyBundle());
  return o;
}

checkUnnamed3163(core.List<api.ManagedPropertyBundle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedPropertyBundle(o[0]);
  checkManagedPropertyBundle(o[1]);
}

buildUnnamed3164() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3164(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterManagedProperty = 0;
buildManagedProperty() {
  var o = new api.ManagedProperty();
  buildCounterManagedProperty++;
  if (buildCounterManagedProperty < 3) {
    o.key = "foo";
    o.valueBool = true;
    o.valueBundle = buildManagedPropertyBundle();
    o.valueBundleArray = buildUnnamed3163();
    o.valueInteger = 42;
    o.valueString = "foo";
    o.valueStringArray = buildUnnamed3164();
  }
  buildCounterManagedProperty--;
  return o;
}

checkManagedProperty(api.ManagedProperty o) {
  buildCounterManagedProperty++;
  if (buildCounterManagedProperty < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.valueBool, unittest.isTrue);
    checkManagedPropertyBundle(o.valueBundle);
    checkUnnamed3163(o.valueBundleArray);
    unittest.expect(o.valueInteger, unittest.equals(42));
    unittest.expect(o.valueString, unittest.equals('foo'));
    checkUnnamed3164(o.valueStringArray);
  }
  buildCounterManagedProperty--;
}

buildUnnamed3165() {
  var o = new core.List<api.ManagedProperty>();
  o.add(buildManagedProperty());
  o.add(buildManagedProperty());
  return o;
}

checkUnnamed3165(core.List<api.ManagedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedProperty(o[0]);
  checkManagedProperty(o[1]);
}

core.int buildCounterManagedPropertyBundle = 0;
buildManagedPropertyBundle() {
  var o = new api.ManagedPropertyBundle();
  buildCounterManagedPropertyBundle++;
  if (buildCounterManagedPropertyBundle < 3) {
    o.managedProperty = buildUnnamed3165();
  }
  buildCounterManagedPropertyBundle--;
  return o;
}

checkManagedPropertyBundle(api.ManagedPropertyBundle o) {
  buildCounterManagedPropertyBundle++;
  if (buildCounterManagedPropertyBundle < 3) {
    checkUnnamed3165(o.managedProperty);
  }
  buildCounterManagedPropertyBundle--;
}

core.int buildCounterNewDeviceEvent = 0;
buildNewDeviceEvent() {
  var o = new api.NewDeviceEvent();
  buildCounterNewDeviceEvent++;
  if (buildCounterNewDeviceEvent < 3) {
    o.deviceId = "foo";
    o.dpcPackageName = "foo";
    o.managementType = "foo";
    o.userId = "foo";
  }
  buildCounterNewDeviceEvent--;
  return o;
}

checkNewDeviceEvent(api.NewDeviceEvent o) {
  buildCounterNewDeviceEvent++;
  if (buildCounterNewDeviceEvent < 3) {
    unittest.expect(o.deviceId, unittest.equals('foo'));
    unittest.expect(o.dpcPackageName, unittest.equals('foo'));
    unittest.expect(o.managementType, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterNewDeviceEvent--;
}

buildUnnamed3166() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3166(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3167() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3167(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNewPermissionsEvent = 0;
buildNewPermissionsEvent() {
  var o = new api.NewPermissionsEvent();
  buildCounterNewPermissionsEvent++;
  if (buildCounterNewPermissionsEvent < 3) {
    o.approvedPermissions = buildUnnamed3166();
    o.productId = "foo";
    o.requestedPermissions = buildUnnamed3167();
  }
  buildCounterNewPermissionsEvent--;
  return o;
}

checkNewPermissionsEvent(api.NewPermissionsEvent o) {
  buildCounterNewPermissionsEvent++;
  if (buildCounterNewPermissionsEvent < 3) {
    checkUnnamed3166(o.approvedPermissions);
    unittest.expect(o.productId, unittest.equals('foo'));
    checkUnnamed3167(o.requestedPermissions);
  }
  buildCounterNewPermissionsEvent--;
}

core.int buildCounterNotification = 0;
buildNotification() {
  var o = new api.Notification();
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    o.appRestrictionsSchemaChangeEvent =
        buildAppRestrictionsSchemaChangeEvent();
    o.appUpdateEvent = buildAppUpdateEvent();
    o.deviceReportUpdateEvent = buildDeviceReportUpdateEvent();
    o.enterpriseId = "foo";
    o.installFailureEvent = buildInstallFailureEvent();
    o.newDeviceEvent = buildNewDeviceEvent();
    o.newPermissionsEvent = buildNewPermissionsEvent();
    o.notificationType = "foo";
    o.productApprovalEvent = buildProductApprovalEvent();
    o.productAvailabilityChangeEvent = buildProductAvailabilityChangeEvent();
    o.timestampMillis = "foo";
  }
  buildCounterNotification--;
  return o;
}

checkNotification(api.Notification o) {
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    checkAppRestrictionsSchemaChangeEvent(o.appRestrictionsSchemaChangeEvent);
    checkAppUpdateEvent(o.appUpdateEvent);
    checkDeviceReportUpdateEvent(o.deviceReportUpdateEvent);
    unittest.expect(o.enterpriseId, unittest.equals('foo'));
    checkInstallFailureEvent(o.installFailureEvent);
    checkNewDeviceEvent(o.newDeviceEvent);
    checkNewPermissionsEvent(o.newPermissionsEvent);
    unittest.expect(o.notificationType, unittest.equals('foo'));
    checkProductApprovalEvent(o.productApprovalEvent);
    checkProductAvailabilityChangeEvent(o.productAvailabilityChangeEvent);
    unittest.expect(o.timestampMillis, unittest.equals('foo'));
  }
  buildCounterNotification--;
}

buildUnnamed3168() {
  var o = new core.List<api.Notification>();
  o.add(buildNotification());
  o.add(buildNotification());
  return o;
}

checkUnnamed3168(core.List<api.Notification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotification(o[0]);
  checkNotification(o[1]);
}

core.int buildCounterNotificationSet = 0;
buildNotificationSet() {
  var o = new api.NotificationSet();
  buildCounterNotificationSet++;
  if (buildCounterNotificationSet < 3) {
    o.kind = "foo";
    o.notification = buildUnnamed3168();
    o.notificationSetId = "foo";
  }
  buildCounterNotificationSet--;
  return o;
}

checkNotificationSet(api.NotificationSet o) {
  buildCounterNotificationSet++;
  if (buildCounterNotificationSet < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3168(o.notification);
    unittest.expect(o.notificationSetId, unittest.equals('foo'));
  }
  buildCounterNotificationSet--;
}

core.int buildCounterPageInfo = 0;
buildPageInfo() {
  var o = new api.PageInfo();
  buildCounterPageInfo++;
  if (buildCounterPageInfo < 3) {
    o.resultPerPage = 42;
    o.startIndex = 42;
    o.totalResults = 42;
  }
  buildCounterPageInfo--;
  return o;
}

checkPageInfo(api.PageInfo o) {
  buildCounterPageInfo++;
  if (buildCounterPageInfo < 3) {
    unittest.expect(o.resultPerPage, unittest.equals(42));
    unittest.expect(o.startIndex, unittest.equals(42));
    unittest.expect(o.totalResults, unittest.equals(42));
  }
  buildCounterPageInfo--;
}

core.int buildCounterPermission = 0;
buildPermission() {
  var o = new api.Permission();
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    o.description = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.permissionId = "foo";
  }
  buildCounterPermission--;
  return o;
}

checkPermission(api.Permission o) {
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.permissionId, unittest.equals('foo'));
  }
  buildCounterPermission--;
}

buildUnnamed3169() {
  var o = new core.List<api.ProductPolicy>();
  o.add(buildProductPolicy());
  o.add(buildProductPolicy());
  return o;
}

checkUnnamed3169(core.List<api.ProductPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductPolicy(o[0]);
  checkProductPolicy(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.autoUpdatePolicy = "foo";
    o.deviceReportPolicy = "foo";
    o.maintenanceWindow = buildMaintenanceWindow();
    o.productAvailabilityPolicy = "foo";
    o.productPolicy = buildUnnamed3169();
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    unittest.expect(o.autoUpdatePolicy, unittest.equals('foo'));
    unittest.expect(o.deviceReportPolicy, unittest.equals('foo'));
    checkMaintenanceWindow(o.maintenanceWindow);
    unittest.expect(o.productAvailabilityPolicy, unittest.equals('foo'));
    checkUnnamed3169(o.productPolicy);
  }
  buildCounterPolicy--;
}

buildUnnamed3170() {
  var o = new core.List<api.TrackInfo>();
  o.add(buildTrackInfo());
  o.add(buildTrackInfo());
  return o;
}

checkUnnamed3170(core.List<api.TrackInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrackInfo(o[0]);
  checkTrackInfo(o[1]);
}

buildUnnamed3171() {
  var o = new core.List<api.AppVersion>();
  o.add(buildAppVersion());
  o.add(buildAppVersion());
  return o;
}

checkUnnamed3171(core.List<api.AppVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppVersion(o[0]);
  checkAppVersion(o[1]);
}

buildUnnamed3172() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3172(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3173() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3173(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3174() {
  var o = new core.List<api.ProductPermission>();
  o.add(buildProductPermission());
  o.add(buildProductPermission());
  return o;
}

checkUnnamed3174(core.List<api.ProductPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductPermission(o[0]);
  checkProductPermission(o[1]);
}

buildUnnamed3175() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3175(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProduct = 0;
buildProduct() {
  var o = new api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.appTracks = buildUnnamed3170();
    o.appVersion = buildUnnamed3171();
    o.authorName = "foo";
    o.availableCountries = buildUnnamed3172();
    o.availableTracks = buildUnnamed3173();
    o.category = "foo";
    o.contentRating = "foo";
    o.description = "foo";
    o.detailsUrl = "foo";
    o.distributionChannel = "foo";
    o.iconUrl = "foo";
    o.kind = "foo";
    o.lastUpdatedTimestampMillis = "foo";
    o.minAndroidSdkVersion = 42;
    o.permissions = buildUnnamed3174();
    o.productId = "foo";
    o.productPricing = "foo";
    o.recentChanges = "foo";
    o.requiresContainerApp = true;
    o.screenshotUrls = buildUnnamed3175();
    o.signingCertificate = buildProductSigningCertificate();
    o.smallIconUrl = "foo";
    o.title = "foo";
    o.workDetailsUrl = "foo";
  }
  buildCounterProduct--;
  return o;
}

checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    checkUnnamed3170(o.appTracks);
    checkUnnamed3171(o.appVersion);
    unittest.expect(o.authorName, unittest.equals('foo'));
    checkUnnamed3172(o.availableCountries);
    checkUnnamed3173(o.availableTracks);
    unittest.expect(o.category, unittest.equals('foo'));
    unittest.expect(o.contentRating, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.detailsUrl, unittest.equals('foo'));
    unittest.expect(o.distributionChannel, unittest.equals('foo'));
    unittest.expect(o.iconUrl, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastUpdatedTimestampMillis, unittest.equals('foo'));
    unittest.expect(o.minAndroidSdkVersion, unittest.equals(42));
    checkUnnamed3174(o.permissions);
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.productPricing, unittest.equals('foo'));
    unittest.expect(o.recentChanges, unittest.equals('foo'));
    unittest.expect(o.requiresContainerApp, unittest.isTrue);
    checkUnnamed3175(o.screenshotUrls);
    checkProductSigningCertificate(o.signingCertificate);
    unittest.expect(o.smallIconUrl, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.workDetailsUrl, unittest.equals('foo'));
  }
  buildCounterProduct--;
}

core.int buildCounterProductApprovalEvent = 0;
buildProductApprovalEvent() {
  var o = new api.ProductApprovalEvent();
  buildCounterProductApprovalEvent++;
  if (buildCounterProductApprovalEvent < 3) {
    o.approved = "foo";
    o.productId = "foo";
  }
  buildCounterProductApprovalEvent--;
  return o;
}

checkProductApprovalEvent(api.ProductApprovalEvent o) {
  buildCounterProductApprovalEvent++;
  if (buildCounterProductApprovalEvent < 3) {
    unittest.expect(o.approved, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterProductApprovalEvent--;
}

core.int buildCounterProductAvailabilityChangeEvent = 0;
buildProductAvailabilityChangeEvent() {
  var o = new api.ProductAvailabilityChangeEvent();
  buildCounterProductAvailabilityChangeEvent++;
  if (buildCounterProductAvailabilityChangeEvent < 3) {
    o.availabilityStatus = "foo";
    o.productId = "foo";
  }
  buildCounterProductAvailabilityChangeEvent--;
  return o;
}

checkProductAvailabilityChangeEvent(api.ProductAvailabilityChangeEvent o) {
  buildCounterProductAvailabilityChangeEvent++;
  if (buildCounterProductAvailabilityChangeEvent < 3) {
    unittest.expect(o.availabilityStatus, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterProductAvailabilityChangeEvent--;
}

core.int buildCounterProductPermission = 0;
buildProductPermission() {
  var o = new api.ProductPermission();
  buildCounterProductPermission++;
  if (buildCounterProductPermission < 3) {
    o.permissionId = "foo";
    o.state = "foo";
  }
  buildCounterProductPermission--;
  return o;
}

checkProductPermission(api.ProductPermission o) {
  buildCounterProductPermission++;
  if (buildCounterProductPermission < 3) {
    unittest.expect(o.permissionId, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterProductPermission--;
}

buildUnnamed3176() {
  var o = new core.List<api.ProductPermission>();
  o.add(buildProductPermission());
  o.add(buildProductPermission());
  return o;
}

checkUnnamed3176(core.List<api.ProductPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductPermission(o[0]);
  checkProductPermission(o[1]);
}

core.int buildCounterProductPermissions = 0;
buildProductPermissions() {
  var o = new api.ProductPermissions();
  buildCounterProductPermissions++;
  if (buildCounterProductPermissions < 3) {
    o.kind = "foo";
    o.permission = buildUnnamed3176();
    o.productId = "foo";
  }
  buildCounterProductPermissions--;
  return o;
}

checkProductPermissions(api.ProductPermissions o) {
  buildCounterProductPermissions++;
  if (buildCounterProductPermissions < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3176(o.permission);
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterProductPermissions--;
}

buildUnnamed3177() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3177(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3178() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3178(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProductPolicy = 0;
buildProductPolicy() {
  var o = new api.ProductPolicy();
  buildCounterProductPolicy++;
  if (buildCounterProductPolicy < 3) {
    o.autoInstallPolicy = buildAutoInstallPolicy();
    o.managedConfiguration = buildManagedConfiguration();
    o.productId = "foo";
    o.trackIds = buildUnnamed3177();
    o.tracks = buildUnnamed3178();
  }
  buildCounterProductPolicy--;
  return o;
}

checkProductPolicy(api.ProductPolicy o) {
  buildCounterProductPolicy++;
  if (buildCounterProductPolicy < 3) {
    checkAutoInstallPolicy(o.autoInstallPolicy);
    checkManagedConfiguration(o.managedConfiguration);
    unittest.expect(o.productId, unittest.equals('foo'));
    checkUnnamed3177(o.trackIds);
    checkUnnamed3178(o.tracks);
  }
  buildCounterProductPolicy--;
}

buildUnnamed3179() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3179(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3180() {
  var o = new core.List<api.ProductVisibility>();
  o.add(buildProductVisibility());
  o.add(buildProductVisibility());
  return o;
}

checkUnnamed3180(core.List<api.ProductVisibility> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductVisibility(o[0]);
  checkProductVisibility(o[1]);
}

core.int buildCounterProductSet = 0;
buildProductSet() {
  var o = new api.ProductSet();
  buildCounterProductSet++;
  if (buildCounterProductSet < 3) {
    o.kind = "foo";
    o.productId = buildUnnamed3179();
    o.productSetBehavior = "foo";
    o.productVisibility = buildUnnamed3180();
  }
  buildCounterProductSet--;
  return o;
}

checkProductSet(api.ProductSet o) {
  buildCounterProductSet++;
  if (buildCounterProductSet < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3179(o.productId);
    unittest.expect(o.productSetBehavior, unittest.equals('foo'));
    checkUnnamed3180(o.productVisibility);
  }
  buildCounterProductSet--;
}

core.int buildCounterProductSigningCertificate = 0;
buildProductSigningCertificate() {
  var o = new api.ProductSigningCertificate();
  buildCounterProductSigningCertificate++;
  if (buildCounterProductSigningCertificate < 3) {
    o.certificateHashSha1 = "foo";
    o.certificateHashSha256 = "foo";
  }
  buildCounterProductSigningCertificate--;
  return o;
}

checkProductSigningCertificate(api.ProductSigningCertificate o) {
  buildCounterProductSigningCertificate++;
  if (buildCounterProductSigningCertificate < 3) {
    unittest.expect(o.certificateHashSha1, unittest.equals('foo'));
    unittest.expect(o.certificateHashSha256, unittest.equals('foo'));
  }
  buildCounterProductSigningCertificate--;
}

buildUnnamed3181() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3181(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3182() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3182(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProductVisibility = 0;
buildProductVisibility() {
  var o = new api.ProductVisibility();
  buildCounterProductVisibility++;
  if (buildCounterProductVisibility < 3) {
    o.productId = "foo";
    o.trackIds = buildUnnamed3181();
    o.tracks = buildUnnamed3182();
  }
  buildCounterProductVisibility--;
  return o;
}

checkProductVisibility(api.ProductVisibility o) {
  buildCounterProductVisibility++;
  if (buildCounterProductVisibility < 3) {
    unittest.expect(o.productId, unittest.equals('foo'));
    checkUnnamed3181(o.trackIds);
    checkUnnamed3182(o.tracks);
  }
  buildCounterProductVisibility--;
}

core.int buildCounterProductsApproveRequest = 0;
buildProductsApproveRequest() {
  var o = new api.ProductsApproveRequest();
  buildCounterProductsApproveRequest++;
  if (buildCounterProductsApproveRequest < 3) {
    o.approvalUrlInfo = buildApprovalUrlInfo();
    o.approvedPermissions = "foo";
  }
  buildCounterProductsApproveRequest--;
  return o;
}

checkProductsApproveRequest(api.ProductsApproveRequest o) {
  buildCounterProductsApproveRequest++;
  if (buildCounterProductsApproveRequest < 3) {
    checkApprovalUrlInfo(o.approvalUrlInfo);
    unittest.expect(o.approvedPermissions, unittest.equals('foo'));
  }
  buildCounterProductsApproveRequest--;
}

core.int buildCounterProductsGenerateApprovalUrlResponse = 0;
buildProductsGenerateApprovalUrlResponse() {
  var o = new api.ProductsGenerateApprovalUrlResponse();
  buildCounterProductsGenerateApprovalUrlResponse++;
  if (buildCounterProductsGenerateApprovalUrlResponse < 3) {
    o.url = "foo";
  }
  buildCounterProductsGenerateApprovalUrlResponse--;
  return o;
}

checkProductsGenerateApprovalUrlResponse(
    api.ProductsGenerateApprovalUrlResponse o) {
  buildCounterProductsGenerateApprovalUrlResponse++;
  if (buildCounterProductsGenerateApprovalUrlResponse < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterProductsGenerateApprovalUrlResponse--;
}

buildUnnamed3183() {
  var o = new core.List<api.Product>();
  o.add(buildProduct());
  o.add(buildProduct());
  return o;
}

checkUnnamed3183(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterProductsListResponse = 0;
buildProductsListResponse() {
  var o = new api.ProductsListResponse();
  buildCounterProductsListResponse++;
  if (buildCounterProductsListResponse < 3) {
    o.kind = "foo";
    o.pageInfo = buildPageInfo();
    o.product = buildUnnamed3183();
    o.tokenPagination = buildTokenPagination();
  }
  buildCounterProductsListResponse--;
  return o;
}

checkProductsListResponse(api.ProductsListResponse o) {
  buildCounterProductsListResponse++;
  if (buildCounterProductsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    checkUnnamed3183(o.product);
    checkTokenPagination(o.tokenPagination);
  }
  buildCounterProductsListResponse--;
}

core.int buildCounterServiceAccount = 0;
buildServiceAccount() {
  var o = new api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.key = buildServiceAccountKey();
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterServiceAccount--;
  return o;
}

checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    checkServiceAccountKey(o.key);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterServiceAccount--;
}

core.int buildCounterServiceAccountKey = 0;
buildServiceAccountKey() {
  var o = new api.ServiceAccountKey();
  buildCounterServiceAccountKey++;
  if (buildCounterServiceAccountKey < 3) {
    o.data = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.publicData = "foo";
    o.type = "foo";
  }
  buildCounterServiceAccountKey--;
  return o;
}

checkServiceAccountKey(api.ServiceAccountKey o) {
  buildCounterServiceAccountKey++;
  if (buildCounterServiceAccountKey < 3) {
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.publicData, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterServiceAccountKey--;
}

buildUnnamed3184() {
  var o = new core.List<api.ServiceAccountKey>();
  o.add(buildServiceAccountKey());
  o.add(buildServiceAccountKey());
  return o;
}

checkUnnamed3184(core.List<api.ServiceAccountKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccountKey(o[0]);
  checkServiceAccountKey(o[1]);
}

core.int buildCounterServiceAccountKeysListResponse = 0;
buildServiceAccountKeysListResponse() {
  var o = new api.ServiceAccountKeysListResponse();
  buildCounterServiceAccountKeysListResponse++;
  if (buildCounterServiceAccountKeysListResponse < 3) {
    o.serviceAccountKey = buildUnnamed3184();
  }
  buildCounterServiceAccountKeysListResponse--;
  return o;
}

checkServiceAccountKeysListResponse(api.ServiceAccountKeysListResponse o) {
  buildCounterServiceAccountKeysListResponse++;
  if (buildCounterServiceAccountKeysListResponse < 3) {
    checkUnnamed3184(o.serviceAccountKey);
  }
  buildCounterServiceAccountKeysListResponse--;
}

core.int buildCounterSignupInfo = 0;
buildSignupInfo() {
  var o = new api.SignupInfo();
  buildCounterSignupInfo++;
  if (buildCounterSignupInfo < 3) {
    o.completionToken = "foo";
    o.kind = "foo";
    o.url = "foo";
  }
  buildCounterSignupInfo--;
  return o;
}

checkSignupInfo(api.SignupInfo o) {
  buildCounterSignupInfo++;
  if (buildCounterSignupInfo < 3) {
    unittest.expect(o.completionToken, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterSignupInfo--;
}

buildUnnamed3185() {
  var o = new core.List<api.LocalizedText>();
  o.add(buildLocalizedText());
  o.add(buildLocalizedText());
  return o;
}

checkUnnamed3185(core.List<api.LocalizedText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedText(o[0]);
  checkLocalizedText(o[1]);
}

buildUnnamed3186() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3186(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStoreCluster = 0;
buildStoreCluster() {
  var o = new api.StoreCluster();
  buildCounterStoreCluster++;
  if (buildCounterStoreCluster < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.name = buildUnnamed3185();
    o.orderInPage = "foo";
    o.productId = buildUnnamed3186();
  }
  buildCounterStoreCluster--;
  return o;
}

checkStoreCluster(api.StoreCluster o) {
  buildCounterStoreCluster++;
  if (buildCounterStoreCluster < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3185(o.name);
    unittest.expect(o.orderInPage, unittest.equals('foo'));
    checkUnnamed3186(o.productId);
  }
  buildCounterStoreCluster--;
}

core.int buildCounterStoreLayout = 0;
buildStoreLayout() {
  var o = new api.StoreLayout();
  buildCounterStoreLayout++;
  if (buildCounterStoreLayout < 3) {
    o.homepageId = "foo";
    o.kind = "foo";
    o.storeLayoutType = "foo";
  }
  buildCounterStoreLayout--;
  return o;
}

checkStoreLayout(api.StoreLayout o) {
  buildCounterStoreLayout++;
  if (buildCounterStoreLayout < 3) {
    unittest.expect(o.homepageId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.storeLayoutType, unittest.equals('foo'));
  }
  buildCounterStoreLayout--;
}

buildUnnamed3187() {
  var o = new core.List<api.StoreCluster>();
  o.add(buildStoreCluster());
  o.add(buildStoreCluster());
  return o;
}

checkUnnamed3187(core.List<api.StoreCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStoreCluster(o[0]);
  checkStoreCluster(o[1]);
}

core.int buildCounterStoreLayoutClustersListResponse = 0;
buildStoreLayoutClustersListResponse() {
  var o = new api.StoreLayoutClustersListResponse();
  buildCounterStoreLayoutClustersListResponse++;
  if (buildCounterStoreLayoutClustersListResponse < 3) {
    o.cluster = buildUnnamed3187();
    o.kind = "foo";
  }
  buildCounterStoreLayoutClustersListResponse--;
  return o;
}

checkStoreLayoutClustersListResponse(api.StoreLayoutClustersListResponse o) {
  buildCounterStoreLayoutClustersListResponse++;
  if (buildCounterStoreLayoutClustersListResponse < 3) {
    checkUnnamed3187(o.cluster);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterStoreLayoutClustersListResponse--;
}

buildUnnamed3188() {
  var o = new core.List<api.StorePage>();
  o.add(buildStorePage());
  o.add(buildStorePage());
  return o;
}

checkUnnamed3188(core.List<api.StorePage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStorePage(o[0]);
  checkStorePage(o[1]);
}

core.int buildCounterStoreLayoutPagesListResponse = 0;
buildStoreLayoutPagesListResponse() {
  var o = new api.StoreLayoutPagesListResponse();
  buildCounterStoreLayoutPagesListResponse++;
  if (buildCounterStoreLayoutPagesListResponse < 3) {
    o.kind = "foo";
    o.page = buildUnnamed3188();
  }
  buildCounterStoreLayoutPagesListResponse--;
  return o;
}

checkStoreLayoutPagesListResponse(api.StoreLayoutPagesListResponse o) {
  buildCounterStoreLayoutPagesListResponse++;
  if (buildCounterStoreLayoutPagesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3188(o.page);
  }
  buildCounterStoreLayoutPagesListResponse--;
}

buildUnnamed3189() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3189(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3190() {
  var o = new core.List<api.LocalizedText>();
  o.add(buildLocalizedText());
  o.add(buildLocalizedText());
  return o;
}

checkUnnamed3190(core.List<api.LocalizedText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedText(o[0]);
  checkLocalizedText(o[1]);
}

core.int buildCounterStorePage = 0;
buildStorePage() {
  var o = new api.StorePage();
  buildCounterStorePage++;
  if (buildCounterStorePage < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.link = buildUnnamed3189();
    o.name = buildUnnamed3190();
  }
  buildCounterStorePage--;
  return o;
}

checkStorePage(api.StorePage o) {
  buildCounterStorePage++;
  if (buildCounterStorePage < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3189(o.link);
    checkUnnamed3190(o.name);
  }
  buildCounterStorePage--;
}

core.int buildCounterTokenPagination = 0;
buildTokenPagination() {
  var o = new api.TokenPagination();
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {
    o.nextPageToken = "foo";
    o.previousPageToken = "foo";
  }
  buildCounterTokenPagination--;
  return o;
}

checkTokenPagination(api.TokenPagination o) {
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.previousPageToken, unittest.equals('foo'));
  }
  buildCounterTokenPagination--;
}

core.int buildCounterTrackInfo = 0;
buildTrackInfo() {
  var o = new api.TrackInfo();
  buildCounterTrackInfo++;
  if (buildCounterTrackInfo < 3) {
    o.trackAlias = "foo";
    o.trackId = "foo";
  }
  buildCounterTrackInfo--;
  return o;
}

checkTrackInfo(api.TrackInfo o) {
  buildCounterTrackInfo++;
  if (buildCounterTrackInfo < 3) {
    unittest.expect(o.trackAlias, unittest.equals('foo'));
    unittest.expect(o.trackId, unittest.equals('foo'));
  }
  buildCounterTrackInfo--;
}

core.int buildCounterUser = 0;
buildUser() {
  var o = new api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.accountIdentifier = "foo";
    o.accountType = "foo";
    o.displayName = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.managementType = "foo";
    o.primaryEmail = "foo";
  }
  buildCounterUser--;
  return o;
}

checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(o.accountIdentifier, unittest.equals('foo'));
    unittest.expect(o.accountType, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.managementType, unittest.equals('foo'));
    unittest.expect(o.primaryEmail, unittest.equals('foo'));
  }
  buildCounterUser--;
}

core.int buildCounterUserToken = 0;
buildUserToken() {
  var o = new api.UserToken();
  buildCounterUserToken++;
  if (buildCounterUserToken < 3) {
    o.kind = "foo";
    o.token = "foo";
    o.userId = "foo";
  }
  buildCounterUserToken--;
  return o;
}

checkUserToken(api.UserToken o) {
  buildCounterUserToken++;
  if (buildCounterUserToken < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterUserToken--;
}

buildUnnamed3191() {
  var o = new core.List<api.User>();
  o.add(buildUser());
  o.add(buildUser());
  return o;
}

checkUnnamed3191(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterUsersListResponse = 0;
buildUsersListResponse() {
  var o = new api.UsersListResponse();
  buildCounterUsersListResponse++;
  if (buildCounterUsersListResponse < 3) {
    o.kind = "foo";
    o.user = buildUnnamed3191();
  }
  buildCounterUsersListResponse--;
  return o;
}

checkUsersListResponse(api.UsersListResponse o) {
  buildCounterUsersListResponse++;
  if (buildCounterUsersListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3191(o.user);
  }
  buildCounterUsersListResponse--;
}

core.int buildCounterVariableSet = 0;
buildVariableSet() {
  var o = new api.VariableSet();
  buildCounterVariableSet++;
  if (buildCounterVariableSet < 3) {
    o.kind = "foo";
    o.placeholder = "foo";
    o.userValue = "foo";
  }
  buildCounterVariableSet--;
  return o;
}

checkVariableSet(api.VariableSet o) {
  buildCounterVariableSet++;
  if (buildCounterVariableSet < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.placeholder, unittest.equals('foo'));
    unittest.expect(o.userValue, unittest.equals('foo'));
  }
  buildCounterVariableSet--;
}

buildUnnamed3192() {
  var o = new core.List<api.WebAppIcon>();
  o.add(buildWebAppIcon());
  o.add(buildWebAppIcon());
  return o;
}

checkUnnamed3192(core.List<api.WebAppIcon> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebAppIcon(o[0]);
  checkWebAppIcon(o[1]);
}

core.int buildCounterWebApp = 0;
buildWebApp() {
  var o = new api.WebApp();
  buildCounterWebApp++;
  if (buildCounterWebApp < 3) {
    o.displayMode = "foo";
    o.icons = buildUnnamed3192();
    o.isPublished = true;
    o.startUrl = "foo";
    o.title = "foo";
    o.versionCode = "foo";
    o.webAppId = "foo";
  }
  buildCounterWebApp--;
  return o;
}

checkWebApp(api.WebApp o) {
  buildCounterWebApp++;
  if (buildCounterWebApp < 3) {
    unittest.expect(o.displayMode, unittest.equals('foo'));
    checkUnnamed3192(o.icons);
    unittest.expect(o.isPublished, unittest.isTrue);
    unittest.expect(o.startUrl, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.versionCode, unittest.equals('foo'));
    unittest.expect(o.webAppId, unittest.equals('foo'));
  }
  buildCounterWebApp--;
}

core.int buildCounterWebAppIcon = 0;
buildWebAppIcon() {
  var o = new api.WebAppIcon();
  buildCounterWebAppIcon++;
  if (buildCounterWebAppIcon < 3) {
    o.imageData = "foo";
  }
  buildCounterWebAppIcon--;
  return o;
}

checkWebAppIcon(api.WebAppIcon o) {
  buildCounterWebAppIcon++;
  if (buildCounterWebAppIcon < 3) {
    unittest.expect(o.imageData, unittest.equals('foo'));
  }
  buildCounterWebAppIcon--;
}

buildUnnamed3193() {
  var o = new core.List<api.WebApp>();
  o.add(buildWebApp());
  o.add(buildWebApp());
  return o;
}

checkUnnamed3193(core.List<api.WebApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebApp(o[0]);
  checkWebApp(o[1]);
}

core.int buildCounterWebAppsListResponse = 0;
buildWebAppsListResponse() {
  var o = new api.WebAppsListResponse();
  buildCounterWebAppsListResponse++;
  if (buildCounterWebAppsListResponse < 3) {
    o.kind = "foo";
    o.webApp = buildUnnamed3193();
  }
  buildCounterWebAppsListResponse--;
  return o;
}

checkWebAppsListResponse(api.WebAppsListResponse o) {
  buildCounterWebAppsListResponse++;
  if (buildCounterWebAppsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3193(o.webApp);
  }
  buildCounterWebAppsListResponse--;
}

main() {
  unittest.group("obj-schema-Administrator", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdministrator();
      var od = new api.Administrator.fromJson(o.toJson());
      checkAdministrator(od);
    });
  });

  unittest.group("obj-schema-AdministratorWebToken", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdministratorWebToken();
      var od = new api.AdministratorWebToken.fromJson(o.toJson());
      checkAdministratorWebToken(od);
    });
  });

  unittest.group("obj-schema-AdministratorWebTokenSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdministratorWebTokenSpec();
      var od = new api.AdministratorWebTokenSpec.fromJson(o.toJson());
      checkAdministratorWebTokenSpec(od);
    });
  });

  unittest.group("obj-schema-AdministratorWebTokenSpecManagedConfigurations",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildAdministratorWebTokenSpecManagedConfigurations();
      var od = new api.AdministratorWebTokenSpecManagedConfigurations.fromJson(
          o.toJson());
      checkAdministratorWebTokenSpecManagedConfigurations(od);
    });
  });

  unittest.group("obj-schema-AdministratorWebTokenSpecPlaySearch", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdministratorWebTokenSpecPlaySearch();
      var od = new api.AdministratorWebTokenSpecPlaySearch.fromJson(o.toJson());
      checkAdministratorWebTokenSpecPlaySearch(od);
    });
  });

  unittest.group("obj-schema-AdministratorWebTokenSpecPrivateApps", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdministratorWebTokenSpecPrivateApps();
      var od =
          new api.AdministratorWebTokenSpecPrivateApps.fromJson(o.toJson());
      checkAdministratorWebTokenSpecPrivateApps(od);
    });
  });

  unittest.group("obj-schema-AdministratorWebTokenSpecStoreBuilder", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdministratorWebTokenSpecStoreBuilder();
      var od =
          new api.AdministratorWebTokenSpecStoreBuilder.fromJson(o.toJson());
      checkAdministratorWebTokenSpecStoreBuilder(od);
    });
  });

  unittest.group("obj-schema-AdministratorWebTokenSpecWebApps", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdministratorWebTokenSpecWebApps();
      var od = new api.AdministratorWebTokenSpecWebApps.fromJson(o.toJson());
      checkAdministratorWebTokenSpecWebApps(od);
    });
  });

  unittest.group("obj-schema-AppRestrictionsSchema", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppRestrictionsSchema();
      var od = new api.AppRestrictionsSchema.fromJson(o.toJson());
      checkAppRestrictionsSchema(od);
    });
  });

  unittest.group("obj-schema-AppRestrictionsSchemaChangeEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppRestrictionsSchemaChangeEvent();
      var od = new api.AppRestrictionsSchemaChangeEvent.fromJson(o.toJson());
      checkAppRestrictionsSchemaChangeEvent(od);
    });
  });

  unittest.group("obj-schema-AppRestrictionsSchemaRestriction", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppRestrictionsSchemaRestriction();
      var od = new api.AppRestrictionsSchemaRestriction.fromJson(o.toJson());
      checkAppRestrictionsSchemaRestriction(od);
    });
  });

  unittest.group("obj-schema-AppRestrictionsSchemaRestrictionRestrictionValue",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildAppRestrictionsSchemaRestrictionRestrictionValue();
      var od =
          new api.AppRestrictionsSchemaRestrictionRestrictionValue.fromJson(
              o.toJson());
      checkAppRestrictionsSchemaRestrictionRestrictionValue(od);
    });
  });

  unittest.group("obj-schema-AppState", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppState();
      var od = new api.AppState.fromJson(o.toJson());
      checkAppState(od);
    });
  });

  unittest.group("obj-schema-AppUpdateEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppUpdateEvent();
      var od = new api.AppUpdateEvent.fromJson(o.toJson());
      checkAppUpdateEvent(od);
    });
  });

  unittest.group("obj-schema-AppVersion", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppVersion();
      var od = new api.AppVersion.fromJson(o.toJson());
      checkAppVersion(od);
    });
  });

  unittest.group("obj-schema-ApprovalUrlInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildApprovalUrlInfo();
      var od = new api.ApprovalUrlInfo.fromJson(o.toJson());
      checkApprovalUrlInfo(od);
    });
  });

  unittest.group("obj-schema-AuthenticationToken", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthenticationToken();
      var od = new api.AuthenticationToken.fromJson(o.toJson());
      checkAuthenticationToken(od);
    });
  });

  unittest.group("obj-schema-AutoInstallConstraint", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoInstallConstraint();
      var od = new api.AutoInstallConstraint.fromJson(o.toJson());
      checkAutoInstallConstraint(od);
    });
  });

  unittest.group("obj-schema-AutoInstallPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoInstallPolicy();
      var od = new api.AutoInstallPolicy.fromJson(o.toJson());
      checkAutoInstallPolicy(od);
    });
  });

  unittest.group("obj-schema-ConfigurationVariables", () {
    unittest.test("to-json--from-json", () {
      var o = buildConfigurationVariables();
      var od = new api.ConfigurationVariables.fromJson(o.toJson());
      checkConfigurationVariables(od);
    });
  });

  unittest.group("obj-schema-Device", () {
    unittest.test("to-json--from-json", () {
      var o = buildDevice();
      var od = new api.Device.fromJson(o.toJson());
      checkDevice(od);
    });
  });

  unittest.group("obj-schema-DeviceReport", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceReport();
      var od = new api.DeviceReport.fromJson(o.toJson());
      checkDeviceReport(od);
    });
  });

  unittest.group("obj-schema-DeviceReportUpdateEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceReportUpdateEvent();
      var od = new api.DeviceReportUpdateEvent.fromJson(o.toJson());
      checkDeviceReportUpdateEvent(od);
    });
  });

  unittest.group("obj-schema-DeviceState", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceState();
      var od = new api.DeviceState.fromJson(o.toJson());
      checkDeviceState(od);
    });
  });

  unittest.group("obj-schema-DevicesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDevicesListResponse();
      var od = new api.DevicesListResponse.fromJson(o.toJson());
      checkDevicesListResponse(od);
    });
  });

  unittest.group("obj-schema-Enterprise", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnterprise();
      var od = new api.Enterprise.fromJson(o.toJson());
      checkEnterprise(od);
    });
  });

  unittest.group("obj-schema-EnterpriseAccount", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnterpriseAccount();
      var od = new api.EnterpriseAccount.fromJson(o.toJson());
      checkEnterpriseAccount(od);
    });
  });

  unittest.group("obj-schema-EnterprisesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnterprisesListResponse();
      var od = new api.EnterprisesListResponse.fromJson(o.toJson());
      checkEnterprisesListResponse(od);
    });
  });

  unittest.group("obj-schema-EnterprisesSendTestPushNotificationResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnterprisesSendTestPushNotificationResponse();
      var od = new api.EnterprisesSendTestPushNotificationResponse.fromJson(
          o.toJson());
      checkEnterprisesSendTestPushNotificationResponse(od);
    });
  });

  unittest.group("obj-schema-Entitlement", () {
    unittest.test("to-json--from-json", () {
      var o = buildEntitlement();
      var od = new api.Entitlement.fromJson(o.toJson());
      checkEntitlement(od);
    });
  });

  unittest.group("obj-schema-EntitlementsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildEntitlementsListResponse();
      var od = new api.EntitlementsListResponse.fromJson(o.toJson());
      checkEntitlementsListResponse(od);
    });
  });

  unittest.group("obj-schema-GroupLicense", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupLicense();
      var od = new api.GroupLicense.fromJson(o.toJson());
      checkGroupLicense(od);
    });
  });

  unittest.group("obj-schema-GroupLicenseUsersListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupLicenseUsersListResponse();
      var od = new api.GroupLicenseUsersListResponse.fromJson(o.toJson());
      checkGroupLicenseUsersListResponse(od);
    });
  });

  unittest.group("obj-schema-GroupLicensesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupLicensesListResponse();
      var od = new api.GroupLicensesListResponse.fromJson(o.toJson());
      checkGroupLicensesListResponse(od);
    });
  });

  unittest.group("obj-schema-Install", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstall();
      var od = new api.Install.fromJson(o.toJson());
      checkInstall(od);
    });
  });

  unittest.group("obj-schema-InstallFailureEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstallFailureEvent();
      var od = new api.InstallFailureEvent.fromJson(o.toJson());
      checkInstallFailureEvent(od);
    });
  });

  unittest.group("obj-schema-InstallsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstallsListResponse();
      var od = new api.InstallsListResponse.fromJson(o.toJson());
      checkInstallsListResponse(od);
    });
  });

  unittest.group("obj-schema-KeyedAppState", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyedAppState();
      var od = new api.KeyedAppState.fromJson(o.toJson());
      checkKeyedAppState(od);
    });
  });

  unittest.group("obj-schema-LocalizedText", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocalizedText();
      var od = new api.LocalizedText.fromJson(o.toJson());
      checkLocalizedText(od);
    });
  });

  unittest.group("obj-schema-MaintenanceWindow", () {
    unittest.test("to-json--from-json", () {
      var o = buildMaintenanceWindow();
      var od = new api.MaintenanceWindow.fromJson(o.toJson());
      checkMaintenanceWindow(od);
    });
  });

  unittest.group("obj-schema-ManagedConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedConfiguration();
      var od = new api.ManagedConfiguration.fromJson(o.toJson());
      checkManagedConfiguration(od);
    });
  });

  unittest.group("obj-schema-ManagedConfigurationsForDeviceListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedConfigurationsForDeviceListResponse();
      var od = new api.ManagedConfigurationsForDeviceListResponse.fromJson(
          o.toJson());
      checkManagedConfigurationsForDeviceListResponse(od);
    });
  });

  unittest.group("obj-schema-ManagedConfigurationsForUserListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedConfigurationsForUserListResponse();
      var od =
          new api.ManagedConfigurationsForUserListResponse.fromJson(o.toJson());
      checkManagedConfigurationsForUserListResponse(od);
    });
  });

  unittest.group("obj-schema-ManagedConfigurationsSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedConfigurationsSettings();
      var od = new api.ManagedConfigurationsSettings.fromJson(o.toJson());
      checkManagedConfigurationsSettings(od);
    });
  });

  unittest.group("obj-schema-ManagedConfigurationsSettingsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedConfigurationsSettingsListResponse();
      var od = new api.ManagedConfigurationsSettingsListResponse.fromJson(
          o.toJson());
      checkManagedConfigurationsSettingsListResponse(od);
    });
  });

  unittest.group("obj-schema-ManagedProperty", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedProperty();
      var od = new api.ManagedProperty.fromJson(o.toJson());
      checkManagedProperty(od);
    });
  });

  unittest.group("obj-schema-ManagedPropertyBundle", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedPropertyBundle();
      var od = new api.ManagedPropertyBundle.fromJson(o.toJson());
      checkManagedPropertyBundle(od);
    });
  });

  unittest.group("obj-schema-NewDeviceEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildNewDeviceEvent();
      var od = new api.NewDeviceEvent.fromJson(o.toJson());
      checkNewDeviceEvent(od);
    });
  });

  unittest.group("obj-schema-NewPermissionsEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildNewPermissionsEvent();
      var od = new api.NewPermissionsEvent.fromJson(o.toJson());
      checkNewPermissionsEvent(od);
    });
  });

  unittest.group("obj-schema-Notification", () {
    unittest.test("to-json--from-json", () {
      var o = buildNotification();
      var od = new api.Notification.fromJson(o.toJson());
      checkNotification(od);
    });
  });

  unittest.group("obj-schema-NotificationSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildNotificationSet();
      var od = new api.NotificationSet.fromJson(o.toJson());
      checkNotificationSet(od);
    });
  });

  unittest.group("obj-schema-PageInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildPageInfo();
      var od = new api.PageInfo.fromJson(o.toJson());
      checkPageInfo(od);
    });
  });

  unittest.group("obj-schema-Permission", () {
    unittest.test("to-json--from-json", () {
      var o = buildPermission();
      var od = new api.Permission.fromJson(o.toJson());
      checkPermission(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-Product", () {
    unittest.test("to-json--from-json", () {
      var o = buildProduct();
      var od = new api.Product.fromJson(o.toJson());
      checkProduct(od);
    });
  });

  unittest.group("obj-schema-ProductApprovalEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductApprovalEvent();
      var od = new api.ProductApprovalEvent.fromJson(o.toJson());
      checkProductApprovalEvent(od);
    });
  });

  unittest.group("obj-schema-ProductAvailabilityChangeEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductAvailabilityChangeEvent();
      var od = new api.ProductAvailabilityChangeEvent.fromJson(o.toJson());
      checkProductAvailabilityChangeEvent(od);
    });
  });

  unittest.group("obj-schema-ProductPermission", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductPermission();
      var od = new api.ProductPermission.fromJson(o.toJson());
      checkProductPermission(od);
    });
  });

  unittest.group("obj-schema-ProductPermissions", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductPermissions();
      var od = new api.ProductPermissions.fromJson(o.toJson());
      checkProductPermissions(od);
    });
  });

  unittest.group("obj-schema-ProductPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductPolicy();
      var od = new api.ProductPolicy.fromJson(o.toJson());
      checkProductPolicy(od);
    });
  });

  unittest.group("obj-schema-ProductSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductSet();
      var od = new api.ProductSet.fromJson(o.toJson());
      checkProductSet(od);
    });
  });

  unittest.group("obj-schema-ProductSigningCertificate", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductSigningCertificate();
      var od = new api.ProductSigningCertificate.fromJson(o.toJson());
      checkProductSigningCertificate(od);
    });
  });

  unittest.group("obj-schema-ProductVisibility", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductVisibility();
      var od = new api.ProductVisibility.fromJson(o.toJson());
      checkProductVisibility(od);
    });
  });

  unittest.group("obj-schema-ProductsApproveRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductsApproveRequest();
      var od = new api.ProductsApproveRequest.fromJson(o.toJson());
      checkProductsApproveRequest(od);
    });
  });

  unittest.group("obj-schema-ProductsGenerateApprovalUrlResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductsGenerateApprovalUrlResponse();
      var od = new api.ProductsGenerateApprovalUrlResponse.fromJson(o.toJson());
      checkProductsGenerateApprovalUrlResponse(od);
    });
  });

  unittest.group("obj-schema-ProductsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductsListResponse();
      var od = new api.ProductsListResponse.fromJson(o.toJson());
      checkProductsListResponse(od);
    });
  });

  unittest.group("obj-schema-ServiceAccount", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceAccount();
      var od = new api.ServiceAccount.fromJson(o.toJson());
      checkServiceAccount(od);
    });
  });

  unittest.group("obj-schema-ServiceAccountKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceAccountKey();
      var od = new api.ServiceAccountKey.fromJson(o.toJson());
      checkServiceAccountKey(od);
    });
  });

  unittest.group("obj-schema-ServiceAccountKeysListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceAccountKeysListResponse();
      var od = new api.ServiceAccountKeysListResponse.fromJson(o.toJson());
      checkServiceAccountKeysListResponse(od);
    });
  });

  unittest.group("obj-schema-SignupInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignupInfo();
      var od = new api.SignupInfo.fromJson(o.toJson());
      checkSignupInfo(od);
    });
  });

  unittest.group("obj-schema-StoreCluster", () {
    unittest.test("to-json--from-json", () {
      var o = buildStoreCluster();
      var od = new api.StoreCluster.fromJson(o.toJson());
      checkStoreCluster(od);
    });
  });

  unittest.group("obj-schema-StoreLayout", () {
    unittest.test("to-json--from-json", () {
      var o = buildStoreLayout();
      var od = new api.StoreLayout.fromJson(o.toJson());
      checkStoreLayout(od);
    });
  });

  unittest.group("obj-schema-StoreLayoutClustersListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildStoreLayoutClustersListResponse();
      var od = new api.StoreLayoutClustersListResponse.fromJson(o.toJson());
      checkStoreLayoutClustersListResponse(od);
    });
  });

  unittest.group("obj-schema-StoreLayoutPagesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildStoreLayoutPagesListResponse();
      var od = new api.StoreLayoutPagesListResponse.fromJson(o.toJson());
      checkStoreLayoutPagesListResponse(od);
    });
  });

  unittest.group("obj-schema-StorePage", () {
    unittest.test("to-json--from-json", () {
      var o = buildStorePage();
      var od = new api.StorePage.fromJson(o.toJson());
      checkStorePage(od);
    });
  });

  unittest.group("obj-schema-TokenPagination", () {
    unittest.test("to-json--from-json", () {
      var o = buildTokenPagination();
      var od = new api.TokenPagination.fromJson(o.toJson());
      checkTokenPagination(od);
    });
  });

  unittest.group("obj-schema-TrackInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrackInfo();
      var od = new api.TrackInfo.fromJson(o.toJson());
      checkTrackInfo(od);
    });
  });

  unittest.group("obj-schema-User", () {
    unittest.test("to-json--from-json", () {
      var o = buildUser();
      var od = new api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });

  unittest.group("obj-schema-UserToken", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserToken();
      var od = new api.UserToken.fromJson(o.toJson());
      checkUserToken(od);
    });
  });

  unittest.group("obj-schema-UsersListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsersListResponse();
      var od = new api.UsersListResponse.fromJson(o.toJson());
      checkUsersListResponse(od);
    });
  });

  unittest.group("obj-schema-VariableSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildVariableSet();
      var od = new api.VariableSet.fromJson(o.toJson());
      checkVariableSet(od);
    });
  });

  unittest.group("obj-schema-WebApp", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebApp();
      var od = new api.WebApp.fromJson(o.toJson());
      checkWebApp(od);
    });
  });

  unittest.group("obj-schema-WebAppIcon", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebAppIcon();
      var od = new api.WebAppIcon.fromJson(o.toJson());
      checkWebAppIcon(od);
    });
  });

  unittest.group("obj-schema-WebAppsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebAppsListResponse();
      var od = new api.WebAppsListResponse.fromJson(o.toJson());
      checkWebAppsListResponse(od);
    });
  });

  unittest.group("resource-DevicesResourceApi", () {
    unittest.test("method--forceReportUpload", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.AndroidenterpriseApi(mock).devices;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_deviceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf("/forceReportUpload", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/forceReportUpload"));
        pathOffset += 18;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .forceReportUpload(arg_enterpriseId, arg_userId, arg_deviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.AndroidenterpriseApi(mock).devices;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_deviceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));

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
        var resp = convert.json.encode(buildDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_userId, arg_deviceId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevice(response);
      })));
    });

    unittest.test("method--getState", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.AndroidenterpriseApi(mock).devices;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_deviceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf("/state", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/state"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildDeviceState());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getState(arg_enterpriseId, arg_userId, arg_deviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeviceState(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.AndroidenterpriseApi(mock).devices;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/devices"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildDevicesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevicesListResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.AndroidenterpriseApi(mock).devices;
      var arg_request = buildDevice();
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_deviceId = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Device.fromJson(json);
        checkDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_enterpriseId, arg_userId, arg_deviceId,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevice(response);
      })));
    });

    unittest.test("method--setState", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.AndroidenterpriseApi(mock).devices;
      var arg_request = buildDeviceState();
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_deviceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DeviceState.fromJson(json);
        checkDeviceState(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf("/state", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/state"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildDeviceState());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setState(arg_request, arg_enterpriseId, arg_userId, arg_deviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeviceState(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.DevicesResourceApi res = new api.AndroidenterpriseApi(mock).devices;
      var arg_request = buildDevice();
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_deviceId = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Device.fromJson(json);
        checkDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_userId, arg_deviceId,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevice(response);
      })));
    });
  });

  unittest.group("resource-EnterprisesResourceApi", () {
    unittest.test("method--acknowledgeNotificationSet", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidenterpriseApi(mock).enterprises;
      var arg_notificationSetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 38),
            unittest.equals("enterprises/acknowledgeNotificationSet"));
        pathOffset += 38;

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
        unittest.expect(queryMap["notificationSetId"].first,
            unittest.equals(arg_notificationSetId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .acknowledgeNotificationSet(
              notificationSetId: arg_notificationSetId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--completeSignup", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidenterpriseApi(mock).enterprises;
      var arg_completionToken = "foo";
      var arg_enterpriseToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("enterprises/completeSignup"));
        pathOffset += 26;

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
        unittest.expect(queryMap["completionToken"].first,
            unittest.equals(arg_completionToken));
        unittest.expect(queryMap["enterpriseToken"].first,
            unittest.equals(arg_enterpriseToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEnterprise());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .completeSignup(
              completionToken: arg_completionToken,
              enterpriseToken: arg_enterpriseToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterprise(response);
      })));
    });

    unittest.test("method--createWebToken", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidenterpriseApi(mock).enterprises;
      var arg_request = buildAdministratorWebTokenSpec();
      var arg_enterpriseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AdministratorWebTokenSpec.fromJson(json);
        checkAdministratorWebTokenSpec(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/createWebToken", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/createWebToken"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildAdministratorWebToken());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createWebToken(arg_request, arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdministratorWebToken(response);
      })));
    });

    unittest.test("method--enroll", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidenterpriseApi(mock).enterprises;
      var arg_request = buildEnterprise();
      var arg_token = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Enterprise.fromJson(json);
        checkEnterprise(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("enterprises/enroll"));
        pathOffset += 18;

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
        unittest.expect(queryMap["token"].first, unittest.equals(arg_token));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEnterprise());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .enroll(arg_request, arg_token, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterprise(response);
      })));
    });

    unittest.test("method--generateSignupUrl", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidenterpriseApi(mock).enterprises;
      var arg_callbackUrl = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("enterprises/signupUrl"));
        pathOffset += 21;

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
            queryMap["callbackUrl"].first, unittest.equals(arg_callbackUrl));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSignupInfo());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateSignupUrl(callbackUrl: arg_callbackUrl, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSignupInfo(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidenterpriseApi(mock).enterprises;
      var arg_enterpriseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));

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
        var resp = convert.json.encode(buildEnterprise());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterprise(response);
      })));
    });

    unittest.test("method--getServiceAccount", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidenterpriseApi(mock).enterprises;
      var arg_enterpriseId = "foo";
      var arg_keyType = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/serviceAccount", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/serviceAccount"));
        pathOffset += 15;

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
            queryMap["keyType"].first, unittest.equals(arg_keyType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildServiceAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getServiceAccount(arg_enterpriseId,
              keyType: arg_keyType, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceAccount(response);
      })));
    });

    unittest.test("method--getStoreLayout", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidenterpriseApi(mock).enterprises;
      var arg_enterpriseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/storeLayout", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/storeLayout"));
        pathOffset += 12;

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
        var resp = convert.json.encode(buildStoreLayout());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getStoreLayout(arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStoreLayout(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidenterpriseApi(mock).enterprises;
      var arg_domain = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("enterprises"));
        pathOffset += 11;

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
        unittest.expect(queryMap["domain"].first, unittest.equals(arg_domain));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEnterprisesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_domain, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterprisesListResponse(response);
      })));
    });

    unittest.test("method--pullNotificationSet", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidenterpriseApi(mock).enterprises;
      var arg_requestMode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("enterprises/pullNotificationSet"));
        pathOffset += 31;

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
            queryMap["requestMode"].first, unittest.equals(arg_requestMode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildNotificationSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .pullNotificationSet(
              requestMode: arg_requestMode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNotificationSet(response);
      })));
    });

    unittest.test("method--sendTestPushNotification", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidenterpriseApi(mock).enterprises;
      var arg_enterpriseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/sendTestPushNotification", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/sendTestPushNotification"));
        pathOffset += 25;

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
        var resp = convert.json
            .encode(buildEnterprisesSendTestPushNotificationResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sendTestPushNotification(arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterprisesSendTestPushNotificationResponse(response);
      })));
    });

    unittest.test("method--setAccount", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidenterpriseApi(mock).enterprises;
      var arg_request = buildEnterpriseAccount();
      var arg_enterpriseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.EnterpriseAccount.fromJson(json);
        checkEnterpriseAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/account", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/account"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildEnterpriseAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setAccount(arg_request, arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterpriseAccount(response);
      })));
    });

    unittest.test("method--setStoreLayout", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidenterpriseApi(mock).enterprises;
      var arg_request = buildStoreLayout();
      var arg_enterpriseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.StoreLayout.fromJson(json);
        checkStoreLayout(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/storeLayout", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/storeLayout"));
        pathOffset += 12;

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
        var resp = convert.json.encode(buildStoreLayout());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setStoreLayout(arg_request, arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStoreLayout(response);
      })));
    });

    unittest.test("method--unenroll", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidenterpriseApi(mock).enterprises;
      var arg_enterpriseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/unenroll", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/unenroll"));
        pathOffset += 9;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unenroll(arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-EntitlementsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.EntitlementsResourceApi res =
          new api.AndroidenterpriseApi(mock).entitlements;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_entitlementId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/entitlements/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/entitlements/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_entitlementId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_enterpriseId, arg_userId, arg_entitlementId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EntitlementsResourceApi res =
          new api.AndroidenterpriseApi(mock).entitlements;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_entitlementId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/entitlements/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/entitlements/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_entitlementId"));

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
        var resp = convert.json.encode(buildEntitlement());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_userId, arg_entitlementId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEntitlement(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.EntitlementsResourceApi res =
          new api.AndroidenterpriseApi(mock).entitlements;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/entitlements", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/entitlements"));
        pathOffset += 13;

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
        var resp = convert.json.encode(buildEntitlementsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEntitlementsListResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.EntitlementsResourceApi res =
          new api.AndroidenterpriseApi(mock).entitlements;
      var arg_request = buildEntitlement();
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_entitlementId = "foo";
      var arg_install = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Entitlement.fromJson(json);
        checkEntitlement(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/entitlements/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/entitlements/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_entitlementId"));

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
            queryMap["install"].first, unittest.equals("$arg_install"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEntitlement());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_enterpriseId, arg_userId, arg_entitlementId,
              install: arg_install, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEntitlement(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.EntitlementsResourceApi res =
          new api.AndroidenterpriseApi(mock).entitlements;
      var arg_request = buildEntitlement();
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_entitlementId = "foo";
      var arg_install = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Entitlement.fromJson(json);
        checkEntitlement(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/entitlements/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/entitlements/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_entitlementId"));

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
            queryMap["install"].first, unittest.equals("$arg_install"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEntitlement());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_userId, arg_entitlementId,
              install: arg_install, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEntitlement(response);
      })));
    });
  });

  unittest.group("resource-GrouplicensesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.GrouplicensesResourceApi res =
          new api.AndroidenterpriseApi(mock).grouplicenses;
      var arg_enterpriseId = "foo";
      var arg_groupLicenseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/groupLicenses/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/groupLicenses/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_groupLicenseId"));

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
        var resp = convert.json.encode(buildGroupLicense());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_groupLicenseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroupLicense(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.GrouplicensesResourceApi res =
          new api.AndroidenterpriseApi(mock).grouplicenses;
      var arg_enterpriseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/groupLicenses", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/groupLicenses"));
        pathOffset += 14;

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
        var resp = convert.json.encode(buildGroupLicensesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroupLicensesListResponse(response);
      })));
    });
  });

  unittest.group("resource-GrouplicenseusersResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.GrouplicenseusersResourceApi res =
          new api.AndroidenterpriseApi(mock).grouplicenseusers;
      var arg_enterpriseId = "foo";
      var arg_groupLicenseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/groupLicenses/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/groupLicenses/"));
        pathOffset += 15;
        index = path.indexOf("/users", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupLicenseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/users"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildGroupLicenseUsersListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_groupLicenseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroupLicenseUsersListResponse(response);
      })));
    });
  });

  unittest.group("resource-InstallsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.InstallsResourceApi res = new api.AndroidenterpriseApi(mock).installs;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_deviceId = "foo";
      var arg_installId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf("/installs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/installs/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_installId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_enterpriseId, arg_userId, arg_deviceId, arg_installId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.InstallsResourceApi res = new api.AndroidenterpriseApi(mock).installs;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_deviceId = "foo";
      var arg_installId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf("/installs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/installs/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_installId"));

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
        var resp = convert.json.encode(buildInstall());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_userId, arg_deviceId, arg_installId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInstall(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.InstallsResourceApi res = new api.AndroidenterpriseApi(mock).installs;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_deviceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf("/installs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/installs"));
        pathOffset += 9;

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
        var resp = convert.json.encode(buildInstallsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_userId, arg_deviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInstallsListResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.InstallsResourceApi res = new api.AndroidenterpriseApi(mock).installs;
      var arg_request = buildInstall();
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_deviceId = "foo";
      var arg_installId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Install.fromJson(json);
        checkInstall(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf("/installs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/installs/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_installId"));

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
        var resp = convert.json.encode(buildInstall());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_enterpriseId, arg_userId, arg_deviceId,
              arg_installId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInstall(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.InstallsResourceApi res = new api.AndroidenterpriseApi(mock).installs;
      var arg_request = buildInstall();
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_deviceId = "foo";
      var arg_installId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Install.fromJson(json);
        checkInstall(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf("/installs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/installs/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_installId"));

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
        var resp = convert.json.encode(buildInstall());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_userId, arg_deviceId,
              arg_installId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInstall(response);
      })));
    });
  });

  unittest.group("resource-ManagedconfigurationsfordeviceResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ManagedconfigurationsfordeviceResourceApi res =
          new api.AndroidenterpriseApi(mock).managedconfigurationsfordevice;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_deviceId = "foo";
      var arg_managedConfigurationForDeviceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf("/managedConfigurationsForDevice/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("/managedConfigurationsForDevice/"));
        pathOffset += 32;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals("$arg_managedConfigurationForDeviceId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_enterpriseId, arg_userId, arg_deviceId,
              arg_managedConfigurationForDeviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ManagedconfigurationsfordeviceResourceApi res =
          new api.AndroidenterpriseApi(mock).managedconfigurationsfordevice;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_deviceId = "foo";
      var arg_managedConfigurationForDeviceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf("/managedConfigurationsForDevice/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("/managedConfigurationsForDevice/"));
        pathOffset += 32;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals("$arg_managedConfigurationForDeviceId"));

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
        var resp = convert.json.encode(buildManagedConfiguration());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_userId, arg_deviceId,
              arg_managedConfigurationForDeviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedConfiguration(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ManagedconfigurationsfordeviceResourceApi res =
          new api.AndroidenterpriseApi(mock).managedconfigurationsfordevice;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_deviceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf("/managedConfigurationsForDevice", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("/managedConfigurationsForDevice"));
        pathOffset += 31;

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
        var resp = convert.json
            .encode(buildManagedConfigurationsForDeviceListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_userId, arg_deviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedConfigurationsForDeviceListResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ManagedconfigurationsfordeviceResourceApi res =
          new api.AndroidenterpriseApi(mock).managedconfigurationsfordevice;
      var arg_request = buildManagedConfiguration();
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_deviceId = "foo";
      var arg_managedConfigurationForDeviceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ManagedConfiguration.fromJson(json);
        checkManagedConfiguration(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf("/managedConfigurationsForDevice/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("/managedConfigurationsForDevice/"));
        pathOffset += 32;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals("$arg_managedConfigurationForDeviceId"));

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
        var resp = convert.json.encode(buildManagedConfiguration());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_enterpriseId, arg_userId, arg_deviceId,
              arg_managedConfigurationForDeviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedConfiguration(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ManagedconfigurationsfordeviceResourceApi res =
          new api.AndroidenterpriseApi(mock).managedconfigurationsfordevice;
      var arg_request = buildManagedConfiguration();
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_deviceId = "foo";
      var arg_managedConfigurationForDeviceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ManagedConfiguration.fromJson(json);
        checkManagedConfiguration(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/devices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/devices/"));
        pathOffset += 9;
        index = path.indexOf("/managedConfigurationsForDevice/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("/managedConfigurationsForDevice/"));
        pathOffset += 32;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals("$arg_managedConfigurationForDeviceId"));

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
        var resp = convert.json.encode(buildManagedConfiguration());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_userId, arg_deviceId,
              arg_managedConfigurationForDeviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedConfiguration(response);
      })));
    });
  });

  unittest.group("resource-ManagedconfigurationsforuserResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ManagedconfigurationsforuserResourceApi res =
          new api.AndroidenterpriseApi(mock).managedconfigurationsforuser;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_managedConfigurationForUserId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/managedConfigurationsForUser/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("/managedConfigurationsForUser/"));
        pathOffset += 30;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals("$arg_managedConfigurationForUserId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(
              arg_enterpriseId, arg_userId, arg_managedConfigurationForUserId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ManagedconfigurationsforuserResourceApi res =
          new api.AndroidenterpriseApi(mock).managedconfigurationsforuser;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_managedConfigurationForUserId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/managedConfigurationsForUser/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("/managedConfigurationsForUser/"));
        pathOffset += 30;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals("$arg_managedConfigurationForUserId"));

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
        var resp = convert.json.encode(buildManagedConfiguration());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_userId, arg_managedConfigurationForUserId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedConfiguration(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ManagedconfigurationsforuserResourceApi res =
          new api.AndroidenterpriseApi(mock).managedconfigurationsforuser;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/managedConfigurationsForUser", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("/managedConfigurationsForUser"));
        pathOffset += 29;

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
        var resp = convert.json
            .encode(buildManagedConfigurationsForUserListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedConfigurationsForUserListResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ManagedconfigurationsforuserResourceApi res =
          new api.AndroidenterpriseApi(mock).managedconfigurationsforuser;
      var arg_request = buildManagedConfiguration();
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_managedConfigurationForUserId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ManagedConfiguration.fromJson(json);
        checkManagedConfiguration(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/managedConfigurationsForUser/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("/managedConfigurationsForUser/"));
        pathOffset += 30;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals("$arg_managedConfigurationForUserId"));

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
        var resp = convert.json.encode(buildManagedConfiguration());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_enterpriseId, arg_userId,
              arg_managedConfigurationForUserId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedConfiguration(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ManagedconfigurationsforuserResourceApi res =
          new api.AndroidenterpriseApi(mock).managedconfigurationsforuser;
      var arg_request = buildManagedConfiguration();
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_managedConfigurationForUserId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ManagedConfiguration.fromJson(json);
        checkManagedConfiguration(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/managedConfigurationsForUser/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("/managedConfigurationsForUser/"));
        pathOffset += 30;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
            subPart, unittest.equals("$arg_managedConfigurationForUserId"));

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
        var resp = convert.json.encode(buildManagedConfiguration());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_userId,
              arg_managedConfigurationForUserId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedConfiguration(response);
      })));
    });
  });

  unittest.group("resource-ManagedconfigurationssettingsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ManagedconfigurationssettingsResourceApi res =
          new api.AndroidenterpriseApi(mock).managedconfigurationssettings;
      var arg_enterpriseId = "foo";
      var arg_productId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/products/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        index = path.indexOf("/managedConfigurationsSettings", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_productId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 30),
            unittest.equals("/managedConfigurationsSettings"));
        pathOffset += 30;

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
        var resp = convert.json
            .encode(buildManagedConfigurationsSettingsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_productId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedConfigurationsSettingsListResponse(response);
      })));
    });
  });

  unittest.group("resource-PermissionsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PermissionsResourceApi res =
          new api.AndroidenterpriseApi(mock).permissions;
      var arg_permissionId = "foo";
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("permissions/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_permissionId"));

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
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPermission());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_permissionId, language: arg_language, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPermission(response);
      })));
    });
  });

  unittest.group("resource-ProductsResourceApi", () {
    unittest.test("method--approve", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.AndroidenterpriseApi(mock).products;
      var arg_request = buildProductsApproveRequest();
      var arg_enterpriseId = "foo";
      var arg_productId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ProductsApproveRequest.fromJson(json);
        checkProductsApproveRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/products/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        index = path.indexOf("/approve", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_productId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/approve"));
        pathOffset += 8;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .approve(arg_request, arg_enterpriseId, arg_productId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--generateApprovalUrl", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.AndroidenterpriseApi(mock).products;
      var arg_enterpriseId = "foo";
      var arg_productId = "foo";
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/products/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        index = path.indexOf("/generateApprovalUrl", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_productId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/generateApprovalUrl"));
        pathOffset += 20;

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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildProductsGenerateApprovalUrlResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateApprovalUrl(arg_enterpriseId, arg_productId,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductsGenerateApprovalUrlResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.AndroidenterpriseApi(mock).products;
      var arg_enterpriseId = "foo";
      var arg_productId = "foo";
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/products/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_productId"));

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
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_productId,
              language: arg_language, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response);
      })));
    });

    unittest.test("method--getAppRestrictionsSchema", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.AndroidenterpriseApi(mock).products;
      var arg_enterpriseId = "foo";
      var arg_productId = "foo";
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/products/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        index = path.indexOf("/appRestrictionsSchema", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_productId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/appRestrictionsSchema"));
        pathOffset += 22;

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
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAppRestrictionsSchema());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAppRestrictionsSchema(arg_enterpriseId, arg_productId,
              language: arg_language, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppRestrictionsSchema(response);
      })));
    });

    unittest.test("method--getPermissions", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.AndroidenterpriseApi(mock).products;
      var arg_enterpriseId = "foo";
      var arg_productId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/products/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        index = path.indexOf("/permissions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_productId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/permissions"));
        pathOffset += 12;

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
        var resp = convert.json.encode(buildProductPermissions());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getPermissions(arg_enterpriseId, arg_productId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductPermissions(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.AndroidenterpriseApi(mock).products;
      var arg_enterpriseId = "foo";
      var arg_approved = true;
      var arg_language = "foo";
      var arg_maxResults = 42;
      var arg_query = "foo";
      var arg_token = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/products", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/products"));
        pathOffset += 9;

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
            queryMap["approved"].first, unittest.equals("$arg_approved"));
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["token"].first, unittest.equals(arg_token));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProductsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId,
              approved: arg_approved,
              language: arg_language,
              maxResults: arg_maxResults,
              query: arg_query,
              token: arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductsListResponse(response);
      })));
    });

    unittest.test("method--unapprove", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.AndroidenterpriseApi(mock).products;
      var arg_enterpriseId = "foo";
      var arg_productId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/products/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/products/"));
        pathOffset += 10;
        index = path.indexOf("/unapprove", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_productId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/unapprove"));
        pathOffset += 10;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unapprove(arg_enterpriseId, arg_productId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-ServiceaccountkeysResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ServiceaccountkeysResourceApi res =
          new api.AndroidenterpriseApi(mock).serviceaccountkeys;
      var arg_enterpriseId = "foo";
      var arg_keyId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/serviceAccountKeys/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/serviceAccountKeys/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_keyId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_enterpriseId, arg_keyId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.ServiceaccountkeysResourceApi res =
          new api.AndroidenterpriseApi(mock).serviceaccountkeys;
      var arg_request = buildServiceAccountKey();
      var arg_enterpriseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ServiceAccountKey.fromJson(json);
        checkServiceAccountKey(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/serviceAccountKeys", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/serviceAccountKeys"));
        pathOffset += 19;

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
        var resp = convert.json.encode(buildServiceAccountKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceAccountKey(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ServiceaccountkeysResourceApi res =
          new api.AndroidenterpriseApi(mock).serviceaccountkeys;
      var arg_enterpriseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/serviceAccountKeys", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/serviceAccountKeys"));
        pathOffset += 19;

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
        var resp = convert.json.encode(buildServiceAccountKeysListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceAccountKeysListResponse(response);
      })));
    });
  });

  unittest.group("resource-StorelayoutclustersResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.StorelayoutclustersResourceApi res =
          new api.AndroidenterpriseApi(mock).storelayoutclusters;
      var arg_enterpriseId = "foo";
      var arg_pageId = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/storeLayout/pages/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_pageId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_enterpriseId, arg_pageId, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.StorelayoutclustersResourceApi res =
          new api.AndroidenterpriseApi(mock).storelayoutclusters;
      var arg_enterpriseId = "foo";
      var arg_pageId = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/storeLayout/pages/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_pageId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));

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
        var resp = convert.json.encode(buildStoreCluster());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_pageId, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStoreCluster(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.StorelayoutclustersResourceApi res =
          new api.AndroidenterpriseApi(mock).storelayoutclusters;
      var arg_request = buildStoreCluster();
      var arg_enterpriseId = "foo";
      var arg_pageId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.StoreCluster.fromJson(json);
        checkStoreCluster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/storeLayout/pages/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        index = path.indexOf("/clusters", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_pageId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clusters"));
        pathOffset += 9;

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
        var resp = convert.json.encode(buildStoreCluster());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_enterpriseId, arg_pageId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStoreCluster(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.StorelayoutclustersResourceApi res =
          new api.AndroidenterpriseApi(mock).storelayoutclusters;
      var arg_enterpriseId = "foo";
      var arg_pageId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/storeLayout/pages/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        index = path.indexOf("/clusters", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_pageId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/clusters"));
        pathOffset += 9;

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
        var resp = convert.json.encode(buildStoreLayoutClustersListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_pageId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStoreLayoutClustersListResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.StorelayoutclustersResourceApi res =
          new api.AndroidenterpriseApi(mock).storelayoutclusters;
      var arg_request = buildStoreCluster();
      var arg_enterpriseId = "foo";
      var arg_pageId = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.StoreCluster.fromJson(json);
        checkStoreCluster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/storeLayout/pages/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_pageId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));

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
        var resp = convert.json.encode(buildStoreCluster());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_enterpriseId, arg_pageId, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStoreCluster(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.StorelayoutclustersResourceApi res =
          new api.AndroidenterpriseApi(mock).storelayoutclusters;
      var arg_request = buildStoreCluster();
      var arg_enterpriseId = "foo";
      var arg_pageId = "foo";
      var arg_clusterId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.StoreCluster.fromJson(json);
        checkStoreCluster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/storeLayout/pages/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_pageId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clusterId"));

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
        var resp = convert.json.encode(buildStoreCluster());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_pageId, arg_clusterId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStoreCluster(response);
      })));
    });
  });

  unittest.group("resource-StorelayoutpagesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.StorelayoutpagesResourceApi res =
          new api.AndroidenterpriseApi(mock).storelayoutpages;
      var arg_enterpriseId = "foo";
      var arg_pageId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/storeLayout/pages/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_pageId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_enterpriseId, arg_pageId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.StorelayoutpagesResourceApi res =
          new api.AndroidenterpriseApi(mock).storelayoutpages;
      var arg_enterpriseId = "foo";
      var arg_pageId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/storeLayout/pages/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_pageId"));

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
        var resp = convert.json.encode(buildStorePage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_pageId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStorePage(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.StorelayoutpagesResourceApi res =
          new api.AndroidenterpriseApi(mock).storelayoutpages;
      var arg_request = buildStorePage();
      var arg_enterpriseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.StorePage.fromJson(json);
        checkStorePage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/storeLayout/pages", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/storeLayout/pages"));
        pathOffset += 18;

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
        var resp = convert.json.encode(buildStorePage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStorePage(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.StorelayoutpagesResourceApi res =
          new api.AndroidenterpriseApi(mock).storelayoutpages;
      var arg_enterpriseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/storeLayout/pages", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/storeLayout/pages"));
        pathOffset += 18;

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
        var resp = convert.json.encode(buildStoreLayoutPagesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStoreLayoutPagesListResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.StorelayoutpagesResourceApi res =
          new api.AndroidenterpriseApi(mock).storelayoutpages;
      var arg_request = buildStorePage();
      var arg_enterpriseId = "foo";
      var arg_pageId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.StorePage.fromJson(json);
        checkStorePage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/storeLayout/pages/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_pageId"));

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
        var resp = convert.json.encode(buildStorePage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_enterpriseId, arg_pageId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStorePage(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.StorelayoutpagesResourceApi res =
          new api.AndroidenterpriseApi(mock).storelayoutpages;
      var arg_request = buildStorePage();
      var arg_enterpriseId = "foo";
      var arg_pageId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.StorePage.fromJson(json);
        checkStorePage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/storeLayout/pages/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/storeLayout/pages/"));
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_pageId"));

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
        var resp = convert.json.encode(buildStorePage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_pageId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStorePage(response);
      })));
    });
  });

  unittest.group("resource-UsersResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AndroidenterpriseApi(mock).users;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_enterpriseId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--generateAuthenticationToken", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AndroidenterpriseApi(mock).users;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/authenticationToken", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/authenticationToken"));
        pathOffset += 20;

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
        var resp = convert.json.encode(buildAuthenticationToken());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateAuthenticationToken(arg_enterpriseId, arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAuthenticationToken(response);
      })));
    });

    unittest.test("method--generateToken", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AndroidenterpriseApi(mock).users;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/token", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/token"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildUserToken());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateToken(arg_enterpriseId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUserToken(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AndroidenterpriseApi(mock).users;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

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
        var resp = convert.json.encode(buildUser());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUser(response);
      })));
    });

    unittest.test("method--getAvailableProductSet", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AndroidenterpriseApi(mock).users;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/availableProductSet", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/availableProductSet"));
        pathOffset += 20;

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
        var resp = convert.json.encode(buildProductSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAvailableProductSet(arg_enterpriseId, arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductSet(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AndroidenterpriseApi(mock).users;
      var arg_request = buildUser();
      var arg_enterpriseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.User.fromJson(json);
        checkUser(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/users"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildUser());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUser(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AndroidenterpriseApi(mock).users;
      var arg_enterpriseId = "foo";
      var arg_email = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/users"));
        pathOffset += 6;

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
        unittest.expect(queryMap["email"].first, unittest.equals(arg_email));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildUsersListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, arg_email, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUsersListResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AndroidenterpriseApi(mock).users;
      var arg_request = buildUser();
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.User.fromJson(json);
        checkUser(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

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
        var resp = convert.json.encode(buildUser());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_enterpriseId, arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUser(response);
      })));
    });

    unittest.test("method--revokeDeviceAccess", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AndroidenterpriseApi(mock).users;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/deviceAccess", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/deviceAccess"));
        pathOffset += 13;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .revokeDeviceAccess(arg_enterpriseId, arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--revokeToken", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AndroidenterpriseApi(mock).users;
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/token", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/token"));
        pathOffset += 6;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .revokeToken(arg_enterpriseId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--setAvailableProductSet", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AndroidenterpriseApi(mock).users;
      var arg_request = buildProductSet();
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ProductSet.fromJson(json);
        checkProductSet(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        index = path.indexOf("/availableProductSet", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/availableProductSet"));
        pathOffset += 20;

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
        var resp = convert.json.encode(buildProductSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setAvailableProductSet(arg_request, arg_enterpriseId, arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductSet(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.AndroidenterpriseApi(mock).users;
      var arg_request = buildUser();
      var arg_enterpriseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.User.fromJson(json);
        checkUser(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/users/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/users/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

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
        var resp = convert.json.encode(buildUser());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_userId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUser(response);
      })));
    });
  });

  unittest.group("resource-WebappsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.WebappsResourceApi res = new api.AndroidenterpriseApi(mock).webapps;
      var arg_enterpriseId = "foo";
      var arg_webAppId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/webApps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/webApps/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_webAppId"));

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_enterpriseId, arg_webAppId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.WebappsResourceApi res = new api.AndroidenterpriseApi(mock).webapps;
      var arg_enterpriseId = "foo";
      var arg_webAppId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/webApps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/webApps/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_webAppId"));

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
        var resp = convert.json.encode(buildWebApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_enterpriseId, arg_webAppId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebApp(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.WebappsResourceApi res = new api.AndroidenterpriseApi(mock).webapps;
      var arg_request = buildWebApp();
      var arg_enterpriseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.WebApp.fromJson(json);
        checkWebApp(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/webApps", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/webApps"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildWebApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebApp(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.WebappsResourceApi res = new api.AndroidenterpriseApi(mock).webapps;
      var arg_enterpriseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/webApps", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/webApps"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildWebAppsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_enterpriseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebAppsListResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.WebappsResourceApi res = new api.AndroidenterpriseApi(mock).webapps;
      var arg_request = buildWebApp();
      var arg_enterpriseId = "foo";
      var arg_webAppId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.WebApp.fromJson(json);
        checkWebApp(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/webApps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/webApps/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_webAppId"));

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
        var resp = convert.json.encode(buildWebApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_enterpriseId, arg_webAppId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebApp(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.WebappsResourceApi res = new api.AndroidenterpriseApi(mock).webapps;
      var arg_request = buildWebApp();
      var arg_enterpriseId = "foo";
      var arg_webAppId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.WebApp.fromJson(json);
        checkWebApp(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("androidenterprise/v1/"));
        pathOffset += 21;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("enterprises/"));
        pathOffset += 12;
        index = path.indexOf("/webApps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_enterpriseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/webApps/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_webAppId"));

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
        var resp = convert.json.encode(buildWebApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_enterpriseId, arg_webAppId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebApp(response);
      })));
    });
  });
}
