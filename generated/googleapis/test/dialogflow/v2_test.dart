library googleapis.dialogflow.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/dialogflow/v2.dart' as api;

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

buildUnnamed4414() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4414(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2Agent = 0;
buildGoogleCloudDialogflowV2Agent() {
  var o = new api.GoogleCloudDialogflowV2Agent();
  buildCounterGoogleCloudDialogflowV2Agent++;
  if (buildCounterGoogleCloudDialogflowV2Agent < 3) {
    o.apiVersion = "foo";
    o.avatarUri = "foo";
    o.classificationThreshold = 42.0;
    o.defaultLanguageCode = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.enableLogging = true;
    o.matchMode = "foo";
    o.parent = "foo";
    o.supportedLanguageCodes = buildUnnamed4414();
    o.tier = "foo";
    o.timeZone = "foo";
  }
  buildCounterGoogleCloudDialogflowV2Agent--;
  return o;
}

checkGoogleCloudDialogflowV2Agent(api.GoogleCloudDialogflowV2Agent o) {
  buildCounterGoogleCloudDialogflowV2Agent++;
  if (buildCounterGoogleCloudDialogflowV2Agent < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.avatarUri, unittest.equals('foo'));
    unittest.expect(o.classificationThreshold, unittest.equals(42.0));
    unittest.expect(o.defaultLanguageCode, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enableLogging, unittest.isTrue);
    unittest.expect(o.matchMode, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    checkUnnamed4414(o.supportedLanguageCodes);
    unittest.expect(o.tier, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2Agent--;
}

buildUnnamed4415() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

checkUnnamed4415(core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest = 0;
buildGoogleCloudDialogflowV2BatchCreateEntitiesRequest() {
  var o = new api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest();
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest < 3) {
    o.entities = buildUnnamed4415();
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2BatchCreateEntitiesRequest(
    api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest < 3) {
    checkUnnamed4415(o.entities);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest--;
}

buildUnnamed4416() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4416(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest = 0;
buildGoogleCloudDialogflowV2BatchDeleteEntitiesRequest() {
  var o = new api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest();
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest < 3) {
    o.entityValues = buildUnnamed4416();
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2BatchDeleteEntitiesRequest(
    api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest < 3) {
    checkUnnamed4416(o.entityValues);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest--;
}

buildUnnamed4417() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4417(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest = 0;
buildGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest() {
  var o = new api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest();
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest < 3) {
    o.entityTypeNames = buildUnnamed4417();
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest(
    api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest < 3) {
    checkUnnamed4417(o.entityTypeNames);
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest--;
}

buildUnnamed4418() {
  var o = new core.List<api.GoogleCloudDialogflowV2Intent>();
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

checkUnnamed4418(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0]);
  checkGoogleCloudDialogflowV2Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest = 0;
buildGoogleCloudDialogflowV2BatchDeleteIntentsRequest() {
  var o = new api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest();
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest < 3) {
    o.intents = buildUnnamed4418();
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest--;
  return o;
}

checkGoogleCloudDialogflowV2BatchDeleteIntentsRequest(
    api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest < 3) {
    checkUnnamed4418(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest--;
}

buildUnnamed4419() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

checkUnnamed4419(core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest = 0;
buildGoogleCloudDialogflowV2BatchUpdateEntitiesRequest() {
  var o = new api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest();
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest < 3) {
    o.entities = buildUnnamed4419();
    o.languageCode = "foo";
    o.updateMask = "foo";
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2BatchUpdateEntitiesRequest(
    api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest < 3) {
    checkUnnamed4419(o.entities);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest = 0;
buildGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest() {
  var o = new api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest();
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest < 3) {
    o.entityTypeBatchInline = buildGoogleCloudDialogflowV2EntityTypeBatch();
    o.entityTypeBatchUri = "foo";
    o.languageCode = "foo";
    o.updateMask = "foo";
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest(
    api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest < 3) {
    checkGoogleCloudDialogflowV2EntityTypeBatch(o.entityTypeBatchInline);
    unittest.expect(o.entityTypeBatchUri, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest--;
}

buildUnnamed4420() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityType>();
  o.add(buildGoogleCloudDialogflowV2EntityType());
  o.add(buildGoogleCloudDialogflowV2EntityType());
  return o;
}

checkUnnamed4420(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityType(o[0]);
  checkGoogleCloudDialogflowV2EntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse = 0;
buildGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse() {
  var o = new api.GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed4420();
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse(
    api.GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse < 3) {
    checkUnnamed4420(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest = 0;
buildGoogleCloudDialogflowV2BatchUpdateIntentsRequest() {
  var o = new api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest();
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest < 3) {
    o.intentBatchInline = buildGoogleCloudDialogflowV2IntentBatch();
    o.intentBatchUri = "foo";
    o.intentView = "foo";
    o.languageCode = "foo";
    o.updateMask = "foo";
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest--;
  return o;
}

checkGoogleCloudDialogflowV2BatchUpdateIntentsRequest(
    api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest < 3) {
    checkGoogleCloudDialogflowV2IntentBatch(o.intentBatchInline);
    unittest.expect(o.intentBatchUri, unittest.equals('foo'));
    unittest.expect(o.intentView, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest--;
}

buildUnnamed4421() {
  var o = new core.List<api.GoogleCloudDialogflowV2Intent>();
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

checkUnnamed4421(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0]);
  checkGoogleCloudDialogflowV2Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse = 0;
buildGoogleCloudDialogflowV2BatchUpdateIntentsResponse() {
  var o = new api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse();
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse < 3) {
    o.intents = buildUnnamed4421();
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2BatchUpdateIntentsResponse(
    api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse < 3) {
    checkUnnamed4421(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse--;
}

buildUnnamed4422() {
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

checkUnnamed4422(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2Context = 0;
buildGoogleCloudDialogflowV2Context() {
  var o = new api.GoogleCloudDialogflowV2Context();
  buildCounterGoogleCloudDialogflowV2Context++;
  if (buildCounterGoogleCloudDialogflowV2Context < 3) {
    o.lifespanCount = 42;
    o.name = "foo";
    o.parameters = buildUnnamed4422();
  }
  buildCounterGoogleCloudDialogflowV2Context--;
  return o;
}

checkGoogleCloudDialogflowV2Context(api.GoogleCloudDialogflowV2Context o) {
  buildCounterGoogleCloudDialogflowV2Context++;
  if (buildCounterGoogleCloudDialogflowV2Context < 3) {
    unittest.expect(o.lifespanCount, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4422(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2Context--;
}

core.int buildCounterGoogleCloudDialogflowV2DetectIntentRequest = 0;
buildGoogleCloudDialogflowV2DetectIntentRequest() {
  var o = new api.GoogleCloudDialogflowV2DetectIntentRequest();
  buildCounterGoogleCloudDialogflowV2DetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2DetectIntentRequest < 3) {
    o.inputAudio = "foo";
    o.outputAudioConfig = buildGoogleCloudDialogflowV2OutputAudioConfig();
    o.queryInput = buildGoogleCloudDialogflowV2QueryInput();
    o.queryParams = buildGoogleCloudDialogflowV2QueryParameters();
  }
  buildCounterGoogleCloudDialogflowV2DetectIntentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2DetectIntentRequest(
    api.GoogleCloudDialogflowV2DetectIntentRequest o) {
  buildCounterGoogleCloudDialogflowV2DetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2DetectIntentRequest < 3) {
    unittest.expect(o.inputAudio, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2OutputAudioConfig(o.outputAudioConfig);
    checkGoogleCloudDialogflowV2QueryInput(o.queryInput);
    checkGoogleCloudDialogflowV2QueryParameters(o.queryParams);
  }
  buildCounterGoogleCloudDialogflowV2DetectIntentRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2DetectIntentResponse = 0;
buildGoogleCloudDialogflowV2DetectIntentResponse() {
  var o = new api.GoogleCloudDialogflowV2DetectIntentResponse();
  buildCounterGoogleCloudDialogflowV2DetectIntentResponse++;
  if (buildCounterGoogleCloudDialogflowV2DetectIntentResponse < 3) {
    o.outputAudio = "foo";
    o.outputAudioConfig = buildGoogleCloudDialogflowV2OutputAudioConfig();
    o.queryResult = buildGoogleCloudDialogflowV2QueryResult();
    o.responseId = "foo";
    o.webhookStatus = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudDialogflowV2DetectIntentResponse--;
  return o;
}

checkGoogleCloudDialogflowV2DetectIntentResponse(
    api.GoogleCloudDialogflowV2DetectIntentResponse o) {
  buildCounterGoogleCloudDialogflowV2DetectIntentResponse++;
  if (buildCounterGoogleCloudDialogflowV2DetectIntentResponse < 3) {
    unittest.expect(o.outputAudio, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2OutputAudioConfig(o.outputAudioConfig);
    checkGoogleCloudDialogflowV2QueryResult(o.queryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
    checkGoogleRpcStatus(o.webhookStatus);
  }
  buildCounterGoogleCloudDialogflowV2DetectIntentResponse--;
}

buildUnnamed4423() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

checkUnnamed4423(core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2EntityType = 0;
buildGoogleCloudDialogflowV2EntityType() {
  var o = new api.GoogleCloudDialogflowV2EntityType();
  buildCounterGoogleCloudDialogflowV2EntityType++;
  if (buildCounterGoogleCloudDialogflowV2EntityType < 3) {
    o.autoExpansionMode = "foo";
    o.displayName = "foo";
    o.enableFuzzyExtraction = true;
    o.entities = buildUnnamed4423();
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterGoogleCloudDialogflowV2EntityType--;
  return o;
}

checkGoogleCloudDialogflowV2EntityType(
    api.GoogleCloudDialogflowV2EntityType o) {
  buildCounterGoogleCloudDialogflowV2EntityType++;
  if (buildCounterGoogleCloudDialogflowV2EntityType < 3) {
    unittest.expect(o.autoExpansionMode, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enableFuzzyExtraction, unittest.isTrue);
    checkUnnamed4423(o.entities);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2EntityType--;
}

buildUnnamed4424() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityType>();
  o.add(buildGoogleCloudDialogflowV2EntityType());
  o.add(buildGoogleCloudDialogflowV2EntityType());
  return o;
}

checkUnnamed4424(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityType(o[0]);
  checkGoogleCloudDialogflowV2EntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2EntityTypeBatch = 0;
buildGoogleCloudDialogflowV2EntityTypeBatch() {
  var o = new api.GoogleCloudDialogflowV2EntityTypeBatch();
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeBatch < 3) {
    o.entityTypes = buildUnnamed4424();
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch--;
  return o;
}

checkGoogleCloudDialogflowV2EntityTypeBatch(
    api.GoogleCloudDialogflowV2EntityTypeBatch o) {
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeBatch < 3) {
    checkUnnamed4424(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch--;
}

buildUnnamed4425() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4425(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2EntityTypeEntity = 0;
buildGoogleCloudDialogflowV2EntityTypeEntity() {
  var o = new api.GoogleCloudDialogflowV2EntityTypeEntity();
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeEntity < 3) {
    o.synonyms = buildUnnamed4425();
    o.value = "foo";
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity--;
  return o;
}

checkGoogleCloudDialogflowV2EntityTypeEntity(
    api.GoogleCloudDialogflowV2EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeEntity < 3) {
    checkUnnamed4425(o.synonyms);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity--;
}

buildUnnamed4426() {
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

checkUnnamed4426(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2EventInput = 0;
buildGoogleCloudDialogflowV2EventInput() {
  var o = new api.GoogleCloudDialogflowV2EventInput();
  buildCounterGoogleCloudDialogflowV2EventInput++;
  if (buildCounterGoogleCloudDialogflowV2EventInput < 3) {
    o.languageCode = "foo";
    o.name = "foo";
    o.parameters = buildUnnamed4426();
  }
  buildCounterGoogleCloudDialogflowV2EventInput--;
  return o;
}

checkGoogleCloudDialogflowV2EventInput(
    api.GoogleCloudDialogflowV2EventInput o) {
  buildCounterGoogleCloudDialogflowV2EventInput++;
  if (buildCounterGoogleCloudDialogflowV2EventInput < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4426(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2EventInput--;
}

core.int buildCounterGoogleCloudDialogflowV2ExportAgentRequest = 0;
buildGoogleCloudDialogflowV2ExportAgentRequest() {
  var o = new api.GoogleCloudDialogflowV2ExportAgentRequest();
  buildCounterGoogleCloudDialogflowV2ExportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2ExportAgentRequest < 3) {
    o.agentUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2ExportAgentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2ExportAgentRequest(
    api.GoogleCloudDialogflowV2ExportAgentRequest o) {
  buildCounterGoogleCloudDialogflowV2ExportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2ExportAgentRequest < 3) {
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ExportAgentRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2ExportAgentResponse = 0;
buildGoogleCloudDialogflowV2ExportAgentResponse() {
  var o = new api.GoogleCloudDialogflowV2ExportAgentResponse();
  buildCounterGoogleCloudDialogflowV2ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV2ExportAgentResponse < 3) {
    o.agentContent = "foo";
    o.agentUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2ExportAgentResponse--;
  return o;
}

checkGoogleCloudDialogflowV2ExportAgentResponse(
    api.GoogleCloudDialogflowV2ExportAgentResponse o) {
  buildCounterGoogleCloudDialogflowV2ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV2ExportAgentResponse < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ExportAgentResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2ImportAgentRequest = 0;
buildGoogleCloudDialogflowV2ImportAgentRequest() {
  var o = new api.GoogleCloudDialogflowV2ImportAgentRequest();
  buildCounterGoogleCloudDialogflowV2ImportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2ImportAgentRequest < 3) {
    o.agentContent = "foo";
    o.agentUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2ImportAgentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2ImportAgentRequest(
    api.GoogleCloudDialogflowV2ImportAgentRequest o) {
  buildCounterGoogleCloudDialogflowV2ImportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2ImportAgentRequest < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ImportAgentRequest--;
}

buildUnnamed4427() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4427(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2InputAudioConfig = 0;
buildGoogleCloudDialogflowV2InputAudioConfig() {
  var o = new api.GoogleCloudDialogflowV2InputAudioConfig();
  buildCounterGoogleCloudDialogflowV2InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2InputAudioConfig < 3) {
    o.audioEncoding = "foo";
    o.languageCode = "foo";
    o.modelVariant = "foo";
    o.phraseHints = buildUnnamed4427();
    o.sampleRateHertz = 42;
    o.singleUtterance = true;
  }
  buildCounterGoogleCloudDialogflowV2InputAudioConfig--;
  return o;
}

checkGoogleCloudDialogflowV2InputAudioConfig(
    api.GoogleCloudDialogflowV2InputAudioConfig o) {
  buildCounterGoogleCloudDialogflowV2InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2InputAudioConfig < 3) {
    unittest.expect(o.audioEncoding, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.modelVariant, unittest.equals('foo'));
    checkUnnamed4427(o.phraseHints);
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    unittest.expect(o.singleUtterance, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2InputAudioConfig--;
}

buildUnnamed4428() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4428(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4429() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4429(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4430() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentFollowupIntentInfo>();
  o.add(buildGoogleCloudDialogflowV2IntentFollowupIntentInfo());
  o.add(buildGoogleCloudDialogflowV2IntentFollowupIntentInfo());
  return o;
}

checkUnnamed4430(
    core.List<api.GoogleCloudDialogflowV2IntentFollowupIntentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(o[0]);
  checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(o[1]);
}

buildUnnamed4431() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4431(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4432() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

checkUnnamed4432(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2IntentMessage(o[1]);
}

buildUnnamed4433() {
  var o = new core.List<api.GoogleCloudDialogflowV2Context>();
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

checkUnnamed4433(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

buildUnnamed4434() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentParameter>();
  o.add(buildGoogleCloudDialogflowV2IntentParameter());
  o.add(buildGoogleCloudDialogflowV2IntentParameter());
  return o;
}

checkUnnamed4434(core.List<api.GoogleCloudDialogflowV2IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentParameter(o[0]);
  checkGoogleCloudDialogflowV2IntentParameter(o[1]);
}

buildUnnamed4435() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrase>();
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrase());
  return o;
}

checkUnnamed4435(core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentTrainingPhrase(o[0]);
  checkGoogleCloudDialogflowV2IntentTrainingPhrase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2Intent = 0;
buildGoogleCloudDialogflowV2Intent() {
  var o = new api.GoogleCloudDialogflowV2Intent();
  buildCounterGoogleCloudDialogflowV2Intent++;
  if (buildCounterGoogleCloudDialogflowV2Intent < 3) {
    o.action = "foo";
    o.defaultResponsePlatforms = buildUnnamed4428();
    o.displayName = "foo";
    o.events = buildUnnamed4429();
    o.followupIntentInfo = buildUnnamed4430();
    o.inputContextNames = buildUnnamed4431();
    o.isFallback = true;
    o.messages = buildUnnamed4432();
    o.mlDisabled = true;
    o.name = "foo";
    o.outputContexts = buildUnnamed4433();
    o.parameters = buildUnnamed4434();
    o.parentFollowupIntentName = "foo";
    o.priority = 42;
    o.resetContexts = true;
    o.rootFollowupIntentName = "foo";
    o.trainingPhrases = buildUnnamed4435();
    o.webhookState = "foo";
  }
  buildCounterGoogleCloudDialogflowV2Intent--;
  return o;
}

checkGoogleCloudDialogflowV2Intent(api.GoogleCloudDialogflowV2Intent o) {
  buildCounterGoogleCloudDialogflowV2Intent++;
  if (buildCounterGoogleCloudDialogflowV2Intent < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed4428(o.defaultResponsePlatforms);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed4429(o.events);
    checkUnnamed4430(o.followupIntentInfo);
    checkUnnamed4431(o.inputContextNames);
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed4432(o.messages);
    unittest.expect(o.mlDisabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4433(o.outputContexts);
    checkUnnamed4434(o.parameters);
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.resetContexts, unittest.isTrue);
    unittest.expect(o.rootFollowupIntentName, unittest.equals('foo'));
    checkUnnamed4435(o.trainingPhrases);
    unittest.expect(o.webhookState, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2Intent--;
}

buildUnnamed4436() {
  var o = new core.List<api.GoogleCloudDialogflowV2Intent>();
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

checkUnnamed4436(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0]);
  checkGoogleCloudDialogflowV2Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentBatch = 0;
buildGoogleCloudDialogflowV2IntentBatch() {
  var o = new api.GoogleCloudDialogflowV2IntentBatch();
  buildCounterGoogleCloudDialogflowV2IntentBatch++;
  if (buildCounterGoogleCloudDialogflowV2IntentBatch < 3) {
    o.intents = buildUnnamed4436();
  }
  buildCounterGoogleCloudDialogflowV2IntentBatch--;
  return o;
}

checkGoogleCloudDialogflowV2IntentBatch(
    api.GoogleCloudDialogflowV2IntentBatch o) {
  buildCounterGoogleCloudDialogflowV2IntentBatch++;
  if (buildCounterGoogleCloudDialogflowV2IntentBatch < 3) {
    checkUnnamed4436(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2IntentBatch--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo = 0;
buildGoogleCloudDialogflowV2IntentFollowupIntentInfo() {
  var o = new api.GoogleCloudDialogflowV2IntentFollowupIntentInfo();
  buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo < 3) {
    o.followupIntentName = "foo";
    o.parentFollowupIntentName = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo--;
  return o;
}

checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(
    api.GoogleCloudDialogflowV2IntentFollowupIntentInfo o) {
  buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo < 3) {
    unittest.expect(o.followupIntentName, unittest.equals('foo'));
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo--;
}

buildUnnamed4437() {
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

checkUnnamed4437(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2IntentMessage = 0;
buildGoogleCloudDialogflowV2IntentMessage() {
  var o = new api.GoogleCloudDialogflowV2IntentMessage();
  buildCounterGoogleCloudDialogflowV2IntentMessage++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessage < 3) {
    o.basicCard = buildGoogleCloudDialogflowV2IntentMessageBasicCard();
    o.card = buildGoogleCloudDialogflowV2IntentMessageCard();
    o.carouselSelect =
        buildGoogleCloudDialogflowV2IntentMessageCarouselSelect();
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.linkOutSuggestion =
        buildGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion();
    o.listSelect = buildGoogleCloudDialogflowV2IntentMessageListSelect();
    o.payload = buildUnnamed4437();
    o.platform = "foo";
    o.quickReplies = buildGoogleCloudDialogflowV2IntentMessageQuickReplies();
    o.simpleResponses =
        buildGoogleCloudDialogflowV2IntentMessageSimpleResponses();
    o.suggestions = buildGoogleCloudDialogflowV2IntentMessageSuggestions();
    o.text = buildGoogleCloudDialogflowV2IntentMessageText();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessage--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessage(
    api.GoogleCloudDialogflowV2IntentMessage o) {
  buildCounterGoogleCloudDialogflowV2IntentMessage++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessage < 3) {
    checkGoogleCloudDialogflowV2IntentMessageBasicCard(o.basicCard);
    checkGoogleCloudDialogflowV2IntentMessageCard(o.card);
    checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(o.carouselSelect);
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image);
    checkGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion(
        o.linkOutSuggestion);
    checkGoogleCloudDialogflowV2IntentMessageListSelect(o.listSelect);
    checkUnnamed4437(o.payload);
    unittest.expect(o.platform, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageQuickReplies(o.quickReplies);
    checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(o.simpleResponses);
    checkGoogleCloudDialogflowV2IntentMessageSuggestions(o.suggestions);
    checkGoogleCloudDialogflowV2IntentMessageText(o.text);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessage--;
}

buildUnnamed4438() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  return o;
}

checkUnnamed4438(
    core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard = 0;
buildGoogleCloudDialogflowV2IntentMessageBasicCard() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageBasicCard();
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard < 3) {
    o.buttons = buildUnnamed4438();
    o.formattedText = "foo";
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.subtitle = "foo";
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageBasicCard(
    api.GoogleCloudDialogflowV2IntentMessageBasicCard o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard < 3) {
    checkUnnamed4438(o.buttons);
    unittest.expect(o.formattedText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton = 0;
buildGoogleCloudDialogflowV2IntentMessageBasicCardButton() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageBasicCardButton();
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton < 3) {
    o.openUriAction =
        buildGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(
    api.GoogleCloudDialogflowV2IntentMessageBasicCardButton o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton < 3) {
    checkGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction(
        o.openUriAction);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton--;
}

core.int
    buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction =
    0;
buildGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction() {
  var o = new api
      .GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction();
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction <
      3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction(
    api.GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction <
      3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction--;
}

buildUnnamed4439() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessageCardButton>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageCardButton());
  return o;
}

checkUnnamed4439(
    core.List<api.GoogleCloudDialogflowV2IntentMessageCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageCardButton(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageCardButton(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageCard = 0;
buildGoogleCloudDialogflowV2IntentMessageCard() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageCard();
  buildCounterGoogleCloudDialogflowV2IntentMessageCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCard < 3) {
    o.buttons = buildUnnamed4439();
    o.imageUri = "foo";
    o.subtitle = "foo";
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCard--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageCard(
    api.GoogleCloudDialogflowV2IntentMessageCard o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCard < 3) {
    checkUnnamed4439(o.buttons);
    unittest.expect(o.imageUri, unittest.equals('foo'));
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCard--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageCardButton = 0;
buildGoogleCloudDialogflowV2IntentMessageCardButton() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageCardButton();
  buildCounterGoogleCloudDialogflowV2IntentMessageCardButton++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCardButton < 3) {
    o.postback = "foo";
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCardButton--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageCardButton(
    api.GoogleCloudDialogflowV2IntentMessageCardButton o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCardButton++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCardButton < 3) {
    unittest.expect(o.postback, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCardButton--;
}

buildUnnamed4440() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem());
  o.add(buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem());
  return o;
}

checkUnnamed4440(
    core.List<api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect = 0;
buildGoogleCloudDialogflowV2IntentMessageCarouselSelect() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageCarouselSelect();
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect < 3) {
    o.items = buildUnnamed4440();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(
    api.GoogleCloudDialogflowV2IntentMessageCarouselSelect o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect < 3) {
    checkUnnamed4440(o.items);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem = 0;
buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem();
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem < 3) {
    o.description = "foo";
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.info = buildGoogleCloudDialogflowV2IntentMessageSelectItemInfo();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(
    api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image);
    checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(o.info);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageImage = 0;
buildGoogleCloudDialogflowV2IntentMessageImage() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageImage();
  buildCounterGoogleCloudDialogflowV2IntentMessageImage++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageImage < 3) {
    o.accessibilityText = "foo";
    o.imageUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageImage--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageImage(
    api.GoogleCloudDialogflowV2IntentMessageImage o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageImage++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageImage < 3) {
    unittest.expect(o.accessibilityText, unittest.equals('foo'));
    unittest.expect(o.imageUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageImage--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion = 0;
buildGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion();
  buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion < 3) {
    o.destinationName = "foo";
    o.uri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion(
    api.GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion < 3) {
    unittest.expect(o.destinationName, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion--;
}

buildUnnamed4441() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2IntentMessageListSelectItem>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageListSelectItem());
  o.add(buildGoogleCloudDialogflowV2IntentMessageListSelectItem());
  return o;
}

checkUnnamed4441(
    core.List<api.GoogleCloudDialogflowV2IntentMessageListSelectItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageListSelectItem(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageListSelectItem(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageListSelect = 0;
buildGoogleCloudDialogflowV2IntentMessageListSelect() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageListSelect();
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageListSelect < 3) {
    o.items = buildUnnamed4441();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageListSelect(
    api.GoogleCloudDialogflowV2IntentMessageListSelect o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageListSelect < 3) {
    checkUnnamed4441(o.items);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem = 0;
buildGoogleCloudDialogflowV2IntentMessageListSelectItem() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageListSelectItem();
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem < 3) {
    o.description = "foo";
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.info = buildGoogleCloudDialogflowV2IntentMessageSelectItemInfo();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageListSelectItem(
    api.GoogleCloudDialogflowV2IntentMessageListSelectItem o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image);
    checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(o.info);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem--;
}

buildUnnamed4442() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4442(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies = 0;
buildGoogleCloudDialogflowV2IntentMessageQuickReplies() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageQuickReplies();
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies < 3) {
    o.quickReplies = buildUnnamed4442();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageQuickReplies(
    api.GoogleCloudDialogflowV2IntentMessageQuickReplies o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies < 3) {
    checkUnnamed4442(o.quickReplies);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies--;
}

buildUnnamed4443() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4443(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo = 0;
buildGoogleCloudDialogflowV2IntentMessageSelectItemInfo() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo();
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo < 3) {
    o.key = "foo";
    o.synonyms = buildUnnamed4443();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(
    api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed4443(o.synonyms);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse = 0;
buildGoogleCloudDialogflowV2IntentMessageSimpleResponse() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageSimpleResponse();
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse < 3) {
    o.displayText = "foo";
    o.ssml = "foo";
    o.textToSpeech = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageSimpleResponse(
    api.GoogleCloudDialogflowV2IntentMessageSimpleResponse o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse < 3) {
    unittest.expect(o.displayText, unittest.equals('foo'));
    unittest.expect(o.ssml, unittest.equals('foo'));
    unittest.expect(o.textToSpeech, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse--;
}

buildUnnamed4444() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2IntentMessageSimpleResponse>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageSimpleResponse());
  o.add(buildGoogleCloudDialogflowV2IntentMessageSimpleResponse());
  return o;
}

checkUnnamed4444(
    core.List<api.GoogleCloudDialogflowV2IntentMessageSimpleResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageSimpleResponse(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageSimpleResponse(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses = 0;
buildGoogleCloudDialogflowV2IntentMessageSimpleResponses() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageSimpleResponses();
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses < 3) {
    o.simpleResponses = buildUnnamed4444();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(
    api.GoogleCloudDialogflowV2IntentMessageSimpleResponses o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses < 3) {
    checkUnnamed4444(o.simpleResponses);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion = 0;
buildGoogleCloudDialogflowV2IntentMessageSuggestion() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageSuggestion();
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion < 3) {
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageSuggestion(
    api.GoogleCloudDialogflowV2IntentMessageSuggestion o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion < 3) {
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion--;
}

buildUnnamed4445() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessageSuggestion>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageSuggestion());
  o.add(buildGoogleCloudDialogflowV2IntentMessageSuggestion());
  return o;
}

checkUnnamed4445(
    core.List<api.GoogleCloudDialogflowV2IntentMessageSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageSuggestion(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageSuggestion(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions = 0;
buildGoogleCloudDialogflowV2IntentMessageSuggestions() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageSuggestions();
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions < 3) {
    o.suggestions = buildUnnamed4445();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageSuggestions(
    api.GoogleCloudDialogflowV2IntentMessageSuggestions o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions < 3) {
    checkUnnamed4445(o.suggestions);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions--;
}

buildUnnamed4446() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4446(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageText = 0;
buildGoogleCloudDialogflowV2IntentMessageText() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageText();
  buildCounterGoogleCloudDialogflowV2IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageText < 3) {
    o.text = buildUnnamed4446();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageText--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageText(
    api.GoogleCloudDialogflowV2IntentMessageText o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageText < 3) {
    checkUnnamed4446(o.text);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageText--;
}

buildUnnamed4447() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4447(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentParameter = 0;
buildGoogleCloudDialogflowV2IntentParameter() {
  var o = new api.GoogleCloudDialogflowV2IntentParameter();
  buildCounterGoogleCloudDialogflowV2IntentParameter++;
  if (buildCounterGoogleCloudDialogflowV2IntentParameter < 3) {
    o.defaultValue = "foo";
    o.displayName = "foo";
    o.entityTypeDisplayName = "foo";
    o.isList = true;
    o.mandatory = true;
    o.name = "foo";
    o.prompts = buildUnnamed4447();
    o.value = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentParameter--;
  return o;
}

checkGoogleCloudDialogflowV2IntentParameter(
    api.GoogleCloudDialogflowV2IntentParameter o) {
  buildCounterGoogleCloudDialogflowV2IntentParameter++;
  if (buildCounterGoogleCloudDialogflowV2IntentParameter < 3) {
    unittest.expect(o.defaultValue, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityTypeDisplayName, unittest.equals('foo'));
    unittest.expect(o.isList, unittest.isTrue);
    unittest.expect(o.mandatory, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4447(o.prompts);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentParameter--;
}

buildUnnamed4448() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrasePart>();
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrasePart());
  return o;
}

checkUnnamed4448(
    core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrasePart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentTrainingPhrasePart(o[0]);
  checkGoogleCloudDialogflowV2IntentTrainingPhrasePart(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase = 0;
buildGoogleCloudDialogflowV2IntentTrainingPhrase() {
  var o = new api.GoogleCloudDialogflowV2IntentTrainingPhrase();
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase < 3) {
    o.name = "foo";
    o.parts = buildUnnamed4448();
    o.timesAddedCount = 42;
    o.type = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase--;
  return o;
}

checkGoogleCloudDialogflowV2IntentTrainingPhrase(
    api.GoogleCloudDialogflowV2IntentTrainingPhrase o) {
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4448(o.parts);
    unittest.expect(o.timesAddedCount, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart = 0;
buildGoogleCloudDialogflowV2IntentTrainingPhrasePart() {
  var o = new api.GoogleCloudDialogflowV2IntentTrainingPhrasePart();
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart < 3) {
    o.alias = "foo";
    o.entityType = "foo";
    o.text = "foo";
    o.userDefined = true;
  }
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart--;
  return o;
}

checkGoogleCloudDialogflowV2IntentTrainingPhrasePart(
    api.GoogleCloudDialogflowV2IntentTrainingPhrasePart o) {
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart < 3) {
    unittest.expect(o.alias, unittest.equals('foo'));
    unittest.expect(o.entityType, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.userDefined, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart--;
}

buildUnnamed4449() {
  var o = new core.List<api.GoogleCloudDialogflowV2Context>();
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

checkUnnamed4449(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListContextsResponse = 0;
buildGoogleCloudDialogflowV2ListContextsResponse() {
  var o = new api.GoogleCloudDialogflowV2ListContextsResponse();
  buildCounterGoogleCloudDialogflowV2ListContextsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListContextsResponse < 3) {
    o.contexts = buildUnnamed4449();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2ListContextsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2ListContextsResponse(
    api.GoogleCloudDialogflowV2ListContextsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListContextsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListContextsResponse < 3) {
    checkUnnamed4449(o.contexts);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ListContextsResponse--;
}

buildUnnamed4450() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityType>();
  o.add(buildGoogleCloudDialogflowV2EntityType());
  o.add(buildGoogleCloudDialogflowV2EntityType());
  return o;
}

checkUnnamed4450(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityType(o[0]);
  checkGoogleCloudDialogflowV2EntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse = 0;
buildGoogleCloudDialogflowV2ListEntityTypesResponse() {
  var o = new api.GoogleCloudDialogflowV2ListEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed4450();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2ListEntityTypesResponse(
    api.GoogleCloudDialogflowV2ListEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse < 3) {
    checkUnnamed4450(o.entityTypes);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse--;
}

buildUnnamed4451() {
  var o = new core.List<api.GoogleCloudDialogflowV2Intent>();
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

checkUnnamed4451(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0]);
  checkGoogleCloudDialogflowV2Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListIntentsResponse = 0;
buildGoogleCloudDialogflowV2ListIntentsResponse() {
  var o = new api.GoogleCloudDialogflowV2ListIntentsResponse();
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListIntentsResponse < 3) {
    o.intents = buildUnnamed4451();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2ListIntentsResponse(
    api.GoogleCloudDialogflowV2ListIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListIntentsResponse < 3) {
    checkUnnamed4451(o.intents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse--;
}

buildUnnamed4452() {
  var o = new core.List<api.GoogleCloudDialogflowV2SessionEntityType>();
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  return o;
}

checkUnnamed4452(core.List<api.GoogleCloudDialogflowV2SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SessionEntityType(o[0]);
  checkGoogleCloudDialogflowV2SessionEntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse = 0;
buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse() {
  var o = new api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse < 3) {
    o.nextPageToken = "foo";
    o.sessionEntityTypes = buildUnnamed4452();
  }
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(
    api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4452(o.sessionEntityTypes);
  }
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse--;
}

buildUnnamed4453() {
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

checkUnnamed4453(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest = 0;
buildGoogleCloudDialogflowV2OriginalDetectIntentRequest() {
  var o = new api.GoogleCloudDialogflowV2OriginalDetectIntentRequest();
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest < 3) {
    o.payload = buildUnnamed4453();
    o.source = "foo";
    o.version = "foo";
  }
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2OriginalDetectIntentRequest(
    api.GoogleCloudDialogflowV2OriginalDetectIntentRequest o) {
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest < 3) {
    checkUnnamed4453(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2OutputAudioConfig = 0;
buildGoogleCloudDialogflowV2OutputAudioConfig() {
  var o = new api.GoogleCloudDialogflowV2OutputAudioConfig();
  buildCounterGoogleCloudDialogflowV2OutputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2OutputAudioConfig < 3) {
    o.audioEncoding = "foo";
    o.sampleRateHertz = 42;
    o.synthesizeSpeechConfig =
        buildGoogleCloudDialogflowV2SynthesizeSpeechConfig();
  }
  buildCounterGoogleCloudDialogflowV2OutputAudioConfig--;
  return o;
}

checkGoogleCloudDialogflowV2OutputAudioConfig(
    api.GoogleCloudDialogflowV2OutputAudioConfig o) {
  buildCounterGoogleCloudDialogflowV2OutputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2OutputAudioConfig < 3) {
    unittest.expect(o.audioEncoding, unittest.equals('foo'));
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    checkGoogleCloudDialogflowV2SynthesizeSpeechConfig(
        o.synthesizeSpeechConfig);
  }
  buildCounterGoogleCloudDialogflowV2OutputAudioConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2QueryInput = 0;
buildGoogleCloudDialogflowV2QueryInput() {
  var o = new api.GoogleCloudDialogflowV2QueryInput();
  buildCounterGoogleCloudDialogflowV2QueryInput++;
  if (buildCounterGoogleCloudDialogflowV2QueryInput < 3) {
    o.audioConfig = buildGoogleCloudDialogflowV2InputAudioConfig();
    o.event = buildGoogleCloudDialogflowV2EventInput();
    o.text = buildGoogleCloudDialogflowV2TextInput();
  }
  buildCounterGoogleCloudDialogflowV2QueryInput--;
  return o;
}

checkGoogleCloudDialogflowV2QueryInput(
    api.GoogleCloudDialogflowV2QueryInput o) {
  buildCounterGoogleCloudDialogflowV2QueryInput++;
  if (buildCounterGoogleCloudDialogflowV2QueryInput < 3) {
    checkGoogleCloudDialogflowV2InputAudioConfig(o.audioConfig);
    checkGoogleCloudDialogflowV2EventInput(o.event);
    checkGoogleCloudDialogflowV2TextInput(o.text);
  }
  buildCounterGoogleCloudDialogflowV2QueryInput--;
}

buildUnnamed4454() {
  var o = new core.List<api.GoogleCloudDialogflowV2Context>();
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

checkUnnamed4454(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

buildUnnamed4455() {
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

checkUnnamed4455(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o["x"]) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted9["bool"], unittest.equals(true));
  unittest.expect(casted9["string"], unittest.equals('foo'));
  var casted10 = (o["y"]) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted10["bool"], unittest.equals(true));
  unittest.expect(casted10["string"], unittest.equals('foo'));
}

buildUnnamed4456() {
  var o = new core.List<api.GoogleCloudDialogflowV2SessionEntityType>();
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  return o;
}

checkUnnamed4456(core.List<api.GoogleCloudDialogflowV2SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SessionEntityType(o[0]);
  checkGoogleCloudDialogflowV2SessionEntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2QueryParameters = 0;
buildGoogleCloudDialogflowV2QueryParameters() {
  var o = new api.GoogleCloudDialogflowV2QueryParameters();
  buildCounterGoogleCloudDialogflowV2QueryParameters++;
  if (buildCounterGoogleCloudDialogflowV2QueryParameters < 3) {
    o.contexts = buildUnnamed4454();
    o.geoLocation = buildGoogleTypeLatLng();
    o.payload = buildUnnamed4455();
    o.resetContexts = true;
    o.sentimentAnalysisRequestConfig =
        buildGoogleCloudDialogflowV2SentimentAnalysisRequestConfig();
    o.sessionEntityTypes = buildUnnamed4456();
    o.timeZone = "foo";
  }
  buildCounterGoogleCloudDialogflowV2QueryParameters--;
  return o;
}

checkGoogleCloudDialogflowV2QueryParameters(
    api.GoogleCloudDialogflowV2QueryParameters o) {
  buildCounterGoogleCloudDialogflowV2QueryParameters++;
  if (buildCounterGoogleCloudDialogflowV2QueryParameters < 3) {
    checkUnnamed4454(o.contexts);
    checkGoogleTypeLatLng(o.geoLocation);
    checkUnnamed4455(o.payload);
    unittest.expect(o.resetContexts, unittest.isTrue);
    checkGoogleCloudDialogflowV2SentimentAnalysisRequestConfig(
        o.sentimentAnalysisRequestConfig);
    checkUnnamed4456(o.sessionEntityTypes);
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2QueryParameters--;
}

buildUnnamed4457() {
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

checkUnnamed4457(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o["x"]) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted11["bool"], unittest.equals(true));
  unittest.expect(casted11["string"], unittest.equals('foo'));
  var casted12 = (o["y"]) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted12["bool"], unittest.equals(true));
  unittest.expect(casted12["string"], unittest.equals('foo'));
}

buildUnnamed4458() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

checkUnnamed4458(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2IntentMessage(o[1]);
}

buildUnnamed4459() {
  var o = new core.List<api.GoogleCloudDialogflowV2Context>();
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

checkUnnamed4459(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

buildUnnamed4460() {
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

checkUnnamed4460(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o["x"]) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted13["bool"], unittest.equals(true));
  unittest.expect(casted13["string"], unittest.equals('foo'));
  var casted14 = (o["y"]) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted14["bool"], unittest.equals(true));
  unittest.expect(casted14["string"], unittest.equals('foo'));
}

buildUnnamed4461() {
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

checkUnnamed4461(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o["x"]) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted15["bool"], unittest.equals(true));
  unittest.expect(casted15["string"], unittest.equals('foo'));
  var casted16 = (o["y"]) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(casted16["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted16["bool"], unittest.equals(true));
  unittest.expect(casted16["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2QueryResult = 0;
buildGoogleCloudDialogflowV2QueryResult() {
  var o = new api.GoogleCloudDialogflowV2QueryResult();
  buildCounterGoogleCloudDialogflowV2QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2QueryResult < 3) {
    o.action = "foo";
    o.allRequiredParamsPresent = true;
    o.diagnosticInfo = buildUnnamed4457();
    o.fulfillmentMessages = buildUnnamed4458();
    o.fulfillmentText = "foo";
    o.intent = buildGoogleCloudDialogflowV2Intent();
    o.intentDetectionConfidence = 42.0;
    o.languageCode = "foo";
    o.outputContexts = buildUnnamed4459();
    o.parameters = buildUnnamed4460();
    o.queryText = "foo";
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowV2SentimentAnalysisResult();
    o.speechRecognitionConfidence = 42.0;
    o.webhookPayload = buildUnnamed4461();
    o.webhookSource = "foo";
  }
  buildCounterGoogleCloudDialogflowV2QueryResult--;
  return o;
}

checkGoogleCloudDialogflowV2QueryResult(
    api.GoogleCloudDialogflowV2QueryResult o) {
  buildCounterGoogleCloudDialogflowV2QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2QueryResult < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.allRequiredParamsPresent, unittest.isTrue);
    checkUnnamed4457(o.diagnosticInfo);
    checkUnnamed4458(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2Intent(o.intent);
    unittest.expect(o.intentDetectionConfidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed4459(o.outputContexts);
    checkUnnamed4460(o.parameters);
    unittest.expect(o.queryText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2SentimentAnalysisResult(
        o.sentimentAnalysisResult);
    unittest.expect(o.speechRecognitionConfidence, unittest.equals(42.0));
    checkUnnamed4461(o.webhookPayload);
    unittest.expect(o.webhookSource, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2QueryResult--;
}

core.int buildCounterGoogleCloudDialogflowV2RestoreAgentRequest = 0;
buildGoogleCloudDialogflowV2RestoreAgentRequest() {
  var o = new api.GoogleCloudDialogflowV2RestoreAgentRequest();
  buildCounterGoogleCloudDialogflowV2RestoreAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2RestoreAgentRequest < 3) {
    o.agentContent = "foo";
    o.agentUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2RestoreAgentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2RestoreAgentRequest(
    api.GoogleCloudDialogflowV2RestoreAgentRequest o) {
  buildCounterGoogleCloudDialogflowV2RestoreAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2RestoreAgentRequest < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2RestoreAgentRequest--;
}

buildUnnamed4462() {
  var o = new core.List<api.GoogleCloudDialogflowV2Agent>();
  o.add(buildGoogleCloudDialogflowV2Agent());
  o.add(buildGoogleCloudDialogflowV2Agent());
  return o;
}

checkUnnamed4462(core.List<api.GoogleCloudDialogflowV2Agent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Agent(o[0]);
  checkGoogleCloudDialogflowV2Agent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2SearchAgentsResponse = 0;
buildGoogleCloudDialogflowV2SearchAgentsResponse() {
  var o = new api.GoogleCloudDialogflowV2SearchAgentsResponse();
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2SearchAgentsResponse < 3) {
    o.agents = buildUnnamed4462();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2SearchAgentsResponse(
    api.GoogleCloudDialogflowV2SearchAgentsResponse o) {
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2SearchAgentsResponse < 3) {
    checkUnnamed4462(o.agents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2Sentiment = 0;
buildGoogleCloudDialogflowV2Sentiment() {
  var o = new api.GoogleCloudDialogflowV2Sentiment();
  buildCounterGoogleCloudDialogflowV2Sentiment++;
  if (buildCounterGoogleCloudDialogflowV2Sentiment < 3) {
    o.magnitude = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudDialogflowV2Sentiment--;
  return o;
}

checkGoogleCloudDialogflowV2Sentiment(api.GoogleCloudDialogflowV2Sentiment o) {
  buildCounterGoogleCloudDialogflowV2Sentiment++;
  if (buildCounterGoogleCloudDialogflowV2Sentiment < 3) {
    unittest.expect(o.magnitude, unittest.equals(42.0));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowV2Sentiment--;
}

core.int buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig = 0;
buildGoogleCloudDialogflowV2SentimentAnalysisRequestConfig() {
  var o = new api.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig();
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig++;
  if (buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig < 3) {
    o.analyzeQueryTextSentiment = true;
  }
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig--;
  return o;
}

checkGoogleCloudDialogflowV2SentimentAnalysisRequestConfig(
    api.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig o) {
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig++;
  if (buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig < 3) {
    unittest.expect(o.analyzeQueryTextSentiment, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult = 0;
buildGoogleCloudDialogflowV2SentimentAnalysisResult() {
  var o = new api.GoogleCloudDialogflowV2SentimentAnalysisResult();
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult < 3) {
    o.queryTextSentiment = buildGoogleCloudDialogflowV2Sentiment();
  }
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult--;
  return o;
}

checkGoogleCloudDialogflowV2SentimentAnalysisResult(
    api.GoogleCloudDialogflowV2SentimentAnalysisResult o) {
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult < 3) {
    checkGoogleCloudDialogflowV2Sentiment(o.queryTextSentiment);
  }
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult--;
}

buildUnnamed4463() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

checkUnnamed4463(core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2SessionEntityType = 0;
buildGoogleCloudDialogflowV2SessionEntityType() {
  var o = new api.GoogleCloudDialogflowV2SessionEntityType();
  buildCounterGoogleCloudDialogflowV2SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowV2SessionEntityType < 3) {
    o.entities = buildUnnamed4463();
    o.entityOverrideMode = "foo";
    o.name = "foo";
  }
  buildCounterGoogleCloudDialogflowV2SessionEntityType--;
  return o;
}

checkGoogleCloudDialogflowV2SessionEntityType(
    api.GoogleCloudDialogflowV2SessionEntityType o) {
  buildCounterGoogleCloudDialogflowV2SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowV2SessionEntityType < 3) {
    checkUnnamed4463(o.entities);
    unittest.expect(o.entityOverrideMode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2SessionEntityType--;
}

buildUnnamed4464() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4464(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig = 0;
buildGoogleCloudDialogflowV2SynthesizeSpeechConfig() {
  var o = new api.GoogleCloudDialogflowV2SynthesizeSpeechConfig();
  buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig++;
  if (buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig < 3) {
    o.effectsProfileId = buildUnnamed4464();
    o.pitch = 42.0;
    o.speakingRate = 42.0;
    o.voice = buildGoogleCloudDialogflowV2VoiceSelectionParams();
    o.volumeGainDb = 42.0;
  }
  buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig--;
  return o;
}

checkGoogleCloudDialogflowV2SynthesizeSpeechConfig(
    api.GoogleCloudDialogflowV2SynthesizeSpeechConfig o) {
  buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig++;
  if (buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig < 3) {
    checkUnnamed4464(o.effectsProfileId);
    unittest.expect(o.pitch, unittest.equals(42.0));
    unittest.expect(o.speakingRate, unittest.equals(42.0));
    checkGoogleCloudDialogflowV2VoiceSelectionParams(o.voice);
    unittest.expect(o.volumeGainDb, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2TextInput = 0;
buildGoogleCloudDialogflowV2TextInput() {
  var o = new api.GoogleCloudDialogflowV2TextInput();
  buildCounterGoogleCloudDialogflowV2TextInput++;
  if (buildCounterGoogleCloudDialogflowV2TextInput < 3) {
    o.languageCode = "foo";
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2TextInput--;
  return o;
}

checkGoogleCloudDialogflowV2TextInput(api.GoogleCloudDialogflowV2TextInput o) {
  buildCounterGoogleCloudDialogflowV2TextInput++;
  if (buildCounterGoogleCloudDialogflowV2TextInput < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2TextInput--;
}

core.int buildCounterGoogleCloudDialogflowV2TrainAgentRequest = 0;
buildGoogleCloudDialogflowV2TrainAgentRequest() {
  var o = new api.GoogleCloudDialogflowV2TrainAgentRequest();
  buildCounterGoogleCloudDialogflowV2TrainAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2TrainAgentRequest < 3) {}
  buildCounterGoogleCloudDialogflowV2TrainAgentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2TrainAgentRequest(
    api.GoogleCloudDialogflowV2TrainAgentRequest o) {
  buildCounterGoogleCloudDialogflowV2TrainAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2TrainAgentRequest < 3) {}
  buildCounterGoogleCloudDialogflowV2TrainAgentRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2VoiceSelectionParams = 0;
buildGoogleCloudDialogflowV2VoiceSelectionParams() {
  var o = new api.GoogleCloudDialogflowV2VoiceSelectionParams();
  buildCounterGoogleCloudDialogflowV2VoiceSelectionParams++;
  if (buildCounterGoogleCloudDialogflowV2VoiceSelectionParams < 3) {
    o.name = "foo";
    o.ssmlGender = "foo";
  }
  buildCounterGoogleCloudDialogflowV2VoiceSelectionParams--;
  return o;
}

checkGoogleCloudDialogflowV2VoiceSelectionParams(
    api.GoogleCloudDialogflowV2VoiceSelectionParams o) {
  buildCounterGoogleCloudDialogflowV2VoiceSelectionParams++;
  if (buildCounterGoogleCloudDialogflowV2VoiceSelectionParams < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ssmlGender, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2VoiceSelectionParams--;
}

core.int buildCounterGoogleCloudDialogflowV2WebhookRequest = 0;
buildGoogleCloudDialogflowV2WebhookRequest() {
  var o = new api.GoogleCloudDialogflowV2WebhookRequest();
  buildCounterGoogleCloudDialogflowV2WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowV2WebhookRequest < 3) {
    o.originalDetectIntentRequest =
        buildGoogleCloudDialogflowV2OriginalDetectIntentRequest();
    o.queryResult = buildGoogleCloudDialogflowV2QueryResult();
    o.responseId = "foo";
    o.session = "foo";
  }
  buildCounterGoogleCloudDialogflowV2WebhookRequest--;
  return o;
}

checkGoogleCloudDialogflowV2WebhookRequest(
    api.GoogleCloudDialogflowV2WebhookRequest o) {
  buildCounterGoogleCloudDialogflowV2WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowV2WebhookRequest < 3) {
    checkGoogleCloudDialogflowV2OriginalDetectIntentRequest(
        o.originalDetectIntentRequest);
    checkGoogleCloudDialogflowV2QueryResult(o.queryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
    unittest.expect(o.session, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2WebhookRequest--;
}

buildUnnamed4465() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

checkUnnamed4465(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2IntentMessage(o[1]);
}

buildUnnamed4466() {
  var o = new core.List<api.GoogleCloudDialogflowV2Context>();
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

checkUnnamed4466(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

buildUnnamed4467() {
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

checkUnnamed4467(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o["x"]) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(casted17["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted17["bool"], unittest.equals(true));
  unittest.expect(casted17["string"], unittest.equals('foo'));
  var casted18 = (o["y"]) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(casted18["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted18["bool"], unittest.equals(true));
  unittest.expect(casted18["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2WebhookResponse = 0;
buildGoogleCloudDialogflowV2WebhookResponse() {
  var o = new api.GoogleCloudDialogflowV2WebhookResponse();
  buildCounterGoogleCloudDialogflowV2WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowV2WebhookResponse < 3) {
    o.followupEventInput = buildGoogleCloudDialogflowV2EventInput();
    o.fulfillmentMessages = buildUnnamed4465();
    o.fulfillmentText = "foo";
    o.outputContexts = buildUnnamed4466();
    o.payload = buildUnnamed4467();
    o.source = "foo";
  }
  buildCounterGoogleCloudDialogflowV2WebhookResponse--;
  return o;
}

checkGoogleCloudDialogflowV2WebhookResponse(
    api.GoogleCloudDialogflowV2WebhookResponse o) {
  buildCounterGoogleCloudDialogflowV2WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowV2WebhookResponse < 3) {
    checkGoogleCloudDialogflowV2EventInput(o.followupEventInput);
    checkUnnamed4465(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkUnnamed4466(o.outputContexts);
    checkUnnamed4467(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2WebhookResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset =
    0;
buildGoogleCloudDialogflowV2beta1AnnotatedConversationDataset() {
  var o = new api.GoogleCloudDialogflowV2beta1AnnotatedConversationDataset();
  buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset++;
  if (buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset <
      3) {
    o.completedExampleCount = "foo";
    o.createTime = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.exampleCount = "foo";
    o.name = "foo";
    o.questionTypeName = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset--;
  return o;
}

checkGoogleCloudDialogflowV2beta1AnnotatedConversationDataset(
    api.GoogleCloudDialogflowV2beta1AnnotatedConversationDataset o) {
  buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset++;
  if (buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset <
      3) {
    unittest.expect(o.completedExampleCount, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.exampleCount, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.questionTypeName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata = 0;
buildGoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata() {
  var o = new api.GoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata();
  buildCounterGoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata++;
  if (buildCounterGoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata <
      3) {
    o.modelType = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata(
    api.GoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata o) {
  buildCounterGoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata++;
  if (buildCounterGoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata <
      3) {
    unittest.expect(o.modelType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata--;
}

buildUnnamed4468() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityType>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  return o;
}

checkUnnamed4468(core.List<api.GoogleCloudDialogflowV2beta1EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1EntityType(o[0]);
  checkGoogleCloudDialogflowV2beta1EntityType(o[1]);
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse = 0;
buildGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse <
      3) {
    o.entityTypes = buildUnnamed4468();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse(
    api.GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse <
      3) {
    checkUnnamed4468(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse--;
}

buildUnnamed4469() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Intent>();
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  return o;
}

checkUnnamed4469(core.List<api.GoogleCloudDialogflowV2beta1Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Intent(o[0]);
  checkGoogleCloudDialogflowV2beta1Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse = 0;
buildGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse();
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse < 3) {
    o.intents = buildUnnamed4469();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse(
    api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse < 3) {
    checkUnnamed4469(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse--;
}

buildUnnamed4470() {
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

checkUnnamed4470(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o["x"]) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(casted19["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted19["bool"], unittest.equals(true));
  unittest.expect(casted19["string"], unittest.equals('foo'));
  var casted20 = (o["y"]) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(casted20["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted20["bool"], unittest.equals(true));
  unittest.expect(casted20["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1Context = 0;
buildGoogleCloudDialogflowV2beta1Context() {
  var o = new api.GoogleCloudDialogflowV2beta1Context();
  buildCounterGoogleCloudDialogflowV2beta1Context++;
  if (buildCounterGoogleCloudDialogflowV2beta1Context < 3) {
    o.lifespanCount = 42;
    o.name = "foo";
    o.parameters = buildUnnamed4470();
  }
  buildCounterGoogleCloudDialogflowV2beta1Context--;
  return o;
}

checkGoogleCloudDialogflowV2beta1Context(
    api.GoogleCloudDialogflowV2beta1Context o) {
  buildCounterGoogleCloudDialogflowV2beta1Context++;
  if (buildCounterGoogleCloudDialogflowV2beta1Context < 3) {
    unittest.expect(o.lifespanCount, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4470(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2beta1Context--;
}

buildUnnamed4471() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1InputDataset>();
  o.add(buildGoogleCloudDialogflowV2beta1InputDataset());
  o.add(buildGoogleCloudDialogflowV2beta1InputDataset());
  return o;
}

checkUnnamed4471(core.List<api.GoogleCloudDialogflowV2beta1InputDataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1InputDataset(o[0]);
  checkGoogleCloudDialogflowV2beta1InputDataset(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1ConversationModel = 0;
buildGoogleCloudDialogflowV2beta1ConversationModel() {
  var o = new api.GoogleCloudDialogflowV2beta1ConversationModel();
  buildCounterGoogleCloudDialogflowV2beta1ConversationModel++;
  if (buildCounterGoogleCloudDialogflowV2beta1ConversationModel < 3) {
    o.articleSuggestionModelMetadata =
        buildGoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata();
    o.createTime = "foo";
    o.datasets = buildUnnamed4471();
    o.displayName = "foo";
    o.name = "foo";
    o.smartReplyModelMetadata =
        buildGoogleCloudDialogflowV2beta1SmartReplyModelMetadata();
    o.state = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1ConversationModel--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ConversationModel(
    api.GoogleCloudDialogflowV2beta1ConversationModel o) {
  buildCounterGoogleCloudDialogflowV2beta1ConversationModel++;
  if (buildCounterGoogleCloudDialogflowV2beta1ConversationModel < 3) {
    checkGoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata(
        o.articleSuggestionModelMetadata);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed4471(o.datasets);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1SmartReplyModelMetadata(
        o.smartReplyModelMetadata);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ConversationModel--;
}

buildUnnamed4472() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

checkUnnamed4472(
    core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2beta1EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1EntityType = 0;
buildGoogleCloudDialogflowV2beta1EntityType() {
  var o = new api.GoogleCloudDialogflowV2beta1EntityType();
  buildCounterGoogleCloudDialogflowV2beta1EntityType++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityType < 3) {
    o.autoExpansionMode = "foo";
    o.displayName = "foo";
    o.enableFuzzyExtraction = true;
    o.entities = buildUnnamed4472();
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityType--;
  return o;
}

checkGoogleCloudDialogflowV2beta1EntityType(
    api.GoogleCloudDialogflowV2beta1EntityType o) {
  buildCounterGoogleCloudDialogflowV2beta1EntityType++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityType < 3) {
    unittest.expect(o.autoExpansionMode, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enableFuzzyExtraction, unittest.isTrue);
    checkUnnamed4472(o.entities);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityType--;
}

buildUnnamed4473() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4473(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity = 0;
buildGoogleCloudDialogflowV2beta1EntityTypeEntity() {
  var o = new api.GoogleCloudDialogflowV2beta1EntityTypeEntity();
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity < 3) {
    o.synonyms = buildUnnamed4473();
    o.value = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity--;
  return o;
}

checkGoogleCloudDialogflowV2beta1EntityTypeEntity(
    api.GoogleCloudDialogflowV2beta1EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity < 3) {
    checkUnnamed4473(o.synonyms);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity--;
}

buildUnnamed4474() {
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

checkUnnamed4474(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o["x"]) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(casted21["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted21["bool"], unittest.equals(true));
  unittest.expect(casted21["string"], unittest.equals('foo'));
  var casted22 = (o["y"]) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(casted22["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted22["bool"], unittest.equals(true));
  unittest.expect(casted22["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1EventInput = 0;
buildGoogleCloudDialogflowV2beta1EventInput() {
  var o = new api.GoogleCloudDialogflowV2beta1EventInput();
  buildCounterGoogleCloudDialogflowV2beta1EventInput++;
  if (buildCounterGoogleCloudDialogflowV2beta1EventInput < 3) {
    o.languageCode = "foo";
    o.name = "foo";
    o.parameters = buildUnnamed4474();
  }
  buildCounterGoogleCloudDialogflowV2beta1EventInput--;
  return o;
}

checkGoogleCloudDialogflowV2beta1EventInput(
    api.GoogleCloudDialogflowV2beta1EventInput o) {
  buildCounterGoogleCloudDialogflowV2beta1EventInput++;
  if (buildCounterGoogleCloudDialogflowV2beta1EventInput < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4474(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2beta1EventInput--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse = 0;
buildGoogleCloudDialogflowV2beta1ExportAgentResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1ExportAgentResponse();
  buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse < 3) {
    o.agentContent = "foo";
    o.agentUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ExportAgentResponse(
    api.GoogleCloudDialogflowV2beta1ExportAgentResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1InputDataset = 0;
buildGoogleCloudDialogflowV2beta1InputDataset() {
  var o = new api.GoogleCloudDialogflowV2beta1InputDataset();
  buildCounterGoogleCloudDialogflowV2beta1InputDataset++;
  if (buildCounterGoogleCloudDialogflowV2beta1InputDataset < 3) {
    o.dataset = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1InputDataset--;
  return o;
}

checkGoogleCloudDialogflowV2beta1InputDataset(
    api.GoogleCloudDialogflowV2beta1InputDataset o) {
  buildCounterGoogleCloudDialogflowV2beta1InputDataset++;
  if (buildCounterGoogleCloudDialogflowV2beta1InputDataset < 3) {
    unittest.expect(o.dataset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1InputDataset--;
}

buildUnnamed4475() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4475(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4476() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4476(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4477() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo());
  o.add(buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo());
  return o;
}

checkUnnamed4477(
    core.List<api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(o[1]);
}

buildUnnamed4478() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4478(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4479() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

checkUnnamed4479(core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[1]);
}

buildUnnamed4480() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Context>();
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

checkUnnamed4480(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(o[0]);
  checkGoogleCloudDialogflowV2beta1Context(o[1]);
}

buildUnnamed4481() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentParameter>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentParameter());
  o.add(buildGoogleCloudDialogflowV2beta1IntentParameter());
  return o;
}

checkUnnamed4481(core.List<api.GoogleCloudDialogflowV2beta1IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentParameter(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentParameter(o[1]);
}

buildUnnamed4482() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase());
  return o;
}

checkUnnamed4482(
    core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentTrainingPhrase(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentTrainingPhrase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1Intent = 0;
buildGoogleCloudDialogflowV2beta1Intent() {
  var o = new api.GoogleCloudDialogflowV2beta1Intent();
  buildCounterGoogleCloudDialogflowV2beta1Intent++;
  if (buildCounterGoogleCloudDialogflowV2beta1Intent < 3) {
    o.action = "foo";
    o.defaultResponsePlatforms = buildUnnamed4475();
    o.displayName = "foo";
    o.endInteraction = true;
    o.events = buildUnnamed4476();
    o.followupIntentInfo = buildUnnamed4477();
    o.inputContextNames = buildUnnamed4478();
    o.isFallback = true;
    o.messages = buildUnnamed4479();
    o.mlDisabled = true;
    o.mlEnabled = true;
    o.name = "foo";
    o.outputContexts = buildUnnamed4480();
    o.parameters = buildUnnamed4481();
    o.parentFollowupIntentName = "foo";
    o.priority = 42;
    o.resetContexts = true;
    o.rootFollowupIntentName = "foo";
    o.trainingPhrases = buildUnnamed4482();
    o.webhookState = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1Intent--;
  return o;
}

checkGoogleCloudDialogflowV2beta1Intent(
    api.GoogleCloudDialogflowV2beta1Intent o) {
  buildCounterGoogleCloudDialogflowV2beta1Intent++;
  if (buildCounterGoogleCloudDialogflowV2beta1Intent < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed4475(o.defaultResponsePlatforms);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.endInteraction, unittest.isTrue);
    checkUnnamed4476(o.events);
    checkUnnamed4477(o.followupIntentInfo);
    checkUnnamed4478(o.inputContextNames);
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed4479(o.messages);
    unittest.expect(o.mlDisabled, unittest.isTrue);
    unittest.expect(o.mlEnabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4480(o.outputContexts);
    checkUnnamed4481(o.parameters);
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.resetContexts, unittest.isTrue);
    unittest.expect(o.rootFollowupIntentName, unittest.equals('foo'));
    checkUnnamed4482(o.trainingPhrases);
    unittest.expect(o.webhookState, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1Intent--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo = 0;
buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo();
  buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo < 3) {
    o.followupIntentName = "foo";
    o.parentFollowupIntentName = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(
    api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo < 3) {
    unittest.expect(o.followupIntentName, unittest.equals('foo'));
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo--;
}

buildUnnamed4483() {
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

checkUnnamed4483(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted23 = (o["x"]) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(casted23["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted23["bool"], unittest.equals(true));
  unittest.expect(casted23["string"], unittest.equals('foo'));
  var casted24 = (o["y"]) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(casted24["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted24["bool"], unittest.equals(true));
  unittest.expect(casted24["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessage = 0;
buildGoogleCloudDialogflowV2beta1IntentMessage() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessage();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessage++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessage < 3) {
    o.basicCard = buildGoogleCloudDialogflowV2beta1IntentMessageBasicCard();
    o.card = buildGoogleCloudDialogflowV2beta1IntentMessageCard();
    o.carouselSelect =
        buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect();
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.linkOutSuggestion =
        buildGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion();
    o.listSelect = buildGoogleCloudDialogflowV2beta1IntentMessageListSelect();
    o.payload = buildUnnamed4483();
    o.platform = "foo";
    o.quickReplies =
        buildGoogleCloudDialogflowV2beta1IntentMessageQuickReplies();
    o.rbmCarouselRichCard =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard();
    o.rbmStandaloneRichCard =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard();
    o.rbmText = buildGoogleCloudDialogflowV2beta1IntentMessageRbmText();
    o.simpleResponses =
        buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses();
    o.suggestions = buildGoogleCloudDialogflowV2beta1IntentMessageSuggestions();
    o.telephonyPlayAudio =
        buildGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio();
    o.telephonySynthesizeSpeech =
        buildGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech();
    o.telephonyTransferCall =
        buildGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall();
    o.text = buildGoogleCloudDialogflowV2beta1IntentMessageText();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessage--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessage(
    api.GoogleCloudDialogflowV2beta1IntentMessage o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessage++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessage < 3) {
    checkGoogleCloudDialogflowV2beta1IntentMessageBasicCard(o.basicCard);
    checkGoogleCloudDialogflowV2beta1IntentMessageCard(o.card);
    checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect(
        o.carouselSelect);
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(o.image);
    checkGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion(
        o.linkOutSuggestion);
    checkGoogleCloudDialogflowV2beta1IntentMessageListSelect(o.listSelect);
    checkUnnamed4483(o.payload);
    unittest.expect(o.platform, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageQuickReplies(o.quickReplies);
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard(
        o.rbmCarouselRichCard);
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard(
        o.rbmStandaloneRichCard);
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmText(o.rbmText);
    checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses(
        o.simpleResponses);
    checkGoogleCloudDialogflowV2beta1IntentMessageSuggestions(o.suggestions);
    checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio(
        o.telephonyPlayAudio);
    checkGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech(
        o.telephonySynthesizeSpeech);
    checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall(
        o.telephonyTransferCall);
    checkGoogleCloudDialogflowV2beta1IntentMessageText(o.text);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessage--;
}

buildUnnamed4484() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  return o;
}

checkUnnamed4484(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageBasicCard() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageBasicCard();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard < 3) {
    o.buttons = buildUnnamed4484();
    o.formattedText = "foo";
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.subtitle = "foo";
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageBasicCard(
    api.GoogleCloudDialogflowV2beta1IntentMessageBasicCard o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard < 3) {
    checkUnnamed4484(o.buttons);
    unittest.expect(o.formattedText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(o.image);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton <
      3) {
    o.openUriAction =
        buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(
    api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton <
      3) {
    checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction(
        o.openUriAction);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction() {
  var o = new api
      .GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction <
      3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction(
    api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
        o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction <
      3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction--;
}

buildUnnamed4485() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1IntentMessageCardButton>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCardButton());
  return o;
}

checkUnnamed4485(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageCardButton(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageCardButton(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageCard() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageCard();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard < 3) {
    o.buttons = buildUnnamed4485();
    o.imageUri = "foo";
    o.subtitle = "foo";
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageCard(
    api.GoogleCloudDialogflowV2beta1IntentMessageCard o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard < 3) {
    checkUnnamed4485(o.buttons);
    unittest.expect(o.imageUri, unittest.equals('foo'));
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageCardButton() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageCardButton();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton < 3) {
    o.postback = "foo";
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageCardButton(
    api.GoogleCloudDialogflowV2beta1IntentMessageCardButton o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton < 3) {
    unittest.expect(o.postback, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton--;
}

buildUnnamed4486() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem());
  return o;
}

checkUnnamed4486(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect < 3) {
    o.items = buildUnnamed4486();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect(
    api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect < 3) {
    checkUnnamed4486(o.items);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem <
      3) {
    o.description = "foo";
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.info = buildGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem(
    api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem <
      3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(o.image);
    checkGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(o.info);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageImage() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageImage();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage < 3) {
    o.accessibilityText = "foo";
    o.imageUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageImage(
    api.GoogleCloudDialogflowV2beta1IntentMessageImage o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage < 3) {
    unittest.expect(o.accessibilityText, unittest.equals('foo'));
    unittest.expect(o.imageUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion <
      3) {
    o.destinationName = "foo";
    o.uri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion(
    api.GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion <
      3) {
    unittest.expect(o.destinationName, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion--;
}

buildUnnamed4487() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem());
  return o;
}

checkUnnamed4487(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageListSelectItem(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageListSelectItem(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageListSelect() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageListSelect();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect < 3) {
    o.items = buildUnnamed4487();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageListSelect(
    api.GoogleCloudDialogflowV2beta1IntentMessageListSelect o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect < 3) {
    checkUnnamed4487(o.items);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem < 3) {
    o.description = "foo";
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.info = buildGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageListSelectItem(
    api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(o.image);
    checkGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(o.info);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem--;
}

buildUnnamed4488() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4488(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageQuickReplies() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies < 3) {
    o.quickReplies = buildUnnamed4488();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageQuickReplies(
    api.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies < 3) {
    checkUnnamed4488(o.quickReplies);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies--;
}

buildUnnamed4489() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  return o;
}

checkUnnamed4489(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent < 3) {
    o.description = "foo";
    o.media =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia();
    o.suggestions = buildUnnamed4489();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia(
        o.media);
    checkUnnamed4489(o.suggestions);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia() {
  var o =
      new api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia <
      3) {
    o.fileUri = "foo";
    o.height = "foo";
    o.thumbnailUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia <
      3) {
    unittest.expect(o.fileUri, unittest.equals('foo'));
    unittest.expect(o.height, unittest.equals('foo'));
    unittest.expect(o.thumbnailUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia--;
}

buildUnnamed4490() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent());
  return o;
}

checkUnnamed4490(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard <
      3) {
    o.cardContents = buildUnnamed4490();
    o.cardWidth = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard <
      3) {
    checkUnnamed4490(o.cardContents);
    unittest.expect(o.cardWidth, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard <
      3) {
    o.cardContent =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent();
    o.cardOrientation = "foo";
    o.thumbnailImageAlignment = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard <
      3) {
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent(o.cardContent);
    unittest.expect(o.cardOrientation, unittest.equals('foo'));
    unittest.expect(o.thumbnailImageAlignment, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction <
      3) {
    o.dial =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial();
    o.openUrl =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri();
    o.postbackData = "foo";
    o.shareLocation =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation();
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction <
      3) {
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial(
        o.dial);
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri(
        o.openUrl);
    unittest.expect(o.postbackData, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation(
        o.shareLocation);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial() {
  var o = new api
      .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial <
      3) {
    o.phoneNumber = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
        o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial <
      3) {
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri() {
  var o = new api
      .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri <
      3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri
        o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri <
      3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation() {
  var o = new api
      .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation <
      3) {}
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
        o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation <
      3) {}
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply <
      3) {
    o.postbackData = "foo";
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply <
      3) {
    unittest.expect(o.postbackData, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion < 3) {
    o.action =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction();
    o.reply = buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion < 3) {
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction(o.action);
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply(o.reply);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion--;
}

buildUnnamed4491() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  return o;
}

checkUnnamed4491(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmText() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageRbmText();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText < 3) {
    o.rbmSuggestion = buildUnnamed4491();
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmText(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmText o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText < 3) {
    checkUnnamed4491(o.rbmSuggestion);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText--;
}

buildUnnamed4492() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4492(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo < 3) {
    o.key = "foo";
    o.synonyms = buildUnnamed4492();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(
    api.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed4492(o.synonyms);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse < 3) {
    o.displayText = "foo";
    o.ssml = "foo";
    o.textToSpeech = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse(
    api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse < 3) {
    unittest.expect(o.displayText, unittest.equals('foo'));
    unittest.expect(o.ssml, unittest.equals('foo'));
    unittest.expect(o.textToSpeech, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse--;
}

buildUnnamed4493() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse());
  return o;
}

checkUnnamed4493(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses <
      3) {
    o.simpleResponses = buildUnnamed4493();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses(
    api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses <
      3) {
    checkUnnamed4493(o.simpleResponses);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion < 3) {
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageSuggestion(
    api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion < 3) {
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion--;
}

buildUnnamed4494() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion());
  return o;
}

checkUnnamed4494(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageSuggestion(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageSuggestion(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageSuggestions() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageSuggestions();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions < 3) {
    o.suggestions = buildUnnamed4494();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageSuggestions(
    api.GoogleCloudDialogflowV2beta1IntentMessageSuggestions o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions < 3) {
    checkUnnamed4494(o.suggestions);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio <
      3) {
    o.audioUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio(
    api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio <
      3) {
    unittest.expect(o.audioUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech() {
  var o = new api
      .GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech <
      3) {
    o.ssml = "foo";
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech(
    api.GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech <
      3) {
    unittest.expect(o.ssml, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall() {
  var o =
      new api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall <
      3) {
    o.phoneNumber = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall(
    api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall <
      3) {
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall--;
}

buildUnnamed4495() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4495(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageText = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageText() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageText();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageText < 3) {
    o.text = buildUnnamed4495();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageText(
    api.GoogleCloudDialogflowV2beta1IntentMessageText o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageText < 3) {
    checkUnnamed4495(o.text);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText--;
}

buildUnnamed4496() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4496(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentParameter = 0;
buildGoogleCloudDialogflowV2beta1IntentParameter() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentParameter();
  buildCounterGoogleCloudDialogflowV2beta1IntentParameter++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentParameter < 3) {
    o.defaultValue = "foo";
    o.displayName = "foo";
    o.entityTypeDisplayName = "foo";
    o.isList = true;
    o.mandatory = true;
    o.name = "foo";
    o.prompts = buildUnnamed4496();
    o.value = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentParameter--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentParameter(
    api.GoogleCloudDialogflowV2beta1IntentParameter o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentParameter++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentParameter < 3) {
    unittest.expect(o.defaultValue, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityTypeDisplayName, unittest.equals('foo'));
    unittest.expect(o.isList, unittest.isTrue);
    unittest.expect(o.mandatory, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4496(o.prompts);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentParameter--;
}

buildUnnamed4497() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart());
  return o;
}

checkUnnamed4497(
    core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase = 0;
buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase();
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase < 3) {
    o.name = "foo";
    o.parts = buildUnnamed4497();
    o.timesAddedCount = 42;
    o.type = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentTrainingPhrase(
    api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4497(o.parts);
    unittest.expect(o.timesAddedCount, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart = 0;
buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart();
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart < 3) {
    o.alias = "foo";
    o.entityType = "foo";
    o.text = "foo";
    o.userDefined = true;
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart(
    api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart < 3) {
    unittest.expect(o.alias, unittest.equals('foo'));
    unittest.expect(o.entityType, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.userDefined, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart--;
}

buildUnnamed4498() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer>();
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer());
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer());
  return o;
}

checkUnnamed4498(
    core.List<api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer(o[0]);
  checkGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers = 0;
buildGoogleCloudDialogflowV2beta1KnowledgeAnswers() {
  var o = new api.GoogleCloudDialogflowV2beta1KnowledgeAnswers();
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers < 3) {
    o.answers = buildUnnamed4498();
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers--;
  return o;
}

checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(
    api.GoogleCloudDialogflowV2beta1KnowledgeAnswers o) {
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers < 3) {
    checkUnnamed4498(o.answers);
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer = 0;
buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer() {
  var o = new api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer();
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer < 3) {
    o.answer = "foo";
    o.faqQuestion = "foo";
    o.matchConfidence = 42.0;
    o.matchConfidenceLevel = "foo";
    o.source = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer--;
  return o;
}

checkGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer(
    api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer o) {
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer < 3) {
    unittest.expect(o.answer, unittest.equals('foo'));
    unittest.expect(o.faqQuestion, unittest.equals('foo'));
    unittest.expect(o.matchConfidence, unittest.equals(42.0));
    unittest.expect(o.matchConfidenceLevel, unittest.equals('foo'));
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata = 0;
buildGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata() {
  var o = new api.GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata();
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata < 3) {
    o.state = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata--;
  return o;
}

checkGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata(
    api.GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata o) {
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata < 3) {
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse = 0;
buildGoogleCloudDialogflowV2beta1LabelConversationResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1LabelConversationResponse();
  buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse < 3) {
    o.annotatedConversationDataset =
        buildGoogleCloudDialogflowV2beta1AnnotatedConversationDataset();
  }
  buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1LabelConversationResponse(
    api.GoogleCloudDialogflowV2beta1LabelConversationResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse < 3) {
    checkGoogleCloudDialogflowV2beta1AnnotatedConversationDataset(
        o.annotatedConversationDataset);
  }
  buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse--;
}

buildUnnamed4499() {
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

checkUnnamed4499(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted25 = (o["x"]) as core.Map;
  unittest.expect(casted25, unittest.hasLength(3));
  unittest.expect(casted25["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted25["bool"], unittest.equals(true));
  unittest.expect(casted25["string"], unittest.equals('foo'));
  var casted26 = (o["y"]) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(casted26["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted26["bool"], unittest.equals(true));
  unittest.expect(casted26["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest =
    0;
buildGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest();
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest < 3) {
    o.payload = buildUnnamed4499();
    o.source = "foo";
    o.version = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest(
    api.GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest < 3) {
    checkUnnamed4499(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest--;
}

buildUnnamed4500() {
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

checkUnnamed4500(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted27 = (o["x"]) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(casted27["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted27["bool"], unittest.equals(true));
  unittest.expect(casted27["string"], unittest.equals('foo'));
  var casted28 = (o["y"]) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(casted28["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted28["bool"], unittest.equals(true));
  unittest.expect(casted28["string"], unittest.equals('foo'));
}

buildUnnamed4501() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

checkUnnamed4501(core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[1]);
}

buildUnnamed4502() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Context>();
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

checkUnnamed4502(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(o[0]);
  checkGoogleCloudDialogflowV2beta1Context(o[1]);
}

buildUnnamed4503() {
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

checkUnnamed4503(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted29 = (o["x"]) as core.Map;
  unittest.expect(casted29, unittest.hasLength(3));
  unittest.expect(casted29["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted29["bool"], unittest.equals(true));
  unittest.expect(casted29["string"], unittest.equals('foo'));
  var casted30 = (o["y"]) as core.Map;
  unittest.expect(casted30, unittest.hasLength(3));
  unittest.expect(casted30["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted30["bool"], unittest.equals(true));
  unittest.expect(casted30["string"], unittest.equals('foo'));
}

buildUnnamed4504() {
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

checkUnnamed4504(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted31 = (o["x"]) as core.Map;
  unittest.expect(casted31, unittest.hasLength(3));
  unittest.expect(casted31["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted31["bool"], unittest.equals(true));
  unittest.expect(casted31["string"], unittest.equals('foo'));
  var casted32 = (o["y"]) as core.Map;
  unittest.expect(casted32, unittest.hasLength(3));
  unittest.expect(casted32["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted32["bool"], unittest.equals(true));
  unittest.expect(casted32["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1QueryResult = 0;
buildGoogleCloudDialogflowV2beta1QueryResult() {
  var o = new api.GoogleCloudDialogflowV2beta1QueryResult();
  buildCounterGoogleCloudDialogflowV2beta1QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2beta1QueryResult < 3) {
    o.action = "foo";
    o.allRequiredParamsPresent = true;
    o.diagnosticInfo = buildUnnamed4500();
    o.fulfillmentMessages = buildUnnamed4501();
    o.fulfillmentText = "foo";
    o.intent = buildGoogleCloudDialogflowV2beta1Intent();
    o.intentDetectionConfidence = 42.0;
    o.knowledgeAnswers = buildGoogleCloudDialogflowV2beta1KnowledgeAnswers();
    o.languageCode = "foo";
    o.outputContexts = buildUnnamed4502();
    o.parameters = buildUnnamed4503();
    o.queryText = "foo";
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowV2beta1SentimentAnalysisResult();
    o.speechRecognitionConfidence = 42.0;
    o.webhookPayload = buildUnnamed4504();
    o.webhookSource = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1QueryResult--;
  return o;
}

checkGoogleCloudDialogflowV2beta1QueryResult(
    api.GoogleCloudDialogflowV2beta1QueryResult o) {
  buildCounterGoogleCloudDialogflowV2beta1QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2beta1QueryResult < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.allRequiredParamsPresent, unittest.isTrue);
    checkUnnamed4500(o.diagnosticInfo);
    checkUnnamed4501(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1Intent(o.intent);
    unittest.expect(o.intentDetectionConfidence, unittest.equals(42.0));
    checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(o.knowledgeAnswers);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed4502(o.outputContexts);
    checkUnnamed4503(o.parameters);
    unittest.expect(o.queryText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1SentimentAnalysisResult(
        o.sentimentAnalysisResult);
    unittest.expect(o.speechRecognitionConfidence, unittest.equals(42.0));
    checkUnnamed4504(o.webhookPayload);
    unittest.expect(o.webhookSource, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1QueryResult--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1Sentiment = 0;
buildGoogleCloudDialogflowV2beta1Sentiment() {
  var o = new api.GoogleCloudDialogflowV2beta1Sentiment();
  buildCounterGoogleCloudDialogflowV2beta1Sentiment++;
  if (buildCounterGoogleCloudDialogflowV2beta1Sentiment < 3) {
    o.magnitude = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudDialogflowV2beta1Sentiment--;
  return o;
}

checkGoogleCloudDialogflowV2beta1Sentiment(
    api.GoogleCloudDialogflowV2beta1Sentiment o) {
  buildCounterGoogleCloudDialogflowV2beta1Sentiment++;
  if (buildCounterGoogleCloudDialogflowV2beta1Sentiment < 3) {
    unittest.expect(o.magnitude, unittest.equals(42.0));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowV2beta1Sentiment--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult = 0;
buildGoogleCloudDialogflowV2beta1SentimentAnalysisResult() {
  var o = new api.GoogleCloudDialogflowV2beta1SentimentAnalysisResult();
  buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult < 3) {
    o.queryTextSentiment = buildGoogleCloudDialogflowV2beta1Sentiment();
  }
  buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult--;
  return o;
}

checkGoogleCloudDialogflowV2beta1SentimentAnalysisResult(
    api.GoogleCloudDialogflowV2beta1SentimentAnalysisResult o) {
  buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult < 3) {
    checkGoogleCloudDialogflowV2beta1Sentiment(o.queryTextSentiment);
  }
  buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1SmartReplyModelMetadata = 0;
buildGoogleCloudDialogflowV2beta1SmartReplyModelMetadata() {
  var o = new api.GoogleCloudDialogflowV2beta1SmartReplyModelMetadata();
  buildCounterGoogleCloudDialogflowV2beta1SmartReplyModelMetadata++;
  if (buildCounterGoogleCloudDialogflowV2beta1SmartReplyModelMetadata < 3) {
    o.modelType = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1SmartReplyModelMetadata--;
  return o;
}

checkGoogleCloudDialogflowV2beta1SmartReplyModelMetadata(
    api.GoogleCloudDialogflowV2beta1SmartReplyModelMetadata o) {
  buildCounterGoogleCloudDialogflowV2beta1SmartReplyModelMetadata++;
  if (buildCounterGoogleCloudDialogflowV2beta1SmartReplyModelMetadata < 3) {
    unittest.expect(o.modelType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1SmartReplyModelMetadata--;
}

buildUnnamed4505() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1QueryResult>();
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  return o;
}

checkUnnamed4505(core.List<api.GoogleCloudDialogflowV2beta1QueryResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1QueryResult(o[0]);
  checkGoogleCloudDialogflowV2beta1QueryResult(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1WebhookRequest = 0;
buildGoogleCloudDialogflowV2beta1WebhookRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1WebhookRequest();
  buildCounterGoogleCloudDialogflowV2beta1WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1WebhookRequest < 3) {
    o.alternativeQueryResults = buildUnnamed4505();
    o.originalDetectIntentRequest =
        buildGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest();
    o.queryResult = buildGoogleCloudDialogflowV2beta1QueryResult();
    o.responseId = "foo";
    o.session = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1WebhookRequest(
    api.GoogleCloudDialogflowV2beta1WebhookRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1WebhookRequest < 3) {
    checkUnnamed4505(o.alternativeQueryResults);
    checkGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest(
        o.originalDetectIntentRequest);
    checkGoogleCloudDialogflowV2beta1QueryResult(o.queryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
    unittest.expect(o.session, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookRequest--;
}

buildUnnamed4506() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

checkUnnamed4506(core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[1]);
}

buildUnnamed4507() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Context>();
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

checkUnnamed4507(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(o[0]);
  checkGoogleCloudDialogflowV2beta1Context(o[1]);
}

buildUnnamed4508() {
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

checkUnnamed4508(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted33 = (o["x"]) as core.Map;
  unittest.expect(casted33, unittest.hasLength(3));
  unittest.expect(casted33["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted33["bool"], unittest.equals(true));
  unittest.expect(casted33["string"], unittest.equals('foo'));
  var casted34 = (o["y"]) as core.Map;
  unittest.expect(casted34, unittest.hasLength(3));
  unittest.expect(casted34["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted34["bool"], unittest.equals(true));
  unittest.expect(casted34["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1WebhookResponse = 0;
buildGoogleCloudDialogflowV2beta1WebhookResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1WebhookResponse();
  buildCounterGoogleCloudDialogflowV2beta1WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1WebhookResponse < 3) {
    o.endInteraction = true;
    o.followupEventInput = buildGoogleCloudDialogflowV2beta1EventInput();
    o.fulfillmentMessages = buildUnnamed4506();
    o.fulfillmentText = "foo";
    o.outputContexts = buildUnnamed4507();
    o.payload = buildUnnamed4508();
    o.source = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1WebhookResponse(
    api.GoogleCloudDialogflowV2beta1WebhookResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1WebhookResponse < 3) {
    unittest.expect(o.endInteraction, unittest.isTrue);
    checkGoogleCloudDialogflowV2beta1EventInput(o.followupEventInput);
    checkUnnamed4506(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkUnnamed4507(o.outputContexts);
    checkUnnamed4508(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookResponse--;
}

buildUnnamed4509() {
  var o = new core.List<api.GoogleLongrunningOperation>();
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

checkUnnamed4509(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
buildGoogleLongrunningListOperationsResponse() {
  var o = new api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed4509();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4509(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

buildUnnamed4510() {
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

checkUnnamed4510(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted35 = (o["x"]) as core.Map;
  unittest.expect(casted35, unittest.hasLength(3));
  unittest.expect(casted35["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted35["bool"], unittest.equals(true));
  unittest.expect(casted35["string"], unittest.equals('foo'));
  var casted36 = (o["y"]) as core.Map;
  unittest.expect(casted36, unittest.hasLength(3));
  unittest.expect(casted36["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted36["bool"], unittest.equals(true));
  unittest.expect(casted36["string"], unittest.equals('foo'));
}

buildUnnamed4511() {
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

checkUnnamed4511(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted37 = (o["x"]) as core.Map;
  unittest.expect(casted37, unittest.hasLength(3));
  unittest.expect(casted37["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted37["bool"], unittest.equals(true));
  unittest.expect(casted37["string"], unittest.equals('foo'));
  var casted38 = (o["y"]) as core.Map;
  unittest.expect(casted38, unittest.hasLength(3));
  unittest.expect(casted38["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted38["bool"], unittest.equals(true));
  unittest.expect(casted38["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
buildGoogleLongrunningOperation() {
  var o = new api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed4510();
    o.name = "foo";
    o.response = buildUnnamed4511();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed4510(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4511(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
buildGoogleProtobufEmpty() {
  var o = new api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

buildUnnamed4512() {
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

checkUnnamed4512(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted39 = (o["x"]) as core.Map;
  unittest.expect(casted39, unittest.hasLength(3));
  unittest.expect(casted39["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted39["bool"], unittest.equals(true));
  unittest.expect(casted39["string"], unittest.equals('foo'));
  var casted40 = (o["y"]) as core.Map;
  unittest.expect(casted40, unittest.hasLength(3));
  unittest.expect(casted40["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted40["bool"], unittest.equals(true));
  unittest.expect(casted40["string"], unittest.equals('foo'));
}

buildUnnamed4513() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed4512());
  o.add(buildUnnamed4512());
  return o;
}

checkUnnamed4513(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4512(o[0]);
  checkUnnamed4512(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4513();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4513(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeLatLng = 0;
buildGoogleTypeLatLng() {
  var o = new api.GoogleTypeLatLng();
  buildCounterGoogleTypeLatLng++;
  if (buildCounterGoogleTypeLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterGoogleTypeLatLng--;
  return o;
}

checkGoogleTypeLatLng(api.GoogleTypeLatLng o) {
  buildCounterGoogleTypeLatLng++;
  if (buildCounterGoogleTypeLatLng < 3) {
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterGoogleTypeLatLng--;
}

main() {
  unittest.group("obj-schema-GoogleCloudDialogflowV2Agent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2Agent();
      var od = new api.GoogleCloudDialogflowV2Agent.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Agent(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2BatchCreateEntitiesRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchCreateEntitiesRequest();
      var od =
          new api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchCreateEntitiesRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2BatchDeleteEntitiesRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchDeleteEntitiesRequest();
      var od =
          new api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchDeleteEntitiesRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest();
      var od =
          new api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2BatchDeleteIntentsRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchDeleteIntentsRequest();
      var od =
          new api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchDeleteIntentsRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2BatchUpdateEntitiesRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchUpdateEntitiesRequest();
      var od =
          new api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchUpdateEntitiesRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest();
      var od =
          new api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse();
      var od = new api
              .GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2BatchUpdateIntentsRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchUpdateIntentsRequest();
      var od =
          new api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchUpdateIntentsRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2BatchUpdateIntentsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchUpdateIntentsResponse();
      var od =
          new api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchUpdateIntentsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2Context", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2Context();
      var od = new api.GoogleCloudDialogflowV2Context.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Context(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2DetectIntentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2DetectIntentRequest();
      var od = new api.GoogleCloudDialogflowV2DetectIntentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2DetectIntentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2DetectIntentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2DetectIntentResponse();
      var od = new api.GoogleCloudDialogflowV2DetectIntentResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2DetectIntentResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2EntityType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2EntityType();
      var od = new api.GoogleCloudDialogflowV2EntityType.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2EntityType(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2EntityTypeBatch", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2EntityTypeBatch();
      var od =
          new api.GoogleCloudDialogflowV2EntityTypeBatch.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2EntityTypeBatch(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2EntityTypeEntity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2EntityTypeEntity();
      var od =
          new api.GoogleCloudDialogflowV2EntityTypeEntity.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2EntityTypeEntity(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2EventInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2EventInput();
      var od = new api.GoogleCloudDialogflowV2EventInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2EventInput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ExportAgentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ExportAgentRequest();
      var od = new api.GoogleCloudDialogflowV2ExportAgentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ExportAgentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ExportAgentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ExportAgentResponse();
      var od = new api.GoogleCloudDialogflowV2ExportAgentResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ExportAgentResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ImportAgentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ImportAgentRequest();
      var od = new api.GoogleCloudDialogflowV2ImportAgentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ImportAgentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2InputAudioConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2InputAudioConfig();
      var od =
          new api.GoogleCloudDialogflowV2InputAudioConfig.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2InputAudioConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2Intent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2Intent();
      var od = new api.GoogleCloudDialogflowV2Intent.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Intent(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentBatch", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentBatch();
      var od = new api.GoogleCloudDialogflowV2IntentBatch.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentBatch(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentFollowupIntentInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentFollowupIntentInfo();
      var od = new api.GoogleCloudDialogflowV2IntentFollowupIntentInfo.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessage();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessage.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentMessage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageBasicCard",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageBasicCard();
      var od = new api.GoogleCloudDialogflowV2IntentMessageBasicCard.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageBasicCard(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageBasicCardButton", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageBasicCardButton();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction();
      var od = new api
              .GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageCard", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageCard();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageCard.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageCard(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageCardButton",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageCardButton();
      var od = new api.GoogleCloudDialogflowV2IntentMessageCardButton.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageCardButton(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageCarouselSelect", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageCarouselSelect();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageCarouselSelect.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageCarouselSelectItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem();
      var od = new api
              .GoogleCloudDialogflowV2IntentMessageCarouselSelectItem.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageImage();
      var od = new api.GoogleCloudDialogflowV2IntentMessageImage.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageImage(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion();
      var od = new api
              .GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageListSelect",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageListSelect();
      var od = new api.GoogleCloudDialogflowV2IntentMessageListSelect.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageListSelect(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageListSelectItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageListSelectItem();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageListSelectItem.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageListSelectItem(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageQuickReplies",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageQuickReplies();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageQuickReplies.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageQuickReplies(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageSelectItemInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageSelectItemInfo();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageSimpleResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageSimpleResponse();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageSimpleResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageSimpleResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageSimpleResponses", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageSimpleResponses();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageSimpleResponses.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageSuggestion",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageSuggestion();
      var od = new api.GoogleCloudDialogflowV2IntentMessageSuggestion.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageSuggestion(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageSuggestions",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageSuggestions();
      var od = new api.GoogleCloudDialogflowV2IntentMessageSuggestions.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageSuggestions(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageText", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageText();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageText.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageText(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentParameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentParameter();
      var od =
          new api.GoogleCloudDialogflowV2IntentParameter.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentParameter(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentTrainingPhrase", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentTrainingPhrase();
      var od = new api.GoogleCloudDialogflowV2IntentTrainingPhrase.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentTrainingPhrase(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentTrainingPhrasePart",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentTrainingPhrasePart();
      var od = new api.GoogleCloudDialogflowV2IntentTrainingPhrasePart.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentTrainingPhrasePart(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ListContextsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ListContextsResponse();
      var od = new api.GoogleCloudDialogflowV2ListContextsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ListContextsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ListEntityTypesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ListEntityTypesResponse();
      var od = new api.GoogleCloudDialogflowV2ListEntityTypesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ListEntityTypesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ListIntentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ListIntentsResponse();
      var od = new api.GoogleCloudDialogflowV2ListIntentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ListIntentsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2ListSessionEntityTypesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse();
      var od = new api
              .GoogleCloudDialogflowV2ListSessionEntityTypesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2OriginalDetectIntentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2OriginalDetectIntentRequest();
      var od =
          new api.GoogleCloudDialogflowV2OriginalDetectIntentRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2OriginalDetectIntentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2OutputAudioConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2OutputAudioConfig();
      var od =
          new api.GoogleCloudDialogflowV2OutputAudioConfig.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2OutputAudioConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2QueryInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2QueryInput();
      var od = new api.GoogleCloudDialogflowV2QueryInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2QueryInput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2QueryParameters", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2QueryParameters();
      var od =
          new api.GoogleCloudDialogflowV2QueryParameters.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2QueryParameters(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2QueryResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2QueryResult();
      var od = new api.GoogleCloudDialogflowV2QueryResult.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2QueryResult(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2RestoreAgentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2RestoreAgentRequest();
      var od = new api.GoogleCloudDialogflowV2RestoreAgentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2RestoreAgentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2SearchAgentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2SearchAgentsResponse();
      var od = new api.GoogleCloudDialogflowV2SearchAgentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2SearchAgentsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2Sentiment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2Sentiment();
      var od = new api.GoogleCloudDialogflowV2Sentiment.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Sentiment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2SentimentAnalysisRequestConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2SentimentAnalysisRequestConfig();
      var od = new api
              .GoogleCloudDialogflowV2SentimentAnalysisRequestConfig.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2SentimentAnalysisRequestConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2SentimentAnalysisResult",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2SentimentAnalysisResult();
      var od = new api.GoogleCloudDialogflowV2SentimentAnalysisResult.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2SentimentAnalysisResult(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2SessionEntityType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2SessionEntityType();
      var od =
          new api.GoogleCloudDialogflowV2SessionEntityType.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2SessionEntityType(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2SynthesizeSpeechConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2SynthesizeSpeechConfig();
      var od = new api.GoogleCloudDialogflowV2SynthesizeSpeechConfig.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2SynthesizeSpeechConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2TextInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2TextInput();
      var od = new api.GoogleCloudDialogflowV2TextInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2TextInput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2TrainAgentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2TrainAgentRequest();
      var od =
          new api.GoogleCloudDialogflowV2TrainAgentRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2TrainAgentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2VoiceSelectionParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2VoiceSelectionParams();
      var od = new api.GoogleCloudDialogflowV2VoiceSelectionParams.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2VoiceSelectionParams(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2WebhookRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2WebhookRequest();
      var od =
          new api.GoogleCloudDialogflowV2WebhookRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2WebhookRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2WebhookResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2WebhookResponse();
      var od =
          new api.GoogleCloudDialogflowV2WebhookResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2WebhookResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1AnnotatedConversationDataset",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1AnnotatedConversationDataset();
      var od = new api
              .GoogleCloudDialogflowV2beta1AnnotatedConversationDataset.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1AnnotatedConversationDataset(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata();
      var od = new api
              .GoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1ArticleSuggestionModelMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse();
      var od = new api
              .GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse();
      var od = new api
              .GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1Context", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1Context();
      var od = new api.GoogleCloudDialogflowV2beta1Context.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1Context(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1ConversationModel",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1ConversationModel();
      var od = new api.GoogleCloudDialogflowV2beta1ConversationModel.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1ConversationModel(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1EntityType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1EntityType();
      var od =
          new api.GoogleCloudDialogflowV2beta1EntityType.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1EntityType(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1EntityTypeEntity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1EntityTypeEntity();
      var od = new api.GoogleCloudDialogflowV2beta1EntityTypeEntity.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1EntityTypeEntity(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1EventInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1EventInput();
      var od =
          new api.GoogleCloudDialogflowV2beta1EventInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1EventInput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1ExportAgentResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1ExportAgentResponse();
      var od = new api.GoogleCloudDialogflowV2beta1ExportAgentResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1ExportAgentResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1InputDataset", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1InputDataset();
      var od =
          new api.GoogleCloudDialogflowV2beta1InputDataset.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1InputDataset(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1Intent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1Intent();
      var od = new api.GoogleCloudDialogflowV2beta1Intent.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1Intent(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1IntentMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessage();
      var od = new api.GoogleCloudDialogflowV2beta1IntentMessage.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessage(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageBasicCard", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageBasicCard();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentMessageBasicCard.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageBasicCard(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction(
          od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1IntentMessageCard",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageCard();
      var od = new api.GoogleCloudDialogflowV2beta1IntentMessageCard.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageCard(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageCardButton", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageCardButton();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentMessageCardButton.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageCardButton(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1IntentMessageImage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
      var od = new api.GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageImage(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageListSelect", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageListSelect();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentMessageListSelect.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageListSelect(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageListSelectItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageListSelectItem.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageListSelectItem(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageQuickReplies", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageQuickReplies();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageQuickReplies.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageQuickReplies(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmText",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmText();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentMessageRbmText.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmText(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageSuggestion", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageSuggestion(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageSuggestions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageSuggestions();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentMessageSuggestions.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageSuggestions(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1IntentMessageText",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageText();
      var od = new api.GoogleCloudDialogflowV2beta1IntentMessageText.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageText(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1IntentParameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentParameter();
      var od = new api.GoogleCloudDialogflowV2beta1IntentParameter.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentParameter(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1IntentTrainingPhrase",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentTrainingPhrase(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1KnowledgeAnswers", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1KnowledgeAnswers();
      var od = new api.GoogleCloudDialogflowV2beta1KnowledgeAnswers.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer();
      var od =
          new api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata();
      var od = new api
              .GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1LabelConversationResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1LabelConversationResponse();
      var od = new api
              .GoogleCloudDialogflowV2beta1LabelConversationResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1LabelConversationResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest();
      var od = new api
              .GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1QueryResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1QueryResult();
      var od =
          new api.GoogleCloudDialogflowV2beta1QueryResult.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1QueryResult(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1Sentiment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1Sentiment();
      var od =
          new api.GoogleCloudDialogflowV2beta1Sentiment.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1Sentiment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1SentimentAnalysisResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1SentimentAnalysisResult();
      var od =
          new api.GoogleCloudDialogflowV2beta1SentimentAnalysisResult.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1SentimentAnalysisResult(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1SmartReplyModelMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1SmartReplyModelMetadata();
      var od =
          new api.GoogleCloudDialogflowV2beta1SmartReplyModelMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1SmartReplyModelMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1WebhookRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1WebhookRequest();
      var od = new api.GoogleCloudDialogflowV2beta1WebhookRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1WebhookRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1WebhookResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1WebhookResponse();
      var od = new api.GoogleCloudDialogflowV2beta1WebhookResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1WebhookResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od =
          new api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningOperation();
      var od = new api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group("obj-schema-GoogleProtobufEmpty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleProtobufEmpty();
      var od = new api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group("obj-schema-GoogleRpcStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleRpcStatus();
      var od = new api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeLatLng", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeLatLng();
      var od = new api.GoogleTypeLatLng.fromJson(o.toJson());
      checkGoogleTypeLatLng(od);
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--agent", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DialogflowApi(mock).projects;
      var arg_request = buildGoogleCloudDialogflowV2Agent();
      var arg_parent = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2Agent.fromJson(json);
        checkGoogleCloudDialogflowV2Agent(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Agent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .agent(arg_request, arg_parent,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Agent(response);
      })));
    });

    unittest.test("method--deleteAgent", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DialogflowApi(mock).projects;
      var arg_parent = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteAgent(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--getAgent", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DialogflowApi(mock).projects;
      var arg_parent = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Agent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAgent(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Agent(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentResourceApi", () {
    unittest.test("method--export", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1;
      var arg_request = buildGoogleCloudDialogflowV2ExportAgentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2ExportAgentRequest.fromJson(json);
        checkGoogleCloudDialogflowV2ExportAgentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .export(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--import", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1;
      var arg_request = buildGoogleCloudDialogflowV2ImportAgentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2ImportAgentRequest.fromJson(json);
        checkGoogleCloudDialogflowV2ImportAgentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .import(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--restore", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1;
      var arg_request = buildGoogleCloudDialogflowV2RestoreAgentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2RestoreAgentRequest.fromJson(json);
        checkGoogleCloudDialogflowV2RestoreAgentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .restore(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SearchAgentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SearchAgentsResponse(response);
      })));
    });

    unittest.test("method--train", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1;
      var arg_request = buildGoogleCloudDialogflowV2TrainAgentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2TrainAgentRequest.fromJson(json);
        checkGoogleCloudDialogflowV2TrainAgentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .train(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentEntityTypesResourceApi", () {
    unittest.test("method--batchDelete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.entityTypes;
      var arg_request =
          buildGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest.fromJson(
            json);
        checkGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--batchUpdate", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.entityTypes;
      var arg_request =
          buildGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest.fromJson(
            json);
        checkGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2EntityType();
      var arg_parent = "foo";
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2EntityType.fromJson(json);
        checkGoogleCloudDialogflowV2EntityType(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2EntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2EntityType(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.entityTypes;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.entityTypes;
      var arg_name = "foo";
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2EntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2EntityType(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.entityTypes;
      var arg_parent = "foo";
      var arg_languageCode = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListEntityTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              languageCode: arg_languageCode,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListEntityTypesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2EntityType();
      var arg_name = "foo";
      var arg_languageCode = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2EntityType.fromJson(json);
        checkGoogleCloudDialogflowV2EntityType(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2EntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              languageCode: arg_languageCode,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2EntityType(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentEntityTypesEntitiesResourceApi", () {
    unittest.test("method--batchCreate", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesEntitiesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.entityTypes.entities;
      var arg_request =
          buildGoogleCloudDialogflowV2BatchCreateEntitiesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2BatchCreateEntitiesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchCreate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--batchDelete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesEntitiesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.entityTypes.entities;
      var arg_request =
          buildGoogleCloudDialogflowV2BatchDeleteEntitiesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2BatchDeleteEntitiesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--batchUpdate", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesEntitiesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.entityTypes.entities;
      var arg_request =
          buildGoogleCloudDialogflowV2BatchUpdateEntitiesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2BatchUpdateEntitiesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentIntentsResourceApi", () {
    unittest.test("method--batchDelete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.intents;
      var arg_request = buildGoogleCloudDialogflowV2BatchDeleteIntentsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2BatchDeleteIntentsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--batchUpdate", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.intents;
      var arg_request = buildGoogleCloudDialogflowV2BatchUpdateIntentsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2BatchUpdateIntentsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.intents;
      var arg_request = buildGoogleCloudDialogflowV2Intent();
      var arg_parent = "foo";
      var arg_intentView = "foo";
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2Intent.fromJson(json);
        checkGoogleCloudDialogflowV2Intent(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["intentView"].first, unittest.equals(arg_intentView));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Intent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Intent(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.intents;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.intents;
      var arg_name = "foo";
      var arg_intentView = "foo";
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["intentView"].first, unittest.equals(arg_intentView));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Intent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Intent(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.intents;
      var arg_parent = "foo";
      var arg_languageCode = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_intentView = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["intentView"].first, unittest.equals(arg_intentView));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListIntentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              languageCode: arg_languageCode,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              intentView: arg_intentView,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListIntentsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.intents;
      var arg_request = buildGoogleCloudDialogflowV2Intent();
      var arg_name = "foo";
      var arg_languageCode = "foo";
      var arg_updateMask = "foo";
      var arg_intentView = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2Intent.fromJson(json);
        checkGoogleCloudDialogflowV2Intent(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(
            queryMap["intentView"].first, unittest.equals(arg_intentView));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Intent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              languageCode: arg_languageCode,
              updateMask: arg_updateMask,
              intentView: arg_intentView,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Intent(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentSessionsResourceApi", () {
    unittest.test("method--deleteContexts", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.sessions;
      var arg_parent = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteContexts(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--detectIntent", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.sessions;
      var arg_request = buildGoogleCloudDialogflowV2DetectIntentRequest();
      var arg_session = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2DetectIntentRequest.fromJson(json);
        checkGoogleCloudDialogflowV2DetectIntentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2DetectIntentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .detectIntent(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2DetectIntentResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentSessionsContextsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsContextsResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.sessions.contexts;
      var arg_request = buildGoogleCloudDialogflowV2Context();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2Context.fromJson(json);
        checkGoogleCloudDialogflowV2Context(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Context(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsContextsResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.sessions.contexts;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsContextsResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.sessions.contexts;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Context(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsContextsResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.sessions.contexts;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListContextsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListContextsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsContextsResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.sessions.contexts;
      var arg_request = buildGoogleCloudDialogflowV2Context();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2Context.fromJson(json);
        checkGoogleCloudDialogflowV2Context(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Context(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentSessionsEntityTypesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.sessions.entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2SessionEntityType.fromJson(json);
        checkGoogleCloudDialogflowV2SessionEntityType(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SessionEntityType(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.sessions.entityTypes;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.sessions.entityTypes;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SessionEntityType(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.sessions.entityTypes;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.sessions.entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2SessionEntityType.fromJson(json);
        checkGoogleCloudDialogflowV2SessionEntityType(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SessionEntityType(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.DialogflowApi(mock).projects.locations.operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.DialogflowApi(mock).projects.locations.operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.DialogflowApi(mock).projects.locations.operations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          new api.DialogflowApi(mock).projects.operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          new api.DialogflowApi(mock).projects.operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          new api.DialogflowApi(mock).projects.operations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(response);
      })));
    });
  });
}
