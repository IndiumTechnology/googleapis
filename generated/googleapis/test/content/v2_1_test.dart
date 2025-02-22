library googleapis.content.v2_1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/content/v2_1.dart' as api;

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

buildUnnamed3227() {
  var o = new core.List<api.AccountAdsLink>();
  o.add(buildAccountAdsLink());
  o.add(buildAccountAdsLink());
  return o;
}

checkUnnamed3227(core.List<api.AccountAdsLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountAdsLink(o[0]);
  checkAccountAdsLink(o[1]);
}

buildUnnamed3228() {
  var o = new core.List<api.AccountUser>();
  o.add(buildAccountUser());
  o.add(buildAccountUser());
  return o;
}

checkUnnamed3228(core.List<api.AccountUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountUser(o[0]);
  checkAccountUser(o[1]);
}

buildUnnamed3229() {
  var o = new core.List<api.AccountYouTubeChannelLink>();
  o.add(buildAccountYouTubeChannelLink());
  o.add(buildAccountYouTubeChannelLink());
  return o;
}

checkUnnamed3229(core.List<api.AccountYouTubeChannelLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountYouTubeChannelLink(o[0]);
  checkAccountYouTubeChannelLink(o[1]);
}

core.int buildCounterAccount = 0;
buildAccount() {
  var o = new api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.adsLinks = buildUnnamed3227();
    o.adultContent = true;
    o.businessInformation = buildAccountBusinessInformation();
    o.googleMyBusinessLink = buildAccountGoogleMyBusinessLink();
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.sellerId = "foo";
    o.users = buildUnnamed3228();
    o.websiteUrl = "foo";
    o.youtubeChannelLinks = buildUnnamed3229();
  }
  buildCounterAccount--;
  return o;
}

checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    checkUnnamed3227(o.adsLinks);
    unittest.expect(o.adultContent, unittest.isTrue);
    checkAccountBusinessInformation(o.businessInformation);
    checkAccountGoogleMyBusinessLink(o.googleMyBusinessLink);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sellerId, unittest.equals('foo'));
    checkUnnamed3228(o.users);
    unittest.expect(o.websiteUrl, unittest.equals('foo'));
    checkUnnamed3229(o.youtubeChannelLinks);
  }
  buildCounterAccount--;
}

core.int buildCounterAccountAddress = 0;
buildAccountAddress() {
  var o = new api.AccountAddress();
  buildCounterAccountAddress++;
  if (buildCounterAccountAddress < 3) {
    o.country = "foo";
    o.locality = "foo";
    o.postalCode = "foo";
    o.region = "foo";
    o.streetAddress = "foo";
  }
  buildCounterAccountAddress--;
  return o;
}

checkAccountAddress(api.AccountAddress o) {
  buildCounterAccountAddress++;
  if (buildCounterAccountAddress < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.streetAddress, unittest.equals('foo'));
  }
  buildCounterAccountAddress--;
}

core.int buildCounterAccountAdsLink = 0;
buildAccountAdsLink() {
  var o = new api.AccountAdsLink();
  buildCounterAccountAdsLink++;
  if (buildCounterAccountAdsLink < 3) {
    o.adsId = "foo";
    o.status = "foo";
  }
  buildCounterAccountAdsLink--;
  return o;
}

checkAccountAdsLink(api.AccountAdsLink o) {
  buildCounterAccountAdsLink++;
  if (buildCounterAccountAdsLink < 3) {
    unittest.expect(o.adsId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterAccountAdsLink--;
}

core.int buildCounterAccountBusinessInformation = 0;
buildAccountBusinessInformation() {
  var o = new api.AccountBusinessInformation();
  buildCounterAccountBusinessInformation++;
  if (buildCounterAccountBusinessInformation < 3) {
    o.address = buildAccountAddress();
    o.customerService = buildAccountCustomerService();
    o.phoneNumber = "foo";
  }
  buildCounterAccountBusinessInformation--;
  return o;
}

checkAccountBusinessInformation(api.AccountBusinessInformation o) {
  buildCounterAccountBusinessInformation++;
  if (buildCounterAccountBusinessInformation < 3) {
    checkAccountAddress(o.address);
    checkAccountCustomerService(o.customerService);
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
  }
  buildCounterAccountBusinessInformation--;
}

core.int buildCounterAccountCustomerService = 0;
buildAccountCustomerService() {
  var o = new api.AccountCustomerService();
  buildCounterAccountCustomerService++;
  if (buildCounterAccountCustomerService < 3) {
    o.email = "foo";
    o.phoneNumber = "foo";
    o.url = "foo";
  }
  buildCounterAccountCustomerService--;
  return o;
}

checkAccountCustomerService(api.AccountCustomerService o) {
  buildCounterAccountCustomerService++;
  if (buildCounterAccountCustomerService < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterAccountCustomerService--;
}

core.int buildCounterAccountGoogleMyBusinessLink = 0;
buildAccountGoogleMyBusinessLink() {
  var o = new api.AccountGoogleMyBusinessLink();
  buildCounterAccountGoogleMyBusinessLink++;
  if (buildCounterAccountGoogleMyBusinessLink < 3) {
    o.gmbEmail = "foo";
    o.status = "foo";
  }
  buildCounterAccountGoogleMyBusinessLink--;
  return o;
}

checkAccountGoogleMyBusinessLink(api.AccountGoogleMyBusinessLink o) {
  buildCounterAccountGoogleMyBusinessLink++;
  if (buildCounterAccountGoogleMyBusinessLink < 3) {
    unittest.expect(o.gmbEmail, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterAccountGoogleMyBusinessLink--;
}

core.int buildCounterAccountIdentifier = 0;
buildAccountIdentifier() {
  var o = new api.AccountIdentifier();
  buildCounterAccountIdentifier++;
  if (buildCounterAccountIdentifier < 3) {
    o.aggregatorId = "foo";
    o.merchantId = "foo";
  }
  buildCounterAccountIdentifier--;
  return o;
}

checkAccountIdentifier(api.AccountIdentifier o) {
  buildCounterAccountIdentifier++;
  if (buildCounterAccountIdentifier < 3) {
    unittest.expect(o.aggregatorId, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
  }
  buildCounterAccountIdentifier--;
}

buildUnnamed3230() {
  var o = new core.List<api.AccountStatusAccountLevelIssue>();
  o.add(buildAccountStatusAccountLevelIssue());
  o.add(buildAccountStatusAccountLevelIssue());
  return o;
}

checkUnnamed3230(core.List<api.AccountStatusAccountLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatusAccountLevelIssue(o[0]);
  checkAccountStatusAccountLevelIssue(o[1]);
}

buildUnnamed3231() {
  var o = new core.List<api.AccountStatusProducts>();
  o.add(buildAccountStatusProducts());
  o.add(buildAccountStatusProducts());
  return o;
}

checkUnnamed3231(core.List<api.AccountStatusProducts> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatusProducts(o[0]);
  checkAccountStatusProducts(o[1]);
}

core.int buildCounterAccountStatus = 0;
buildAccountStatus() {
  var o = new api.AccountStatus();
  buildCounterAccountStatus++;
  if (buildCounterAccountStatus < 3) {
    o.accountId = "foo";
    o.accountLevelIssues = buildUnnamed3230();
    o.kind = "foo";
    o.products = buildUnnamed3231();
    o.websiteClaimed = true;
  }
  buildCounterAccountStatus--;
  return o;
}

checkAccountStatus(api.AccountStatus o) {
  buildCounterAccountStatus++;
  if (buildCounterAccountStatus < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed3230(o.accountLevelIssues);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3231(o.products);
    unittest.expect(o.websiteClaimed, unittest.isTrue);
  }
  buildCounterAccountStatus--;
}

core.int buildCounterAccountStatusAccountLevelIssue = 0;
buildAccountStatusAccountLevelIssue() {
  var o = new api.AccountStatusAccountLevelIssue();
  buildCounterAccountStatusAccountLevelIssue++;
  if (buildCounterAccountStatusAccountLevelIssue < 3) {
    o.country = "foo";
    o.destination = "foo";
    o.detail = "foo";
    o.documentation = "foo";
    o.id = "foo";
    o.severity = "foo";
    o.title = "foo";
  }
  buildCounterAccountStatusAccountLevelIssue--;
  return o;
}

checkAccountStatusAccountLevelIssue(api.AccountStatusAccountLevelIssue o) {
  buildCounterAccountStatusAccountLevelIssue++;
  if (buildCounterAccountStatusAccountLevelIssue < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.documentation, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterAccountStatusAccountLevelIssue--;
}

core.int buildCounterAccountStatusItemLevelIssue = 0;
buildAccountStatusItemLevelIssue() {
  var o = new api.AccountStatusItemLevelIssue();
  buildCounterAccountStatusItemLevelIssue++;
  if (buildCounterAccountStatusItemLevelIssue < 3) {
    o.attributeName = "foo";
    o.code = "foo";
    o.description = "foo";
    o.detail = "foo";
    o.documentation = "foo";
    o.numItems = "foo";
    o.resolution = "foo";
    o.servability = "foo";
  }
  buildCounterAccountStatusItemLevelIssue--;
  return o;
}

checkAccountStatusItemLevelIssue(api.AccountStatusItemLevelIssue o) {
  buildCounterAccountStatusItemLevelIssue++;
  if (buildCounterAccountStatusItemLevelIssue < 3) {
    unittest.expect(o.attributeName, unittest.equals('foo'));
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.documentation, unittest.equals('foo'));
    unittest.expect(o.numItems, unittest.equals('foo'));
    unittest.expect(o.resolution, unittest.equals('foo'));
    unittest.expect(o.servability, unittest.equals('foo'));
  }
  buildCounterAccountStatusItemLevelIssue--;
}

buildUnnamed3232() {
  var o = new core.List<api.AccountStatusItemLevelIssue>();
  o.add(buildAccountStatusItemLevelIssue());
  o.add(buildAccountStatusItemLevelIssue());
  return o;
}

checkUnnamed3232(core.List<api.AccountStatusItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatusItemLevelIssue(o[0]);
  checkAccountStatusItemLevelIssue(o[1]);
}

core.int buildCounterAccountStatusProducts = 0;
buildAccountStatusProducts() {
  var o = new api.AccountStatusProducts();
  buildCounterAccountStatusProducts++;
  if (buildCounterAccountStatusProducts < 3) {
    o.channel = "foo";
    o.country = "foo";
    o.destination = "foo";
    o.itemLevelIssues = buildUnnamed3232();
    o.statistics = buildAccountStatusStatistics();
  }
  buildCounterAccountStatusProducts--;
  return o;
}

checkAccountStatusProducts(api.AccountStatusProducts o) {
  buildCounterAccountStatusProducts++;
  if (buildCounterAccountStatusProducts < 3) {
    unittest.expect(o.channel, unittest.equals('foo'));
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.destination, unittest.equals('foo'));
    checkUnnamed3232(o.itemLevelIssues);
    checkAccountStatusStatistics(o.statistics);
  }
  buildCounterAccountStatusProducts--;
}

core.int buildCounterAccountStatusStatistics = 0;
buildAccountStatusStatistics() {
  var o = new api.AccountStatusStatistics();
  buildCounterAccountStatusStatistics++;
  if (buildCounterAccountStatusStatistics < 3) {
    o.active = "foo";
    o.disapproved = "foo";
    o.expiring = "foo";
    o.pending = "foo";
  }
  buildCounterAccountStatusStatistics--;
  return o;
}

checkAccountStatusStatistics(api.AccountStatusStatistics o) {
  buildCounterAccountStatusStatistics++;
  if (buildCounterAccountStatusStatistics < 3) {
    unittest.expect(o.active, unittest.equals('foo'));
    unittest.expect(o.disapproved, unittest.equals('foo'));
    unittest.expect(o.expiring, unittest.equals('foo'));
    unittest.expect(o.pending, unittest.equals('foo'));
  }
  buildCounterAccountStatusStatistics--;
}

buildUnnamed3233() {
  var o = new core.List<api.AccountTaxTaxRule>();
  o.add(buildAccountTaxTaxRule());
  o.add(buildAccountTaxTaxRule());
  return o;
}

checkUnnamed3233(core.List<api.AccountTaxTaxRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountTaxTaxRule(o[0]);
  checkAccountTaxTaxRule(o[1]);
}

core.int buildCounterAccountTax = 0;
buildAccountTax() {
  var o = new api.AccountTax();
  buildCounterAccountTax++;
  if (buildCounterAccountTax < 3) {
    o.accountId = "foo";
    o.kind = "foo";
    o.rules = buildUnnamed3233();
  }
  buildCounterAccountTax--;
  return o;
}

checkAccountTax(api.AccountTax o) {
  buildCounterAccountTax++;
  if (buildCounterAccountTax < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3233(o.rules);
  }
  buildCounterAccountTax--;
}

core.int buildCounterAccountTaxTaxRule = 0;
buildAccountTaxTaxRule() {
  var o = new api.AccountTaxTaxRule();
  buildCounterAccountTaxTaxRule++;
  if (buildCounterAccountTaxTaxRule < 3) {
    o.country = "foo";
    o.locationId = "foo";
    o.ratePercent = "foo";
    o.shippingTaxed = true;
    o.useGlobalRate = true;
  }
  buildCounterAccountTaxTaxRule--;
  return o;
}

checkAccountTaxTaxRule(api.AccountTaxTaxRule o) {
  buildCounterAccountTaxTaxRule++;
  if (buildCounterAccountTaxTaxRule < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.ratePercent, unittest.equals('foo'));
    unittest.expect(o.shippingTaxed, unittest.isTrue);
    unittest.expect(o.useGlobalRate, unittest.isTrue);
  }
  buildCounterAccountTaxTaxRule--;
}

core.int buildCounterAccountUser = 0;
buildAccountUser() {
  var o = new api.AccountUser();
  buildCounterAccountUser++;
  if (buildCounterAccountUser < 3) {
    o.admin = true;
    o.emailAddress = "foo";
    o.orderManager = true;
    o.paymentsAnalyst = true;
    o.paymentsManager = true;
  }
  buildCounterAccountUser--;
  return o;
}

checkAccountUser(api.AccountUser o) {
  buildCounterAccountUser++;
  if (buildCounterAccountUser < 3) {
    unittest.expect(o.admin, unittest.isTrue);
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.orderManager, unittest.isTrue);
    unittest.expect(o.paymentsAnalyst, unittest.isTrue);
    unittest.expect(o.paymentsManager, unittest.isTrue);
  }
  buildCounterAccountUser--;
}

core.int buildCounterAccountYouTubeChannelLink = 0;
buildAccountYouTubeChannelLink() {
  var o = new api.AccountYouTubeChannelLink();
  buildCounterAccountYouTubeChannelLink++;
  if (buildCounterAccountYouTubeChannelLink < 3) {
    o.channelId = "foo";
    o.status = "foo";
  }
  buildCounterAccountYouTubeChannelLink--;
  return o;
}

checkAccountYouTubeChannelLink(api.AccountYouTubeChannelLink o) {
  buildCounterAccountYouTubeChannelLink++;
  if (buildCounterAccountYouTubeChannelLink < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterAccountYouTubeChannelLink--;
}

buildUnnamed3234() {
  var o = new core.List<api.AccountIdentifier>();
  o.add(buildAccountIdentifier());
  o.add(buildAccountIdentifier());
  return o;
}

checkUnnamed3234(core.List<api.AccountIdentifier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountIdentifier(o[0]);
  checkAccountIdentifier(o[1]);
}

core.int buildCounterAccountsAuthInfoResponse = 0;
buildAccountsAuthInfoResponse() {
  var o = new api.AccountsAuthInfoResponse();
  buildCounterAccountsAuthInfoResponse++;
  if (buildCounterAccountsAuthInfoResponse < 3) {
    o.accountIdentifiers = buildUnnamed3234();
    o.kind = "foo";
  }
  buildCounterAccountsAuthInfoResponse--;
  return o;
}

checkAccountsAuthInfoResponse(api.AccountsAuthInfoResponse o) {
  buildCounterAccountsAuthInfoResponse++;
  if (buildCounterAccountsAuthInfoResponse < 3) {
    checkUnnamed3234(o.accountIdentifiers);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsAuthInfoResponse--;
}

core.int buildCounterAccountsClaimWebsiteResponse = 0;
buildAccountsClaimWebsiteResponse() {
  var o = new api.AccountsClaimWebsiteResponse();
  buildCounterAccountsClaimWebsiteResponse++;
  if (buildCounterAccountsClaimWebsiteResponse < 3) {
    o.kind = "foo";
  }
  buildCounterAccountsClaimWebsiteResponse--;
  return o;
}

checkAccountsClaimWebsiteResponse(api.AccountsClaimWebsiteResponse o) {
  buildCounterAccountsClaimWebsiteResponse++;
  if (buildCounterAccountsClaimWebsiteResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsClaimWebsiteResponse--;
}

buildUnnamed3235() {
  var o = new core.List<api.AccountsCustomBatchRequestEntry>();
  o.add(buildAccountsCustomBatchRequestEntry());
  o.add(buildAccountsCustomBatchRequestEntry());
  return o;
}

checkUnnamed3235(core.List<api.AccountsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountsCustomBatchRequestEntry(o[0]);
  checkAccountsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccountsCustomBatchRequest = 0;
buildAccountsCustomBatchRequest() {
  var o = new api.AccountsCustomBatchRequest();
  buildCounterAccountsCustomBatchRequest++;
  if (buildCounterAccountsCustomBatchRequest < 3) {
    o.entries = buildUnnamed3235();
  }
  buildCounterAccountsCustomBatchRequest--;
  return o;
}

checkAccountsCustomBatchRequest(api.AccountsCustomBatchRequest o) {
  buildCounterAccountsCustomBatchRequest++;
  if (buildCounterAccountsCustomBatchRequest < 3) {
    checkUnnamed3235(o.entries);
  }
  buildCounterAccountsCustomBatchRequest--;
}

core.int buildCounterAccountsCustomBatchRequestEntry = 0;
buildAccountsCustomBatchRequestEntry() {
  var o = new api.AccountsCustomBatchRequestEntry();
  buildCounterAccountsCustomBatchRequestEntry++;
  if (buildCounterAccountsCustomBatchRequestEntry < 3) {
    o.account = buildAccount();
    o.accountId = "foo";
    o.batchId = 42;
    o.force = true;
    o.linkRequest = buildAccountsCustomBatchRequestEntryLinkRequest();
    o.merchantId = "foo";
    o.method = "foo";
    o.overwrite = true;
  }
  buildCounterAccountsCustomBatchRequestEntry--;
  return o;
}

checkAccountsCustomBatchRequestEntry(api.AccountsCustomBatchRequestEntry o) {
  buildCounterAccountsCustomBatchRequestEntry++;
  if (buildCounterAccountsCustomBatchRequestEntry < 3) {
    checkAccount(o.account);
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.force, unittest.isTrue);
    checkAccountsCustomBatchRequestEntryLinkRequest(o.linkRequest);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.overwrite, unittest.isTrue);
  }
  buildCounterAccountsCustomBatchRequestEntry--;
}

core.int buildCounterAccountsCustomBatchRequestEntryLinkRequest = 0;
buildAccountsCustomBatchRequestEntryLinkRequest() {
  var o = new api.AccountsCustomBatchRequestEntryLinkRequest();
  buildCounterAccountsCustomBatchRequestEntryLinkRequest++;
  if (buildCounterAccountsCustomBatchRequestEntryLinkRequest < 3) {
    o.action = "foo";
    o.linkType = "foo";
    o.linkedAccountId = "foo";
  }
  buildCounterAccountsCustomBatchRequestEntryLinkRequest--;
  return o;
}

checkAccountsCustomBatchRequestEntryLinkRequest(
    api.AccountsCustomBatchRequestEntryLinkRequest o) {
  buildCounterAccountsCustomBatchRequestEntryLinkRequest++;
  if (buildCounterAccountsCustomBatchRequestEntryLinkRequest < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.linkType, unittest.equals('foo'));
    unittest.expect(o.linkedAccountId, unittest.equals('foo'));
  }
  buildCounterAccountsCustomBatchRequestEntryLinkRequest--;
}

buildUnnamed3236() {
  var o = new core.List<api.AccountsCustomBatchResponseEntry>();
  o.add(buildAccountsCustomBatchResponseEntry());
  o.add(buildAccountsCustomBatchResponseEntry());
  return o;
}

checkUnnamed3236(core.List<api.AccountsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountsCustomBatchResponseEntry(o[0]);
  checkAccountsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccountsCustomBatchResponse = 0;
buildAccountsCustomBatchResponse() {
  var o = new api.AccountsCustomBatchResponse();
  buildCounterAccountsCustomBatchResponse++;
  if (buildCounterAccountsCustomBatchResponse < 3) {
    o.entries = buildUnnamed3236();
    o.kind = "foo";
  }
  buildCounterAccountsCustomBatchResponse--;
  return o;
}

checkAccountsCustomBatchResponse(api.AccountsCustomBatchResponse o) {
  buildCounterAccountsCustomBatchResponse++;
  if (buildCounterAccountsCustomBatchResponse < 3) {
    checkUnnamed3236(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsCustomBatchResponse--;
}

core.int buildCounterAccountsCustomBatchResponseEntry = 0;
buildAccountsCustomBatchResponseEntry() {
  var o = new api.AccountsCustomBatchResponseEntry();
  buildCounterAccountsCustomBatchResponseEntry++;
  if (buildCounterAccountsCustomBatchResponseEntry < 3) {
    o.account = buildAccount();
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = "foo";
  }
  buildCounterAccountsCustomBatchResponseEntry--;
  return o;
}

checkAccountsCustomBatchResponseEntry(api.AccountsCustomBatchResponseEntry o) {
  buildCounterAccountsCustomBatchResponseEntry++;
  if (buildCounterAccountsCustomBatchResponseEntry < 3) {
    checkAccount(o.account);
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsCustomBatchResponseEntry--;
}

core.int buildCounterAccountsLinkRequest = 0;
buildAccountsLinkRequest() {
  var o = new api.AccountsLinkRequest();
  buildCounterAccountsLinkRequest++;
  if (buildCounterAccountsLinkRequest < 3) {
    o.action = "foo";
    o.linkType = "foo";
    o.linkedAccountId = "foo";
  }
  buildCounterAccountsLinkRequest--;
  return o;
}

checkAccountsLinkRequest(api.AccountsLinkRequest o) {
  buildCounterAccountsLinkRequest++;
  if (buildCounterAccountsLinkRequest < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.linkType, unittest.equals('foo'));
    unittest.expect(o.linkedAccountId, unittest.equals('foo'));
  }
  buildCounterAccountsLinkRequest--;
}

core.int buildCounterAccountsLinkResponse = 0;
buildAccountsLinkResponse() {
  var o = new api.AccountsLinkResponse();
  buildCounterAccountsLinkResponse++;
  if (buildCounterAccountsLinkResponse < 3) {
    o.kind = "foo";
  }
  buildCounterAccountsLinkResponse--;
  return o;
}

checkAccountsLinkResponse(api.AccountsLinkResponse o) {
  buildCounterAccountsLinkResponse++;
  if (buildCounterAccountsLinkResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountsLinkResponse--;
}

buildUnnamed3237() {
  var o = new core.List<api.Account>();
  o.add(buildAccount());
  o.add(buildAccount());
  return o;
}

checkUnnamed3237(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterAccountsListResponse = 0;
buildAccountsListResponse() {
  var o = new api.AccountsListResponse();
  buildCounterAccountsListResponse++;
  if (buildCounterAccountsListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed3237();
  }
  buildCounterAccountsListResponse--;
  return o;
}

checkAccountsListResponse(api.AccountsListResponse o) {
  buildCounterAccountsListResponse++;
  if (buildCounterAccountsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3237(o.resources);
  }
  buildCounterAccountsListResponse--;
}

buildUnnamed3238() {
  var o = new core.List<api.AccountstatusesCustomBatchRequestEntry>();
  o.add(buildAccountstatusesCustomBatchRequestEntry());
  o.add(buildAccountstatusesCustomBatchRequestEntry());
  return o;
}

checkUnnamed3238(core.List<api.AccountstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountstatusesCustomBatchRequestEntry(o[0]);
  checkAccountstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccountstatusesCustomBatchRequest = 0;
buildAccountstatusesCustomBatchRequest() {
  var o = new api.AccountstatusesCustomBatchRequest();
  buildCounterAccountstatusesCustomBatchRequest++;
  if (buildCounterAccountstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed3238();
  }
  buildCounterAccountstatusesCustomBatchRequest--;
  return o;
}

checkAccountstatusesCustomBatchRequest(
    api.AccountstatusesCustomBatchRequest o) {
  buildCounterAccountstatusesCustomBatchRequest++;
  if (buildCounterAccountstatusesCustomBatchRequest < 3) {
    checkUnnamed3238(o.entries);
  }
  buildCounterAccountstatusesCustomBatchRequest--;
}

buildUnnamed3239() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3239(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccountstatusesCustomBatchRequestEntry = 0;
buildAccountstatusesCustomBatchRequestEntry() {
  var o = new api.AccountstatusesCustomBatchRequestEntry();
  buildCounterAccountstatusesCustomBatchRequestEntry++;
  if (buildCounterAccountstatusesCustomBatchRequestEntry < 3) {
    o.accountId = "foo";
    o.batchId = 42;
    o.destinations = buildUnnamed3239();
    o.merchantId = "foo";
    o.method = "foo";
  }
  buildCounterAccountstatusesCustomBatchRequestEntry--;
  return o;
}

checkAccountstatusesCustomBatchRequestEntry(
    api.AccountstatusesCustomBatchRequestEntry o) {
  buildCounterAccountstatusesCustomBatchRequestEntry++;
  if (buildCounterAccountstatusesCustomBatchRequestEntry < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.batchId, unittest.equals(42));
    checkUnnamed3239(o.destinations);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
  }
  buildCounterAccountstatusesCustomBatchRequestEntry--;
}

buildUnnamed3240() {
  var o = new core.List<api.AccountstatusesCustomBatchResponseEntry>();
  o.add(buildAccountstatusesCustomBatchResponseEntry());
  o.add(buildAccountstatusesCustomBatchResponseEntry());
  return o;
}

checkUnnamed3240(core.List<api.AccountstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountstatusesCustomBatchResponseEntry(o[0]);
  checkAccountstatusesCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccountstatusesCustomBatchResponse = 0;
buildAccountstatusesCustomBatchResponse() {
  var o = new api.AccountstatusesCustomBatchResponse();
  buildCounterAccountstatusesCustomBatchResponse++;
  if (buildCounterAccountstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed3240();
    o.kind = "foo";
  }
  buildCounterAccountstatusesCustomBatchResponse--;
  return o;
}

checkAccountstatusesCustomBatchResponse(
    api.AccountstatusesCustomBatchResponse o) {
  buildCounterAccountstatusesCustomBatchResponse++;
  if (buildCounterAccountstatusesCustomBatchResponse < 3) {
    checkUnnamed3240(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountstatusesCustomBatchResponse--;
}

core.int buildCounterAccountstatusesCustomBatchResponseEntry = 0;
buildAccountstatusesCustomBatchResponseEntry() {
  var o = new api.AccountstatusesCustomBatchResponseEntry();
  buildCounterAccountstatusesCustomBatchResponseEntry++;
  if (buildCounterAccountstatusesCustomBatchResponseEntry < 3) {
    o.accountStatus = buildAccountStatus();
    o.batchId = 42;
    o.errors = buildErrors();
  }
  buildCounterAccountstatusesCustomBatchResponseEntry--;
  return o;
}

checkAccountstatusesCustomBatchResponseEntry(
    api.AccountstatusesCustomBatchResponseEntry o) {
  buildCounterAccountstatusesCustomBatchResponseEntry++;
  if (buildCounterAccountstatusesCustomBatchResponseEntry < 3) {
    checkAccountStatus(o.accountStatus);
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
  }
  buildCounterAccountstatusesCustomBatchResponseEntry--;
}

buildUnnamed3241() {
  var o = new core.List<api.AccountStatus>();
  o.add(buildAccountStatus());
  o.add(buildAccountStatus());
  return o;
}

checkUnnamed3241(core.List<api.AccountStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountStatus(o[0]);
  checkAccountStatus(o[1]);
}

core.int buildCounterAccountstatusesListResponse = 0;
buildAccountstatusesListResponse() {
  var o = new api.AccountstatusesListResponse();
  buildCounterAccountstatusesListResponse++;
  if (buildCounterAccountstatusesListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed3241();
  }
  buildCounterAccountstatusesListResponse--;
  return o;
}

checkAccountstatusesListResponse(api.AccountstatusesListResponse o) {
  buildCounterAccountstatusesListResponse++;
  if (buildCounterAccountstatusesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3241(o.resources);
  }
  buildCounterAccountstatusesListResponse--;
}

buildUnnamed3242() {
  var o = new core.List<api.AccounttaxCustomBatchRequestEntry>();
  o.add(buildAccounttaxCustomBatchRequestEntry());
  o.add(buildAccounttaxCustomBatchRequestEntry());
  return o;
}

checkUnnamed3242(core.List<api.AccounttaxCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccounttaxCustomBatchRequestEntry(o[0]);
  checkAccounttaxCustomBatchRequestEntry(o[1]);
}

core.int buildCounterAccounttaxCustomBatchRequest = 0;
buildAccounttaxCustomBatchRequest() {
  var o = new api.AccounttaxCustomBatchRequest();
  buildCounterAccounttaxCustomBatchRequest++;
  if (buildCounterAccounttaxCustomBatchRequest < 3) {
    o.entries = buildUnnamed3242();
  }
  buildCounterAccounttaxCustomBatchRequest--;
  return o;
}

checkAccounttaxCustomBatchRequest(api.AccounttaxCustomBatchRequest o) {
  buildCounterAccounttaxCustomBatchRequest++;
  if (buildCounterAccounttaxCustomBatchRequest < 3) {
    checkUnnamed3242(o.entries);
  }
  buildCounterAccounttaxCustomBatchRequest--;
}

core.int buildCounterAccounttaxCustomBatchRequestEntry = 0;
buildAccounttaxCustomBatchRequestEntry() {
  var o = new api.AccounttaxCustomBatchRequestEntry();
  buildCounterAccounttaxCustomBatchRequestEntry++;
  if (buildCounterAccounttaxCustomBatchRequestEntry < 3) {
    o.accountId = "foo";
    o.accountTax = buildAccountTax();
    o.batchId = 42;
    o.merchantId = "foo";
    o.method = "foo";
  }
  buildCounterAccounttaxCustomBatchRequestEntry--;
  return o;
}

checkAccounttaxCustomBatchRequestEntry(
    api.AccounttaxCustomBatchRequestEntry o) {
  buildCounterAccounttaxCustomBatchRequestEntry++;
  if (buildCounterAccounttaxCustomBatchRequestEntry < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkAccountTax(o.accountTax);
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
  }
  buildCounterAccounttaxCustomBatchRequestEntry--;
}

buildUnnamed3243() {
  var o = new core.List<api.AccounttaxCustomBatchResponseEntry>();
  o.add(buildAccounttaxCustomBatchResponseEntry());
  o.add(buildAccounttaxCustomBatchResponseEntry());
  return o;
}

checkUnnamed3243(core.List<api.AccounttaxCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccounttaxCustomBatchResponseEntry(o[0]);
  checkAccounttaxCustomBatchResponseEntry(o[1]);
}

core.int buildCounterAccounttaxCustomBatchResponse = 0;
buildAccounttaxCustomBatchResponse() {
  var o = new api.AccounttaxCustomBatchResponse();
  buildCounterAccounttaxCustomBatchResponse++;
  if (buildCounterAccounttaxCustomBatchResponse < 3) {
    o.entries = buildUnnamed3243();
    o.kind = "foo";
  }
  buildCounterAccounttaxCustomBatchResponse--;
  return o;
}

checkAccounttaxCustomBatchResponse(api.AccounttaxCustomBatchResponse o) {
  buildCounterAccounttaxCustomBatchResponse++;
  if (buildCounterAccounttaxCustomBatchResponse < 3) {
    checkUnnamed3243(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccounttaxCustomBatchResponse--;
}

core.int buildCounterAccounttaxCustomBatchResponseEntry = 0;
buildAccounttaxCustomBatchResponseEntry() {
  var o = new api.AccounttaxCustomBatchResponseEntry();
  buildCounterAccounttaxCustomBatchResponseEntry++;
  if (buildCounterAccounttaxCustomBatchResponseEntry < 3) {
    o.accountTax = buildAccountTax();
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = "foo";
  }
  buildCounterAccounttaxCustomBatchResponseEntry--;
  return o;
}

checkAccounttaxCustomBatchResponseEntry(
    api.AccounttaxCustomBatchResponseEntry o) {
  buildCounterAccounttaxCustomBatchResponseEntry++;
  if (buildCounterAccounttaxCustomBatchResponseEntry < 3) {
    checkAccountTax(o.accountTax);
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccounttaxCustomBatchResponseEntry--;
}

buildUnnamed3244() {
  var o = new core.List<api.AccountTax>();
  o.add(buildAccountTax());
  o.add(buildAccountTax());
  return o;
}

checkUnnamed3244(core.List<api.AccountTax> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountTax(o[0]);
  checkAccountTax(o[1]);
}

core.int buildCounterAccounttaxListResponse = 0;
buildAccounttaxListResponse() {
  var o = new api.AccounttaxListResponse();
  buildCounterAccounttaxListResponse++;
  if (buildCounterAccounttaxListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed3244();
  }
  buildCounterAccounttaxListResponse--;
  return o;
}

checkAccounttaxListResponse(api.AccounttaxListResponse o) {
  buildCounterAccounttaxListResponse++;
  if (buildCounterAccounttaxListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3244(o.resources);
  }
  buildCounterAccounttaxListResponse--;
}

core.int buildCounterAmount = 0;
buildAmount() {
  var o = new api.Amount();
  buildCounterAmount++;
  if (buildCounterAmount < 3) {
    o.priceAmount = buildPrice();
    o.taxAmount = buildPrice();
  }
  buildCounterAmount--;
  return o;
}

checkAmount(api.Amount o) {
  buildCounterAmount++;
  if (buildCounterAmount < 3) {
    checkPrice(o.priceAmount);
    checkPrice(o.taxAmount);
  }
  buildCounterAmount--;
}

buildUnnamed3245() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3245(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBusinessDayConfig = 0;
buildBusinessDayConfig() {
  var o = new api.BusinessDayConfig();
  buildCounterBusinessDayConfig++;
  if (buildCounterBusinessDayConfig < 3) {
    o.businessDays = buildUnnamed3245();
  }
  buildCounterBusinessDayConfig--;
  return o;
}

checkBusinessDayConfig(api.BusinessDayConfig o) {
  buildCounterBusinessDayConfig++;
  if (buildCounterBusinessDayConfig < 3) {
    checkUnnamed3245(o.businessDays);
  }
  buildCounterBusinessDayConfig--;
}

core.int buildCounterCarrierRate = 0;
buildCarrierRate() {
  var o = new api.CarrierRate();
  buildCounterCarrierRate++;
  if (buildCounterCarrierRate < 3) {
    o.carrierName = "foo";
    o.carrierService = "foo";
    o.flatAdjustment = buildPrice();
    o.name = "foo";
    o.originPostalCode = "foo";
    o.percentageAdjustment = "foo";
  }
  buildCounterCarrierRate--;
  return o;
}

checkCarrierRate(api.CarrierRate o) {
  buildCounterCarrierRate++;
  if (buildCounterCarrierRate < 3) {
    unittest.expect(o.carrierName, unittest.equals('foo'));
    unittest.expect(o.carrierService, unittest.equals('foo'));
    checkPrice(o.flatAdjustment);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originPostalCode, unittest.equals('foo'));
    unittest.expect(o.percentageAdjustment, unittest.equals('foo'));
  }
  buildCounterCarrierRate--;
}

buildUnnamed3246() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3246(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCarriersCarrier = 0;
buildCarriersCarrier() {
  var o = new api.CarriersCarrier();
  buildCounterCarriersCarrier++;
  if (buildCounterCarriersCarrier < 3) {
    o.country = "foo";
    o.name = "foo";
    o.services = buildUnnamed3246();
  }
  buildCounterCarriersCarrier--;
  return o;
}

checkCarriersCarrier(api.CarriersCarrier o) {
  buildCounterCarriersCarrier++;
  if (buildCounterCarriersCarrier < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3246(o.services);
  }
  buildCounterCarriersCarrier--;
}

buildUnnamed3247() {
  var o = new core.List<api.CustomAttribute>();
  o.add(buildCustomAttribute());
  o.add(buildCustomAttribute());
  return o;
}

checkUnnamed3247(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterCustomAttribute = 0;
buildCustomAttribute() {
  var o = new api.CustomAttribute();
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    o.groupValues = buildUnnamed3247();
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterCustomAttribute--;
  return o;
}

checkCustomAttribute(api.CustomAttribute o) {
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    checkUnnamed3247(o.groupValues);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterCustomAttribute--;
}

core.int buildCounterCustomerReturnReason = 0;
buildCustomerReturnReason() {
  var o = new api.CustomerReturnReason();
  buildCounterCustomerReturnReason++;
  if (buildCounterCustomerReturnReason < 3) {
    o.description = "foo";
    o.reasonCode = "foo";
  }
  buildCounterCustomerReturnReason--;
  return o;
}

checkCustomerReturnReason(api.CustomerReturnReason o) {
  buildCounterCustomerReturnReason++;
  if (buildCounterCustomerReturnReason < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.reasonCode, unittest.equals('foo'));
  }
  buildCounterCustomerReturnReason--;
}

core.int buildCounterCutoffTime = 0;
buildCutoffTime() {
  var o = new api.CutoffTime();
  buildCounterCutoffTime++;
  if (buildCounterCutoffTime < 3) {
    o.hour = 42;
    o.minute = 42;
    o.timezone = "foo";
  }
  buildCounterCutoffTime--;
  return o;
}

checkCutoffTime(api.CutoffTime o) {
  buildCounterCutoffTime++;
  if (buildCounterCutoffTime < 3) {
    unittest.expect(o.hour, unittest.equals(42));
    unittest.expect(o.minute, unittest.equals(42));
    unittest.expect(o.timezone, unittest.equals('foo'));
  }
  buildCounterCutoffTime--;
}

buildUnnamed3248() {
  var o = new core.List<api.DatafeedTarget>();
  o.add(buildDatafeedTarget());
  o.add(buildDatafeedTarget());
  return o;
}

checkUnnamed3248(core.List<api.DatafeedTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedTarget(o[0]);
  checkDatafeedTarget(o[1]);
}

core.int buildCounterDatafeed = 0;
buildDatafeed() {
  var o = new api.Datafeed();
  buildCounterDatafeed++;
  if (buildCounterDatafeed < 3) {
    o.attributeLanguage = "foo";
    o.contentType = "foo";
    o.fetchSchedule = buildDatafeedFetchSchedule();
    o.fileName = "foo";
    o.format = buildDatafeedFormat();
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.targets = buildUnnamed3248();
  }
  buildCounterDatafeed--;
  return o;
}

checkDatafeed(api.Datafeed o) {
  buildCounterDatafeed++;
  if (buildCounterDatafeed < 3) {
    unittest.expect(o.attributeLanguage, unittest.equals('foo'));
    unittest.expect(o.contentType, unittest.equals('foo'));
    checkDatafeedFetchSchedule(o.fetchSchedule);
    unittest.expect(o.fileName, unittest.equals('foo'));
    checkDatafeedFormat(o.format);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3248(o.targets);
  }
  buildCounterDatafeed--;
}

core.int buildCounterDatafeedFetchSchedule = 0;
buildDatafeedFetchSchedule() {
  var o = new api.DatafeedFetchSchedule();
  buildCounterDatafeedFetchSchedule++;
  if (buildCounterDatafeedFetchSchedule < 3) {
    o.dayOfMonth = 42;
    o.fetchUrl = "foo";
    o.hour = 42;
    o.minuteOfHour = 42;
    o.password = "foo";
    o.paused = true;
    o.timeZone = "foo";
    o.username = "foo";
    o.weekday = "foo";
  }
  buildCounterDatafeedFetchSchedule--;
  return o;
}

checkDatafeedFetchSchedule(api.DatafeedFetchSchedule o) {
  buildCounterDatafeedFetchSchedule++;
  if (buildCounterDatafeedFetchSchedule < 3) {
    unittest.expect(o.dayOfMonth, unittest.equals(42));
    unittest.expect(o.fetchUrl, unittest.equals('foo'));
    unittest.expect(o.hour, unittest.equals(42));
    unittest.expect(o.minuteOfHour, unittest.equals(42));
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.paused, unittest.isTrue);
    unittest.expect(o.timeZone, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
    unittest.expect(o.weekday, unittest.equals('foo'));
  }
  buildCounterDatafeedFetchSchedule--;
}

core.int buildCounterDatafeedFormat = 0;
buildDatafeedFormat() {
  var o = new api.DatafeedFormat();
  buildCounterDatafeedFormat++;
  if (buildCounterDatafeedFormat < 3) {
    o.columnDelimiter = "foo";
    o.fileEncoding = "foo";
    o.quotingMode = "foo";
  }
  buildCounterDatafeedFormat--;
  return o;
}

checkDatafeedFormat(api.DatafeedFormat o) {
  buildCounterDatafeedFormat++;
  if (buildCounterDatafeedFormat < 3) {
    unittest.expect(o.columnDelimiter, unittest.equals('foo'));
    unittest.expect(o.fileEncoding, unittest.equals('foo'));
    unittest.expect(o.quotingMode, unittest.equals('foo'));
  }
  buildCounterDatafeedFormat--;
}

buildUnnamed3249() {
  var o = new core.List<api.DatafeedStatusError>();
  o.add(buildDatafeedStatusError());
  o.add(buildDatafeedStatusError());
  return o;
}

checkUnnamed3249(core.List<api.DatafeedStatusError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusError(o[0]);
  checkDatafeedStatusError(o[1]);
}

buildUnnamed3250() {
  var o = new core.List<api.DatafeedStatusError>();
  o.add(buildDatafeedStatusError());
  o.add(buildDatafeedStatusError());
  return o;
}

checkUnnamed3250(core.List<api.DatafeedStatusError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusError(o[0]);
  checkDatafeedStatusError(o[1]);
}

core.int buildCounterDatafeedStatus = 0;
buildDatafeedStatus() {
  var o = new api.DatafeedStatus();
  buildCounterDatafeedStatus++;
  if (buildCounterDatafeedStatus < 3) {
    o.country = "foo";
    o.datafeedId = "foo";
    o.errors = buildUnnamed3249();
    o.itemsTotal = "foo";
    o.itemsValid = "foo";
    o.kind = "foo";
    o.language = "foo";
    o.lastUploadDate = "foo";
    o.processingStatus = "foo";
    o.warnings = buildUnnamed3250();
  }
  buildCounterDatafeedStatus--;
  return o;
}

checkDatafeedStatus(api.DatafeedStatus o) {
  buildCounterDatafeedStatus++;
  if (buildCounterDatafeedStatus < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.datafeedId, unittest.equals('foo'));
    checkUnnamed3249(o.errors);
    unittest.expect(o.itemsTotal, unittest.equals('foo'));
    unittest.expect(o.itemsValid, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.lastUploadDate, unittest.equals('foo'));
    unittest.expect(o.processingStatus, unittest.equals('foo'));
    checkUnnamed3250(o.warnings);
  }
  buildCounterDatafeedStatus--;
}

buildUnnamed3251() {
  var o = new core.List<api.DatafeedStatusExample>();
  o.add(buildDatafeedStatusExample());
  o.add(buildDatafeedStatusExample());
  return o;
}

checkUnnamed3251(core.List<api.DatafeedStatusExample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatusExample(o[0]);
  checkDatafeedStatusExample(o[1]);
}

core.int buildCounterDatafeedStatusError = 0;
buildDatafeedStatusError() {
  var o = new api.DatafeedStatusError();
  buildCounterDatafeedStatusError++;
  if (buildCounterDatafeedStatusError < 3) {
    o.code = "foo";
    o.count = "foo";
    o.examples = buildUnnamed3251();
    o.message = "foo";
  }
  buildCounterDatafeedStatusError--;
  return o;
}

checkDatafeedStatusError(api.DatafeedStatusError o) {
  buildCounterDatafeedStatusError++;
  if (buildCounterDatafeedStatusError < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.count, unittest.equals('foo'));
    checkUnnamed3251(o.examples);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterDatafeedStatusError--;
}

core.int buildCounterDatafeedStatusExample = 0;
buildDatafeedStatusExample() {
  var o = new api.DatafeedStatusExample();
  buildCounterDatafeedStatusExample++;
  if (buildCounterDatafeedStatusExample < 3) {
    o.itemId = "foo";
    o.lineNumber = "foo";
    o.value = "foo";
  }
  buildCounterDatafeedStatusExample--;
  return o;
}

checkDatafeedStatusExample(api.DatafeedStatusExample o) {
  buildCounterDatafeedStatusExample++;
  if (buildCounterDatafeedStatusExample < 3) {
    unittest.expect(o.itemId, unittest.equals('foo'));
    unittest.expect(o.lineNumber, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterDatafeedStatusExample--;
}

buildUnnamed3252() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3252(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3253() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3253(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDatafeedTarget = 0;
buildDatafeedTarget() {
  var o = new api.DatafeedTarget();
  buildCounterDatafeedTarget++;
  if (buildCounterDatafeedTarget < 3) {
    o.country = "foo";
    o.excludedDestinations = buildUnnamed3252();
    o.includedDestinations = buildUnnamed3253();
    o.language = "foo";
  }
  buildCounterDatafeedTarget--;
  return o;
}

checkDatafeedTarget(api.DatafeedTarget o) {
  buildCounterDatafeedTarget++;
  if (buildCounterDatafeedTarget < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    checkUnnamed3252(o.excludedDestinations);
    checkUnnamed3253(o.includedDestinations);
    unittest.expect(o.language, unittest.equals('foo'));
  }
  buildCounterDatafeedTarget--;
}

buildUnnamed3254() {
  var o = new core.List<api.DatafeedsCustomBatchRequestEntry>();
  o.add(buildDatafeedsCustomBatchRequestEntry());
  o.add(buildDatafeedsCustomBatchRequestEntry());
  return o;
}

checkUnnamed3254(core.List<api.DatafeedsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedsCustomBatchRequestEntry(o[0]);
  checkDatafeedsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterDatafeedsCustomBatchRequest = 0;
buildDatafeedsCustomBatchRequest() {
  var o = new api.DatafeedsCustomBatchRequest();
  buildCounterDatafeedsCustomBatchRequest++;
  if (buildCounterDatafeedsCustomBatchRequest < 3) {
    o.entries = buildUnnamed3254();
  }
  buildCounterDatafeedsCustomBatchRequest--;
  return o;
}

checkDatafeedsCustomBatchRequest(api.DatafeedsCustomBatchRequest o) {
  buildCounterDatafeedsCustomBatchRequest++;
  if (buildCounterDatafeedsCustomBatchRequest < 3) {
    checkUnnamed3254(o.entries);
  }
  buildCounterDatafeedsCustomBatchRequest--;
}

core.int buildCounterDatafeedsCustomBatchRequestEntry = 0;
buildDatafeedsCustomBatchRequestEntry() {
  var o = new api.DatafeedsCustomBatchRequestEntry();
  buildCounterDatafeedsCustomBatchRequestEntry++;
  if (buildCounterDatafeedsCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.datafeed = buildDatafeed();
    o.datafeedId = "foo";
    o.merchantId = "foo";
    o.method = "foo";
  }
  buildCounterDatafeedsCustomBatchRequestEntry--;
  return o;
}

checkDatafeedsCustomBatchRequestEntry(api.DatafeedsCustomBatchRequestEntry o) {
  buildCounterDatafeedsCustomBatchRequestEntry++;
  if (buildCounterDatafeedsCustomBatchRequestEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkDatafeed(o.datafeed);
    unittest.expect(o.datafeedId, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
  }
  buildCounterDatafeedsCustomBatchRequestEntry--;
}

buildUnnamed3255() {
  var o = new core.List<api.DatafeedsCustomBatchResponseEntry>();
  o.add(buildDatafeedsCustomBatchResponseEntry());
  o.add(buildDatafeedsCustomBatchResponseEntry());
  return o;
}

checkUnnamed3255(core.List<api.DatafeedsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedsCustomBatchResponseEntry(o[0]);
  checkDatafeedsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterDatafeedsCustomBatchResponse = 0;
buildDatafeedsCustomBatchResponse() {
  var o = new api.DatafeedsCustomBatchResponse();
  buildCounterDatafeedsCustomBatchResponse++;
  if (buildCounterDatafeedsCustomBatchResponse < 3) {
    o.entries = buildUnnamed3255();
    o.kind = "foo";
  }
  buildCounterDatafeedsCustomBatchResponse--;
  return o;
}

checkDatafeedsCustomBatchResponse(api.DatafeedsCustomBatchResponse o) {
  buildCounterDatafeedsCustomBatchResponse++;
  if (buildCounterDatafeedsCustomBatchResponse < 3) {
    checkUnnamed3255(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDatafeedsCustomBatchResponse--;
}

core.int buildCounterDatafeedsCustomBatchResponseEntry = 0;
buildDatafeedsCustomBatchResponseEntry() {
  var o = new api.DatafeedsCustomBatchResponseEntry();
  buildCounterDatafeedsCustomBatchResponseEntry++;
  if (buildCounterDatafeedsCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.datafeed = buildDatafeed();
    o.errors = buildErrors();
  }
  buildCounterDatafeedsCustomBatchResponseEntry--;
  return o;
}

checkDatafeedsCustomBatchResponseEntry(
    api.DatafeedsCustomBatchResponseEntry o) {
  buildCounterDatafeedsCustomBatchResponseEntry++;
  if (buildCounterDatafeedsCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkDatafeed(o.datafeed);
    checkErrors(o.errors);
  }
  buildCounterDatafeedsCustomBatchResponseEntry--;
}

core.int buildCounterDatafeedsFetchNowResponse = 0;
buildDatafeedsFetchNowResponse() {
  var o = new api.DatafeedsFetchNowResponse();
  buildCounterDatafeedsFetchNowResponse++;
  if (buildCounterDatafeedsFetchNowResponse < 3) {
    o.kind = "foo";
  }
  buildCounterDatafeedsFetchNowResponse--;
  return o;
}

checkDatafeedsFetchNowResponse(api.DatafeedsFetchNowResponse o) {
  buildCounterDatafeedsFetchNowResponse++;
  if (buildCounterDatafeedsFetchNowResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDatafeedsFetchNowResponse--;
}

buildUnnamed3256() {
  var o = new core.List<api.Datafeed>();
  o.add(buildDatafeed());
  o.add(buildDatafeed());
  return o;
}

checkUnnamed3256(core.List<api.Datafeed> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeed(o[0]);
  checkDatafeed(o[1]);
}

core.int buildCounterDatafeedsListResponse = 0;
buildDatafeedsListResponse() {
  var o = new api.DatafeedsListResponse();
  buildCounterDatafeedsListResponse++;
  if (buildCounterDatafeedsListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed3256();
  }
  buildCounterDatafeedsListResponse--;
  return o;
}

checkDatafeedsListResponse(api.DatafeedsListResponse o) {
  buildCounterDatafeedsListResponse++;
  if (buildCounterDatafeedsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3256(o.resources);
  }
  buildCounterDatafeedsListResponse--;
}

buildUnnamed3257() {
  var o = new core.List<api.DatafeedstatusesCustomBatchRequestEntry>();
  o.add(buildDatafeedstatusesCustomBatchRequestEntry());
  o.add(buildDatafeedstatusesCustomBatchRequestEntry());
  return o;
}

checkUnnamed3257(core.List<api.DatafeedstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedstatusesCustomBatchRequestEntry(o[0]);
  checkDatafeedstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterDatafeedstatusesCustomBatchRequest = 0;
buildDatafeedstatusesCustomBatchRequest() {
  var o = new api.DatafeedstatusesCustomBatchRequest();
  buildCounterDatafeedstatusesCustomBatchRequest++;
  if (buildCounterDatafeedstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed3257();
  }
  buildCounterDatafeedstatusesCustomBatchRequest--;
  return o;
}

checkDatafeedstatusesCustomBatchRequest(
    api.DatafeedstatusesCustomBatchRequest o) {
  buildCounterDatafeedstatusesCustomBatchRequest++;
  if (buildCounterDatafeedstatusesCustomBatchRequest < 3) {
    checkUnnamed3257(o.entries);
  }
  buildCounterDatafeedstatusesCustomBatchRequest--;
}

core.int buildCounterDatafeedstatusesCustomBatchRequestEntry = 0;
buildDatafeedstatusesCustomBatchRequestEntry() {
  var o = new api.DatafeedstatusesCustomBatchRequestEntry();
  buildCounterDatafeedstatusesCustomBatchRequestEntry++;
  if (buildCounterDatafeedstatusesCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.country = "foo";
    o.datafeedId = "foo";
    o.language = "foo";
    o.merchantId = "foo";
    o.method = "foo";
  }
  buildCounterDatafeedstatusesCustomBatchRequestEntry--;
  return o;
}

checkDatafeedstatusesCustomBatchRequestEntry(
    api.DatafeedstatusesCustomBatchRequestEntry o) {
  buildCounterDatafeedstatusesCustomBatchRequestEntry++;
  if (buildCounterDatafeedstatusesCustomBatchRequestEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.datafeedId, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
  }
  buildCounterDatafeedstatusesCustomBatchRequestEntry--;
}

buildUnnamed3258() {
  var o = new core.List<api.DatafeedstatusesCustomBatchResponseEntry>();
  o.add(buildDatafeedstatusesCustomBatchResponseEntry());
  o.add(buildDatafeedstatusesCustomBatchResponseEntry());
  return o;
}

checkUnnamed3258(core.List<api.DatafeedstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedstatusesCustomBatchResponseEntry(o[0]);
  checkDatafeedstatusesCustomBatchResponseEntry(o[1]);
}

core.int buildCounterDatafeedstatusesCustomBatchResponse = 0;
buildDatafeedstatusesCustomBatchResponse() {
  var o = new api.DatafeedstatusesCustomBatchResponse();
  buildCounterDatafeedstatusesCustomBatchResponse++;
  if (buildCounterDatafeedstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed3258();
    o.kind = "foo";
  }
  buildCounterDatafeedstatusesCustomBatchResponse--;
  return o;
}

checkDatafeedstatusesCustomBatchResponse(
    api.DatafeedstatusesCustomBatchResponse o) {
  buildCounterDatafeedstatusesCustomBatchResponse++;
  if (buildCounterDatafeedstatusesCustomBatchResponse < 3) {
    checkUnnamed3258(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDatafeedstatusesCustomBatchResponse--;
}

core.int buildCounterDatafeedstatusesCustomBatchResponseEntry = 0;
buildDatafeedstatusesCustomBatchResponseEntry() {
  var o = new api.DatafeedstatusesCustomBatchResponseEntry();
  buildCounterDatafeedstatusesCustomBatchResponseEntry++;
  if (buildCounterDatafeedstatusesCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.datafeedStatus = buildDatafeedStatus();
    o.errors = buildErrors();
  }
  buildCounterDatafeedstatusesCustomBatchResponseEntry--;
  return o;
}

checkDatafeedstatusesCustomBatchResponseEntry(
    api.DatafeedstatusesCustomBatchResponseEntry o) {
  buildCounterDatafeedstatusesCustomBatchResponseEntry++;
  if (buildCounterDatafeedstatusesCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkDatafeedStatus(o.datafeedStatus);
    checkErrors(o.errors);
  }
  buildCounterDatafeedstatusesCustomBatchResponseEntry--;
}

buildUnnamed3259() {
  var o = new core.List<api.DatafeedStatus>();
  o.add(buildDatafeedStatus());
  o.add(buildDatafeedStatus());
  return o;
}

checkUnnamed3259(core.List<api.DatafeedStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatafeedStatus(o[0]);
  checkDatafeedStatus(o[1]);
}

core.int buildCounterDatafeedstatusesListResponse = 0;
buildDatafeedstatusesListResponse() {
  var o = new api.DatafeedstatusesListResponse();
  buildCounterDatafeedstatusesListResponse++;
  if (buildCounterDatafeedstatusesListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed3259();
  }
  buildCounterDatafeedstatusesListResponse--;
  return o;
}

checkDatafeedstatusesListResponse(api.DatafeedstatusesListResponse o) {
  buildCounterDatafeedstatusesListResponse++;
  if (buildCounterDatafeedstatusesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3259(o.resources);
  }
  buildCounterDatafeedstatusesListResponse--;
}

buildUnnamed3260() {
  var o = new core.List<api.HolidayCutoff>();
  o.add(buildHolidayCutoff());
  o.add(buildHolidayCutoff());
  return o;
}

checkUnnamed3260(core.List<api.HolidayCutoff> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHolidayCutoff(o[0]);
  checkHolidayCutoff(o[1]);
}

core.int buildCounterDeliveryTime = 0;
buildDeliveryTime() {
  var o = new api.DeliveryTime();
  buildCounterDeliveryTime++;
  if (buildCounterDeliveryTime < 3) {
    o.cutoffTime = buildCutoffTime();
    o.handlingBusinessDayConfig = buildBusinessDayConfig();
    o.holidayCutoffs = buildUnnamed3260();
    o.maxHandlingTimeInDays = 42;
    o.maxTransitTimeInDays = 42;
    o.minHandlingTimeInDays = 42;
    o.minTransitTimeInDays = 42;
    o.transitBusinessDayConfig = buildBusinessDayConfig();
    o.transitTimeTable = buildTransitTable();
  }
  buildCounterDeliveryTime--;
  return o;
}

checkDeliveryTime(api.DeliveryTime o) {
  buildCounterDeliveryTime++;
  if (buildCounterDeliveryTime < 3) {
    checkCutoffTime(o.cutoffTime);
    checkBusinessDayConfig(o.handlingBusinessDayConfig);
    checkUnnamed3260(o.holidayCutoffs);
    unittest.expect(o.maxHandlingTimeInDays, unittest.equals(42));
    unittest.expect(o.maxTransitTimeInDays, unittest.equals(42));
    unittest.expect(o.minHandlingTimeInDays, unittest.equals(42));
    unittest.expect(o.minTransitTimeInDays, unittest.equals(42));
    checkBusinessDayConfig(o.transitBusinessDayConfig);
    checkTransitTable(o.transitTimeTable);
  }
  buildCounterDeliveryTime--;
}

core.int buildCounterError = 0;
buildError() {
  var o = new api.Error();
  buildCounterError++;
  if (buildCounterError < 3) {
    o.domain = "foo";
    o.message = "foo";
    o.reason = "foo";
  }
  buildCounterError--;
  return o;
}

checkError(api.Error o) {
  buildCounterError++;
  if (buildCounterError < 3) {
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterError--;
}

buildUnnamed3261() {
  var o = new core.List<api.Error>();
  o.add(buildError());
  o.add(buildError());
  return o;
}

checkUnnamed3261(core.List<api.Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkError(o[0]);
  checkError(o[1]);
}

core.int buildCounterErrors = 0;
buildErrors() {
  var o = new api.Errors();
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    o.code = 42;
    o.errors = buildUnnamed3261();
    o.message = "foo";
  }
  buildCounterErrors--;
  return o;
}

checkErrors(api.Errors o) {
  buildCounterErrors++;
  if (buildCounterErrors < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3261(o.errors);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterErrors--;
}

buildUnnamed3262() {
  var o = new core.List<api.GmbAccountsGmbAccount>();
  o.add(buildGmbAccountsGmbAccount());
  o.add(buildGmbAccountsGmbAccount());
  return o;
}

checkUnnamed3262(core.List<api.GmbAccountsGmbAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmbAccountsGmbAccount(o[0]);
  checkGmbAccountsGmbAccount(o[1]);
}

core.int buildCounterGmbAccounts = 0;
buildGmbAccounts() {
  var o = new api.GmbAccounts();
  buildCounterGmbAccounts++;
  if (buildCounterGmbAccounts < 3) {
    o.accountId = "foo";
    o.gmbAccounts = buildUnnamed3262();
  }
  buildCounterGmbAccounts--;
  return o;
}

checkGmbAccounts(api.GmbAccounts o) {
  buildCounterGmbAccounts++;
  if (buildCounterGmbAccounts < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed3262(o.gmbAccounts);
  }
  buildCounterGmbAccounts--;
}

core.int buildCounterGmbAccountsGmbAccount = 0;
buildGmbAccountsGmbAccount() {
  var o = new api.GmbAccountsGmbAccount();
  buildCounterGmbAccountsGmbAccount++;
  if (buildCounterGmbAccountsGmbAccount < 3) {
    o.email = "foo";
    o.listingCount = "foo";
    o.name = "foo";
    o.type = "foo";
  }
  buildCounterGmbAccountsGmbAccount--;
  return o;
}

checkGmbAccountsGmbAccount(api.GmbAccountsGmbAccount o) {
  buildCounterGmbAccountsGmbAccount++;
  if (buildCounterGmbAccountsGmbAccount < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.listingCount, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGmbAccountsGmbAccount--;
}

buildUnnamed3263() {
  var o = new core.List<api.LocationIdSet>();
  o.add(buildLocationIdSet());
  o.add(buildLocationIdSet());
  return o;
}

checkUnnamed3263(core.List<api.LocationIdSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationIdSet(o[0]);
  checkLocationIdSet(o[1]);
}

buildUnnamed3264() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3264(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3265() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3265(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3266() {
  var o = new core.List<api.Price>();
  o.add(buildPrice());
  o.add(buildPrice());
  return o;
}

checkUnnamed3266(core.List<api.Price> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrice(o[0]);
  checkPrice(o[1]);
}

buildUnnamed3267() {
  var o = new core.List<api.Weight>();
  o.add(buildWeight());
  o.add(buildWeight());
  return o;
}

checkUnnamed3267(core.List<api.Weight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWeight(o[0]);
  checkWeight(o[1]);
}

core.int buildCounterHeaders = 0;
buildHeaders() {
  var o = new api.Headers();
  buildCounterHeaders++;
  if (buildCounterHeaders < 3) {
    o.locations = buildUnnamed3263();
    o.numberOfItems = buildUnnamed3264();
    o.postalCodeGroupNames = buildUnnamed3265();
    o.prices = buildUnnamed3266();
    o.weights = buildUnnamed3267();
  }
  buildCounterHeaders--;
  return o;
}

checkHeaders(api.Headers o) {
  buildCounterHeaders++;
  if (buildCounterHeaders < 3) {
    checkUnnamed3263(o.locations);
    checkUnnamed3264(o.numberOfItems);
    checkUnnamed3265(o.postalCodeGroupNames);
    checkUnnamed3266(o.prices);
    checkUnnamed3267(o.weights);
  }
  buildCounterHeaders--;
}

core.int buildCounterHolidayCutoff = 0;
buildHolidayCutoff() {
  var o = new api.HolidayCutoff();
  buildCounterHolidayCutoff++;
  if (buildCounterHolidayCutoff < 3) {
    o.deadlineDate = "foo";
    o.deadlineHour = 42;
    o.deadlineTimezone = "foo";
    o.holidayId = "foo";
    o.visibleFromDate = "foo";
  }
  buildCounterHolidayCutoff--;
  return o;
}

checkHolidayCutoff(api.HolidayCutoff o) {
  buildCounterHolidayCutoff++;
  if (buildCounterHolidayCutoff < 3) {
    unittest.expect(o.deadlineDate, unittest.equals('foo'));
    unittest.expect(o.deadlineHour, unittest.equals(42));
    unittest.expect(o.deadlineTimezone, unittest.equals('foo'));
    unittest.expect(o.holidayId, unittest.equals('foo'));
    unittest.expect(o.visibleFromDate, unittest.equals('foo'));
  }
  buildCounterHolidayCutoff--;
}

core.int buildCounterHolidaysHoliday = 0;
buildHolidaysHoliday() {
  var o = new api.HolidaysHoliday();
  buildCounterHolidaysHoliday++;
  if (buildCounterHolidaysHoliday < 3) {
    o.countryCode = "foo";
    o.date = "foo";
    o.deliveryGuaranteeDate = "foo";
    o.deliveryGuaranteeHour = "foo";
    o.id = "foo";
    o.type = "foo";
  }
  buildCounterHolidaysHoliday--;
  return o;
}

checkHolidaysHoliday(api.HolidaysHoliday o) {
  buildCounterHolidaysHoliday++;
  if (buildCounterHolidaysHoliday < 3) {
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.date, unittest.equals('foo'));
    unittest.expect(o.deliveryGuaranteeDate, unittest.equals('foo'));
    unittest.expect(o.deliveryGuaranteeHour, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterHolidaysHoliday--;
}

core.int buildCounterInstallment = 0;
buildInstallment() {
  var o = new api.Installment();
  buildCounterInstallment++;
  if (buildCounterInstallment < 3) {
    o.amount = buildPrice();
    o.months = "foo";
  }
  buildCounterInstallment--;
  return o;
}

checkInstallment(api.Installment o) {
  buildCounterInstallment++;
  if (buildCounterInstallment < 3) {
    checkPrice(o.amount);
    unittest.expect(o.months, unittest.equals('foo'));
  }
  buildCounterInstallment--;
}

buildUnnamed3268() {
  var o = new core.List<api.InvoiceSummaryAdditionalChargeSummary>();
  o.add(buildInvoiceSummaryAdditionalChargeSummary());
  o.add(buildInvoiceSummaryAdditionalChargeSummary());
  return o;
}

checkUnnamed3268(core.List<api.InvoiceSummaryAdditionalChargeSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvoiceSummaryAdditionalChargeSummary(o[0]);
  checkInvoiceSummaryAdditionalChargeSummary(o[1]);
}

core.int buildCounterInvoiceSummary = 0;
buildInvoiceSummary() {
  var o = new api.InvoiceSummary();
  buildCounterInvoiceSummary++;
  if (buildCounterInvoiceSummary < 3) {
    o.additionalChargeSummaries = buildUnnamed3268();
    o.productTotal = buildAmount();
  }
  buildCounterInvoiceSummary--;
  return o;
}

checkInvoiceSummary(api.InvoiceSummary o) {
  buildCounterInvoiceSummary++;
  if (buildCounterInvoiceSummary < 3) {
    checkUnnamed3268(o.additionalChargeSummaries);
    checkAmount(o.productTotal);
  }
  buildCounterInvoiceSummary--;
}

core.int buildCounterInvoiceSummaryAdditionalChargeSummary = 0;
buildInvoiceSummaryAdditionalChargeSummary() {
  var o = new api.InvoiceSummaryAdditionalChargeSummary();
  buildCounterInvoiceSummaryAdditionalChargeSummary++;
  if (buildCounterInvoiceSummaryAdditionalChargeSummary < 3) {
    o.totalAmount = buildAmount();
    o.type = "foo";
  }
  buildCounterInvoiceSummaryAdditionalChargeSummary--;
  return o;
}

checkInvoiceSummaryAdditionalChargeSummary(
    api.InvoiceSummaryAdditionalChargeSummary o) {
  buildCounterInvoiceSummaryAdditionalChargeSummary++;
  if (buildCounterInvoiceSummaryAdditionalChargeSummary < 3) {
    checkAmount(o.totalAmount);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterInvoiceSummaryAdditionalChargeSummary--;
}

core.int buildCounterLiaAboutPageSettings = 0;
buildLiaAboutPageSettings() {
  var o = new api.LiaAboutPageSettings();
  buildCounterLiaAboutPageSettings++;
  if (buildCounterLiaAboutPageSettings < 3) {
    o.status = "foo";
    o.url = "foo";
  }
  buildCounterLiaAboutPageSettings--;
  return o;
}

checkLiaAboutPageSettings(api.LiaAboutPageSettings o) {
  buildCounterLiaAboutPageSettings++;
  if (buildCounterLiaAboutPageSettings < 3) {
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterLiaAboutPageSettings--;
}

core.int buildCounterLiaCountrySettings = 0;
buildLiaCountrySettings() {
  var o = new api.LiaCountrySettings();
  buildCounterLiaCountrySettings++;
  if (buildCounterLiaCountrySettings < 3) {
    o.about = buildLiaAboutPageSettings();
    o.country = "foo";
    o.hostedLocalStorefrontActive = true;
    o.inventory = buildLiaInventorySettings();
    o.onDisplayToOrder = buildLiaOnDisplayToOrderSettings();
    o.posDataProvider = buildLiaPosDataProvider();
    o.storePickupActive = true;
  }
  buildCounterLiaCountrySettings--;
  return o;
}

checkLiaCountrySettings(api.LiaCountrySettings o) {
  buildCounterLiaCountrySettings++;
  if (buildCounterLiaCountrySettings < 3) {
    checkLiaAboutPageSettings(o.about);
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.hostedLocalStorefrontActive, unittest.isTrue);
    checkLiaInventorySettings(o.inventory);
    checkLiaOnDisplayToOrderSettings(o.onDisplayToOrder);
    checkLiaPosDataProvider(o.posDataProvider);
    unittest.expect(o.storePickupActive, unittest.isTrue);
  }
  buildCounterLiaCountrySettings--;
}

core.int buildCounterLiaInventorySettings = 0;
buildLiaInventorySettings() {
  var o = new api.LiaInventorySettings();
  buildCounterLiaInventorySettings++;
  if (buildCounterLiaInventorySettings < 3) {
    o.inventoryVerificationContactEmail = "foo";
    o.inventoryVerificationContactName = "foo";
    o.inventoryVerificationContactStatus = "foo";
    o.status = "foo";
  }
  buildCounterLiaInventorySettings--;
  return o;
}

checkLiaInventorySettings(api.LiaInventorySettings o) {
  buildCounterLiaInventorySettings++;
  if (buildCounterLiaInventorySettings < 3) {
    unittest.expect(
        o.inventoryVerificationContactEmail, unittest.equals('foo'));
    unittest.expect(o.inventoryVerificationContactName, unittest.equals('foo'));
    unittest.expect(
        o.inventoryVerificationContactStatus, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterLiaInventorySettings--;
}

core.int buildCounterLiaOnDisplayToOrderSettings = 0;
buildLiaOnDisplayToOrderSettings() {
  var o = new api.LiaOnDisplayToOrderSettings();
  buildCounterLiaOnDisplayToOrderSettings++;
  if (buildCounterLiaOnDisplayToOrderSettings < 3) {
    o.shippingCostPolicyUrl = "foo";
    o.status = "foo";
  }
  buildCounterLiaOnDisplayToOrderSettings--;
  return o;
}

checkLiaOnDisplayToOrderSettings(api.LiaOnDisplayToOrderSettings o) {
  buildCounterLiaOnDisplayToOrderSettings++;
  if (buildCounterLiaOnDisplayToOrderSettings < 3) {
    unittest.expect(o.shippingCostPolicyUrl, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterLiaOnDisplayToOrderSettings--;
}

core.int buildCounterLiaPosDataProvider = 0;
buildLiaPosDataProvider() {
  var o = new api.LiaPosDataProvider();
  buildCounterLiaPosDataProvider++;
  if (buildCounterLiaPosDataProvider < 3) {
    o.posDataProviderId = "foo";
    o.posExternalAccountId = "foo";
  }
  buildCounterLiaPosDataProvider--;
  return o;
}

checkLiaPosDataProvider(api.LiaPosDataProvider o) {
  buildCounterLiaPosDataProvider++;
  if (buildCounterLiaPosDataProvider < 3) {
    unittest.expect(o.posDataProviderId, unittest.equals('foo'));
    unittest.expect(o.posExternalAccountId, unittest.equals('foo'));
  }
  buildCounterLiaPosDataProvider--;
}

buildUnnamed3269() {
  var o = new core.List<api.LiaCountrySettings>();
  o.add(buildLiaCountrySettings());
  o.add(buildLiaCountrySettings());
  return o;
}

checkUnnamed3269(core.List<api.LiaCountrySettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiaCountrySettings(o[0]);
  checkLiaCountrySettings(o[1]);
}

core.int buildCounterLiaSettings = 0;
buildLiaSettings() {
  var o = new api.LiaSettings();
  buildCounterLiaSettings++;
  if (buildCounterLiaSettings < 3) {
    o.accountId = "foo";
    o.countrySettings = buildUnnamed3269();
    o.kind = "foo";
  }
  buildCounterLiaSettings--;
  return o;
}

checkLiaSettings(api.LiaSettings o) {
  buildCounterLiaSettings++;
  if (buildCounterLiaSettings < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed3269(o.countrySettings);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiaSettings--;
}

buildUnnamed3270() {
  var o = new core.List<api.LiasettingsCustomBatchRequestEntry>();
  o.add(buildLiasettingsCustomBatchRequestEntry());
  o.add(buildLiasettingsCustomBatchRequestEntry());
  return o;
}

checkUnnamed3270(core.List<api.LiasettingsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiasettingsCustomBatchRequestEntry(o[0]);
  checkLiasettingsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterLiasettingsCustomBatchRequest = 0;
buildLiasettingsCustomBatchRequest() {
  var o = new api.LiasettingsCustomBatchRequest();
  buildCounterLiasettingsCustomBatchRequest++;
  if (buildCounterLiasettingsCustomBatchRequest < 3) {
    o.entries = buildUnnamed3270();
  }
  buildCounterLiasettingsCustomBatchRequest--;
  return o;
}

checkLiasettingsCustomBatchRequest(api.LiasettingsCustomBatchRequest o) {
  buildCounterLiasettingsCustomBatchRequest++;
  if (buildCounterLiasettingsCustomBatchRequest < 3) {
    checkUnnamed3270(o.entries);
  }
  buildCounterLiasettingsCustomBatchRequest--;
}

core.int buildCounterLiasettingsCustomBatchRequestEntry = 0;
buildLiasettingsCustomBatchRequestEntry() {
  var o = new api.LiasettingsCustomBatchRequestEntry();
  buildCounterLiasettingsCustomBatchRequestEntry++;
  if (buildCounterLiasettingsCustomBatchRequestEntry < 3) {
    o.accountId = "foo";
    o.batchId = 42;
    o.contactEmail = "foo";
    o.contactName = "foo";
    o.country = "foo";
    o.gmbEmail = "foo";
    o.liaSettings = buildLiaSettings();
    o.merchantId = "foo";
    o.method = "foo";
    o.posDataProviderId = "foo";
    o.posExternalAccountId = "foo";
  }
  buildCounterLiasettingsCustomBatchRequestEntry--;
  return o;
}

checkLiasettingsCustomBatchRequestEntry(
    api.LiasettingsCustomBatchRequestEntry o) {
  buildCounterLiasettingsCustomBatchRequestEntry++;
  if (buildCounterLiasettingsCustomBatchRequestEntry < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.contactEmail, unittest.equals('foo'));
    unittest.expect(o.contactName, unittest.equals('foo'));
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.gmbEmail, unittest.equals('foo'));
    checkLiaSettings(o.liaSettings);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.posDataProviderId, unittest.equals('foo'));
    unittest.expect(o.posExternalAccountId, unittest.equals('foo'));
  }
  buildCounterLiasettingsCustomBatchRequestEntry--;
}

buildUnnamed3271() {
  var o = new core.List<api.LiasettingsCustomBatchResponseEntry>();
  o.add(buildLiasettingsCustomBatchResponseEntry());
  o.add(buildLiasettingsCustomBatchResponseEntry());
  return o;
}

checkUnnamed3271(core.List<api.LiasettingsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiasettingsCustomBatchResponseEntry(o[0]);
  checkLiasettingsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterLiasettingsCustomBatchResponse = 0;
buildLiasettingsCustomBatchResponse() {
  var o = new api.LiasettingsCustomBatchResponse();
  buildCounterLiasettingsCustomBatchResponse++;
  if (buildCounterLiasettingsCustomBatchResponse < 3) {
    o.entries = buildUnnamed3271();
    o.kind = "foo";
  }
  buildCounterLiasettingsCustomBatchResponse--;
  return o;
}

checkLiasettingsCustomBatchResponse(api.LiasettingsCustomBatchResponse o) {
  buildCounterLiasettingsCustomBatchResponse++;
  if (buildCounterLiasettingsCustomBatchResponse < 3) {
    checkUnnamed3271(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsCustomBatchResponse--;
}

buildUnnamed3272() {
  var o = new core.List<api.PosDataProviders>();
  o.add(buildPosDataProviders());
  o.add(buildPosDataProviders());
  return o;
}

checkUnnamed3272(core.List<api.PosDataProviders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosDataProviders(o[0]);
  checkPosDataProviders(o[1]);
}

core.int buildCounterLiasettingsCustomBatchResponseEntry = 0;
buildLiasettingsCustomBatchResponseEntry() {
  var o = new api.LiasettingsCustomBatchResponseEntry();
  buildCounterLiasettingsCustomBatchResponseEntry++;
  if (buildCounterLiasettingsCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.gmbAccounts = buildGmbAccounts();
    o.kind = "foo";
    o.liaSettings = buildLiaSettings();
    o.posDataProviders = buildUnnamed3272();
  }
  buildCounterLiasettingsCustomBatchResponseEntry--;
  return o;
}

checkLiasettingsCustomBatchResponseEntry(
    api.LiasettingsCustomBatchResponseEntry o) {
  buildCounterLiasettingsCustomBatchResponseEntry++;
  if (buildCounterLiasettingsCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    checkGmbAccounts(o.gmbAccounts);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLiaSettings(o.liaSettings);
    checkUnnamed3272(o.posDataProviders);
  }
  buildCounterLiasettingsCustomBatchResponseEntry--;
}

buildUnnamed3273() {
  var o = new core.List<api.GmbAccountsGmbAccount>();
  o.add(buildGmbAccountsGmbAccount());
  o.add(buildGmbAccountsGmbAccount());
  return o;
}

checkUnnamed3273(core.List<api.GmbAccountsGmbAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGmbAccountsGmbAccount(o[0]);
  checkGmbAccountsGmbAccount(o[1]);
}

core.int buildCounterLiasettingsGetAccessibleGmbAccountsResponse = 0;
buildLiasettingsGetAccessibleGmbAccountsResponse() {
  var o = new api.LiasettingsGetAccessibleGmbAccountsResponse();
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse++;
  if (buildCounterLiasettingsGetAccessibleGmbAccountsResponse < 3) {
    o.accountId = "foo";
    o.gmbAccounts = buildUnnamed3273();
    o.kind = "foo";
  }
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse--;
  return o;
}

checkLiasettingsGetAccessibleGmbAccountsResponse(
    api.LiasettingsGetAccessibleGmbAccountsResponse o) {
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse++;
  if (buildCounterLiasettingsGetAccessibleGmbAccountsResponse < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed3273(o.gmbAccounts);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsGetAccessibleGmbAccountsResponse--;
}

buildUnnamed3274() {
  var o = new core.List<api.PosDataProviders>();
  o.add(buildPosDataProviders());
  o.add(buildPosDataProviders());
  return o;
}

checkUnnamed3274(core.List<api.PosDataProviders> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosDataProviders(o[0]);
  checkPosDataProviders(o[1]);
}

core.int buildCounterLiasettingsListPosDataProvidersResponse = 0;
buildLiasettingsListPosDataProvidersResponse() {
  var o = new api.LiasettingsListPosDataProvidersResponse();
  buildCounterLiasettingsListPosDataProvidersResponse++;
  if (buildCounterLiasettingsListPosDataProvidersResponse < 3) {
    o.kind = "foo";
    o.posDataProviders = buildUnnamed3274();
  }
  buildCounterLiasettingsListPosDataProvidersResponse--;
  return o;
}

checkLiasettingsListPosDataProvidersResponse(
    api.LiasettingsListPosDataProvidersResponse o) {
  buildCounterLiasettingsListPosDataProvidersResponse++;
  if (buildCounterLiasettingsListPosDataProvidersResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3274(o.posDataProviders);
  }
  buildCounterLiasettingsListPosDataProvidersResponse--;
}

buildUnnamed3275() {
  var o = new core.List<api.LiaSettings>();
  o.add(buildLiaSettings());
  o.add(buildLiaSettings());
  return o;
}

checkUnnamed3275(core.List<api.LiaSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLiaSettings(o[0]);
  checkLiaSettings(o[1]);
}

core.int buildCounterLiasettingsListResponse = 0;
buildLiasettingsListResponse() {
  var o = new api.LiasettingsListResponse();
  buildCounterLiasettingsListResponse++;
  if (buildCounterLiasettingsListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed3275();
  }
  buildCounterLiasettingsListResponse--;
  return o;
}

checkLiasettingsListResponse(api.LiasettingsListResponse o) {
  buildCounterLiasettingsListResponse++;
  if (buildCounterLiasettingsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3275(o.resources);
  }
  buildCounterLiasettingsListResponse--;
}

core.int buildCounterLiasettingsRequestGmbAccessResponse = 0;
buildLiasettingsRequestGmbAccessResponse() {
  var o = new api.LiasettingsRequestGmbAccessResponse();
  buildCounterLiasettingsRequestGmbAccessResponse++;
  if (buildCounterLiasettingsRequestGmbAccessResponse < 3) {
    o.kind = "foo";
  }
  buildCounterLiasettingsRequestGmbAccessResponse--;
  return o;
}

checkLiasettingsRequestGmbAccessResponse(
    api.LiasettingsRequestGmbAccessResponse o) {
  buildCounterLiasettingsRequestGmbAccessResponse++;
  if (buildCounterLiasettingsRequestGmbAccessResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsRequestGmbAccessResponse--;
}

core.int buildCounterLiasettingsRequestInventoryVerificationResponse = 0;
buildLiasettingsRequestInventoryVerificationResponse() {
  var o = new api.LiasettingsRequestInventoryVerificationResponse();
  buildCounterLiasettingsRequestInventoryVerificationResponse++;
  if (buildCounterLiasettingsRequestInventoryVerificationResponse < 3) {
    o.kind = "foo";
  }
  buildCounterLiasettingsRequestInventoryVerificationResponse--;
  return o;
}

checkLiasettingsRequestInventoryVerificationResponse(
    api.LiasettingsRequestInventoryVerificationResponse o) {
  buildCounterLiasettingsRequestInventoryVerificationResponse++;
  if (buildCounterLiasettingsRequestInventoryVerificationResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsRequestInventoryVerificationResponse--;
}

core.int buildCounterLiasettingsSetInventoryVerificationContactResponse = 0;
buildLiasettingsSetInventoryVerificationContactResponse() {
  var o = new api.LiasettingsSetInventoryVerificationContactResponse();
  buildCounterLiasettingsSetInventoryVerificationContactResponse++;
  if (buildCounterLiasettingsSetInventoryVerificationContactResponse < 3) {
    o.kind = "foo";
  }
  buildCounterLiasettingsSetInventoryVerificationContactResponse--;
  return o;
}

checkLiasettingsSetInventoryVerificationContactResponse(
    api.LiasettingsSetInventoryVerificationContactResponse o) {
  buildCounterLiasettingsSetInventoryVerificationContactResponse++;
  if (buildCounterLiasettingsSetInventoryVerificationContactResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsSetInventoryVerificationContactResponse--;
}

core.int buildCounterLiasettingsSetPosDataProviderResponse = 0;
buildLiasettingsSetPosDataProviderResponse() {
  var o = new api.LiasettingsSetPosDataProviderResponse();
  buildCounterLiasettingsSetPosDataProviderResponse++;
  if (buildCounterLiasettingsSetPosDataProviderResponse < 3) {
    o.kind = "foo";
  }
  buildCounterLiasettingsSetPosDataProviderResponse--;
  return o;
}

checkLiasettingsSetPosDataProviderResponse(
    api.LiasettingsSetPosDataProviderResponse o) {
  buildCounterLiasettingsSetPosDataProviderResponse++;
  if (buildCounterLiasettingsSetPosDataProviderResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLiasettingsSetPosDataProviderResponse--;
}

buildUnnamed3276() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3276(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLocationIdSet = 0;
buildLocationIdSet() {
  var o = new api.LocationIdSet();
  buildCounterLocationIdSet++;
  if (buildCounterLocationIdSet < 3) {
    o.locationIds = buildUnnamed3276();
  }
  buildCounterLocationIdSet--;
  return o;
}

checkLocationIdSet(api.LocationIdSet o) {
  buildCounterLocationIdSet++;
  if (buildCounterLocationIdSet < 3) {
    checkUnnamed3276(o.locationIds);
  }
  buildCounterLocationIdSet--;
}

core.int buildCounterLoyaltyPoints = 0;
buildLoyaltyPoints() {
  var o = new api.LoyaltyPoints();
  buildCounterLoyaltyPoints++;
  if (buildCounterLoyaltyPoints < 3) {
    o.name = "foo";
    o.pointsValue = "foo";
    o.ratio = 42.0;
  }
  buildCounterLoyaltyPoints--;
  return o;
}

checkLoyaltyPoints(api.LoyaltyPoints o) {
  buildCounterLoyaltyPoints++;
  if (buildCounterLoyaltyPoints < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.pointsValue, unittest.equals('foo'));
    unittest.expect(o.ratio, unittest.equals(42.0));
  }
  buildCounterLoyaltyPoints--;
}

buildUnnamed3277() {
  var o = new core.List<api.MerchantOrderReturnItem>();
  o.add(buildMerchantOrderReturnItem());
  o.add(buildMerchantOrderReturnItem());
  return o;
}

checkUnnamed3277(core.List<api.MerchantOrderReturnItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantOrderReturnItem(o[0]);
  checkMerchantOrderReturnItem(o[1]);
}

buildUnnamed3278() {
  var o = new core.List<api.ReturnShipment>();
  o.add(buildReturnShipment());
  o.add(buildReturnShipment());
  return o;
}

checkUnnamed3278(core.List<api.ReturnShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnShipment(o[0]);
  checkReturnShipment(o[1]);
}

core.int buildCounterMerchantOrderReturn = 0;
buildMerchantOrderReturn() {
  var o = new api.MerchantOrderReturn();
  buildCounterMerchantOrderReturn++;
  if (buildCounterMerchantOrderReturn < 3) {
    o.creationDate = "foo";
    o.merchantOrderId = "foo";
    o.orderId = "foo";
    o.orderReturnId = "foo";
    o.returnItems = buildUnnamed3277();
    o.returnShipments = buildUnnamed3278();
  }
  buildCounterMerchantOrderReturn--;
  return o;
}

checkMerchantOrderReturn(api.MerchantOrderReturn o) {
  buildCounterMerchantOrderReturn++;
  if (buildCounterMerchantOrderReturn < 3) {
    unittest.expect(o.creationDate, unittest.equals('foo'));
    unittest.expect(o.merchantOrderId, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
    unittest.expect(o.orderReturnId, unittest.equals('foo'));
    checkUnnamed3277(o.returnItems);
    checkUnnamed3278(o.returnShipments);
  }
  buildCounterMerchantOrderReturn--;
}

buildUnnamed3279() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3279(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMerchantOrderReturnItem = 0;
buildMerchantOrderReturnItem() {
  var o = new api.MerchantOrderReturnItem();
  buildCounterMerchantOrderReturnItem++;
  if (buildCounterMerchantOrderReturnItem < 3) {
    o.customerReturnReason = buildCustomerReturnReason();
    o.itemId = "foo";
    o.merchantReturnReason = buildRefundReason();
    o.product = buildOrderLineItemProduct();
    o.returnShipmentIds = buildUnnamed3279();
    o.state = "foo";
  }
  buildCounterMerchantOrderReturnItem--;
  return o;
}

checkMerchantOrderReturnItem(api.MerchantOrderReturnItem o) {
  buildCounterMerchantOrderReturnItem++;
  if (buildCounterMerchantOrderReturnItem < 3) {
    checkCustomerReturnReason(o.customerReturnReason);
    unittest.expect(o.itemId, unittest.equals('foo'));
    checkRefundReason(o.merchantReturnReason);
    checkOrderLineItemProduct(o.product);
    checkUnnamed3279(o.returnShipmentIds);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterMerchantOrderReturnItem--;
}

buildUnnamed3280() {
  var o = new core.List<api.OrderLineItem>();
  o.add(buildOrderLineItem());
  o.add(buildOrderLineItem());
  return o;
}

checkUnnamed3280(core.List<api.OrderLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItem(o[0]);
  checkOrderLineItem(o[1]);
}

buildUnnamed3281() {
  var o = new core.List<api.OrderPromotion>();
  o.add(buildOrderPromotion());
  o.add(buildOrderPromotion());
  return o;
}

checkUnnamed3281(core.List<api.OrderPromotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotion(o[0]);
  checkOrderPromotion(o[1]);
}

buildUnnamed3282() {
  var o = new core.List<api.OrderRefund>();
  o.add(buildOrderRefund());
  o.add(buildOrderRefund());
  return o;
}

checkUnnamed3282(core.List<api.OrderRefund> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderRefund(o[0]);
  checkOrderRefund(o[1]);
}

buildUnnamed3283() {
  var o = new core.List<api.OrderShipment>();
  o.add(buildOrderShipment());
  o.add(buildOrderShipment());
  return o;
}

checkUnnamed3283(core.List<api.OrderShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderShipment(o[0]);
  checkOrderShipment(o[1]);
}

core.int buildCounterOrder = 0;
buildOrder() {
  var o = new api.Order();
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    o.acknowledged = true;
    o.billingAddress = buildOrderAddress();
    o.customer = buildOrderCustomer();
    o.deliveryDetails = buildOrderDeliveryDetails();
    o.id = "foo";
    o.kind = "foo";
    o.lineItems = buildUnnamed3280();
    o.merchantId = "foo";
    o.merchantOrderId = "foo";
    o.netPriceAmount = buildPrice();
    o.netTaxAmount = buildPrice();
    o.paymentStatus = "foo";
    o.pickupDetails = buildOrderPickupDetails();
    o.placedDate = "foo";
    o.promotions = buildUnnamed3281();
    o.refunds = buildUnnamed3282();
    o.shipments = buildUnnamed3283();
    o.shippingCost = buildPrice();
    o.shippingCostTax = buildPrice();
    o.status = "foo";
    o.taxCollector = "foo";
  }
  buildCounterOrder--;
  return o;
}

checkOrder(api.Order o) {
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    unittest.expect(o.acknowledged, unittest.isTrue);
    checkOrderAddress(o.billingAddress);
    checkOrderCustomer(o.customer);
    checkOrderDeliveryDetails(o.deliveryDetails);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3280(o.lineItems);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.merchantOrderId, unittest.equals('foo'));
    checkPrice(o.netPriceAmount);
    checkPrice(o.netTaxAmount);
    unittest.expect(o.paymentStatus, unittest.equals('foo'));
    checkOrderPickupDetails(o.pickupDetails);
    unittest.expect(o.placedDate, unittest.equals('foo'));
    checkUnnamed3281(o.promotions);
    checkUnnamed3282(o.refunds);
    checkUnnamed3283(o.shipments);
    checkPrice(o.shippingCost);
    checkPrice(o.shippingCostTax);
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.taxCollector, unittest.equals('foo'));
  }
  buildCounterOrder--;
}

buildUnnamed3284() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3284(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3285() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3285(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOrderAddress = 0;
buildOrderAddress() {
  var o = new api.OrderAddress();
  buildCounterOrderAddress++;
  if (buildCounterOrderAddress < 3) {
    o.country = "foo";
    o.fullAddress = buildUnnamed3284();
    o.isPostOfficeBox = true;
    o.locality = "foo";
    o.postalCode = "foo";
    o.recipientName = "foo";
    o.region = "foo";
    o.streetAddress = buildUnnamed3285();
  }
  buildCounterOrderAddress--;
  return o;
}

checkOrderAddress(api.OrderAddress o) {
  buildCounterOrderAddress++;
  if (buildCounterOrderAddress < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    checkUnnamed3284(o.fullAddress);
    unittest.expect(o.isPostOfficeBox, unittest.isTrue);
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.recipientName, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    checkUnnamed3285(o.streetAddress);
  }
  buildCounterOrderAddress--;
}

core.int buildCounterOrderCancellation = 0;
buildOrderCancellation() {
  var o = new api.OrderCancellation();
  buildCounterOrderCancellation++;
  if (buildCounterOrderCancellation < 3) {
    o.actor = "foo";
    o.creationDate = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrderCancellation--;
  return o;
}

checkOrderCancellation(api.OrderCancellation o) {
  buildCounterOrderCancellation++;
  if (buildCounterOrderCancellation < 3) {
    unittest.expect(o.actor, unittest.equals('foo'));
    unittest.expect(o.creationDate, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrderCancellation--;
}

core.int buildCounterOrderCustomer = 0;
buildOrderCustomer() {
  var o = new api.OrderCustomer();
  buildCounterOrderCustomer++;
  if (buildCounterOrderCustomer < 3) {
    o.fullName = "foo";
    o.invoiceReceivingEmail = "foo";
    o.loyaltyInfo = buildOrderCustomerLoyaltyInfo();
    o.marketingRightsInfo = buildOrderCustomerMarketingRightsInfo();
  }
  buildCounterOrderCustomer--;
  return o;
}

checkOrderCustomer(api.OrderCustomer o) {
  buildCounterOrderCustomer++;
  if (buildCounterOrderCustomer < 3) {
    unittest.expect(o.fullName, unittest.equals('foo'));
    unittest.expect(o.invoiceReceivingEmail, unittest.equals('foo'));
    checkOrderCustomerLoyaltyInfo(o.loyaltyInfo);
    checkOrderCustomerMarketingRightsInfo(o.marketingRightsInfo);
  }
  buildCounterOrderCustomer--;
}

core.int buildCounterOrderCustomerLoyaltyInfo = 0;
buildOrderCustomerLoyaltyInfo() {
  var o = new api.OrderCustomerLoyaltyInfo();
  buildCounterOrderCustomerLoyaltyInfo++;
  if (buildCounterOrderCustomerLoyaltyInfo < 3) {
    o.loyaltyNumber = "foo";
    o.name = "foo";
  }
  buildCounterOrderCustomerLoyaltyInfo--;
  return o;
}

checkOrderCustomerLoyaltyInfo(api.OrderCustomerLoyaltyInfo o) {
  buildCounterOrderCustomerLoyaltyInfo++;
  if (buildCounterOrderCustomerLoyaltyInfo < 3) {
    unittest.expect(o.loyaltyNumber, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterOrderCustomerLoyaltyInfo--;
}

core.int buildCounterOrderCustomerMarketingRightsInfo = 0;
buildOrderCustomerMarketingRightsInfo() {
  var o = new api.OrderCustomerMarketingRightsInfo();
  buildCounterOrderCustomerMarketingRightsInfo++;
  if (buildCounterOrderCustomerMarketingRightsInfo < 3) {
    o.explicitMarketingPreference = "foo";
    o.lastUpdatedTimestamp = "foo";
    o.marketingEmailAddress = "foo";
  }
  buildCounterOrderCustomerMarketingRightsInfo--;
  return o;
}

checkOrderCustomerMarketingRightsInfo(api.OrderCustomerMarketingRightsInfo o) {
  buildCounterOrderCustomerMarketingRightsInfo++;
  if (buildCounterOrderCustomerMarketingRightsInfo < 3) {
    unittest.expect(o.explicitMarketingPreference, unittest.equals('foo'));
    unittest.expect(o.lastUpdatedTimestamp, unittest.equals('foo'));
    unittest.expect(o.marketingEmailAddress, unittest.equals('foo'));
  }
  buildCounterOrderCustomerMarketingRightsInfo--;
}

core.int buildCounterOrderDeliveryDetails = 0;
buildOrderDeliveryDetails() {
  var o = new api.OrderDeliveryDetails();
  buildCounterOrderDeliveryDetails++;
  if (buildCounterOrderDeliveryDetails < 3) {
    o.address = buildOrderAddress();
    o.phoneNumber = "foo";
  }
  buildCounterOrderDeliveryDetails--;
  return o;
}

checkOrderDeliveryDetails(api.OrderDeliveryDetails o) {
  buildCounterOrderDeliveryDetails++;
  if (buildCounterOrderDeliveryDetails < 3) {
    checkOrderAddress(o.address);
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
  }
  buildCounterOrderDeliveryDetails--;
}

buildUnnamed3286() {
  var o = new core.List<api.OrderLineItemAdjustment>();
  o.add(buildOrderLineItemAdjustment());
  o.add(buildOrderLineItemAdjustment());
  return o;
}

checkUnnamed3286(core.List<api.OrderLineItemAdjustment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemAdjustment(o[0]);
  checkOrderLineItemAdjustment(o[1]);
}

buildUnnamed3287() {
  var o = new core.List<api.OrderMerchantProvidedAnnotation>();
  o.add(buildOrderMerchantProvidedAnnotation());
  o.add(buildOrderMerchantProvidedAnnotation());
  return o;
}

checkUnnamed3287(core.List<api.OrderMerchantProvidedAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderMerchantProvidedAnnotation(o[0]);
  checkOrderMerchantProvidedAnnotation(o[1]);
}

buildUnnamed3288() {
  var o = new core.List<api.OrderCancellation>();
  o.add(buildOrderCancellation());
  o.add(buildOrderCancellation());
  return o;
}

checkUnnamed3288(core.List<api.OrderCancellation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderCancellation(o[0]);
  checkOrderCancellation(o[1]);
}

buildUnnamed3289() {
  var o = new core.List<api.OrderReturn>();
  o.add(buildOrderReturn());
  o.add(buildOrderReturn());
  return o;
}

checkUnnamed3289(core.List<api.OrderReturn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderReturn(o[0]);
  checkOrderReturn(o[1]);
}

core.int buildCounterOrderLineItem = 0;
buildOrderLineItem() {
  var o = new api.OrderLineItem();
  buildCounterOrderLineItem++;
  if (buildCounterOrderLineItem < 3) {
    o.adjustments = buildUnnamed3286();
    o.annotations = buildUnnamed3287();
    o.cancellations = buildUnnamed3288();
    o.id = "foo";
    o.price = buildPrice();
    o.product = buildOrderLineItemProduct();
    o.quantityCanceled = 42;
    o.quantityDelivered = 42;
    o.quantityOrdered = 42;
    o.quantityPending = 42;
    o.quantityReadyForPickup = 42;
    o.quantityReturned = 42;
    o.quantityShipped = 42;
    o.quantityUndeliverable = 42;
    o.returnInfo = buildOrderLineItemReturnInfo();
    o.returns = buildUnnamed3289();
    o.shippingDetails = buildOrderLineItemShippingDetails();
    o.tax = buildPrice();
  }
  buildCounterOrderLineItem--;
  return o;
}

checkOrderLineItem(api.OrderLineItem o) {
  buildCounterOrderLineItem++;
  if (buildCounterOrderLineItem < 3) {
    checkUnnamed3286(o.adjustments);
    checkUnnamed3287(o.annotations);
    checkUnnamed3288(o.cancellations);
    unittest.expect(o.id, unittest.equals('foo'));
    checkPrice(o.price);
    checkOrderLineItemProduct(o.product);
    unittest.expect(o.quantityCanceled, unittest.equals(42));
    unittest.expect(o.quantityDelivered, unittest.equals(42));
    unittest.expect(o.quantityOrdered, unittest.equals(42));
    unittest.expect(o.quantityPending, unittest.equals(42));
    unittest.expect(o.quantityReadyForPickup, unittest.equals(42));
    unittest.expect(o.quantityReturned, unittest.equals(42));
    unittest.expect(o.quantityShipped, unittest.equals(42));
    unittest.expect(o.quantityUndeliverable, unittest.equals(42));
    checkOrderLineItemReturnInfo(o.returnInfo);
    checkUnnamed3289(o.returns);
    checkOrderLineItemShippingDetails(o.shippingDetails);
    checkPrice(o.tax);
  }
  buildCounterOrderLineItem--;
}

core.int buildCounterOrderLineItemAdjustment = 0;
buildOrderLineItemAdjustment() {
  var o = new api.OrderLineItemAdjustment();
  buildCounterOrderLineItemAdjustment++;
  if (buildCounterOrderLineItemAdjustment < 3) {
    o.priceAdjustment = buildPrice();
    o.taxAdjustment = buildPrice();
    o.type = "foo";
  }
  buildCounterOrderLineItemAdjustment--;
  return o;
}

checkOrderLineItemAdjustment(api.OrderLineItemAdjustment o) {
  buildCounterOrderLineItemAdjustment++;
  if (buildCounterOrderLineItemAdjustment < 3) {
    checkPrice(o.priceAdjustment);
    checkPrice(o.taxAdjustment);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterOrderLineItemAdjustment--;
}

buildUnnamed3290() {
  var o = new core.List<api.OrderLineItemProductFee>();
  o.add(buildOrderLineItemProductFee());
  o.add(buildOrderLineItemProductFee());
  return o;
}

checkUnnamed3290(core.List<api.OrderLineItemProductFee> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductFee(o[0]);
  checkOrderLineItemProductFee(o[1]);
}

buildUnnamed3291() {
  var o = new core.List<api.OrderLineItemProductVariantAttribute>();
  o.add(buildOrderLineItemProductVariantAttribute());
  o.add(buildOrderLineItemProductVariantAttribute());
  return o;
}

checkUnnamed3291(core.List<api.OrderLineItemProductVariantAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductVariantAttribute(o[0]);
  checkOrderLineItemProductVariantAttribute(o[1]);
}

core.int buildCounterOrderLineItemProduct = 0;
buildOrderLineItemProduct() {
  var o = new api.OrderLineItemProduct();
  buildCounterOrderLineItemProduct++;
  if (buildCounterOrderLineItemProduct < 3) {
    o.brand = "foo";
    o.condition = "foo";
    o.contentLanguage = "foo";
    o.fees = buildUnnamed3290();
    o.gtin = "foo";
    o.id = "foo";
    o.imageLink = "foo";
    o.itemGroupId = "foo";
    o.mpn = "foo";
    o.offerId = "foo";
    o.price = buildPrice();
    o.shownImage = "foo";
    o.targetCountry = "foo";
    o.title = "foo";
    o.variantAttributes = buildUnnamed3291();
  }
  buildCounterOrderLineItemProduct--;
  return o;
}

checkOrderLineItemProduct(api.OrderLineItemProduct o) {
  buildCounterOrderLineItemProduct++;
  if (buildCounterOrderLineItemProduct < 3) {
    unittest.expect(o.brand, unittest.equals('foo'));
    unittest.expect(o.condition, unittest.equals('foo'));
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    checkUnnamed3290(o.fees);
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.imageLink, unittest.equals('foo'));
    unittest.expect(o.itemGroupId, unittest.equals('foo'));
    unittest.expect(o.mpn, unittest.equals('foo'));
    unittest.expect(o.offerId, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.shownImage, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    checkUnnamed3291(o.variantAttributes);
  }
  buildCounterOrderLineItemProduct--;
}

core.int buildCounterOrderLineItemProductFee = 0;
buildOrderLineItemProductFee() {
  var o = new api.OrderLineItemProductFee();
  buildCounterOrderLineItemProductFee++;
  if (buildCounterOrderLineItemProductFee < 3) {
    o.amount = buildPrice();
    o.name = "foo";
  }
  buildCounterOrderLineItemProductFee--;
  return o;
}

checkOrderLineItemProductFee(api.OrderLineItemProductFee o) {
  buildCounterOrderLineItemProductFee++;
  if (buildCounterOrderLineItemProductFee < 3) {
    checkPrice(o.amount);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterOrderLineItemProductFee--;
}

core.int buildCounterOrderLineItemProductVariantAttribute = 0;
buildOrderLineItemProductVariantAttribute() {
  var o = new api.OrderLineItemProductVariantAttribute();
  buildCounterOrderLineItemProductVariantAttribute++;
  if (buildCounterOrderLineItemProductVariantAttribute < 3) {
    o.dimension = "foo";
    o.value = "foo";
  }
  buildCounterOrderLineItemProductVariantAttribute--;
  return o;
}

checkOrderLineItemProductVariantAttribute(
    api.OrderLineItemProductVariantAttribute o) {
  buildCounterOrderLineItemProductVariantAttribute++;
  if (buildCounterOrderLineItemProductVariantAttribute < 3) {
    unittest.expect(o.dimension, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterOrderLineItemProductVariantAttribute--;
}

core.int buildCounterOrderLineItemReturnInfo = 0;
buildOrderLineItemReturnInfo() {
  var o = new api.OrderLineItemReturnInfo();
  buildCounterOrderLineItemReturnInfo++;
  if (buildCounterOrderLineItemReturnInfo < 3) {
    o.daysToReturn = 42;
    o.isReturnable = true;
    o.policyUrl = "foo";
  }
  buildCounterOrderLineItemReturnInfo--;
  return o;
}

checkOrderLineItemReturnInfo(api.OrderLineItemReturnInfo o) {
  buildCounterOrderLineItemReturnInfo++;
  if (buildCounterOrderLineItemReturnInfo < 3) {
    unittest.expect(o.daysToReturn, unittest.equals(42));
    unittest.expect(o.isReturnable, unittest.isTrue);
    unittest.expect(o.policyUrl, unittest.equals('foo'));
  }
  buildCounterOrderLineItemReturnInfo--;
}

core.int buildCounterOrderLineItemShippingDetails = 0;
buildOrderLineItemShippingDetails() {
  var o = new api.OrderLineItemShippingDetails();
  buildCounterOrderLineItemShippingDetails++;
  if (buildCounterOrderLineItemShippingDetails < 3) {
    o.deliverByDate = "foo";
    o.method = buildOrderLineItemShippingDetailsMethod();
    o.shipByDate = "foo";
    o.type = "foo";
  }
  buildCounterOrderLineItemShippingDetails--;
  return o;
}

checkOrderLineItemShippingDetails(api.OrderLineItemShippingDetails o) {
  buildCounterOrderLineItemShippingDetails++;
  if (buildCounterOrderLineItemShippingDetails < 3) {
    unittest.expect(o.deliverByDate, unittest.equals('foo'));
    checkOrderLineItemShippingDetailsMethod(o.method);
    unittest.expect(o.shipByDate, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterOrderLineItemShippingDetails--;
}

core.int buildCounterOrderLineItemShippingDetailsMethod = 0;
buildOrderLineItemShippingDetailsMethod() {
  var o = new api.OrderLineItemShippingDetailsMethod();
  buildCounterOrderLineItemShippingDetailsMethod++;
  if (buildCounterOrderLineItemShippingDetailsMethod < 3) {
    o.carrier = "foo";
    o.maxDaysInTransit = 42;
    o.methodName = "foo";
    o.minDaysInTransit = 42;
  }
  buildCounterOrderLineItemShippingDetailsMethod--;
  return o;
}

checkOrderLineItemShippingDetailsMethod(
    api.OrderLineItemShippingDetailsMethod o) {
  buildCounterOrderLineItemShippingDetailsMethod++;
  if (buildCounterOrderLineItemShippingDetailsMethod < 3) {
    unittest.expect(o.carrier, unittest.equals('foo'));
    unittest.expect(o.maxDaysInTransit, unittest.equals(42));
    unittest.expect(o.methodName, unittest.equals('foo'));
    unittest.expect(o.minDaysInTransit, unittest.equals(42));
  }
  buildCounterOrderLineItemShippingDetailsMethod--;
}

core.int buildCounterOrderMerchantProvidedAnnotation = 0;
buildOrderMerchantProvidedAnnotation() {
  var o = new api.OrderMerchantProvidedAnnotation();
  buildCounterOrderMerchantProvidedAnnotation++;
  if (buildCounterOrderMerchantProvidedAnnotation < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterOrderMerchantProvidedAnnotation--;
  return o;
}

checkOrderMerchantProvidedAnnotation(api.OrderMerchantProvidedAnnotation o) {
  buildCounterOrderMerchantProvidedAnnotation++;
  if (buildCounterOrderMerchantProvidedAnnotation < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterOrderMerchantProvidedAnnotation--;
}

buildUnnamed3292() {
  var o = new core.List<api.OrderPickupDetailsCollector>();
  o.add(buildOrderPickupDetailsCollector());
  o.add(buildOrderPickupDetailsCollector());
  return o;
}

checkUnnamed3292(core.List<api.OrderPickupDetailsCollector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPickupDetailsCollector(o[0]);
  checkOrderPickupDetailsCollector(o[1]);
}

core.int buildCounterOrderPickupDetails = 0;
buildOrderPickupDetails() {
  var o = new api.OrderPickupDetails();
  buildCounterOrderPickupDetails++;
  if (buildCounterOrderPickupDetails < 3) {
    o.address = buildOrderAddress();
    o.collectors = buildUnnamed3292();
    o.locationId = "foo";
  }
  buildCounterOrderPickupDetails--;
  return o;
}

checkOrderPickupDetails(api.OrderPickupDetails o) {
  buildCounterOrderPickupDetails++;
  if (buildCounterOrderPickupDetails < 3) {
    checkOrderAddress(o.address);
    checkUnnamed3292(o.collectors);
    unittest.expect(o.locationId, unittest.equals('foo'));
  }
  buildCounterOrderPickupDetails--;
}

core.int buildCounterOrderPickupDetailsCollector = 0;
buildOrderPickupDetailsCollector() {
  var o = new api.OrderPickupDetailsCollector();
  buildCounterOrderPickupDetailsCollector++;
  if (buildCounterOrderPickupDetailsCollector < 3) {
    o.name = "foo";
    o.phoneNumber = "foo";
  }
  buildCounterOrderPickupDetailsCollector--;
  return o;
}

checkOrderPickupDetailsCollector(api.OrderPickupDetailsCollector o) {
  buildCounterOrderPickupDetailsCollector++;
  if (buildCounterOrderPickupDetailsCollector < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
  }
  buildCounterOrderPickupDetailsCollector--;
}

buildUnnamed3293() {
  var o = new core.List<api.OrderPromotionItem>();
  o.add(buildOrderPromotionItem());
  o.add(buildOrderPromotionItem());
  return o;
}

checkUnnamed3293(core.List<api.OrderPromotionItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotionItem(o[0]);
  checkOrderPromotionItem(o[1]);
}

buildUnnamed3294() {
  var o = new core.List<api.OrderPromotionItem>();
  o.add(buildOrderPromotionItem());
  o.add(buildOrderPromotionItem());
  return o;
}

checkUnnamed3294(core.List<api.OrderPromotionItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotionItem(o[0]);
  checkOrderPromotionItem(o[1]);
}

core.int buildCounterOrderPromotion = 0;
buildOrderPromotion() {
  var o = new api.OrderPromotion();
  buildCounterOrderPromotion++;
  if (buildCounterOrderPromotion < 3) {
    o.applicableItems = buildUnnamed3293();
    o.appliedItems = buildUnnamed3294();
    o.funder = "foo";
    o.merchantPromotionId = "foo";
    o.priceValue = buildPrice();
    o.shortTitle = "foo";
    o.subtype = "foo";
    o.taxValue = buildPrice();
    o.title = "foo";
    o.type = "foo";
  }
  buildCounterOrderPromotion--;
  return o;
}

checkOrderPromotion(api.OrderPromotion o) {
  buildCounterOrderPromotion++;
  if (buildCounterOrderPromotion < 3) {
    checkUnnamed3293(o.applicableItems);
    checkUnnamed3294(o.appliedItems);
    unittest.expect(o.funder, unittest.equals('foo'));
    unittest.expect(o.merchantPromotionId, unittest.equals('foo'));
    checkPrice(o.priceValue);
    unittest.expect(o.shortTitle, unittest.equals('foo'));
    unittest.expect(o.subtype, unittest.equals('foo'));
    checkPrice(o.taxValue);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterOrderPromotion--;
}

core.int buildCounterOrderPromotionItem = 0;
buildOrderPromotionItem() {
  var o = new api.OrderPromotionItem();
  buildCounterOrderPromotionItem++;
  if (buildCounterOrderPromotionItem < 3) {
    o.lineItemId = "foo";
    o.productId = "foo";
    o.quantity = 42;
  }
  buildCounterOrderPromotionItem--;
  return o;
}

checkOrderPromotionItem(api.OrderPromotionItem o) {
  buildCounterOrderPromotionItem++;
  if (buildCounterOrderPromotionItem < 3) {
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
  }
  buildCounterOrderPromotionItem--;
}

core.int buildCounterOrderRefund = 0;
buildOrderRefund() {
  var o = new api.OrderRefund();
  buildCounterOrderRefund++;
  if (buildCounterOrderRefund < 3) {
    o.actor = "foo";
    o.amount = buildPrice();
    o.creationDate = "foo";
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrderRefund--;
  return o;
}

checkOrderRefund(api.OrderRefund o) {
  buildCounterOrderRefund++;
  if (buildCounterOrderRefund < 3) {
    unittest.expect(o.actor, unittest.equals('foo'));
    checkPrice(o.amount);
    unittest.expect(o.creationDate, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrderRefund--;
}

core.int buildCounterOrderReportDisbursement = 0;
buildOrderReportDisbursement() {
  var o = new api.OrderReportDisbursement();
  buildCounterOrderReportDisbursement++;
  if (buildCounterOrderReportDisbursement < 3) {
    o.disbursementAmount = buildPrice();
    o.disbursementCreationDate = "foo";
    o.disbursementDate = "foo";
    o.disbursementId = "foo";
    o.merchantId = "foo";
  }
  buildCounterOrderReportDisbursement--;
  return o;
}

checkOrderReportDisbursement(api.OrderReportDisbursement o) {
  buildCounterOrderReportDisbursement++;
  if (buildCounterOrderReportDisbursement < 3) {
    checkPrice(o.disbursementAmount);
    unittest.expect(o.disbursementCreationDate, unittest.equals('foo'));
    unittest.expect(o.disbursementDate, unittest.equals('foo'));
    unittest.expect(o.disbursementId, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
  }
  buildCounterOrderReportDisbursement--;
}

core.int buildCounterOrderReportTransaction = 0;
buildOrderReportTransaction() {
  var o = new api.OrderReportTransaction();
  buildCounterOrderReportTransaction++;
  if (buildCounterOrderReportTransaction < 3) {
    o.disbursementAmount = buildPrice();
    o.disbursementCreationDate = "foo";
    o.disbursementDate = "foo";
    o.disbursementId = "foo";
    o.merchantId = "foo";
    o.merchantOrderId = "foo";
    o.orderId = "foo";
    o.productAmount = buildProductAmount();
    o.transactionDate = "foo";
  }
  buildCounterOrderReportTransaction--;
  return o;
}

checkOrderReportTransaction(api.OrderReportTransaction o) {
  buildCounterOrderReportTransaction++;
  if (buildCounterOrderReportTransaction < 3) {
    checkPrice(o.disbursementAmount);
    unittest.expect(o.disbursementCreationDate, unittest.equals('foo'));
    unittest.expect(o.disbursementDate, unittest.equals('foo'));
    unittest.expect(o.disbursementId, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.merchantOrderId, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
    checkProductAmount(o.productAmount);
    unittest.expect(o.transactionDate, unittest.equals('foo'));
  }
  buildCounterOrderReportTransaction--;
}

core.int buildCounterOrderReturn = 0;
buildOrderReturn() {
  var o = new api.OrderReturn();
  buildCounterOrderReturn++;
  if (buildCounterOrderReturn < 3) {
    o.actor = "foo";
    o.creationDate = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrderReturn--;
  return o;
}

checkOrderReturn(api.OrderReturn o) {
  buildCounterOrderReturn++;
  if (buildCounterOrderReturn < 3) {
    unittest.expect(o.actor, unittest.equals('foo'));
    unittest.expect(o.creationDate, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrderReturn--;
}

buildUnnamed3295() {
  var o = new core.List<api.OrderShipmentLineItemShipment>();
  o.add(buildOrderShipmentLineItemShipment());
  o.add(buildOrderShipmentLineItemShipment());
  return o;
}

checkUnnamed3295(core.List<api.OrderShipmentLineItemShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderShipmentLineItemShipment(o[0]);
  checkOrderShipmentLineItemShipment(o[1]);
}

core.int buildCounterOrderShipment = 0;
buildOrderShipment() {
  var o = new api.OrderShipment();
  buildCounterOrderShipment++;
  if (buildCounterOrderShipment < 3) {
    o.carrier = "foo";
    o.creationDate = "foo";
    o.deliveryDate = "foo";
    o.id = "foo";
    o.lineItems = buildUnnamed3295();
    o.shipmentGroupId = "foo";
    o.status = "foo";
    o.trackingId = "foo";
  }
  buildCounterOrderShipment--;
  return o;
}

checkOrderShipment(api.OrderShipment o) {
  buildCounterOrderShipment++;
  if (buildCounterOrderShipment < 3) {
    unittest.expect(o.carrier, unittest.equals('foo'));
    unittest.expect(o.creationDate, unittest.equals('foo'));
    unittest.expect(o.deliveryDate, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3295(o.lineItems);
    unittest.expect(o.shipmentGroupId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.trackingId, unittest.equals('foo'));
  }
  buildCounterOrderShipment--;
}

core.int buildCounterOrderShipmentLineItemShipment = 0;
buildOrderShipmentLineItemShipment() {
  var o = new api.OrderShipmentLineItemShipment();
  buildCounterOrderShipmentLineItemShipment++;
  if (buildCounterOrderShipmentLineItemShipment < 3) {
    o.lineItemId = "foo";
    o.productId = "foo";
    o.quantity = 42;
  }
  buildCounterOrderShipmentLineItemShipment--;
  return o;
}

checkOrderShipmentLineItemShipment(api.OrderShipmentLineItemShipment o) {
  buildCounterOrderShipmentLineItemShipment++;
  if (buildCounterOrderShipmentLineItemShipment < 3) {
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
  }
  buildCounterOrderShipmentLineItemShipment--;
}

buildUnnamed3296() {
  var o = new core.List<api.ShipmentInvoiceLineItemInvoice>();
  o.add(buildShipmentInvoiceLineItemInvoice());
  o.add(buildShipmentInvoiceLineItemInvoice());
  return o;
}

checkUnnamed3296(core.List<api.ShipmentInvoiceLineItemInvoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentInvoiceLineItemInvoice(o[0]);
  checkShipmentInvoiceLineItemInvoice(o[1]);
}

core.int buildCounterOrderinvoicesCreateChargeInvoiceRequest = 0;
buildOrderinvoicesCreateChargeInvoiceRequest() {
  var o = new api.OrderinvoicesCreateChargeInvoiceRequest();
  buildCounterOrderinvoicesCreateChargeInvoiceRequest++;
  if (buildCounterOrderinvoicesCreateChargeInvoiceRequest < 3) {
    o.invoiceId = "foo";
    o.invoiceSummary = buildInvoiceSummary();
    o.lineItemInvoices = buildUnnamed3296();
    o.operationId = "foo";
    o.shipmentGroupId = "foo";
  }
  buildCounterOrderinvoicesCreateChargeInvoiceRequest--;
  return o;
}

checkOrderinvoicesCreateChargeInvoiceRequest(
    api.OrderinvoicesCreateChargeInvoiceRequest o) {
  buildCounterOrderinvoicesCreateChargeInvoiceRequest++;
  if (buildCounterOrderinvoicesCreateChargeInvoiceRequest < 3) {
    unittest.expect(o.invoiceId, unittest.equals('foo'));
    checkInvoiceSummary(o.invoiceSummary);
    checkUnnamed3296(o.lineItemInvoices);
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.shipmentGroupId, unittest.equals('foo'));
  }
  buildCounterOrderinvoicesCreateChargeInvoiceRequest--;
}

core.int buildCounterOrderinvoicesCreateChargeInvoiceResponse = 0;
buildOrderinvoicesCreateChargeInvoiceResponse() {
  var o = new api.OrderinvoicesCreateChargeInvoiceResponse();
  buildCounterOrderinvoicesCreateChargeInvoiceResponse++;
  if (buildCounterOrderinvoicesCreateChargeInvoiceResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrderinvoicesCreateChargeInvoiceResponse--;
  return o;
}

checkOrderinvoicesCreateChargeInvoiceResponse(
    api.OrderinvoicesCreateChargeInvoiceResponse o) {
  buildCounterOrderinvoicesCreateChargeInvoiceResponse++;
  if (buildCounterOrderinvoicesCreateChargeInvoiceResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrderinvoicesCreateChargeInvoiceResponse--;
}

buildUnnamed3297() {
  var o = new core.List<api.ShipmentInvoice>();
  o.add(buildShipmentInvoice());
  o.add(buildShipmentInvoice());
  return o;
}

checkUnnamed3297(core.List<api.ShipmentInvoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentInvoice(o[0]);
  checkShipmentInvoice(o[1]);
}

core.int buildCounterOrderinvoicesCreateRefundInvoiceRequest = 0;
buildOrderinvoicesCreateRefundInvoiceRequest() {
  var o = new api.OrderinvoicesCreateRefundInvoiceRequest();
  buildCounterOrderinvoicesCreateRefundInvoiceRequest++;
  if (buildCounterOrderinvoicesCreateRefundInvoiceRequest < 3) {
    o.invoiceId = "foo";
    o.operationId = "foo";
    o.refundOnlyOption =
        buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption();
    o.returnOption =
        buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption();
    o.shipmentInvoices = buildUnnamed3297();
  }
  buildCounterOrderinvoicesCreateRefundInvoiceRequest--;
  return o;
}

checkOrderinvoicesCreateRefundInvoiceRequest(
    api.OrderinvoicesCreateRefundInvoiceRequest o) {
  buildCounterOrderinvoicesCreateRefundInvoiceRequest++;
  if (buildCounterOrderinvoicesCreateRefundInvoiceRequest < 3) {
    unittest.expect(o.invoiceId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption(
        o.refundOnlyOption);
    checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption(
        o.returnOption);
    checkUnnamed3297(o.shipmentInvoices);
  }
  buildCounterOrderinvoicesCreateRefundInvoiceRequest--;
}

core.int buildCounterOrderinvoicesCreateRefundInvoiceResponse = 0;
buildOrderinvoicesCreateRefundInvoiceResponse() {
  var o = new api.OrderinvoicesCreateRefundInvoiceResponse();
  buildCounterOrderinvoicesCreateRefundInvoiceResponse++;
  if (buildCounterOrderinvoicesCreateRefundInvoiceResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrderinvoicesCreateRefundInvoiceResponse--;
  return o;
}

checkOrderinvoicesCreateRefundInvoiceResponse(
    api.OrderinvoicesCreateRefundInvoiceResponse o) {
  buildCounterOrderinvoicesCreateRefundInvoiceResponse++;
  if (buildCounterOrderinvoicesCreateRefundInvoiceResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrderinvoicesCreateRefundInvoiceResponse--;
}

core.int
    buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption =
    0;
buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption() {
  var o = new api
      .OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption();
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption++;
  if (buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption <
      3) {
    o.description = "foo";
    o.reason = "foo";
  }
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption--;
  return o;
}

checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption(
    api.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption o) {
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption++;
  if (buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption <
      3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption--;
}

core.int
    buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption =
    0;
buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption() {
  var o = new api
      .OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption();
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption++;
  if (buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption <
      3) {
    o.description = "foo";
    o.reason = "foo";
  }
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption--;
  return o;
}

checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption(
    api.OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption o) {
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption++;
  if (buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption <
      3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption--;
}

buildUnnamed3298() {
  var o = new core.List<api.OrderReportDisbursement>();
  o.add(buildOrderReportDisbursement());
  o.add(buildOrderReportDisbursement());
  return o;
}

checkUnnamed3298(core.List<api.OrderReportDisbursement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderReportDisbursement(o[0]);
  checkOrderReportDisbursement(o[1]);
}

core.int buildCounterOrderreportsListDisbursementsResponse = 0;
buildOrderreportsListDisbursementsResponse() {
  var o = new api.OrderreportsListDisbursementsResponse();
  buildCounterOrderreportsListDisbursementsResponse++;
  if (buildCounterOrderreportsListDisbursementsResponse < 3) {
    o.disbursements = buildUnnamed3298();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterOrderreportsListDisbursementsResponse--;
  return o;
}

checkOrderreportsListDisbursementsResponse(
    api.OrderreportsListDisbursementsResponse o) {
  buildCounterOrderreportsListDisbursementsResponse++;
  if (buildCounterOrderreportsListDisbursementsResponse < 3) {
    checkUnnamed3298(o.disbursements);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterOrderreportsListDisbursementsResponse--;
}

buildUnnamed3299() {
  var o = new core.List<api.OrderReportTransaction>();
  o.add(buildOrderReportTransaction());
  o.add(buildOrderReportTransaction());
  return o;
}

checkUnnamed3299(core.List<api.OrderReportTransaction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderReportTransaction(o[0]);
  checkOrderReportTransaction(o[1]);
}

core.int buildCounterOrderreportsListTransactionsResponse = 0;
buildOrderreportsListTransactionsResponse() {
  var o = new api.OrderreportsListTransactionsResponse();
  buildCounterOrderreportsListTransactionsResponse++;
  if (buildCounterOrderreportsListTransactionsResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.transactions = buildUnnamed3299();
  }
  buildCounterOrderreportsListTransactionsResponse--;
  return o;
}

checkOrderreportsListTransactionsResponse(
    api.OrderreportsListTransactionsResponse o) {
  buildCounterOrderreportsListTransactionsResponse++;
  if (buildCounterOrderreportsListTransactionsResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3299(o.transactions);
  }
  buildCounterOrderreportsListTransactionsResponse--;
}

buildUnnamed3300() {
  var o = new core.List<api.MerchantOrderReturn>();
  o.add(buildMerchantOrderReturn());
  o.add(buildMerchantOrderReturn());
  return o;
}

checkUnnamed3300(core.List<api.MerchantOrderReturn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantOrderReturn(o[0]);
  checkMerchantOrderReturn(o[1]);
}

core.int buildCounterOrderreturnsListResponse = 0;
buildOrderreturnsListResponse() {
  var o = new api.OrderreturnsListResponse();
  buildCounterOrderreturnsListResponse++;
  if (buildCounterOrderreturnsListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed3300();
  }
  buildCounterOrderreturnsListResponse--;
  return o;
}

checkOrderreturnsListResponse(api.OrderreturnsListResponse o) {
  buildCounterOrderreturnsListResponse++;
  if (buildCounterOrderreturnsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3300(o.resources);
  }
  buildCounterOrderreturnsListResponse--;
}

core.int buildCounterOrdersAcknowledgeRequest = 0;
buildOrdersAcknowledgeRequest() {
  var o = new api.OrdersAcknowledgeRequest();
  buildCounterOrdersAcknowledgeRequest++;
  if (buildCounterOrdersAcknowledgeRequest < 3) {
    o.operationId = "foo";
  }
  buildCounterOrdersAcknowledgeRequest--;
  return o;
}

checkOrdersAcknowledgeRequest(api.OrdersAcknowledgeRequest o) {
  buildCounterOrdersAcknowledgeRequest++;
  if (buildCounterOrdersAcknowledgeRequest < 3) {
    unittest.expect(o.operationId, unittest.equals('foo'));
  }
  buildCounterOrdersAcknowledgeRequest--;
}

core.int buildCounterOrdersAcknowledgeResponse = 0;
buildOrdersAcknowledgeResponse() {
  var o = new api.OrdersAcknowledgeResponse();
  buildCounterOrdersAcknowledgeResponse++;
  if (buildCounterOrdersAcknowledgeResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersAcknowledgeResponse--;
  return o;
}

checkOrdersAcknowledgeResponse(api.OrdersAcknowledgeResponse o) {
  buildCounterOrdersAcknowledgeResponse++;
  if (buildCounterOrdersAcknowledgeResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersAcknowledgeResponse--;
}

core.int buildCounterOrdersAdvanceTestOrderResponse = 0;
buildOrdersAdvanceTestOrderResponse() {
  var o = new api.OrdersAdvanceTestOrderResponse();
  buildCounterOrdersAdvanceTestOrderResponse++;
  if (buildCounterOrdersAdvanceTestOrderResponse < 3) {
    o.kind = "foo";
  }
  buildCounterOrdersAdvanceTestOrderResponse--;
  return o;
}

checkOrdersAdvanceTestOrderResponse(api.OrdersAdvanceTestOrderResponse o) {
  buildCounterOrdersAdvanceTestOrderResponse++;
  if (buildCounterOrdersAdvanceTestOrderResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersAdvanceTestOrderResponse--;
}

core.int buildCounterOrdersCancelLineItemRequest = 0;
buildOrdersCancelLineItemRequest() {
  var o = new api.OrdersCancelLineItemRequest();
  buildCounterOrdersCancelLineItemRequest++;
  if (buildCounterOrdersCancelLineItemRequest < 3) {
    o.lineItemId = "foo";
    o.operationId = "foo";
    o.productId = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersCancelLineItemRequest--;
  return o;
}

checkOrdersCancelLineItemRequest(api.OrdersCancelLineItemRequest o) {
  buildCounterOrdersCancelLineItemRequest++;
  if (buildCounterOrdersCancelLineItemRequest < 3) {
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersCancelLineItemRequest--;
}

core.int buildCounterOrdersCancelLineItemResponse = 0;
buildOrdersCancelLineItemResponse() {
  var o = new api.OrdersCancelLineItemResponse();
  buildCounterOrdersCancelLineItemResponse++;
  if (buildCounterOrdersCancelLineItemResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersCancelLineItemResponse--;
  return o;
}

checkOrdersCancelLineItemResponse(api.OrdersCancelLineItemResponse o) {
  buildCounterOrdersCancelLineItemResponse++;
  if (buildCounterOrdersCancelLineItemResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersCancelLineItemResponse--;
}

core.int buildCounterOrdersCancelRequest = 0;
buildOrdersCancelRequest() {
  var o = new api.OrdersCancelRequest();
  buildCounterOrdersCancelRequest++;
  if (buildCounterOrdersCancelRequest < 3) {
    o.operationId = "foo";
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersCancelRequest--;
  return o;
}

checkOrdersCancelRequest(api.OrdersCancelRequest o) {
  buildCounterOrdersCancelRequest++;
  if (buildCounterOrdersCancelRequest < 3) {
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersCancelRequest--;
}

core.int buildCounterOrdersCancelResponse = 0;
buildOrdersCancelResponse() {
  var o = new api.OrdersCancelResponse();
  buildCounterOrdersCancelResponse++;
  if (buildCounterOrdersCancelResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersCancelResponse--;
  return o;
}

checkOrdersCancelResponse(api.OrdersCancelResponse o) {
  buildCounterOrdersCancelResponse++;
  if (buildCounterOrdersCancelResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersCancelResponse--;
}

core.int buildCounterOrdersCancelTestOrderByCustomerRequest = 0;
buildOrdersCancelTestOrderByCustomerRequest() {
  var o = new api.OrdersCancelTestOrderByCustomerRequest();
  buildCounterOrdersCancelTestOrderByCustomerRequest++;
  if (buildCounterOrdersCancelTestOrderByCustomerRequest < 3) {
    o.reason = "foo";
  }
  buildCounterOrdersCancelTestOrderByCustomerRequest--;
  return o;
}

checkOrdersCancelTestOrderByCustomerRequest(
    api.OrdersCancelTestOrderByCustomerRequest o) {
  buildCounterOrdersCancelTestOrderByCustomerRequest++;
  if (buildCounterOrdersCancelTestOrderByCustomerRequest < 3) {
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterOrdersCancelTestOrderByCustomerRequest--;
}

core.int buildCounterOrdersCancelTestOrderByCustomerResponse = 0;
buildOrdersCancelTestOrderByCustomerResponse() {
  var o = new api.OrdersCancelTestOrderByCustomerResponse();
  buildCounterOrdersCancelTestOrderByCustomerResponse++;
  if (buildCounterOrdersCancelTestOrderByCustomerResponse < 3) {
    o.kind = "foo";
  }
  buildCounterOrdersCancelTestOrderByCustomerResponse--;
  return o;
}

checkOrdersCancelTestOrderByCustomerResponse(
    api.OrdersCancelTestOrderByCustomerResponse o) {
  buildCounterOrdersCancelTestOrderByCustomerResponse++;
  if (buildCounterOrdersCancelTestOrderByCustomerResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersCancelTestOrderByCustomerResponse--;
}

core.int buildCounterOrdersCreateTestOrderRequest = 0;
buildOrdersCreateTestOrderRequest() {
  var o = new api.OrdersCreateTestOrderRequest();
  buildCounterOrdersCreateTestOrderRequest++;
  if (buildCounterOrdersCreateTestOrderRequest < 3) {
    o.country = "foo";
    o.templateName = "foo";
    o.testOrder = buildTestOrder();
  }
  buildCounterOrdersCreateTestOrderRequest--;
  return o;
}

checkOrdersCreateTestOrderRequest(api.OrdersCreateTestOrderRequest o) {
  buildCounterOrdersCreateTestOrderRequest++;
  if (buildCounterOrdersCreateTestOrderRequest < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.templateName, unittest.equals('foo'));
    checkTestOrder(o.testOrder);
  }
  buildCounterOrdersCreateTestOrderRequest--;
}

core.int buildCounterOrdersCreateTestOrderResponse = 0;
buildOrdersCreateTestOrderResponse() {
  var o = new api.OrdersCreateTestOrderResponse();
  buildCounterOrdersCreateTestOrderResponse++;
  if (buildCounterOrdersCreateTestOrderResponse < 3) {
    o.kind = "foo";
    o.orderId = "foo";
  }
  buildCounterOrdersCreateTestOrderResponse--;
  return o;
}

checkOrdersCreateTestOrderResponse(api.OrdersCreateTestOrderResponse o) {
  buildCounterOrdersCreateTestOrderResponse++;
  if (buildCounterOrdersCreateTestOrderResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
  }
  buildCounterOrdersCreateTestOrderResponse--;
}

buildUnnamed3301() {
  var o = new core
      .List<api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem>();
  o.add(buildOrdersCustomBatchRequestEntryCreateTestReturnReturnItem());
  o.add(buildOrdersCustomBatchRequestEntryCreateTestReturnReturnItem());
  return o;
}

checkUnnamed3301(
    core.List<api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrdersCustomBatchRequestEntryCreateTestReturnReturnItem(o[0]);
  checkOrdersCustomBatchRequestEntryCreateTestReturnReturnItem(o[1]);
}

core.int buildCounterOrdersCreateTestReturnRequest = 0;
buildOrdersCreateTestReturnRequest() {
  var o = new api.OrdersCreateTestReturnRequest();
  buildCounterOrdersCreateTestReturnRequest++;
  if (buildCounterOrdersCreateTestReturnRequest < 3) {
    o.items = buildUnnamed3301();
  }
  buildCounterOrdersCreateTestReturnRequest--;
  return o;
}

checkOrdersCreateTestReturnRequest(api.OrdersCreateTestReturnRequest o) {
  buildCounterOrdersCreateTestReturnRequest++;
  if (buildCounterOrdersCreateTestReturnRequest < 3) {
    checkUnnamed3301(o.items);
  }
  buildCounterOrdersCreateTestReturnRequest--;
}

core.int buildCounterOrdersCreateTestReturnResponse = 0;
buildOrdersCreateTestReturnResponse() {
  var o = new api.OrdersCreateTestReturnResponse();
  buildCounterOrdersCreateTestReturnResponse++;
  if (buildCounterOrdersCreateTestReturnResponse < 3) {
    o.kind = "foo";
    o.returnId = "foo";
  }
  buildCounterOrdersCreateTestReturnResponse--;
  return o;
}

checkOrdersCreateTestReturnResponse(api.OrdersCreateTestReturnResponse o) {
  buildCounterOrdersCreateTestReturnResponse++;
  if (buildCounterOrdersCreateTestReturnResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.returnId, unittest.equals('foo'));
  }
  buildCounterOrdersCreateTestReturnResponse--;
}

core.int buildCounterOrdersCustomBatchRequestEntryCreateTestReturnReturnItem =
    0;
buildOrdersCustomBatchRequestEntryCreateTestReturnReturnItem() {
  var o = new api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem();
  buildCounterOrdersCustomBatchRequestEntryCreateTestReturnReturnItem++;
  if (buildCounterOrdersCustomBatchRequestEntryCreateTestReturnReturnItem < 3) {
    o.lineItemId = "foo";
    o.quantity = 42;
  }
  buildCounterOrdersCustomBatchRequestEntryCreateTestReturnReturnItem--;
  return o;
}

checkOrdersCustomBatchRequestEntryCreateTestReturnReturnItem(
    api.OrdersCustomBatchRequestEntryCreateTestReturnReturnItem o) {
  buildCounterOrdersCustomBatchRequestEntryCreateTestReturnReturnItem++;
  if (buildCounterOrdersCustomBatchRequestEntryCreateTestReturnReturnItem < 3) {
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
  }
  buildCounterOrdersCustomBatchRequestEntryCreateTestReturnReturnItem--;
}

core.int buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo = 0;
buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo() {
  var o = new api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo();
  buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo++;
  if (buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo < 3) {
    o.carrier = "foo";
    o.shipmentId = "foo";
    o.trackingId = "foo";
  }
  buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo--;
  return o;
}

checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(
    api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo o) {
  buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo++;
  if (buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo < 3) {
    unittest.expect(o.carrier, unittest.equals('foo'));
    unittest.expect(o.shipmentId, unittest.equals('foo'));
    unittest.expect(o.trackingId, unittest.equals('foo'));
  }
  buildCounterOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo--;
}

core.int buildCounterOrdersGetByMerchantOrderIdResponse = 0;
buildOrdersGetByMerchantOrderIdResponse() {
  var o = new api.OrdersGetByMerchantOrderIdResponse();
  buildCounterOrdersGetByMerchantOrderIdResponse++;
  if (buildCounterOrdersGetByMerchantOrderIdResponse < 3) {
    o.kind = "foo";
    o.order = buildOrder();
  }
  buildCounterOrdersGetByMerchantOrderIdResponse--;
  return o;
}

checkOrdersGetByMerchantOrderIdResponse(
    api.OrdersGetByMerchantOrderIdResponse o) {
  buildCounterOrdersGetByMerchantOrderIdResponse++;
  if (buildCounterOrdersGetByMerchantOrderIdResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkOrder(o.order);
  }
  buildCounterOrdersGetByMerchantOrderIdResponse--;
}

core.int buildCounterOrdersGetTestOrderTemplateResponse = 0;
buildOrdersGetTestOrderTemplateResponse() {
  var o = new api.OrdersGetTestOrderTemplateResponse();
  buildCounterOrdersGetTestOrderTemplateResponse++;
  if (buildCounterOrdersGetTestOrderTemplateResponse < 3) {
    o.kind = "foo";
    o.template = buildTestOrder();
  }
  buildCounterOrdersGetTestOrderTemplateResponse--;
  return o;
}

checkOrdersGetTestOrderTemplateResponse(
    api.OrdersGetTestOrderTemplateResponse o) {
  buildCounterOrdersGetTestOrderTemplateResponse++;
  if (buildCounterOrdersGetTestOrderTemplateResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkTestOrder(o.template);
  }
  buildCounterOrdersGetTestOrderTemplateResponse--;
}

core.int buildCounterOrdersInStoreRefundLineItemRequest = 0;
buildOrdersInStoreRefundLineItemRequest() {
  var o = new api.OrdersInStoreRefundLineItemRequest();
  buildCounterOrdersInStoreRefundLineItemRequest++;
  if (buildCounterOrdersInStoreRefundLineItemRequest < 3) {
    o.lineItemId = "foo";
    o.operationId = "foo";
    o.priceAmount = buildPrice();
    o.productId = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
    o.taxAmount = buildPrice();
  }
  buildCounterOrdersInStoreRefundLineItemRequest--;
  return o;
}

checkOrdersInStoreRefundLineItemRequest(
    api.OrdersInStoreRefundLineItemRequest o) {
  buildCounterOrdersInStoreRefundLineItemRequest++;
  if (buildCounterOrdersInStoreRefundLineItemRequest < 3) {
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkPrice(o.priceAmount);
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
    checkPrice(o.taxAmount);
  }
  buildCounterOrdersInStoreRefundLineItemRequest--;
}

core.int buildCounterOrdersInStoreRefundLineItemResponse = 0;
buildOrdersInStoreRefundLineItemResponse() {
  var o = new api.OrdersInStoreRefundLineItemResponse();
  buildCounterOrdersInStoreRefundLineItemResponse++;
  if (buildCounterOrdersInStoreRefundLineItemResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersInStoreRefundLineItemResponse--;
  return o;
}

checkOrdersInStoreRefundLineItemResponse(
    api.OrdersInStoreRefundLineItemResponse o) {
  buildCounterOrdersInStoreRefundLineItemResponse++;
  if (buildCounterOrdersInStoreRefundLineItemResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersInStoreRefundLineItemResponse--;
}

buildUnnamed3302() {
  var o = new core.List<api.Order>();
  o.add(buildOrder());
  o.add(buildOrder());
  return o;
}

checkUnnamed3302(core.List<api.Order> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrder(o[0]);
  checkOrder(o[1]);
}

core.int buildCounterOrdersListResponse = 0;
buildOrdersListResponse() {
  var o = new api.OrdersListResponse();
  buildCounterOrdersListResponse++;
  if (buildCounterOrdersListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed3302();
  }
  buildCounterOrdersListResponse--;
  return o;
}

checkOrdersListResponse(api.OrdersListResponse o) {
  buildCounterOrdersListResponse++;
  if (buildCounterOrdersListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3302(o.resources);
  }
  buildCounterOrdersListResponse--;
}

core.int buildCounterOrdersRejectReturnLineItemRequest = 0;
buildOrdersRejectReturnLineItemRequest() {
  var o = new api.OrdersRejectReturnLineItemRequest();
  buildCounterOrdersRejectReturnLineItemRequest++;
  if (buildCounterOrdersRejectReturnLineItemRequest < 3) {
    o.lineItemId = "foo";
    o.operationId = "foo";
    o.productId = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
  }
  buildCounterOrdersRejectReturnLineItemRequest--;
  return o;
}

checkOrdersRejectReturnLineItemRequest(
    api.OrdersRejectReturnLineItemRequest o) {
  buildCounterOrdersRejectReturnLineItemRequest++;
  if (buildCounterOrdersRejectReturnLineItemRequest < 3) {
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
  }
  buildCounterOrdersRejectReturnLineItemRequest--;
}

core.int buildCounterOrdersRejectReturnLineItemResponse = 0;
buildOrdersRejectReturnLineItemResponse() {
  var o = new api.OrdersRejectReturnLineItemResponse();
  buildCounterOrdersRejectReturnLineItemResponse++;
  if (buildCounterOrdersRejectReturnLineItemResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersRejectReturnLineItemResponse--;
  return o;
}

checkOrdersRejectReturnLineItemResponse(
    api.OrdersRejectReturnLineItemResponse o) {
  buildCounterOrdersRejectReturnLineItemResponse++;
  if (buildCounterOrdersRejectReturnLineItemResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersRejectReturnLineItemResponse--;
}

core.int buildCounterOrdersReturnRefundLineItemRequest = 0;
buildOrdersReturnRefundLineItemRequest() {
  var o = new api.OrdersReturnRefundLineItemRequest();
  buildCounterOrdersReturnRefundLineItemRequest++;
  if (buildCounterOrdersReturnRefundLineItemRequest < 3) {
    o.lineItemId = "foo";
    o.operationId = "foo";
    o.priceAmount = buildPrice();
    o.productId = "foo";
    o.quantity = 42;
    o.reason = "foo";
    o.reasonText = "foo";
    o.taxAmount = buildPrice();
  }
  buildCounterOrdersReturnRefundLineItemRequest--;
  return o;
}

checkOrdersReturnRefundLineItemRequest(
    api.OrdersReturnRefundLineItemRequest o) {
  buildCounterOrdersReturnRefundLineItemRequest++;
  if (buildCounterOrdersReturnRefundLineItemRequest < 3) {
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    checkPrice(o.priceAmount);
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.reason, unittest.equals('foo'));
    unittest.expect(o.reasonText, unittest.equals('foo'));
    checkPrice(o.taxAmount);
  }
  buildCounterOrdersReturnRefundLineItemRequest--;
}

core.int buildCounterOrdersReturnRefundLineItemResponse = 0;
buildOrdersReturnRefundLineItemResponse() {
  var o = new api.OrdersReturnRefundLineItemResponse();
  buildCounterOrdersReturnRefundLineItemResponse++;
  if (buildCounterOrdersReturnRefundLineItemResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersReturnRefundLineItemResponse--;
  return o;
}

checkOrdersReturnRefundLineItemResponse(
    api.OrdersReturnRefundLineItemResponse o) {
  buildCounterOrdersReturnRefundLineItemResponse++;
  if (buildCounterOrdersReturnRefundLineItemResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersReturnRefundLineItemResponse--;
}

buildUnnamed3303() {
  var o = new core.List<api.OrderMerchantProvidedAnnotation>();
  o.add(buildOrderMerchantProvidedAnnotation());
  o.add(buildOrderMerchantProvidedAnnotation());
  return o;
}

checkUnnamed3303(core.List<api.OrderMerchantProvidedAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderMerchantProvidedAnnotation(o[0]);
  checkOrderMerchantProvidedAnnotation(o[1]);
}

core.int buildCounterOrdersSetLineItemMetadataRequest = 0;
buildOrdersSetLineItemMetadataRequest() {
  var o = new api.OrdersSetLineItemMetadataRequest();
  buildCounterOrdersSetLineItemMetadataRequest++;
  if (buildCounterOrdersSetLineItemMetadataRequest < 3) {
    o.annotations = buildUnnamed3303();
    o.lineItemId = "foo";
    o.operationId = "foo";
    o.productId = "foo";
  }
  buildCounterOrdersSetLineItemMetadataRequest--;
  return o;
}

checkOrdersSetLineItemMetadataRequest(api.OrdersSetLineItemMetadataRequest o) {
  buildCounterOrdersSetLineItemMetadataRequest++;
  if (buildCounterOrdersSetLineItemMetadataRequest < 3) {
    checkUnnamed3303(o.annotations);
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterOrdersSetLineItemMetadataRequest--;
}

core.int buildCounterOrdersSetLineItemMetadataResponse = 0;
buildOrdersSetLineItemMetadataResponse() {
  var o = new api.OrdersSetLineItemMetadataResponse();
  buildCounterOrdersSetLineItemMetadataResponse++;
  if (buildCounterOrdersSetLineItemMetadataResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersSetLineItemMetadataResponse--;
  return o;
}

checkOrdersSetLineItemMetadataResponse(
    api.OrdersSetLineItemMetadataResponse o) {
  buildCounterOrdersSetLineItemMetadataResponse++;
  if (buildCounterOrdersSetLineItemMetadataResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersSetLineItemMetadataResponse--;
}

buildUnnamed3304() {
  var o = new core.List<api.OrderShipmentLineItemShipment>();
  o.add(buildOrderShipmentLineItemShipment());
  o.add(buildOrderShipmentLineItemShipment());
  return o;
}

checkUnnamed3304(core.List<api.OrderShipmentLineItemShipment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderShipmentLineItemShipment(o[0]);
  checkOrderShipmentLineItemShipment(o[1]);
}

buildUnnamed3305() {
  var o = new core
      .List<api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo>();
  o.add(buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo());
  o.add(buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo());
  return o;
}

checkUnnamed3305(
    core.List<api.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(o[0]);
  checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(o[1]);
}

core.int buildCounterOrdersShipLineItemsRequest = 0;
buildOrdersShipLineItemsRequest() {
  var o = new api.OrdersShipLineItemsRequest();
  buildCounterOrdersShipLineItemsRequest++;
  if (buildCounterOrdersShipLineItemsRequest < 3) {
    o.lineItems = buildUnnamed3304();
    o.operationId = "foo";
    o.shipmentGroupId = "foo";
    o.shipmentInfos = buildUnnamed3305();
  }
  buildCounterOrdersShipLineItemsRequest--;
  return o;
}

checkOrdersShipLineItemsRequest(api.OrdersShipLineItemsRequest o) {
  buildCounterOrdersShipLineItemsRequest++;
  if (buildCounterOrdersShipLineItemsRequest < 3) {
    checkUnnamed3304(o.lineItems);
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.shipmentGroupId, unittest.equals('foo'));
    checkUnnamed3305(o.shipmentInfos);
  }
  buildCounterOrdersShipLineItemsRequest--;
}

core.int buildCounterOrdersShipLineItemsResponse = 0;
buildOrdersShipLineItemsResponse() {
  var o = new api.OrdersShipLineItemsResponse();
  buildCounterOrdersShipLineItemsResponse++;
  if (buildCounterOrdersShipLineItemsResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersShipLineItemsResponse--;
  return o;
}

checkOrdersShipLineItemsResponse(api.OrdersShipLineItemsResponse o) {
  buildCounterOrdersShipLineItemsResponse++;
  if (buildCounterOrdersShipLineItemsResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersShipLineItemsResponse--;
}

core.int buildCounterOrdersUpdateLineItemShippingDetailsRequest = 0;
buildOrdersUpdateLineItemShippingDetailsRequest() {
  var o = new api.OrdersUpdateLineItemShippingDetailsRequest();
  buildCounterOrdersUpdateLineItemShippingDetailsRequest++;
  if (buildCounterOrdersUpdateLineItemShippingDetailsRequest < 3) {
    o.deliverByDate = "foo";
    o.lineItemId = "foo";
    o.operationId = "foo";
    o.productId = "foo";
    o.shipByDate = "foo";
  }
  buildCounterOrdersUpdateLineItemShippingDetailsRequest--;
  return o;
}

checkOrdersUpdateLineItemShippingDetailsRequest(
    api.OrdersUpdateLineItemShippingDetailsRequest o) {
  buildCounterOrdersUpdateLineItemShippingDetailsRequest++;
  if (buildCounterOrdersUpdateLineItemShippingDetailsRequest < 3) {
    unittest.expect(o.deliverByDate, unittest.equals('foo'));
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.shipByDate, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateLineItemShippingDetailsRequest--;
}

core.int buildCounterOrdersUpdateLineItemShippingDetailsResponse = 0;
buildOrdersUpdateLineItemShippingDetailsResponse() {
  var o = new api.OrdersUpdateLineItemShippingDetailsResponse();
  buildCounterOrdersUpdateLineItemShippingDetailsResponse++;
  if (buildCounterOrdersUpdateLineItemShippingDetailsResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersUpdateLineItemShippingDetailsResponse--;
  return o;
}

checkOrdersUpdateLineItemShippingDetailsResponse(
    api.OrdersUpdateLineItemShippingDetailsResponse o) {
  buildCounterOrdersUpdateLineItemShippingDetailsResponse++;
  if (buildCounterOrdersUpdateLineItemShippingDetailsResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateLineItemShippingDetailsResponse--;
}

core.int buildCounterOrdersUpdateMerchantOrderIdRequest = 0;
buildOrdersUpdateMerchantOrderIdRequest() {
  var o = new api.OrdersUpdateMerchantOrderIdRequest();
  buildCounterOrdersUpdateMerchantOrderIdRequest++;
  if (buildCounterOrdersUpdateMerchantOrderIdRequest < 3) {
    o.merchantOrderId = "foo";
    o.operationId = "foo";
  }
  buildCounterOrdersUpdateMerchantOrderIdRequest--;
  return o;
}

checkOrdersUpdateMerchantOrderIdRequest(
    api.OrdersUpdateMerchantOrderIdRequest o) {
  buildCounterOrdersUpdateMerchantOrderIdRequest++;
  if (buildCounterOrdersUpdateMerchantOrderIdRequest < 3) {
    unittest.expect(o.merchantOrderId, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateMerchantOrderIdRequest--;
}

core.int buildCounterOrdersUpdateMerchantOrderIdResponse = 0;
buildOrdersUpdateMerchantOrderIdResponse() {
  var o = new api.OrdersUpdateMerchantOrderIdResponse();
  buildCounterOrdersUpdateMerchantOrderIdResponse++;
  if (buildCounterOrdersUpdateMerchantOrderIdResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersUpdateMerchantOrderIdResponse--;
  return o;
}

checkOrdersUpdateMerchantOrderIdResponse(
    api.OrdersUpdateMerchantOrderIdResponse o) {
  buildCounterOrdersUpdateMerchantOrderIdResponse++;
  if (buildCounterOrdersUpdateMerchantOrderIdResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateMerchantOrderIdResponse--;
}

core.int buildCounterOrdersUpdateShipmentRequest = 0;
buildOrdersUpdateShipmentRequest() {
  var o = new api.OrdersUpdateShipmentRequest();
  buildCounterOrdersUpdateShipmentRequest++;
  if (buildCounterOrdersUpdateShipmentRequest < 3) {
    o.carrier = "foo";
    o.deliveryDate = "foo";
    o.operationId = "foo";
    o.shipmentId = "foo";
    o.status = "foo";
    o.trackingId = "foo";
  }
  buildCounterOrdersUpdateShipmentRequest--;
  return o;
}

checkOrdersUpdateShipmentRequest(api.OrdersUpdateShipmentRequest o) {
  buildCounterOrdersUpdateShipmentRequest++;
  if (buildCounterOrdersUpdateShipmentRequest < 3) {
    unittest.expect(o.carrier, unittest.equals('foo'));
    unittest.expect(o.deliveryDate, unittest.equals('foo'));
    unittest.expect(o.operationId, unittest.equals('foo'));
    unittest.expect(o.shipmentId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.trackingId, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateShipmentRequest--;
}

core.int buildCounterOrdersUpdateShipmentResponse = 0;
buildOrdersUpdateShipmentResponse() {
  var o = new api.OrdersUpdateShipmentResponse();
  buildCounterOrdersUpdateShipmentResponse++;
  if (buildCounterOrdersUpdateShipmentResponse < 3) {
    o.executionStatus = "foo";
    o.kind = "foo";
  }
  buildCounterOrdersUpdateShipmentResponse--;
  return o;
}

checkOrdersUpdateShipmentResponse(api.OrdersUpdateShipmentResponse o) {
  buildCounterOrdersUpdateShipmentResponse++;
  if (buildCounterOrdersUpdateShipmentResponse < 3) {
    unittest.expect(o.executionStatus, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterOrdersUpdateShipmentResponse--;
}

buildUnnamed3306() {
  var o = new core.List<api.PosCustomBatchRequestEntry>();
  o.add(buildPosCustomBatchRequestEntry());
  o.add(buildPosCustomBatchRequestEntry());
  return o;
}

checkUnnamed3306(core.List<api.PosCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosCustomBatchRequestEntry(o[0]);
  checkPosCustomBatchRequestEntry(o[1]);
}

core.int buildCounterPosCustomBatchRequest = 0;
buildPosCustomBatchRequest() {
  var o = new api.PosCustomBatchRequest();
  buildCounterPosCustomBatchRequest++;
  if (buildCounterPosCustomBatchRequest < 3) {
    o.entries = buildUnnamed3306();
  }
  buildCounterPosCustomBatchRequest--;
  return o;
}

checkPosCustomBatchRequest(api.PosCustomBatchRequest o) {
  buildCounterPosCustomBatchRequest++;
  if (buildCounterPosCustomBatchRequest < 3) {
    checkUnnamed3306(o.entries);
  }
  buildCounterPosCustomBatchRequest--;
}

core.int buildCounterPosCustomBatchRequestEntry = 0;
buildPosCustomBatchRequestEntry() {
  var o = new api.PosCustomBatchRequestEntry();
  buildCounterPosCustomBatchRequestEntry++;
  if (buildCounterPosCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.inventory = buildPosInventory();
    o.merchantId = "foo";
    o.method = "foo";
    o.sale = buildPosSale();
    o.store = buildPosStore();
    o.storeCode = "foo";
    o.targetMerchantId = "foo";
  }
  buildCounterPosCustomBatchRequestEntry--;
  return o;
}

checkPosCustomBatchRequestEntry(api.PosCustomBatchRequestEntry o) {
  buildCounterPosCustomBatchRequestEntry++;
  if (buildCounterPosCustomBatchRequestEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkPosInventory(o.inventory);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    checkPosSale(o.sale);
    checkPosStore(o.store);
    unittest.expect(o.storeCode, unittest.equals('foo'));
    unittest.expect(o.targetMerchantId, unittest.equals('foo'));
  }
  buildCounterPosCustomBatchRequestEntry--;
}

buildUnnamed3307() {
  var o = new core.List<api.PosCustomBatchResponseEntry>();
  o.add(buildPosCustomBatchResponseEntry());
  o.add(buildPosCustomBatchResponseEntry());
  return o;
}

checkUnnamed3307(core.List<api.PosCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosCustomBatchResponseEntry(o[0]);
  checkPosCustomBatchResponseEntry(o[1]);
}

core.int buildCounterPosCustomBatchResponse = 0;
buildPosCustomBatchResponse() {
  var o = new api.PosCustomBatchResponse();
  buildCounterPosCustomBatchResponse++;
  if (buildCounterPosCustomBatchResponse < 3) {
    o.entries = buildUnnamed3307();
    o.kind = "foo";
  }
  buildCounterPosCustomBatchResponse--;
  return o;
}

checkPosCustomBatchResponse(api.PosCustomBatchResponse o) {
  buildCounterPosCustomBatchResponse++;
  if (buildCounterPosCustomBatchResponse < 3) {
    checkUnnamed3307(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterPosCustomBatchResponse--;
}

core.int buildCounterPosCustomBatchResponseEntry = 0;
buildPosCustomBatchResponseEntry() {
  var o = new api.PosCustomBatchResponseEntry();
  buildCounterPosCustomBatchResponseEntry++;
  if (buildCounterPosCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.inventory = buildPosInventory();
    o.kind = "foo";
    o.sale = buildPosSale();
    o.store = buildPosStore();
  }
  buildCounterPosCustomBatchResponseEntry--;
  return o;
}

checkPosCustomBatchResponseEntry(api.PosCustomBatchResponseEntry o) {
  buildCounterPosCustomBatchResponseEntry++;
  if (buildCounterPosCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    checkPosInventory(o.inventory);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPosSale(o.sale);
    checkPosStore(o.store);
  }
  buildCounterPosCustomBatchResponseEntry--;
}

buildUnnamed3308() {
  var o = new core.List<api.PosDataProvidersPosDataProvider>();
  o.add(buildPosDataProvidersPosDataProvider());
  o.add(buildPosDataProvidersPosDataProvider());
  return o;
}

checkUnnamed3308(core.List<api.PosDataProvidersPosDataProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosDataProvidersPosDataProvider(o[0]);
  checkPosDataProvidersPosDataProvider(o[1]);
}

core.int buildCounterPosDataProviders = 0;
buildPosDataProviders() {
  var o = new api.PosDataProviders();
  buildCounterPosDataProviders++;
  if (buildCounterPosDataProviders < 3) {
    o.country = "foo";
    o.posDataProviders = buildUnnamed3308();
  }
  buildCounterPosDataProviders--;
  return o;
}

checkPosDataProviders(api.PosDataProviders o) {
  buildCounterPosDataProviders++;
  if (buildCounterPosDataProviders < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    checkUnnamed3308(o.posDataProviders);
  }
  buildCounterPosDataProviders--;
}

core.int buildCounterPosDataProvidersPosDataProvider = 0;
buildPosDataProvidersPosDataProvider() {
  var o = new api.PosDataProvidersPosDataProvider();
  buildCounterPosDataProvidersPosDataProvider++;
  if (buildCounterPosDataProvidersPosDataProvider < 3) {
    o.displayName = "foo";
    o.fullName = "foo";
    o.providerId = "foo";
  }
  buildCounterPosDataProvidersPosDataProvider--;
  return o;
}

checkPosDataProvidersPosDataProvider(api.PosDataProvidersPosDataProvider o) {
  buildCounterPosDataProvidersPosDataProvider++;
  if (buildCounterPosDataProvidersPosDataProvider < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.fullName, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
  }
  buildCounterPosDataProvidersPosDataProvider--;
}

core.int buildCounterPosInventory = 0;
buildPosInventory() {
  var o = new api.PosInventory();
  buildCounterPosInventory++;
  if (buildCounterPosInventory < 3) {
    o.contentLanguage = "foo";
    o.gtin = "foo";
    o.itemId = "foo";
    o.kind = "foo";
    o.price = buildPrice();
    o.quantity = "foo";
    o.storeCode = "foo";
    o.targetCountry = "foo";
    o.timestamp = "foo";
  }
  buildCounterPosInventory--;
  return o;
}

checkPosInventory(api.PosInventory o) {
  buildCounterPosInventory++;
  if (buildCounterPosInventory < 3) {
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.itemId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.quantity, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterPosInventory--;
}

core.int buildCounterPosInventoryRequest = 0;
buildPosInventoryRequest() {
  var o = new api.PosInventoryRequest();
  buildCounterPosInventoryRequest++;
  if (buildCounterPosInventoryRequest < 3) {
    o.contentLanguage = "foo";
    o.gtin = "foo";
    o.itemId = "foo";
    o.price = buildPrice();
    o.quantity = "foo";
    o.storeCode = "foo";
    o.targetCountry = "foo";
    o.timestamp = "foo";
  }
  buildCounterPosInventoryRequest--;
  return o;
}

checkPosInventoryRequest(api.PosInventoryRequest o) {
  buildCounterPosInventoryRequest++;
  if (buildCounterPosInventoryRequest < 3) {
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.itemId, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.quantity, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterPosInventoryRequest--;
}

core.int buildCounterPosInventoryResponse = 0;
buildPosInventoryResponse() {
  var o = new api.PosInventoryResponse();
  buildCounterPosInventoryResponse++;
  if (buildCounterPosInventoryResponse < 3) {
    o.contentLanguage = "foo";
    o.gtin = "foo";
    o.itemId = "foo";
    o.kind = "foo";
    o.price = buildPrice();
    o.quantity = "foo";
    o.storeCode = "foo";
    o.targetCountry = "foo";
    o.timestamp = "foo";
  }
  buildCounterPosInventoryResponse--;
  return o;
}

checkPosInventoryResponse(api.PosInventoryResponse o) {
  buildCounterPosInventoryResponse++;
  if (buildCounterPosInventoryResponse < 3) {
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.itemId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.quantity, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterPosInventoryResponse--;
}

buildUnnamed3309() {
  var o = new core.List<api.PosStore>();
  o.add(buildPosStore());
  o.add(buildPosStore());
  return o;
}

checkUnnamed3309(core.List<api.PosStore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosStore(o[0]);
  checkPosStore(o[1]);
}

core.int buildCounterPosListResponse = 0;
buildPosListResponse() {
  var o = new api.PosListResponse();
  buildCounterPosListResponse++;
  if (buildCounterPosListResponse < 3) {
    o.kind = "foo";
    o.resources = buildUnnamed3309();
  }
  buildCounterPosListResponse--;
  return o;
}

checkPosListResponse(api.PosListResponse o) {
  buildCounterPosListResponse++;
  if (buildCounterPosListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3309(o.resources);
  }
  buildCounterPosListResponse--;
}

core.int buildCounterPosSale = 0;
buildPosSale() {
  var o = new api.PosSale();
  buildCounterPosSale++;
  if (buildCounterPosSale < 3) {
    o.contentLanguage = "foo";
    o.gtin = "foo";
    o.itemId = "foo";
    o.kind = "foo";
    o.price = buildPrice();
    o.quantity = "foo";
    o.saleId = "foo";
    o.storeCode = "foo";
    o.targetCountry = "foo";
    o.timestamp = "foo";
  }
  buildCounterPosSale--;
  return o;
}

checkPosSale(api.PosSale o) {
  buildCounterPosSale++;
  if (buildCounterPosSale < 3) {
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.itemId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.quantity, unittest.equals('foo'));
    unittest.expect(o.saleId, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterPosSale--;
}

core.int buildCounterPosSaleRequest = 0;
buildPosSaleRequest() {
  var o = new api.PosSaleRequest();
  buildCounterPosSaleRequest++;
  if (buildCounterPosSaleRequest < 3) {
    o.contentLanguage = "foo";
    o.gtin = "foo";
    o.itemId = "foo";
    o.price = buildPrice();
    o.quantity = "foo";
    o.saleId = "foo";
    o.storeCode = "foo";
    o.targetCountry = "foo";
    o.timestamp = "foo";
  }
  buildCounterPosSaleRequest--;
  return o;
}

checkPosSaleRequest(api.PosSaleRequest o) {
  buildCounterPosSaleRequest++;
  if (buildCounterPosSaleRequest < 3) {
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.itemId, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.quantity, unittest.equals('foo'));
    unittest.expect(o.saleId, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterPosSaleRequest--;
}

core.int buildCounterPosSaleResponse = 0;
buildPosSaleResponse() {
  var o = new api.PosSaleResponse();
  buildCounterPosSaleResponse++;
  if (buildCounterPosSaleResponse < 3) {
    o.contentLanguage = "foo";
    o.gtin = "foo";
    o.itemId = "foo";
    o.kind = "foo";
    o.price = buildPrice();
    o.quantity = "foo";
    o.saleId = "foo";
    o.storeCode = "foo";
    o.targetCountry = "foo";
    o.timestamp = "foo";
  }
  buildCounterPosSaleResponse--;
  return o;
}

checkPosSaleResponse(api.PosSaleResponse o) {
  buildCounterPosSaleResponse++;
  if (buildCounterPosSaleResponse < 3) {
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.itemId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.quantity, unittest.equals('foo'));
    unittest.expect(o.saleId, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterPosSaleResponse--;
}

core.int buildCounterPosStore = 0;
buildPosStore() {
  var o = new api.PosStore();
  buildCounterPosStore++;
  if (buildCounterPosStore < 3) {
    o.kind = "foo";
    o.storeAddress = "foo";
    o.storeCode = "foo";
  }
  buildCounterPosStore--;
  return o;
}

checkPosStore(api.PosStore o) {
  buildCounterPosStore++;
  if (buildCounterPosStore < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.storeAddress, unittest.equals('foo'));
    unittest.expect(o.storeCode, unittest.equals('foo'));
  }
  buildCounterPosStore--;
}

buildUnnamed3310() {
  var o = new core.List<api.PostalCodeRange>();
  o.add(buildPostalCodeRange());
  o.add(buildPostalCodeRange());
  return o;
}

checkUnnamed3310(core.List<api.PostalCodeRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostalCodeRange(o[0]);
  checkPostalCodeRange(o[1]);
}

core.int buildCounterPostalCodeGroup = 0;
buildPostalCodeGroup() {
  var o = new api.PostalCodeGroup();
  buildCounterPostalCodeGroup++;
  if (buildCounterPostalCodeGroup < 3) {
    o.country = "foo";
    o.name = "foo";
    o.postalCodeRanges = buildUnnamed3310();
  }
  buildCounterPostalCodeGroup--;
  return o;
}

checkPostalCodeGroup(api.PostalCodeGroup o) {
  buildCounterPostalCodeGroup++;
  if (buildCounterPostalCodeGroup < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3310(o.postalCodeRanges);
  }
  buildCounterPostalCodeGroup--;
}

core.int buildCounterPostalCodeRange = 0;
buildPostalCodeRange() {
  var o = new api.PostalCodeRange();
  buildCounterPostalCodeRange++;
  if (buildCounterPostalCodeRange < 3) {
    o.postalCodeRangeBegin = "foo";
    o.postalCodeRangeEnd = "foo";
  }
  buildCounterPostalCodeRange--;
  return o;
}

checkPostalCodeRange(api.PostalCodeRange o) {
  buildCounterPostalCodeRange++;
  if (buildCounterPostalCodeRange < 3) {
    unittest.expect(o.postalCodeRangeBegin, unittest.equals('foo'));
    unittest.expect(o.postalCodeRangeEnd, unittest.equals('foo'));
  }
  buildCounterPostalCodeRange--;
}

core.int buildCounterPrice = 0;
buildPrice() {
  var o = new api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.currency = "foo";
    o.value = "foo";
  }
  buildCounterPrice--;
  return o;
}

checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterPrice--;
}

buildUnnamed3311() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3311(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3312() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3312(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3313() {
  var o = new core.List<api.CustomAttribute>();
  o.add(buildCustomAttribute());
  o.add(buildCustomAttribute());
  return o;
}

checkUnnamed3313(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

buildUnnamed3314() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3314(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3315() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3315(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3316() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3316(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3317() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3317(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3318() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3318(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3319() {
  var o = new core.List<api.ProductShipping>();
  o.add(buildProductShipping());
  o.add(buildProductShipping());
  return o;
}

checkUnnamed3319(core.List<api.ProductShipping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductShipping(o[0]);
  checkProductShipping(o[1]);
}

buildUnnamed3320() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3320(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3321() {
  var o = new core.List<api.ProductTax>();
  o.add(buildProductTax());
  o.add(buildProductTax());
  return o;
}

checkUnnamed3321(core.List<api.ProductTax> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductTax(o[0]);
  checkProductTax(o[1]);
}

core.int buildCounterProduct = 0;
buildProduct() {
  var o = new api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.additionalImageLinks = buildUnnamed3311();
    o.adsGrouping = "foo";
    o.adsLabels = buildUnnamed3312();
    o.adsRedirect = "foo";
    o.adult = true;
    o.ageGroup = "foo";
    o.availability = "foo";
    o.availabilityDate = "foo";
    o.brand = "foo";
    o.channel = "foo";
    o.color = "foo";
    o.condition = "foo";
    o.contentLanguage = "foo";
    o.costOfGoodsSold = buildPrice();
    o.customAttributes = buildUnnamed3313();
    o.customLabel0 = "foo";
    o.customLabel1 = "foo";
    o.customLabel2 = "foo";
    o.customLabel3 = "foo";
    o.customLabel4 = "foo";
    o.description = "foo";
    o.displayAdsId = "foo";
    o.displayAdsLink = "foo";
    o.displayAdsSimilarIds = buildUnnamed3314();
    o.displayAdsTitle = "foo";
    o.displayAdsValue = 42.0;
    o.energyEfficiencyClass = "foo";
    o.excludedDestinations = buildUnnamed3315();
    o.expirationDate = "foo";
    o.gender = "foo";
    o.googleProductCategory = "foo";
    o.gtin = "foo";
    o.id = "foo";
    o.identifierExists = true;
    o.imageLink = "foo";
    o.includedDestinations = buildUnnamed3316();
    o.installment = buildInstallment();
    o.isBundle = true;
    o.itemGroupId = "foo";
    o.kind = "foo";
    o.link = "foo";
    o.loyaltyPoints = buildLoyaltyPoints();
    o.material = "foo";
    o.maxEnergyEfficiencyClass = "foo";
    o.maxHandlingTime = "foo";
    o.minEnergyEfficiencyClass = "foo";
    o.minHandlingTime = "foo";
    o.mobileLink = "foo";
    o.mpn = "foo";
    o.multipack = "foo";
    o.offerId = "foo";
    o.pattern = "foo";
    o.price = buildPrice();
    o.productTypes = buildUnnamed3317();
    o.promotionIds = buildUnnamed3318();
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = "foo";
    o.sellOnGoogleQuantity = "foo";
    o.shipping = buildUnnamed3319();
    o.shippingHeight = buildProductShippingDimension();
    o.shippingLabel = "foo";
    o.shippingLength = buildProductShippingDimension();
    o.shippingWeight = buildProductShippingWeight();
    o.shippingWidth = buildProductShippingDimension();
    o.sizeSystem = "foo";
    o.sizeType = "foo";
    o.sizes = buildUnnamed3320();
    o.source = "foo";
    o.targetCountry = "foo";
    o.taxCategory = "foo";
    o.taxes = buildUnnamed3321();
    o.title = "foo";
    o.transitTimeLabel = "foo";
    o.unitPricingBaseMeasure = buildProductUnitPricingBaseMeasure();
    o.unitPricingMeasure = buildProductUnitPricingMeasure();
  }
  buildCounterProduct--;
  return o;
}

checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    checkUnnamed3311(o.additionalImageLinks);
    unittest.expect(o.adsGrouping, unittest.equals('foo'));
    checkUnnamed3312(o.adsLabels);
    unittest.expect(o.adsRedirect, unittest.equals('foo'));
    unittest.expect(o.adult, unittest.isTrue);
    unittest.expect(o.ageGroup, unittest.equals('foo'));
    unittest.expect(o.availability, unittest.equals('foo'));
    unittest.expect(o.availabilityDate, unittest.equals('foo'));
    unittest.expect(o.brand, unittest.equals('foo'));
    unittest.expect(o.channel, unittest.equals('foo'));
    unittest.expect(o.color, unittest.equals('foo'));
    unittest.expect(o.condition, unittest.equals('foo'));
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    checkPrice(o.costOfGoodsSold);
    checkUnnamed3313(o.customAttributes);
    unittest.expect(o.customLabel0, unittest.equals('foo'));
    unittest.expect(o.customLabel1, unittest.equals('foo'));
    unittest.expect(o.customLabel2, unittest.equals('foo'));
    unittest.expect(o.customLabel3, unittest.equals('foo'));
    unittest.expect(o.customLabel4, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayAdsId, unittest.equals('foo'));
    unittest.expect(o.displayAdsLink, unittest.equals('foo'));
    checkUnnamed3314(o.displayAdsSimilarIds);
    unittest.expect(o.displayAdsTitle, unittest.equals('foo'));
    unittest.expect(o.displayAdsValue, unittest.equals(42.0));
    unittest.expect(o.energyEfficiencyClass, unittest.equals('foo'));
    checkUnnamed3315(o.excludedDestinations);
    unittest.expect(o.expirationDate, unittest.equals('foo'));
    unittest.expect(o.gender, unittest.equals('foo'));
    unittest.expect(o.googleProductCategory, unittest.equals('foo'));
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.identifierExists, unittest.isTrue);
    unittest.expect(o.imageLink, unittest.equals('foo'));
    checkUnnamed3316(o.includedDestinations);
    checkInstallment(o.installment);
    unittest.expect(o.isBundle, unittest.isTrue);
    unittest.expect(o.itemGroupId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.link, unittest.equals('foo'));
    checkLoyaltyPoints(o.loyaltyPoints);
    unittest.expect(o.material, unittest.equals('foo'));
    unittest.expect(o.maxEnergyEfficiencyClass, unittest.equals('foo'));
    unittest.expect(o.maxHandlingTime, unittest.equals('foo'));
    unittest.expect(o.minEnergyEfficiencyClass, unittest.equals('foo'));
    unittest.expect(o.minHandlingTime, unittest.equals('foo'));
    unittest.expect(o.mobileLink, unittest.equals('foo'));
    unittest.expect(o.mpn, unittest.equals('foo'));
    unittest.expect(o.multipack, unittest.equals('foo'));
    unittest.expect(o.offerId, unittest.equals('foo'));
    unittest.expect(o.pattern, unittest.equals('foo'));
    checkPrice(o.price);
    checkUnnamed3317(o.productTypes);
    checkUnnamed3318(o.promotionIds);
    checkPrice(o.salePrice);
    unittest.expect(o.salePriceEffectiveDate, unittest.equals('foo'));
    unittest.expect(o.sellOnGoogleQuantity, unittest.equals('foo'));
    checkUnnamed3319(o.shipping);
    checkProductShippingDimension(o.shippingHeight);
    unittest.expect(o.shippingLabel, unittest.equals('foo'));
    checkProductShippingDimension(o.shippingLength);
    checkProductShippingWeight(o.shippingWeight);
    checkProductShippingDimension(o.shippingWidth);
    unittest.expect(o.sizeSystem, unittest.equals('foo'));
    unittest.expect(o.sizeType, unittest.equals('foo'));
    checkUnnamed3320(o.sizes);
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.taxCategory, unittest.equals('foo'));
    checkUnnamed3321(o.taxes);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.transitTimeLabel, unittest.equals('foo'));
    checkProductUnitPricingBaseMeasure(o.unitPricingBaseMeasure);
    checkProductUnitPricingMeasure(o.unitPricingMeasure);
  }
  buildCounterProduct--;
}

core.int buildCounterProductAmount = 0;
buildProductAmount() {
  var o = new api.ProductAmount();
  buildCounterProductAmount++;
  if (buildCounterProductAmount < 3) {
    o.priceAmount = buildPrice();
    o.remittedTaxAmount = buildPrice();
    o.taxAmount = buildPrice();
  }
  buildCounterProductAmount--;
  return o;
}

checkProductAmount(api.ProductAmount o) {
  buildCounterProductAmount++;
  if (buildCounterProductAmount < 3) {
    checkPrice(o.priceAmount);
    checkPrice(o.remittedTaxAmount);
    checkPrice(o.taxAmount);
  }
  buildCounterProductAmount--;
}

core.int buildCounterProductShipping = 0;
buildProductShipping() {
  var o = new api.ProductShipping();
  buildCounterProductShipping++;
  if (buildCounterProductShipping < 3) {
    o.country = "foo";
    o.locationGroupName = "foo";
    o.locationId = "foo";
    o.postalCode = "foo";
    o.price = buildPrice();
    o.region = "foo";
    o.service = "foo";
  }
  buildCounterProductShipping--;
  return o;
}

checkProductShipping(api.ProductShipping o) {
  buildCounterProductShipping++;
  if (buildCounterProductShipping < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.locationGroupName, unittest.equals('foo'));
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterProductShipping--;
}

core.int buildCounterProductShippingDimension = 0;
buildProductShippingDimension() {
  var o = new api.ProductShippingDimension();
  buildCounterProductShippingDimension++;
  if (buildCounterProductShippingDimension < 3) {
    o.unit = "foo";
    o.value = 42.0;
  }
  buildCounterProductShippingDimension--;
  return o;
}

checkProductShippingDimension(api.ProductShippingDimension o) {
  buildCounterProductShippingDimension++;
  if (buildCounterProductShippingDimension < 3) {
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterProductShippingDimension--;
}

core.int buildCounterProductShippingWeight = 0;
buildProductShippingWeight() {
  var o = new api.ProductShippingWeight();
  buildCounterProductShippingWeight++;
  if (buildCounterProductShippingWeight < 3) {
    o.unit = "foo";
    o.value = 42.0;
  }
  buildCounterProductShippingWeight--;
  return o;
}

checkProductShippingWeight(api.ProductShippingWeight o) {
  buildCounterProductShippingWeight++;
  if (buildCounterProductShippingWeight < 3) {
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterProductShippingWeight--;
}

buildUnnamed3322() {
  var o = new core.List<api.ProductStatusDestinationStatus>();
  o.add(buildProductStatusDestinationStatus());
  o.add(buildProductStatusDestinationStatus());
  return o;
}

checkUnnamed3322(core.List<api.ProductStatusDestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatusDestinationStatus(o[0]);
  checkProductStatusDestinationStatus(o[1]);
}

buildUnnamed3323() {
  var o = new core.List<api.ProductStatusItemLevelIssue>();
  o.add(buildProductStatusItemLevelIssue());
  o.add(buildProductStatusItemLevelIssue());
  return o;
}

checkUnnamed3323(core.List<api.ProductStatusItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatusItemLevelIssue(o[0]);
  checkProductStatusItemLevelIssue(o[1]);
}

core.int buildCounterProductStatus = 0;
buildProductStatus() {
  var o = new api.ProductStatus();
  buildCounterProductStatus++;
  if (buildCounterProductStatus < 3) {
    o.creationDate = "foo";
    o.destinationStatuses = buildUnnamed3322();
    o.googleExpirationDate = "foo";
    o.itemLevelIssues = buildUnnamed3323();
    o.kind = "foo";
    o.lastUpdateDate = "foo";
    o.link = "foo";
    o.productId = "foo";
    o.title = "foo";
  }
  buildCounterProductStatus--;
  return o;
}

checkProductStatus(api.ProductStatus o) {
  buildCounterProductStatus++;
  if (buildCounterProductStatus < 3) {
    unittest.expect(o.creationDate, unittest.equals('foo'));
    checkUnnamed3322(o.destinationStatuses);
    unittest.expect(o.googleExpirationDate, unittest.equals('foo'));
    checkUnnamed3323(o.itemLevelIssues);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastUpdateDate, unittest.equals('foo'));
    unittest.expect(o.link, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterProductStatus--;
}

core.int buildCounterProductStatusDestinationStatus = 0;
buildProductStatusDestinationStatus() {
  var o = new api.ProductStatusDestinationStatus();
  buildCounterProductStatusDestinationStatus++;
  if (buildCounterProductStatusDestinationStatus < 3) {
    o.destination = "foo";
    o.status = "foo";
  }
  buildCounterProductStatusDestinationStatus--;
  return o;
}

checkProductStatusDestinationStatus(api.ProductStatusDestinationStatus o) {
  buildCounterProductStatusDestinationStatus++;
  if (buildCounterProductStatusDestinationStatus < 3) {
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterProductStatusDestinationStatus--;
}

core.int buildCounterProductStatusItemLevelIssue = 0;
buildProductStatusItemLevelIssue() {
  var o = new api.ProductStatusItemLevelIssue();
  buildCounterProductStatusItemLevelIssue++;
  if (buildCounterProductStatusItemLevelIssue < 3) {
    o.attributeName = "foo";
    o.code = "foo";
    o.description = "foo";
    o.destination = "foo";
    o.detail = "foo";
    o.documentation = "foo";
    o.resolution = "foo";
    o.servability = "foo";
  }
  buildCounterProductStatusItemLevelIssue--;
  return o;
}

checkProductStatusItemLevelIssue(api.ProductStatusItemLevelIssue o) {
  buildCounterProductStatusItemLevelIssue++;
  if (buildCounterProductStatusItemLevelIssue < 3) {
    unittest.expect(o.attributeName, unittest.equals('foo'));
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.documentation, unittest.equals('foo'));
    unittest.expect(o.resolution, unittest.equals('foo'));
    unittest.expect(o.servability, unittest.equals('foo'));
  }
  buildCounterProductStatusItemLevelIssue--;
}

core.int buildCounterProductTax = 0;
buildProductTax() {
  var o = new api.ProductTax();
  buildCounterProductTax++;
  if (buildCounterProductTax < 3) {
    o.country = "foo";
    o.locationId = "foo";
    o.postalCode = "foo";
    o.rate = 42.0;
    o.region = "foo";
    o.taxShip = true;
  }
  buildCounterProductTax--;
  return o;
}

checkProductTax(api.ProductTax o) {
  buildCounterProductTax++;
  if (buildCounterProductTax < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.rate, unittest.equals(42.0));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.taxShip, unittest.isTrue);
  }
  buildCounterProductTax--;
}

core.int buildCounterProductUnitPricingBaseMeasure = 0;
buildProductUnitPricingBaseMeasure() {
  var o = new api.ProductUnitPricingBaseMeasure();
  buildCounterProductUnitPricingBaseMeasure++;
  if (buildCounterProductUnitPricingBaseMeasure < 3) {
    o.unit = "foo";
    o.value = "foo";
  }
  buildCounterProductUnitPricingBaseMeasure--;
  return o;
}

checkProductUnitPricingBaseMeasure(api.ProductUnitPricingBaseMeasure o) {
  buildCounterProductUnitPricingBaseMeasure++;
  if (buildCounterProductUnitPricingBaseMeasure < 3) {
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterProductUnitPricingBaseMeasure--;
}

core.int buildCounterProductUnitPricingMeasure = 0;
buildProductUnitPricingMeasure() {
  var o = new api.ProductUnitPricingMeasure();
  buildCounterProductUnitPricingMeasure++;
  if (buildCounterProductUnitPricingMeasure < 3) {
    o.unit = "foo";
    o.value = 42.0;
  }
  buildCounterProductUnitPricingMeasure--;
  return o;
}

checkProductUnitPricingMeasure(api.ProductUnitPricingMeasure o) {
  buildCounterProductUnitPricingMeasure++;
  if (buildCounterProductUnitPricingMeasure < 3) {
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterProductUnitPricingMeasure--;
}

buildUnnamed3324() {
  var o = new core.List<api.ProductsCustomBatchRequestEntry>();
  o.add(buildProductsCustomBatchRequestEntry());
  o.add(buildProductsCustomBatchRequestEntry());
  return o;
}

checkUnnamed3324(core.List<api.ProductsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductsCustomBatchRequestEntry(o[0]);
  checkProductsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterProductsCustomBatchRequest = 0;
buildProductsCustomBatchRequest() {
  var o = new api.ProductsCustomBatchRequest();
  buildCounterProductsCustomBatchRequest++;
  if (buildCounterProductsCustomBatchRequest < 3) {
    o.entries = buildUnnamed3324();
  }
  buildCounterProductsCustomBatchRequest--;
  return o;
}

checkProductsCustomBatchRequest(api.ProductsCustomBatchRequest o) {
  buildCounterProductsCustomBatchRequest++;
  if (buildCounterProductsCustomBatchRequest < 3) {
    checkUnnamed3324(o.entries);
  }
  buildCounterProductsCustomBatchRequest--;
}

core.int buildCounterProductsCustomBatchRequestEntry = 0;
buildProductsCustomBatchRequestEntry() {
  var o = new api.ProductsCustomBatchRequestEntry();
  buildCounterProductsCustomBatchRequestEntry++;
  if (buildCounterProductsCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.feedId = "foo";
    o.merchantId = "foo";
    o.method = "foo";
    o.product = buildProduct();
    o.productId = "foo";
  }
  buildCounterProductsCustomBatchRequestEntry--;
  return o;
}

checkProductsCustomBatchRequestEntry(api.ProductsCustomBatchRequestEntry o) {
  buildCounterProductsCustomBatchRequestEntry++;
  if (buildCounterProductsCustomBatchRequestEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.feedId, unittest.equals('foo'));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    checkProduct(o.product);
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterProductsCustomBatchRequestEntry--;
}

buildUnnamed3325() {
  var o = new core.List<api.ProductsCustomBatchResponseEntry>();
  o.add(buildProductsCustomBatchResponseEntry());
  o.add(buildProductsCustomBatchResponseEntry());
  return o;
}

checkUnnamed3325(core.List<api.ProductsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductsCustomBatchResponseEntry(o[0]);
  checkProductsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterProductsCustomBatchResponse = 0;
buildProductsCustomBatchResponse() {
  var o = new api.ProductsCustomBatchResponse();
  buildCounterProductsCustomBatchResponse++;
  if (buildCounterProductsCustomBatchResponse < 3) {
    o.entries = buildUnnamed3325();
    o.kind = "foo";
  }
  buildCounterProductsCustomBatchResponse--;
  return o;
}

checkProductsCustomBatchResponse(api.ProductsCustomBatchResponse o) {
  buildCounterProductsCustomBatchResponse++;
  if (buildCounterProductsCustomBatchResponse < 3) {
    checkUnnamed3325(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterProductsCustomBatchResponse--;
}

core.int buildCounterProductsCustomBatchResponseEntry = 0;
buildProductsCustomBatchResponseEntry() {
  var o = new api.ProductsCustomBatchResponseEntry();
  buildCounterProductsCustomBatchResponseEntry++;
  if (buildCounterProductsCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = "foo";
    o.product = buildProduct();
  }
  buildCounterProductsCustomBatchResponseEntry--;
  return o;
}

checkProductsCustomBatchResponseEntry(api.ProductsCustomBatchResponseEntry o) {
  buildCounterProductsCustomBatchResponseEntry++;
  if (buildCounterProductsCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkProduct(o.product);
  }
  buildCounterProductsCustomBatchResponseEntry--;
}

buildUnnamed3326() {
  var o = new core.List<api.Product>();
  o.add(buildProduct());
  o.add(buildProduct());
  return o;
}

checkUnnamed3326(core.List<api.Product> o) {
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
    o.nextPageToken = "foo";
    o.resources = buildUnnamed3326();
  }
  buildCounterProductsListResponse--;
  return o;
}

checkProductsListResponse(api.ProductsListResponse o) {
  buildCounterProductsListResponse++;
  if (buildCounterProductsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3326(o.resources);
  }
  buildCounterProductsListResponse--;
}

buildUnnamed3327() {
  var o = new core.List<api.ProductstatusesCustomBatchRequestEntry>();
  o.add(buildProductstatusesCustomBatchRequestEntry());
  o.add(buildProductstatusesCustomBatchRequestEntry());
  return o;
}

checkUnnamed3327(core.List<api.ProductstatusesCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductstatusesCustomBatchRequestEntry(o[0]);
  checkProductstatusesCustomBatchRequestEntry(o[1]);
}

core.int buildCounterProductstatusesCustomBatchRequest = 0;
buildProductstatusesCustomBatchRequest() {
  var o = new api.ProductstatusesCustomBatchRequest();
  buildCounterProductstatusesCustomBatchRequest++;
  if (buildCounterProductstatusesCustomBatchRequest < 3) {
    o.entries = buildUnnamed3327();
  }
  buildCounterProductstatusesCustomBatchRequest--;
  return o;
}

checkProductstatusesCustomBatchRequest(
    api.ProductstatusesCustomBatchRequest o) {
  buildCounterProductstatusesCustomBatchRequest++;
  if (buildCounterProductstatusesCustomBatchRequest < 3) {
    checkUnnamed3327(o.entries);
  }
  buildCounterProductstatusesCustomBatchRequest--;
}

buildUnnamed3328() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3328(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProductstatusesCustomBatchRequestEntry = 0;
buildProductstatusesCustomBatchRequestEntry() {
  var o = new api.ProductstatusesCustomBatchRequestEntry();
  buildCounterProductstatusesCustomBatchRequestEntry++;
  if (buildCounterProductstatusesCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.destinations = buildUnnamed3328();
    o.includeAttributes = true;
    o.merchantId = "foo";
    o.method = "foo";
    o.productId = "foo";
  }
  buildCounterProductstatusesCustomBatchRequestEntry--;
  return o;
}

checkProductstatusesCustomBatchRequestEntry(
    api.ProductstatusesCustomBatchRequestEntry o) {
  buildCounterProductstatusesCustomBatchRequestEntry++;
  if (buildCounterProductstatusesCustomBatchRequestEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkUnnamed3328(o.destinations);
    unittest.expect(o.includeAttributes, unittest.isTrue);
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
  }
  buildCounterProductstatusesCustomBatchRequestEntry--;
}

buildUnnamed3329() {
  var o = new core.List<api.ProductstatusesCustomBatchResponseEntry>();
  o.add(buildProductstatusesCustomBatchResponseEntry());
  o.add(buildProductstatusesCustomBatchResponseEntry());
  return o;
}

checkUnnamed3329(core.List<api.ProductstatusesCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductstatusesCustomBatchResponseEntry(o[0]);
  checkProductstatusesCustomBatchResponseEntry(o[1]);
}

core.int buildCounterProductstatusesCustomBatchResponse = 0;
buildProductstatusesCustomBatchResponse() {
  var o = new api.ProductstatusesCustomBatchResponse();
  buildCounterProductstatusesCustomBatchResponse++;
  if (buildCounterProductstatusesCustomBatchResponse < 3) {
    o.entries = buildUnnamed3329();
    o.kind = "foo";
  }
  buildCounterProductstatusesCustomBatchResponse--;
  return o;
}

checkProductstatusesCustomBatchResponse(
    api.ProductstatusesCustomBatchResponse o) {
  buildCounterProductstatusesCustomBatchResponse++;
  if (buildCounterProductstatusesCustomBatchResponse < 3) {
    checkUnnamed3329(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterProductstatusesCustomBatchResponse--;
}

core.int buildCounterProductstatusesCustomBatchResponseEntry = 0;
buildProductstatusesCustomBatchResponseEntry() {
  var o = new api.ProductstatusesCustomBatchResponseEntry();
  buildCounterProductstatusesCustomBatchResponseEntry++;
  if (buildCounterProductstatusesCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = "foo";
    o.productStatus = buildProductStatus();
  }
  buildCounterProductstatusesCustomBatchResponseEntry--;
  return o;
}

checkProductstatusesCustomBatchResponseEntry(
    api.ProductstatusesCustomBatchResponseEntry o) {
  buildCounterProductstatusesCustomBatchResponseEntry++;
  if (buildCounterProductstatusesCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkProductStatus(o.productStatus);
  }
  buildCounterProductstatusesCustomBatchResponseEntry--;
}

buildUnnamed3330() {
  var o = new core.List<api.ProductStatus>();
  o.add(buildProductStatus());
  o.add(buildProductStatus());
  return o;
}

checkUnnamed3330(core.List<api.ProductStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductStatus(o[0]);
  checkProductStatus(o[1]);
}

core.int buildCounterProductstatusesListResponse = 0;
buildProductstatusesListResponse() {
  var o = new api.ProductstatusesListResponse();
  buildCounterProductstatusesListResponse++;
  if (buildCounterProductstatusesListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed3330();
  }
  buildCounterProductstatusesListResponse--;
  return o;
}

checkProductstatusesListResponse(api.ProductstatusesListResponse o) {
  buildCounterProductstatusesListResponse++;
  if (buildCounterProductstatusesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3330(o.resources);
  }
  buildCounterProductstatusesListResponse--;
}

buildUnnamed3331() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3331(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3332() {
  var o = new core.List<api.CarrierRate>();
  o.add(buildCarrierRate());
  o.add(buildCarrierRate());
  return o;
}

checkUnnamed3332(core.List<api.CarrierRate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCarrierRate(o[0]);
  checkCarrierRate(o[1]);
}

buildUnnamed3333() {
  var o = new core.List<api.Table>();
  o.add(buildTable());
  o.add(buildTable());
  return o;
}

checkUnnamed3333(core.List<api.Table> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTable(o[0]);
  checkTable(o[1]);
}

core.int buildCounterRateGroup = 0;
buildRateGroup() {
  var o = new api.RateGroup();
  buildCounterRateGroup++;
  if (buildCounterRateGroup < 3) {
    o.applicableShippingLabels = buildUnnamed3331();
    o.carrierRates = buildUnnamed3332();
    o.mainTable = buildTable();
    o.name = "foo";
    o.singleValue = buildValue();
    o.subtables = buildUnnamed3333();
  }
  buildCounterRateGroup--;
  return o;
}

checkRateGroup(api.RateGroup o) {
  buildCounterRateGroup++;
  if (buildCounterRateGroup < 3) {
    checkUnnamed3331(o.applicableShippingLabels);
    checkUnnamed3332(o.carrierRates);
    checkTable(o.mainTable);
    unittest.expect(o.name, unittest.equals('foo'));
    checkValue(o.singleValue);
    checkUnnamed3333(o.subtables);
  }
  buildCounterRateGroup--;
}

core.int buildCounterRefundReason = 0;
buildRefundReason() {
  var o = new api.RefundReason();
  buildCounterRefundReason++;
  if (buildCounterRefundReason < 3) {
    o.description = "foo";
    o.reasonCode = "foo";
  }
  buildCounterRefundReason--;
  return o;
}

checkRefundReason(api.RefundReason o) {
  buildCounterRefundReason++;
  if (buildCounterRefundReason < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.reasonCode, unittest.equals('foo'));
  }
  buildCounterRefundReason--;
}

buildUnnamed3334() {
  var o = new core.List<api.CustomAttribute>();
  o.add(buildCustomAttribute());
  o.add(buildCustomAttribute());
  return o;
}

checkUnnamed3334(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterRegionalInventory = 0;
buildRegionalInventory() {
  var o = new api.RegionalInventory();
  buildCounterRegionalInventory++;
  if (buildCounterRegionalInventory < 3) {
    o.availability = "foo";
    o.customAttributes = buildUnnamed3334();
    o.kind = "foo";
    o.price = buildPrice();
    o.regionId = "foo";
    o.salePrice = buildPrice();
    o.salePriceEffectiveDate = "foo";
  }
  buildCounterRegionalInventory--;
  return o;
}

checkRegionalInventory(api.RegionalInventory o) {
  buildCounterRegionalInventory++;
  if (buildCounterRegionalInventory < 3) {
    unittest.expect(o.availability, unittest.equals('foo'));
    checkUnnamed3334(o.customAttributes);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.regionId, unittest.equals('foo'));
    checkPrice(o.salePrice);
    unittest.expect(o.salePriceEffectiveDate, unittest.equals('foo'));
  }
  buildCounterRegionalInventory--;
}

buildUnnamed3335() {
  var o = new core.List<api.RegionalinventoryCustomBatchRequestEntry>();
  o.add(buildRegionalinventoryCustomBatchRequestEntry());
  o.add(buildRegionalinventoryCustomBatchRequestEntry());
  return o;
}

checkUnnamed3335(core.List<api.RegionalinventoryCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionalinventoryCustomBatchRequestEntry(o[0]);
  checkRegionalinventoryCustomBatchRequestEntry(o[1]);
}

core.int buildCounterRegionalinventoryCustomBatchRequest = 0;
buildRegionalinventoryCustomBatchRequest() {
  var o = new api.RegionalinventoryCustomBatchRequest();
  buildCounterRegionalinventoryCustomBatchRequest++;
  if (buildCounterRegionalinventoryCustomBatchRequest < 3) {
    o.entries = buildUnnamed3335();
  }
  buildCounterRegionalinventoryCustomBatchRequest--;
  return o;
}

checkRegionalinventoryCustomBatchRequest(
    api.RegionalinventoryCustomBatchRequest o) {
  buildCounterRegionalinventoryCustomBatchRequest++;
  if (buildCounterRegionalinventoryCustomBatchRequest < 3) {
    checkUnnamed3335(o.entries);
  }
  buildCounterRegionalinventoryCustomBatchRequest--;
}

core.int buildCounterRegionalinventoryCustomBatchRequestEntry = 0;
buildRegionalinventoryCustomBatchRequestEntry() {
  var o = new api.RegionalinventoryCustomBatchRequestEntry();
  buildCounterRegionalinventoryCustomBatchRequestEntry++;
  if (buildCounterRegionalinventoryCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.merchantId = "foo";
    o.method = "foo";
    o.productId = "foo";
    o.regionalInventory = buildRegionalInventory();
  }
  buildCounterRegionalinventoryCustomBatchRequestEntry--;
  return o;
}

checkRegionalinventoryCustomBatchRequestEntry(
    api.RegionalinventoryCustomBatchRequestEntry o) {
  buildCounterRegionalinventoryCustomBatchRequestEntry++;
  if (buildCounterRegionalinventoryCustomBatchRequestEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    checkRegionalInventory(o.regionalInventory);
  }
  buildCounterRegionalinventoryCustomBatchRequestEntry--;
}

buildUnnamed3336() {
  var o = new core.List<api.RegionalinventoryCustomBatchResponseEntry>();
  o.add(buildRegionalinventoryCustomBatchResponseEntry());
  o.add(buildRegionalinventoryCustomBatchResponseEntry());
  return o;
}

checkUnnamed3336(core.List<api.RegionalinventoryCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionalinventoryCustomBatchResponseEntry(o[0]);
  checkRegionalinventoryCustomBatchResponseEntry(o[1]);
}

core.int buildCounterRegionalinventoryCustomBatchResponse = 0;
buildRegionalinventoryCustomBatchResponse() {
  var o = new api.RegionalinventoryCustomBatchResponse();
  buildCounterRegionalinventoryCustomBatchResponse++;
  if (buildCounterRegionalinventoryCustomBatchResponse < 3) {
    o.entries = buildUnnamed3336();
    o.kind = "foo";
  }
  buildCounterRegionalinventoryCustomBatchResponse--;
  return o;
}

checkRegionalinventoryCustomBatchResponse(
    api.RegionalinventoryCustomBatchResponse o) {
  buildCounterRegionalinventoryCustomBatchResponse++;
  if (buildCounterRegionalinventoryCustomBatchResponse < 3) {
    checkUnnamed3336(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterRegionalinventoryCustomBatchResponse--;
}

core.int buildCounterRegionalinventoryCustomBatchResponseEntry = 0;
buildRegionalinventoryCustomBatchResponseEntry() {
  var o = new api.RegionalinventoryCustomBatchResponseEntry();
  buildCounterRegionalinventoryCustomBatchResponseEntry++;
  if (buildCounterRegionalinventoryCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = "foo";
    o.regionalInventory = buildRegionalInventory();
  }
  buildCounterRegionalinventoryCustomBatchResponseEntry--;
  return o;
}

checkRegionalinventoryCustomBatchResponseEntry(
    api.RegionalinventoryCustomBatchResponseEntry o) {
  buildCounterRegionalinventoryCustomBatchResponseEntry++;
  if (buildCounterRegionalinventoryCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkRegionalInventory(o.regionalInventory);
  }
  buildCounterRegionalinventoryCustomBatchResponseEntry--;
}

core.int buildCounterReturnAddress = 0;
buildReturnAddress() {
  var o = new api.ReturnAddress();
  buildCounterReturnAddress++;
  if (buildCounterReturnAddress < 3) {
    o.address = buildReturnAddressAddress();
    o.country = "foo";
    o.kind = "foo";
    o.label = "foo";
    o.phoneNumber = "foo";
    o.returnAddressId = "foo";
  }
  buildCounterReturnAddress--;
  return o;
}

checkReturnAddress(api.ReturnAddress o) {
  buildCounterReturnAddress++;
  if (buildCounterReturnAddress < 3) {
    checkReturnAddressAddress(o.address);
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.returnAddressId, unittest.equals('foo'));
  }
  buildCounterReturnAddress--;
}

buildUnnamed3337() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3337(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReturnAddressAddress = 0;
buildReturnAddressAddress() {
  var o = new api.ReturnAddressAddress();
  buildCounterReturnAddressAddress++;
  if (buildCounterReturnAddressAddress < 3) {
    o.country = "foo";
    o.locality = "foo";
    o.postalCode = "foo";
    o.recipientName = "foo";
    o.region = "foo";
    o.streetAddress = buildUnnamed3337();
  }
  buildCounterReturnAddressAddress--;
  return o;
}

checkReturnAddressAddress(api.ReturnAddressAddress o) {
  buildCounterReturnAddressAddress++;
  if (buildCounterReturnAddressAddress < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.recipientName, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    checkUnnamed3337(o.streetAddress);
  }
  buildCounterReturnAddressAddress--;
}

buildUnnamed3338() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3338(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3339() {
  var o = new core.List<api.ReturnPolicySeasonalOverride>();
  o.add(buildReturnPolicySeasonalOverride());
  o.add(buildReturnPolicySeasonalOverride());
  return o;
}

checkUnnamed3339(core.List<api.ReturnPolicySeasonalOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnPolicySeasonalOverride(o[0]);
  checkReturnPolicySeasonalOverride(o[1]);
}

core.int buildCounterReturnPolicy = 0;
buildReturnPolicy() {
  var o = new api.ReturnPolicy();
  buildCounterReturnPolicy++;
  if (buildCounterReturnPolicy < 3) {
    o.country = "foo";
    o.kind = "foo";
    o.label = "foo";
    o.name = "foo";
    o.nonFreeReturnReasons = buildUnnamed3338();
    o.policy = buildReturnPolicyPolicy();
    o.returnPolicyId = "foo";
    o.seasonalOverrides = buildUnnamed3339();
  }
  buildCounterReturnPolicy--;
  return o;
}

checkReturnPolicy(api.ReturnPolicy o) {
  buildCounterReturnPolicy++;
  if (buildCounterReturnPolicy < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3338(o.nonFreeReturnReasons);
    checkReturnPolicyPolicy(o.policy);
    unittest.expect(o.returnPolicyId, unittest.equals('foo'));
    checkUnnamed3339(o.seasonalOverrides);
  }
  buildCounterReturnPolicy--;
}

core.int buildCounterReturnPolicyPolicy = 0;
buildReturnPolicyPolicy() {
  var o = new api.ReturnPolicyPolicy();
  buildCounterReturnPolicyPolicy++;
  if (buildCounterReturnPolicyPolicy < 3) {
    o.lastReturnDate = "foo";
    o.numberOfDays = "foo";
    o.type = "foo";
  }
  buildCounterReturnPolicyPolicy--;
  return o;
}

checkReturnPolicyPolicy(api.ReturnPolicyPolicy o) {
  buildCounterReturnPolicyPolicy++;
  if (buildCounterReturnPolicyPolicy < 3) {
    unittest.expect(o.lastReturnDate, unittest.equals('foo'));
    unittest.expect(o.numberOfDays, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterReturnPolicyPolicy--;
}

core.int buildCounterReturnPolicySeasonalOverride = 0;
buildReturnPolicySeasonalOverride() {
  var o = new api.ReturnPolicySeasonalOverride();
  buildCounterReturnPolicySeasonalOverride++;
  if (buildCounterReturnPolicySeasonalOverride < 3) {
    o.endDate = "foo";
    o.name = "foo";
    o.policy = buildReturnPolicyPolicy();
    o.startDate = "foo";
  }
  buildCounterReturnPolicySeasonalOverride--;
  return o;
}

checkReturnPolicySeasonalOverride(api.ReturnPolicySeasonalOverride o) {
  buildCounterReturnPolicySeasonalOverride++;
  if (buildCounterReturnPolicySeasonalOverride < 3) {
    unittest.expect(o.endDate, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkReturnPolicyPolicy(o.policy);
    unittest.expect(o.startDate, unittest.equals('foo'));
  }
  buildCounterReturnPolicySeasonalOverride--;
}

buildUnnamed3340() {
  var o = new core.List<api.ShipmentTrackingInfo>();
  o.add(buildShipmentTrackingInfo());
  o.add(buildShipmentTrackingInfo());
  return o;
}

checkUnnamed3340(core.List<api.ShipmentTrackingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentTrackingInfo(o[0]);
  checkShipmentTrackingInfo(o[1]);
}

core.int buildCounterReturnShipment = 0;
buildReturnShipment() {
  var o = new api.ReturnShipment();
  buildCounterReturnShipment++;
  if (buildCounterReturnShipment < 3) {
    o.creationDate = "foo";
    o.deliveryDate = "foo";
    o.returnMethodType = "foo";
    o.shipmentId = "foo";
    o.shipmentTrackingInfos = buildUnnamed3340();
    o.shippingDate = "foo";
    o.state = "foo";
  }
  buildCounterReturnShipment--;
  return o;
}

checkReturnShipment(api.ReturnShipment o) {
  buildCounterReturnShipment++;
  if (buildCounterReturnShipment < 3) {
    unittest.expect(o.creationDate, unittest.equals('foo'));
    unittest.expect(o.deliveryDate, unittest.equals('foo'));
    unittest.expect(o.returnMethodType, unittest.equals('foo'));
    unittest.expect(o.shipmentId, unittest.equals('foo'));
    checkUnnamed3340(o.shipmentTrackingInfos);
    unittest.expect(o.shippingDate, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterReturnShipment--;
}

buildUnnamed3341() {
  var o = new core.List<api.ReturnaddressCustomBatchRequestEntry>();
  o.add(buildReturnaddressCustomBatchRequestEntry());
  o.add(buildReturnaddressCustomBatchRequestEntry());
  return o;
}

checkUnnamed3341(core.List<api.ReturnaddressCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnaddressCustomBatchRequestEntry(o[0]);
  checkReturnaddressCustomBatchRequestEntry(o[1]);
}

core.int buildCounterReturnaddressCustomBatchRequest = 0;
buildReturnaddressCustomBatchRequest() {
  var o = new api.ReturnaddressCustomBatchRequest();
  buildCounterReturnaddressCustomBatchRequest++;
  if (buildCounterReturnaddressCustomBatchRequest < 3) {
    o.entries = buildUnnamed3341();
  }
  buildCounterReturnaddressCustomBatchRequest--;
  return o;
}

checkReturnaddressCustomBatchRequest(api.ReturnaddressCustomBatchRequest o) {
  buildCounterReturnaddressCustomBatchRequest++;
  if (buildCounterReturnaddressCustomBatchRequest < 3) {
    checkUnnamed3341(o.entries);
  }
  buildCounterReturnaddressCustomBatchRequest--;
}

core.int buildCounterReturnaddressCustomBatchRequestEntry = 0;
buildReturnaddressCustomBatchRequestEntry() {
  var o = new api.ReturnaddressCustomBatchRequestEntry();
  buildCounterReturnaddressCustomBatchRequestEntry++;
  if (buildCounterReturnaddressCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.merchantId = "foo";
    o.method = "foo";
    o.returnAddress = buildReturnAddress();
    o.returnAddressId = "foo";
  }
  buildCounterReturnaddressCustomBatchRequestEntry--;
  return o;
}

checkReturnaddressCustomBatchRequestEntry(
    api.ReturnaddressCustomBatchRequestEntry o) {
  buildCounterReturnaddressCustomBatchRequestEntry++;
  if (buildCounterReturnaddressCustomBatchRequestEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    checkReturnAddress(o.returnAddress);
    unittest.expect(o.returnAddressId, unittest.equals('foo'));
  }
  buildCounterReturnaddressCustomBatchRequestEntry--;
}

buildUnnamed3342() {
  var o = new core.List<api.ReturnaddressCustomBatchResponseEntry>();
  o.add(buildReturnaddressCustomBatchResponseEntry());
  o.add(buildReturnaddressCustomBatchResponseEntry());
  return o;
}

checkUnnamed3342(core.List<api.ReturnaddressCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnaddressCustomBatchResponseEntry(o[0]);
  checkReturnaddressCustomBatchResponseEntry(o[1]);
}

core.int buildCounterReturnaddressCustomBatchResponse = 0;
buildReturnaddressCustomBatchResponse() {
  var o = new api.ReturnaddressCustomBatchResponse();
  buildCounterReturnaddressCustomBatchResponse++;
  if (buildCounterReturnaddressCustomBatchResponse < 3) {
    o.entries = buildUnnamed3342();
    o.kind = "foo";
  }
  buildCounterReturnaddressCustomBatchResponse--;
  return o;
}

checkReturnaddressCustomBatchResponse(api.ReturnaddressCustomBatchResponse o) {
  buildCounterReturnaddressCustomBatchResponse++;
  if (buildCounterReturnaddressCustomBatchResponse < 3) {
    checkUnnamed3342(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterReturnaddressCustomBatchResponse--;
}

core.int buildCounterReturnaddressCustomBatchResponseEntry = 0;
buildReturnaddressCustomBatchResponseEntry() {
  var o = new api.ReturnaddressCustomBatchResponseEntry();
  buildCounterReturnaddressCustomBatchResponseEntry++;
  if (buildCounterReturnaddressCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = "foo";
    o.returnAddress = buildReturnAddress();
  }
  buildCounterReturnaddressCustomBatchResponseEntry--;
  return o;
}

checkReturnaddressCustomBatchResponseEntry(
    api.ReturnaddressCustomBatchResponseEntry o) {
  buildCounterReturnaddressCustomBatchResponseEntry++;
  if (buildCounterReturnaddressCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkReturnAddress(o.returnAddress);
  }
  buildCounterReturnaddressCustomBatchResponseEntry--;
}

buildUnnamed3343() {
  var o = new core.List<api.ReturnAddress>();
  o.add(buildReturnAddress());
  o.add(buildReturnAddress());
  return o;
}

checkUnnamed3343(core.List<api.ReturnAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnAddress(o[0]);
  checkReturnAddress(o[1]);
}

core.int buildCounterReturnaddressListResponse = 0;
buildReturnaddressListResponse() {
  var o = new api.ReturnaddressListResponse();
  buildCounterReturnaddressListResponse++;
  if (buildCounterReturnaddressListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed3343();
  }
  buildCounterReturnaddressListResponse--;
  return o;
}

checkReturnaddressListResponse(api.ReturnaddressListResponse o) {
  buildCounterReturnaddressListResponse++;
  if (buildCounterReturnaddressListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3343(o.resources);
  }
  buildCounterReturnaddressListResponse--;
}

buildUnnamed3344() {
  var o = new core.List<api.ReturnpolicyCustomBatchRequestEntry>();
  o.add(buildReturnpolicyCustomBatchRequestEntry());
  o.add(buildReturnpolicyCustomBatchRequestEntry());
  return o;
}

checkUnnamed3344(core.List<api.ReturnpolicyCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnpolicyCustomBatchRequestEntry(o[0]);
  checkReturnpolicyCustomBatchRequestEntry(o[1]);
}

core.int buildCounterReturnpolicyCustomBatchRequest = 0;
buildReturnpolicyCustomBatchRequest() {
  var o = new api.ReturnpolicyCustomBatchRequest();
  buildCounterReturnpolicyCustomBatchRequest++;
  if (buildCounterReturnpolicyCustomBatchRequest < 3) {
    o.entries = buildUnnamed3344();
  }
  buildCounterReturnpolicyCustomBatchRequest--;
  return o;
}

checkReturnpolicyCustomBatchRequest(api.ReturnpolicyCustomBatchRequest o) {
  buildCounterReturnpolicyCustomBatchRequest++;
  if (buildCounterReturnpolicyCustomBatchRequest < 3) {
    checkUnnamed3344(o.entries);
  }
  buildCounterReturnpolicyCustomBatchRequest--;
}

core.int buildCounterReturnpolicyCustomBatchRequestEntry = 0;
buildReturnpolicyCustomBatchRequestEntry() {
  var o = new api.ReturnpolicyCustomBatchRequestEntry();
  buildCounterReturnpolicyCustomBatchRequestEntry++;
  if (buildCounterReturnpolicyCustomBatchRequestEntry < 3) {
    o.batchId = 42;
    o.merchantId = "foo";
    o.method = "foo";
    o.returnPolicy = buildReturnPolicy();
    o.returnPolicyId = "foo";
  }
  buildCounterReturnpolicyCustomBatchRequestEntry--;
  return o;
}

checkReturnpolicyCustomBatchRequestEntry(
    api.ReturnpolicyCustomBatchRequestEntry o) {
  buildCounterReturnpolicyCustomBatchRequestEntry++;
  if (buildCounterReturnpolicyCustomBatchRequestEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    checkReturnPolicy(o.returnPolicy);
    unittest.expect(o.returnPolicyId, unittest.equals('foo'));
  }
  buildCounterReturnpolicyCustomBatchRequestEntry--;
}

buildUnnamed3345() {
  var o = new core.List<api.ReturnpolicyCustomBatchResponseEntry>();
  o.add(buildReturnpolicyCustomBatchResponseEntry());
  o.add(buildReturnpolicyCustomBatchResponseEntry());
  return o;
}

checkUnnamed3345(core.List<api.ReturnpolicyCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnpolicyCustomBatchResponseEntry(o[0]);
  checkReturnpolicyCustomBatchResponseEntry(o[1]);
}

core.int buildCounterReturnpolicyCustomBatchResponse = 0;
buildReturnpolicyCustomBatchResponse() {
  var o = new api.ReturnpolicyCustomBatchResponse();
  buildCounterReturnpolicyCustomBatchResponse++;
  if (buildCounterReturnpolicyCustomBatchResponse < 3) {
    o.entries = buildUnnamed3345();
    o.kind = "foo";
  }
  buildCounterReturnpolicyCustomBatchResponse--;
  return o;
}

checkReturnpolicyCustomBatchResponse(api.ReturnpolicyCustomBatchResponse o) {
  buildCounterReturnpolicyCustomBatchResponse++;
  if (buildCounterReturnpolicyCustomBatchResponse < 3) {
    checkUnnamed3345(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterReturnpolicyCustomBatchResponse--;
}

core.int buildCounterReturnpolicyCustomBatchResponseEntry = 0;
buildReturnpolicyCustomBatchResponseEntry() {
  var o = new api.ReturnpolicyCustomBatchResponseEntry();
  buildCounterReturnpolicyCustomBatchResponseEntry++;
  if (buildCounterReturnpolicyCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = "foo";
    o.returnPolicy = buildReturnPolicy();
  }
  buildCounterReturnpolicyCustomBatchResponseEntry--;
  return o;
}

checkReturnpolicyCustomBatchResponseEntry(
    api.ReturnpolicyCustomBatchResponseEntry o) {
  buildCounterReturnpolicyCustomBatchResponseEntry++;
  if (buildCounterReturnpolicyCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkReturnPolicy(o.returnPolicy);
  }
  buildCounterReturnpolicyCustomBatchResponseEntry--;
}

buildUnnamed3346() {
  var o = new core.List<api.ReturnPolicy>();
  o.add(buildReturnPolicy());
  o.add(buildReturnPolicy());
  return o;
}

checkUnnamed3346(core.List<api.ReturnPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReturnPolicy(o[0]);
  checkReturnPolicy(o[1]);
}

core.int buildCounterReturnpolicyListResponse = 0;
buildReturnpolicyListResponse() {
  var o = new api.ReturnpolicyListResponse();
  buildCounterReturnpolicyListResponse++;
  if (buildCounterReturnpolicyListResponse < 3) {
    o.kind = "foo";
    o.resources = buildUnnamed3346();
  }
  buildCounterReturnpolicyListResponse--;
  return o;
}

checkReturnpolicyListResponse(api.ReturnpolicyListResponse o) {
  buildCounterReturnpolicyListResponse++;
  if (buildCounterReturnpolicyListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3346(o.resources);
  }
  buildCounterReturnpolicyListResponse--;
}

buildUnnamed3347() {
  var o = new core.List<api.Value>();
  o.add(buildValue());
  o.add(buildValue());
  return o;
}

checkUnnamed3347(core.List<api.Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValue(o[0]);
  checkValue(o[1]);
}

core.int buildCounterRow = 0;
buildRow() {
  var o = new api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.cells = buildUnnamed3347();
  }
  buildCounterRow--;
  return o;
}

checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    checkUnnamed3347(o.cells);
  }
  buildCounterRow--;
}

buildUnnamed3348() {
  var o = new core.List<api.RateGroup>();
  o.add(buildRateGroup());
  o.add(buildRateGroup());
  return o;
}

checkUnnamed3348(core.List<api.RateGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRateGroup(o[0]);
  checkRateGroup(o[1]);
}

core.int buildCounterService = 0;
buildService() {
  var o = new api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.active = true;
    o.currency = "foo";
    o.deliveryCountry = "foo";
    o.deliveryTime = buildDeliveryTime();
    o.eligibility = "foo";
    o.minimumOrderValue = buildPrice();
    o.name = "foo";
    o.rateGroups = buildUnnamed3348();
  }
  buildCounterService--;
  return o;
}

checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.deliveryCountry, unittest.equals('foo'));
    checkDeliveryTime(o.deliveryTime);
    unittest.expect(o.eligibility, unittest.equals('foo'));
    checkPrice(o.minimumOrderValue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3348(o.rateGroups);
  }
  buildCounterService--;
}

buildUnnamed3349() {
  var o = new core.List<api.ShipmentInvoiceLineItemInvoice>();
  o.add(buildShipmentInvoiceLineItemInvoice());
  o.add(buildShipmentInvoiceLineItemInvoice());
  return o;
}

checkUnnamed3349(core.List<api.ShipmentInvoiceLineItemInvoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShipmentInvoiceLineItemInvoice(o[0]);
  checkShipmentInvoiceLineItemInvoice(o[1]);
}

core.int buildCounterShipmentInvoice = 0;
buildShipmentInvoice() {
  var o = new api.ShipmentInvoice();
  buildCounterShipmentInvoice++;
  if (buildCounterShipmentInvoice < 3) {
    o.invoiceSummary = buildInvoiceSummary();
    o.lineItemInvoices = buildUnnamed3349();
    o.shipmentGroupId = "foo";
  }
  buildCounterShipmentInvoice--;
  return o;
}

checkShipmentInvoice(api.ShipmentInvoice o) {
  buildCounterShipmentInvoice++;
  if (buildCounterShipmentInvoice < 3) {
    checkInvoiceSummary(o.invoiceSummary);
    checkUnnamed3349(o.lineItemInvoices);
    unittest.expect(o.shipmentGroupId, unittest.equals('foo'));
  }
  buildCounterShipmentInvoice--;
}

buildUnnamed3350() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3350(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterShipmentInvoiceLineItemInvoice = 0;
buildShipmentInvoiceLineItemInvoice() {
  var o = new api.ShipmentInvoiceLineItemInvoice();
  buildCounterShipmentInvoiceLineItemInvoice++;
  if (buildCounterShipmentInvoiceLineItemInvoice < 3) {
    o.lineItemId = "foo";
    o.productId = "foo";
    o.shipmentUnitIds = buildUnnamed3350();
    o.unitInvoice = buildUnitInvoice();
  }
  buildCounterShipmentInvoiceLineItemInvoice--;
  return o;
}

checkShipmentInvoiceLineItemInvoice(api.ShipmentInvoiceLineItemInvoice o) {
  buildCounterShipmentInvoiceLineItemInvoice++;
  if (buildCounterShipmentInvoiceLineItemInvoice < 3) {
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    checkUnnamed3350(o.shipmentUnitIds);
    checkUnitInvoice(o.unitInvoice);
  }
  buildCounterShipmentInvoiceLineItemInvoice--;
}

core.int buildCounterShipmentTrackingInfo = 0;
buildShipmentTrackingInfo() {
  var o = new api.ShipmentTrackingInfo();
  buildCounterShipmentTrackingInfo++;
  if (buildCounterShipmentTrackingInfo < 3) {
    o.carrier = "foo";
    o.trackingNumber = "foo";
  }
  buildCounterShipmentTrackingInfo--;
  return o;
}

checkShipmentTrackingInfo(api.ShipmentTrackingInfo o) {
  buildCounterShipmentTrackingInfo++;
  if (buildCounterShipmentTrackingInfo < 3) {
    unittest.expect(o.carrier, unittest.equals('foo'));
    unittest.expect(o.trackingNumber, unittest.equals('foo'));
  }
  buildCounterShipmentTrackingInfo--;
}

buildUnnamed3351() {
  var o = new core.List<api.PostalCodeGroup>();
  o.add(buildPostalCodeGroup());
  o.add(buildPostalCodeGroup());
  return o;
}

checkUnnamed3351(core.List<api.PostalCodeGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostalCodeGroup(o[0]);
  checkPostalCodeGroup(o[1]);
}

buildUnnamed3352() {
  var o = new core.List<api.Service>();
  o.add(buildService());
  o.add(buildService());
  return o;
}

checkUnnamed3352(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.int buildCounterShippingSettings = 0;
buildShippingSettings() {
  var o = new api.ShippingSettings();
  buildCounterShippingSettings++;
  if (buildCounterShippingSettings < 3) {
    o.accountId = "foo";
    o.postalCodeGroups = buildUnnamed3351();
    o.services = buildUnnamed3352();
  }
  buildCounterShippingSettings--;
  return o;
}

checkShippingSettings(api.ShippingSettings o) {
  buildCounterShippingSettings++;
  if (buildCounterShippingSettings < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed3351(o.postalCodeGroups);
    checkUnnamed3352(o.services);
  }
  buildCounterShippingSettings--;
}

buildUnnamed3353() {
  var o = new core.List<api.ShippingsettingsCustomBatchRequestEntry>();
  o.add(buildShippingsettingsCustomBatchRequestEntry());
  o.add(buildShippingsettingsCustomBatchRequestEntry());
  return o;
}

checkUnnamed3353(core.List<api.ShippingsettingsCustomBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShippingsettingsCustomBatchRequestEntry(o[0]);
  checkShippingsettingsCustomBatchRequestEntry(o[1]);
}

core.int buildCounterShippingsettingsCustomBatchRequest = 0;
buildShippingsettingsCustomBatchRequest() {
  var o = new api.ShippingsettingsCustomBatchRequest();
  buildCounterShippingsettingsCustomBatchRequest++;
  if (buildCounterShippingsettingsCustomBatchRequest < 3) {
    o.entries = buildUnnamed3353();
  }
  buildCounterShippingsettingsCustomBatchRequest--;
  return o;
}

checkShippingsettingsCustomBatchRequest(
    api.ShippingsettingsCustomBatchRequest o) {
  buildCounterShippingsettingsCustomBatchRequest++;
  if (buildCounterShippingsettingsCustomBatchRequest < 3) {
    checkUnnamed3353(o.entries);
  }
  buildCounterShippingsettingsCustomBatchRequest--;
}

core.int buildCounterShippingsettingsCustomBatchRequestEntry = 0;
buildShippingsettingsCustomBatchRequestEntry() {
  var o = new api.ShippingsettingsCustomBatchRequestEntry();
  buildCounterShippingsettingsCustomBatchRequestEntry++;
  if (buildCounterShippingsettingsCustomBatchRequestEntry < 3) {
    o.accountId = "foo";
    o.batchId = 42;
    o.merchantId = "foo";
    o.method = "foo";
    o.shippingSettings = buildShippingSettings();
  }
  buildCounterShippingsettingsCustomBatchRequestEntry--;
  return o;
}

checkShippingsettingsCustomBatchRequestEntry(
    api.ShippingsettingsCustomBatchRequestEntry o) {
  buildCounterShippingsettingsCustomBatchRequestEntry++;
  if (buildCounterShippingsettingsCustomBatchRequestEntry < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.batchId, unittest.equals(42));
    unittest.expect(o.merchantId, unittest.equals('foo'));
    unittest.expect(o.method, unittest.equals('foo'));
    checkShippingSettings(o.shippingSettings);
  }
  buildCounterShippingsettingsCustomBatchRequestEntry--;
}

buildUnnamed3354() {
  var o = new core.List<api.ShippingsettingsCustomBatchResponseEntry>();
  o.add(buildShippingsettingsCustomBatchResponseEntry());
  o.add(buildShippingsettingsCustomBatchResponseEntry());
  return o;
}

checkUnnamed3354(core.List<api.ShippingsettingsCustomBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShippingsettingsCustomBatchResponseEntry(o[0]);
  checkShippingsettingsCustomBatchResponseEntry(o[1]);
}

core.int buildCounterShippingsettingsCustomBatchResponse = 0;
buildShippingsettingsCustomBatchResponse() {
  var o = new api.ShippingsettingsCustomBatchResponse();
  buildCounterShippingsettingsCustomBatchResponse++;
  if (buildCounterShippingsettingsCustomBatchResponse < 3) {
    o.entries = buildUnnamed3354();
    o.kind = "foo";
  }
  buildCounterShippingsettingsCustomBatchResponse--;
  return o;
}

checkShippingsettingsCustomBatchResponse(
    api.ShippingsettingsCustomBatchResponse o) {
  buildCounterShippingsettingsCustomBatchResponse++;
  if (buildCounterShippingsettingsCustomBatchResponse < 3) {
    checkUnnamed3354(o.entries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterShippingsettingsCustomBatchResponse--;
}

core.int buildCounterShippingsettingsCustomBatchResponseEntry = 0;
buildShippingsettingsCustomBatchResponseEntry() {
  var o = new api.ShippingsettingsCustomBatchResponseEntry();
  buildCounterShippingsettingsCustomBatchResponseEntry++;
  if (buildCounterShippingsettingsCustomBatchResponseEntry < 3) {
    o.batchId = 42;
    o.errors = buildErrors();
    o.kind = "foo";
    o.shippingSettings = buildShippingSettings();
  }
  buildCounterShippingsettingsCustomBatchResponseEntry--;
  return o;
}

checkShippingsettingsCustomBatchResponseEntry(
    api.ShippingsettingsCustomBatchResponseEntry o) {
  buildCounterShippingsettingsCustomBatchResponseEntry++;
  if (buildCounterShippingsettingsCustomBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkErrors(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkShippingSettings(o.shippingSettings);
  }
  buildCounterShippingsettingsCustomBatchResponseEntry--;
}

buildUnnamed3355() {
  var o = new core.List<api.CarriersCarrier>();
  o.add(buildCarriersCarrier());
  o.add(buildCarriersCarrier());
  return o;
}

checkUnnamed3355(core.List<api.CarriersCarrier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCarriersCarrier(o[0]);
  checkCarriersCarrier(o[1]);
}

core.int buildCounterShippingsettingsGetSupportedCarriersResponse = 0;
buildShippingsettingsGetSupportedCarriersResponse() {
  var o = new api.ShippingsettingsGetSupportedCarriersResponse();
  buildCounterShippingsettingsGetSupportedCarriersResponse++;
  if (buildCounterShippingsettingsGetSupportedCarriersResponse < 3) {
    o.carriers = buildUnnamed3355();
    o.kind = "foo";
  }
  buildCounterShippingsettingsGetSupportedCarriersResponse--;
  return o;
}

checkShippingsettingsGetSupportedCarriersResponse(
    api.ShippingsettingsGetSupportedCarriersResponse o) {
  buildCounterShippingsettingsGetSupportedCarriersResponse++;
  if (buildCounterShippingsettingsGetSupportedCarriersResponse < 3) {
    checkUnnamed3355(o.carriers);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterShippingsettingsGetSupportedCarriersResponse--;
}

buildUnnamed3356() {
  var o = new core.List<api.HolidaysHoliday>();
  o.add(buildHolidaysHoliday());
  o.add(buildHolidaysHoliday());
  return o;
}

checkUnnamed3356(core.List<api.HolidaysHoliday> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHolidaysHoliday(o[0]);
  checkHolidaysHoliday(o[1]);
}

core.int buildCounterShippingsettingsGetSupportedHolidaysResponse = 0;
buildShippingsettingsGetSupportedHolidaysResponse() {
  var o = new api.ShippingsettingsGetSupportedHolidaysResponse();
  buildCounterShippingsettingsGetSupportedHolidaysResponse++;
  if (buildCounterShippingsettingsGetSupportedHolidaysResponse < 3) {
    o.holidays = buildUnnamed3356();
    o.kind = "foo";
  }
  buildCounterShippingsettingsGetSupportedHolidaysResponse--;
  return o;
}

checkShippingsettingsGetSupportedHolidaysResponse(
    api.ShippingsettingsGetSupportedHolidaysResponse o) {
  buildCounterShippingsettingsGetSupportedHolidaysResponse++;
  if (buildCounterShippingsettingsGetSupportedHolidaysResponse < 3) {
    checkUnnamed3356(o.holidays);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterShippingsettingsGetSupportedHolidaysResponse--;
}

buildUnnamed3357() {
  var o = new core.List<api.ShippingSettings>();
  o.add(buildShippingSettings());
  o.add(buildShippingSettings());
  return o;
}

checkUnnamed3357(core.List<api.ShippingSettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShippingSettings(o[0]);
  checkShippingSettings(o[1]);
}

core.int buildCounterShippingsettingsListResponse = 0;
buildShippingsettingsListResponse() {
  var o = new api.ShippingsettingsListResponse();
  buildCounterShippingsettingsListResponse++;
  if (buildCounterShippingsettingsListResponse < 3) {
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.resources = buildUnnamed3357();
  }
  buildCounterShippingsettingsListResponse--;
  return o;
}

checkShippingsettingsListResponse(api.ShippingsettingsListResponse o) {
  buildCounterShippingsettingsListResponse++;
  if (buildCounterShippingsettingsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3357(o.resources);
  }
  buildCounterShippingsettingsListResponse--;
}

buildUnnamed3358() {
  var o = new core.List<api.Row>();
  o.add(buildRow());
  o.add(buildRow());
  return o;
}

checkUnnamed3358(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterTable = 0;
buildTable() {
  var o = new api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.columnHeaders = buildHeaders();
    o.name = "foo";
    o.rowHeaders = buildHeaders();
    o.rows = buildUnnamed3358();
  }
  buildCounterTable--;
  return o;
}

checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    checkHeaders(o.columnHeaders);
    unittest.expect(o.name, unittest.equals('foo'));
    checkHeaders(o.rowHeaders);
    checkUnnamed3358(o.rows);
  }
  buildCounterTable--;
}

buildUnnamed3359() {
  var o = new core.List<api.TestOrderLineItem>();
  o.add(buildTestOrderLineItem());
  o.add(buildTestOrderLineItem());
  return o;
}

checkUnnamed3359(core.List<api.TestOrderLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestOrderLineItem(o[0]);
  checkTestOrderLineItem(o[1]);
}

buildUnnamed3360() {
  var o = new core.List<api.OrderPromotion>();
  o.add(buildOrderPromotion());
  o.add(buildOrderPromotion());
  return o;
}

checkUnnamed3360(core.List<api.OrderPromotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderPromotion(o[0]);
  checkOrderPromotion(o[1]);
}

core.int buildCounterTestOrder = 0;
buildTestOrder() {
  var o = new api.TestOrder();
  buildCounterTestOrder++;
  if (buildCounterTestOrder < 3) {
    o.enableOrderinvoices = true;
    o.kind = "foo";
    o.lineItems = buildUnnamed3359();
    o.notificationMode = "foo";
    o.predefinedBillingAddress = "foo";
    o.predefinedDeliveryAddress = "foo";
    o.predefinedEmail = "foo";
    o.predefinedPickupDetails = "foo";
    o.promotions = buildUnnamed3360();
    o.shippingCost = buildPrice();
    o.shippingOption = "foo";
  }
  buildCounterTestOrder--;
  return o;
}

checkTestOrder(api.TestOrder o) {
  buildCounterTestOrder++;
  if (buildCounterTestOrder < 3) {
    unittest.expect(o.enableOrderinvoices, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed3359(o.lineItems);
    unittest.expect(o.notificationMode, unittest.equals('foo'));
    unittest.expect(o.predefinedBillingAddress, unittest.equals('foo'));
    unittest.expect(o.predefinedDeliveryAddress, unittest.equals('foo'));
    unittest.expect(o.predefinedEmail, unittest.equals('foo'));
    unittest.expect(o.predefinedPickupDetails, unittest.equals('foo'));
    checkUnnamed3360(o.promotions);
    checkPrice(o.shippingCost);
    unittest.expect(o.shippingOption, unittest.equals('foo'));
  }
  buildCounterTestOrder--;
}

core.int buildCounterTestOrderLineItem = 0;
buildTestOrderLineItem() {
  var o = new api.TestOrderLineItem();
  buildCounterTestOrderLineItem++;
  if (buildCounterTestOrderLineItem < 3) {
    o.product = buildTestOrderLineItemProduct();
    o.quantityOrdered = 42;
    o.returnInfo = buildOrderLineItemReturnInfo();
    o.shippingDetails = buildOrderLineItemShippingDetails();
  }
  buildCounterTestOrderLineItem--;
  return o;
}

checkTestOrderLineItem(api.TestOrderLineItem o) {
  buildCounterTestOrderLineItem++;
  if (buildCounterTestOrderLineItem < 3) {
    checkTestOrderLineItemProduct(o.product);
    unittest.expect(o.quantityOrdered, unittest.equals(42));
    checkOrderLineItemReturnInfo(o.returnInfo);
    checkOrderLineItemShippingDetails(o.shippingDetails);
  }
  buildCounterTestOrderLineItem--;
}

buildUnnamed3361() {
  var o = new core.List<api.OrderLineItemProductFee>();
  o.add(buildOrderLineItemProductFee());
  o.add(buildOrderLineItemProductFee());
  return o;
}

checkUnnamed3361(core.List<api.OrderLineItemProductFee> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductFee(o[0]);
  checkOrderLineItemProductFee(o[1]);
}

buildUnnamed3362() {
  var o = new core.List<api.OrderLineItemProductVariantAttribute>();
  o.add(buildOrderLineItemProductVariantAttribute());
  o.add(buildOrderLineItemProductVariantAttribute());
  return o;
}

checkUnnamed3362(core.List<api.OrderLineItemProductVariantAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderLineItemProductVariantAttribute(o[0]);
  checkOrderLineItemProductVariantAttribute(o[1]);
}

core.int buildCounterTestOrderLineItemProduct = 0;
buildTestOrderLineItemProduct() {
  var o = new api.TestOrderLineItemProduct();
  buildCounterTestOrderLineItemProduct++;
  if (buildCounterTestOrderLineItemProduct < 3) {
    o.brand = "foo";
    o.condition = "foo";
    o.contentLanguage = "foo";
    o.fees = buildUnnamed3361();
    o.gtin = "foo";
    o.imageLink = "foo";
    o.itemGroupId = "foo";
    o.mpn = "foo";
    o.offerId = "foo";
    o.price = buildPrice();
    o.targetCountry = "foo";
    o.title = "foo";
    o.variantAttributes = buildUnnamed3362();
  }
  buildCounterTestOrderLineItemProduct--;
  return o;
}

checkTestOrderLineItemProduct(api.TestOrderLineItemProduct o) {
  buildCounterTestOrderLineItemProduct++;
  if (buildCounterTestOrderLineItemProduct < 3) {
    unittest.expect(o.brand, unittest.equals('foo'));
    unittest.expect(o.condition, unittest.equals('foo'));
    unittest.expect(o.contentLanguage, unittest.equals('foo'));
    checkUnnamed3361(o.fees);
    unittest.expect(o.gtin, unittest.equals('foo'));
    unittest.expect(o.imageLink, unittest.equals('foo'));
    unittest.expect(o.itemGroupId, unittest.equals('foo'));
    unittest.expect(o.mpn, unittest.equals('foo'));
    unittest.expect(o.offerId, unittest.equals('foo'));
    checkPrice(o.price);
    unittest.expect(o.targetCountry, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    checkUnnamed3362(o.variantAttributes);
  }
  buildCounterTestOrderLineItemProduct--;
}

buildUnnamed3363() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3363(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3364() {
  var o = new core.List<api.TransitTableTransitTimeRow>();
  o.add(buildTransitTableTransitTimeRow());
  o.add(buildTransitTableTransitTimeRow());
  return o;
}

checkUnnamed3364(core.List<api.TransitTableTransitTimeRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitTableTransitTimeRow(o[0]);
  checkTransitTableTransitTimeRow(o[1]);
}

buildUnnamed3365() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3365(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTransitTable = 0;
buildTransitTable() {
  var o = new api.TransitTable();
  buildCounterTransitTable++;
  if (buildCounterTransitTable < 3) {
    o.postalCodeGroupNames = buildUnnamed3363();
    o.rows = buildUnnamed3364();
    o.transitTimeLabels = buildUnnamed3365();
  }
  buildCounterTransitTable--;
  return o;
}

checkTransitTable(api.TransitTable o) {
  buildCounterTransitTable++;
  if (buildCounterTransitTable < 3) {
    checkUnnamed3363(o.postalCodeGroupNames);
    checkUnnamed3364(o.rows);
    checkUnnamed3365(o.transitTimeLabels);
  }
  buildCounterTransitTable--;
}

buildUnnamed3366() {
  var o = new core.List<api.TransitTableTransitTimeRowTransitTimeValue>();
  o.add(buildTransitTableTransitTimeRowTransitTimeValue());
  o.add(buildTransitTableTransitTimeRowTransitTimeValue());
  return o;
}

checkUnnamed3366(core.List<api.TransitTableTransitTimeRowTransitTimeValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitTableTransitTimeRowTransitTimeValue(o[0]);
  checkTransitTableTransitTimeRowTransitTimeValue(o[1]);
}

core.int buildCounterTransitTableTransitTimeRow = 0;
buildTransitTableTransitTimeRow() {
  var o = new api.TransitTableTransitTimeRow();
  buildCounterTransitTableTransitTimeRow++;
  if (buildCounterTransitTableTransitTimeRow < 3) {
    o.values = buildUnnamed3366();
  }
  buildCounterTransitTableTransitTimeRow--;
  return o;
}

checkTransitTableTransitTimeRow(api.TransitTableTransitTimeRow o) {
  buildCounterTransitTableTransitTimeRow++;
  if (buildCounterTransitTableTransitTimeRow < 3) {
    checkUnnamed3366(o.values);
  }
  buildCounterTransitTableTransitTimeRow--;
}

core.int buildCounterTransitTableTransitTimeRowTransitTimeValue = 0;
buildTransitTableTransitTimeRowTransitTimeValue() {
  var o = new api.TransitTableTransitTimeRowTransitTimeValue();
  buildCounterTransitTableTransitTimeRowTransitTimeValue++;
  if (buildCounterTransitTableTransitTimeRowTransitTimeValue < 3) {
    o.maxTransitTimeInDays = 42;
    o.minTransitTimeInDays = 42;
  }
  buildCounterTransitTableTransitTimeRowTransitTimeValue--;
  return o;
}

checkTransitTableTransitTimeRowTransitTimeValue(
    api.TransitTableTransitTimeRowTransitTimeValue o) {
  buildCounterTransitTableTransitTimeRowTransitTimeValue++;
  if (buildCounterTransitTableTransitTimeRowTransitTimeValue < 3) {
    unittest.expect(o.maxTransitTimeInDays, unittest.equals(42));
    unittest.expect(o.minTransitTimeInDays, unittest.equals(42));
  }
  buildCounterTransitTableTransitTimeRowTransitTimeValue--;
}

buildUnnamed3367() {
  var o = new core.List<api.UnitInvoiceAdditionalCharge>();
  o.add(buildUnitInvoiceAdditionalCharge());
  o.add(buildUnitInvoiceAdditionalCharge());
  return o;
}

checkUnnamed3367(core.List<api.UnitInvoiceAdditionalCharge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitInvoiceAdditionalCharge(o[0]);
  checkUnitInvoiceAdditionalCharge(o[1]);
}

buildUnnamed3368() {
  var o = new core.List<api.UnitInvoiceTaxLine>();
  o.add(buildUnitInvoiceTaxLine());
  o.add(buildUnitInvoiceTaxLine());
  return o;
}

checkUnnamed3368(core.List<api.UnitInvoiceTaxLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitInvoiceTaxLine(o[0]);
  checkUnitInvoiceTaxLine(o[1]);
}

core.int buildCounterUnitInvoice = 0;
buildUnitInvoice() {
  var o = new api.UnitInvoice();
  buildCounterUnitInvoice++;
  if (buildCounterUnitInvoice < 3) {
    o.additionalCharges = buildUnnamed3367();
    o.unitPrice = buildPrice();
    o.unitPriceTaxes = buildUnnamed3368();
  }
  buildCounterUnitInvoice--;
  return o;
}

checkUnitInvoice(api.UnitInvoice o) {
  buildCounterUnitInvoice++;
  if (buildCounterUnitInvoice < 3) {
    checkUnnamed3367(o.additionalCharges);
    checkPrice(o.unitPrice);
    checkUnnamed3368(o.unitPriceTaxes);
  }
  buildCounterUnitInvoice--;
}

core.int buildCounterUnitInvoiceAdditionalCharge = 0;
buildUnitInvoiceAdditionalCharge() {
  var o = new api.UnitInvoiceAdditionalCharge();
  buildCounterUnitInvoiceAdditionalCharge++;
  if (buildCounterUnitInvoiceAdditionalCharge < 3) {
    o.additionalChargeAmount = buildAmount();
    o.type = "foo";
  }
  buildCounterUnitInvoiceAdditionalCharge--;
  return o;
}

checkUnitInvoiceAdditionalCharge(api.UnitInvoiceAdditionalCharge o) {
  buildCounterUnitInvoiceAdditionalCharge++;
  if (buildCounterUnitInvoiceAdditionalCharge < 3) {
    checkAmount(o.additionalChargeAmount);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUnitInvoiceAdditionalCharge--;
}

core.int buildCounterUnitInvoiceTaxLine = 0;
buildUnitInvoiceTaxLine() {
  var o = new api.UnitInvoiceTaxLine();
  buildCounterUnitInvoiceTaxLine++;
  if (buildCounterUnitInvoiceTaxLine < 3) {
    o.taxAmount = buildPrice();
    o.taxName = "foo";
    o.taxType = "foo";
  }
  buildCounterUnitInvoiceTaxLine--;
  return o;
}

checkUnitInvoiceTaxLine(api.UnitInvoiceTaxLine o) {
  buildCounterUnitInvoiceTaxLine++;
  if (buildCounterUnitInvoiceTaxLine < 3) {
    checkPrice(o.taxAmount);
    unittest.expect(o.taxName, unittest.equals('foo'));
    unittest.expect(o.taxType, unittest.equals('foo'));
  }
  buildCounterUnitInvoiceTaxLine--;
}

core.int buildCounterValue = 0;
buildValue() {
  var o = new api.Value();
  buildCounterValue++;
  if (buildCounterValue < 3) {
    o.carrierRateName = "foo";
    o.flatRate = buildPrice();
    o.noShipping = true;
    o.pricePercentage = "foo";
    o.subtableName = "foo";
  }
  buildCounterValue--;
  return o;
}

checkValue(api.Value o) {
  buildCounterValue++;
  if (buildCounterValue < 3) {
    unittest.expect(o.carrierRateName, unittest.equals('foo'));
    checkPrice(o.flatRate);
    unittest.expect(o.noShipping, unittest.isTrue);
    unittest.expect(o.pricePercentage, unittest.equals('foo'));
    unittest.expect(o.subtableName, unittest.equals('foo'));
  }
  buildCounterValue--;
}

core.int buildCounterWeight = 0;
buildWeight() {
  var o = new api.Weight();
  buildCounterWeight++;
  if (buildCounterWeight < 3) {
    o.unit = "foo";
    o.value = "foo";
  }
  buildCounterWeight--;
  return o;
}

checkWeight(api.Weight o) {
  buildCounterWeight++;
  if (buildCounterWeight < 3) {
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterWeight--;
}

buildUnnamed3369() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3369(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3370() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3370(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3371() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3371(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3372() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3372(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3373() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3373(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-Account", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccount();
      var od = new api.Account.fromJson(o.toJson());
      checkAccount(od);
    });
  });

  unittest.group("obj-schema-AccountAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountAddress();
      var od = new api.AccountAddress.fromJson(o.toJson());
      checkAccountAddress(od);
    });
  });

  unittest.group("obj-schema-AccountAdsLink", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountAdsLink();
      var od = new api.AccountAdsLink.fromJson(o.toJson());
      checkAccountAdsLink(od);
    });
  });

  unittest.group("obj-schema-AccountBusinessInformation", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountBusinessInformation();
      var od = new api.AccountBusinessInformation.fromJson(o.toJson());
      checkAccountBusinessInformation(od);
    });
  });

  unittest.group("obj-schema-AccountCustomerService", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountCustomerService();
      var od = new api.AccountCustomerService.fromJson(o.toJson());
      checkAccountCustomerService(od);
    });
  });

  unittest.group("obj-schema-AccountGoogleMyBusinessLink", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountGoogleMyBusinessLink();
      var od = new api.AccountGoogleMyBusinessLink.fromJson(o.toJson());
      checkAccountGoogleMyBusinessLink(od);
    });
  });

  unittest.group("obj-schema-AccountIdentifier", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountIdentifier();
      var od = new api.AccountIdentifier.fromJson(o.toJson());
      checkAccountIdentifier(od);
    });
  });

  unittest.group("obj-schema-AccountStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountStatus();
      var od = new api.AccountStatus.fromJson(o.toJson());
      checkAccountStatus(od);
    });
  });

  unittest.group("obj-schema-AccountStatusAccountLevelIssue", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountStatusAccountLevelIssue();
      var od = new api.AccountStatusAccountLevelIssue.fromJson(o.toJson());
      checkAccountStatusAccountLevelIssue(od);
    });
  });

  unittest.group("obj-schema-AccountStatusItemLevelIssue", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountStatusItemLevelIssue();
      var od = new api.AccountStatusItemLevelIssue.fromJson(o.toJson());
      checkAccountStatusItemLevelIssue(od);
    });
  });

  unittest.group("obj-schema-AccountStatusProducts", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountStatusProducts();
      var od = new api.AccountStatusProducts.fromJson(o.toJson());
      checkAccountStatusProducts(od);
    });
  });

  unittest.group("obj-schema-AccountStatusStatistics", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountStatusStatistics();
      var od = new api.AccountStatusStatistics.fromJson(o.toJson());
      checkAccountStatusStatistics(od);
    });
  });

  unittest.group("obj-schema-AccountTax", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountTax();
      var od = new api.AccountTax.fromJson(o.toJson());
      checkAccountTax(od);
    });
  });

  unittest.group("obj-schema-AccountTaxTaxRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountTaxTaxRule();
      var od = new api.AccountTaxTaxRule.fromJson(o.toJson());
      checkAccountTaxTaxRule(od);
    });
  });

  unittest.group("obj-schema-AccountUser", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountUser();
      var od = new api.AccountUser.fromJson(o.toJson());
      checkAccountUser(od);
    });
  });

  unittest.group("obj-schema-AccountYouTubeChannelLink", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountYouTubeChannelLink();
      var od = new api.AccountYouTubeChannelLink.fromJson(o.toJson());
      checkAccountYouTubeChannelLink(od);
    });
  });

  unittest.group("obj-schema-AccountsAuthInfoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsAuthInfoResponse();
      var od = new api.AccountsAuthInfoResponse.fromJson(o.toJson());
      checkAccountsAuthInfoResponse(od);
    });
  });

  unittest.group("obj-schema-AccountsClaimWebsiteResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsClaimWebsiteResponse();
      var od = new api.AccountsClaimWebsiteResponse.fromJson(o.toJson());
      checkAccountsClaimWebsiteResponse(od);
    });
  });

  unittest.group("obj-schema-AccountsCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsCustomBatchRequest();
      var od = new api.AccountsCustomBatchRequest.fromJson(o.toJson());
      checkAccountsCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-AccountsCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsCustomBatchRequestEntry();
      var od = new api.AccountsCustomBatchRequestEntry.fromJson(o.toJson());
      checkAccountsCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-AccountsCustomBatchRequestEntryLinkRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsCustomBatchRequestEntryLinkRequest();
      var od = new api.AccountsCustomBatchRequestEntryLinkRequest.fromJson(
          o.toJson());
      checkAccountsCustomBatchRequestEntryLinkRequest(od);
    });
  });

  unittest.group("obj-schema-AccountsCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsCustomBatchResponse();
      var od = new api.AccountsCustomBatchResponse.fromJson(o.toJson());
      checkAccountsCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-AccountsCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsCustomBatchResponseEntry();
      var od = new api.AccountsCustomBatchResponseEntry.fromJson(o.toJson());
      checkAccountsCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-AccountsLinkRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsLinkRequest();
      var od = new api.AccountsLinkRequest.fromJson(o.toJson());
      checkAccountsLinkRequest(od);
    });
  });

  unittest.group("obj-schema-AccountsLinkResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsLinkResponse();
      var od = new api.AccountsLinkResponse.fromJson(o.toJson());
      checkAccountsLinkResponse(od);
    });
  });

  unittest.group("obj-schema-AccountsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountsListResponse();
      var od = new api.AccountsListResponse.fromJson(o.toJson());
      checkAccountsListResponse(od);
    });
  });

  unittest.group("obj-schema-AccountstatusesCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountstatusesCustomBatchRequest();
      var od = new api.AccountstatusesCustomBatchRequest.fromJson(o.toJson());
      checkAccountstatusesCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-AccountstatusesCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountstatusesCustomBatchRequestEntry();
      var od =
          new api.AccountstatusesCustomBatchRequestEntry.fromJson(o.toJson());
      checkAccountstatusesCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-AccountstatusesCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountstatusesCustomBatchResponse();
      var od = new api.AccountstatusesCustomBatchResponse.fromJson(o.toJson());
      checkAccountstatusesCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-AccountstatusesCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountstatusesCustomBatchResponseEntry();
      var od =
          new api.AccountstatusesCustomBatchResponseEntry.fromJson(o.toJson());
      checkAccountstatusesCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-AccountstatusesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountstatusesListResponse();
      var od = new api.AccountstatusesListResponse.fromJson(o.toJson());
      checkAccountstatusesListResponse(od);
    });
  });

  unittest.group("obj-schema-AccounttaxCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccounttaxCustomBatchRequest();
      var od = new api.AccounttaxCustomBatchRequest.fromJson(o.toJson());
      checkAccounttaxCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-AccounttaxCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccounttaxCustomBatchRequestEntry();
      var od = new api.AccounttaxCustomBatchRequestEntry.fromJson(o.toJson());
      checkAccounttaxCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-AccounttaxCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccounttaxCustomBatchResponse();
      var od = new api.AccounttaxCustomBatchResponse.fromJson(o.toJson());
      checkAccounttaxCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-AccounttaxCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccounttaxCustomBatchResponseEntry();
      var od = new api.AccounttaxCustomBatchResponseEntry.fromJson(o.toJson());
      checkAccounttaxCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-AccounttaxListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccounttaxListResponse();
      var od = new api.AccounttaxListResponse.fromJson(o.toJson());
      checkAccounttaxListResponse(od);
    });
  });

  unittest.group("obj-schema-Amount", () {
    unittest.test("to-json--from-json", () {
      var o = buildAmount();
      var od = new api.Amount.fromJson(o.toJson());
      checkAmount(od);
    });
  });

  unittest.group("obj-schema-BusinessDayConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildBusinessDayConfig();
      var od = new api.BusinessDayConfig.fromJson(o.toJson());
      checkBusinessDayConfig(od);
    });
  });

  unittest.group("obj-schema-CarrierRate", () {
    unittest.test("to-json--from-json", () {
      var o = buildCarrierRate();
      var od = new api.CarrierRate.fromJson(o.toJson());
      checkCarrierRate(od);
    });
  });

  unittest.group("obj-schema-CarriersCarrier", () {
    unittest.test("to-json--from-json", () {
      var o = buildCarriersCarrier();
      var od = new api.CarriersCarrier.fromJson(o.toJson());
      checkCarriersCarrier(od);
    });
  });

  unittest.group("obj-schema-CustomAttribute", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomAttribute();
      var od = new api.CustomAttribute.fromJson(o.toJson());
      checkCustomAttribute(od);
    });
  });

  unittest.group("obj-schema-CustomerReturnReason", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomerReturnReason();
      var od = new api.CustomerReturnReason.fromJson(o.toJson());
      checkCustomerReturnReason(od);
    });
  });

  unittest.group("obj-schema-CutoffTime", () {
    unittest.test("to-json--from-json", () {
      var o = buildCutoffTime();
      var od = new api.CutoffTime.fromJson(o.toJson());
      checkCutoffTime(od);
    });
  });

  unittest.group("obj-schema-Datafeed", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeed();
      var od = new api.Datafeed.fromJson(o.toJson());
      checkDatafeed(od);
    });
  });

  unittest.group("obj-schema-DatafeedFetchSchedule", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedFetchSchedule();
      var od = new api.DatafeedFetchSchedule.fromJson(o.toJson());
      checkDatafeedFetchSchedule(od);
    });
  });

  unittest.group("obj-schema-DatafeedFormat", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedFormat();
      var od = new api.DatafeedFormat.fromJson(o.toJson());
      checkDatafeedFormat(od);
    });
  });

  unittest.group("obj-schema-DatafeedStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedStatus();
      var od = new api.DatafeedStatus.fromJson(o.toJson());
      checkDatafeedStatus(od);
    });
  });

  unittest.group("obj-schema-DatafeedStatusError", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedStatusError();
      var od = new api.DatafeedStatusError.fromJson(o.toJson());
      checkDatafeedStatusError(od);
    });
  });

  unittest.group("obj-schema-DatafeedStatusExample", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedStatusExample();
      var od = new api.DatafeedStatusExample.fromJson(o.toJson());
      checkDatafeedStatusExample(od);
    });
  });

  unittest.group("obj-schema-DatafeedTarget", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedTarget();
      var od = new api.DatafeedTarget.fromJson(o.toJson());
      checkDatafeedTarget(od);
    });
  });

  unittest.group("obj-schema-DatafeedsCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedsCustomBatchRequest();
      var od = new api.DatafeedsCustomBatchRequest.fromJson(o.toJson());
      checkDatafeedsCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-DatafeedsCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedsCustomBatchRequestEntry();
      var od = new api.DatafeedsCustomBatchRequestEntry.fromJson(o.toJson());
      checkDatafeedsCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-DatafeedsCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedsCustomBatchResponse();
      var od = new api.DatafeedsCustomBatchResponse.fromJson(o.toJson());
      checkDatafeedsCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-DatafeedsCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedsCustomBatchResponseEntry();
      var od = new api.DatafeedsCustomBatchResponseEntry.fromJson(o.toJson());
      checkDatafeedsCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-DatafeedsFetchNowResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedsFetchNowResponse();
      var od = new api.DatafeedsFetchNowResponse.fromJson(o.toJson());
      checkDatafeedsFetchNowResponse(od);
    });
  });

  unittest.group("obj-schema-DatafeedsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedsListResponse();
      var od = new api.DatafeedsListResponse.fromJson(o.toJson());
      checkDatafeedsListResponse(od);
    });
  });

  unittest.group("obj-schema-DatafeedstatusesCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedstatusesCustomBatchRequest();
      var od = new api.DatafeedstatusesCustomBatchRequest.fromJson(o.toJson());
      checkDatafeedstatusesCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-DatafeedstatusesCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedstatusesCustomBatchRequestEntry();
      var od =
          new api.DatafeedstatusesCustomBatchRequestEntry.fromJson(o.toJson());
      checkDatafeedstatusesCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-DatafeedstatusesCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedstatusesCustomBatchResponse();
      var od = new api.DatafeedstatusesCustomBatchResponse.fromJson(o.toJson());
      checkDatafeedstatusesCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-DatafeedstatusesCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedstatusesCustomBatchResponseEntry();
      var od =
          new api.DatafeedstatusesCustomBatchResponseEntry.fromJson(o.toJson());
      checkDatafeedstatusesCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-DatafeedstatusesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatafeedstatusesListResponse();
      var od = new api.DatafeedstatusesListResponse.fromJson(o.toJson());
      checkDatafeedstatusesListResponse(od);
    });
  });

  unittest.group("obj-schema-DeliveryTime", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeliveryTime();
      var od = new api.DeliveryTime.fromJson(o.toJson());
      checkDeliveryTime(od);
    });
  });

  unittest.group("obj-schema-Error", () {
    unittest.test("to-json--from-json", () {
      var o = buildError();
      var od = new api.Error.fromJson(o.toJson());
      checkError(od);
    });
  });

  unittest.group("obj-schema-Errors", () {
    unittest.test("to-json--from-json", () {
      var o = buildErrors();
      var od = new api.Errors.fromJson(o.toJson());
      checkErrors(od);
    });
  });

  unittest.group("obj-schema-GmbAccounts", () {
    unittest.test("to-json--from-json", () {
      var o = buildGmbAccounts();
      var od = new api.GmbAccounts.fromJson(o.toJson());
      checkGmbAccounts(od);
    });
  });

  unittest.group("obj-schema-GmbAccountsGmbAccount", () {
    unittest.test("to-json--from-json", () {
      var o = buildGmbAccountsGmbAccount();
      var od = new api.GmbAccountsGmbAccount.fromJson(o.toJson());
      checkGmbAccountsGmbAccount(od);
    });
  });

  unittest.group("obj-schema-Headers", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeaders();
      var od = new api.Headers.fromJson(o.toJson());
      checkHeaders(od);
    });
  });

  unittest.group("obj-schema-HolidayCutoff", () {
    unittest.test("to-json--from-json", () {
      var o = buildHolidayCutoff();
      var od = new api.HolidayCutoff.fromJson(o.toJson());
      checkHolidayCutoff(od);
    });
  });

  unittest.group("obj-schema-HolidaysHoliday", () {
    unittest.test("to-json--from-json", () {
      var o = buildHolidaysHoliday();
      var od = new api.HolidaysHoliday.fromJson(o.toJson());
      checkHolidaysHoliday(od);
    });
  });

  unittest.group("obj-schema-Installment", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstallment();
      var od = new api.Installment.fromJson(o.toJson());
      checkInstallment(od);
    });
  });

  unittest.group("obj-schema-InvoiceSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildInvoiceSummary();
      var od = new api.InvoiceSummary.fromJson(o.toJson());
      checkInvoiceSummary(od);
    });
  });

  unittest.group("obj-schema-InvoiceSummaryAdditionalChargeSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildInvoiceSummaryAdditionalChargeSummary();
      var od =
          new api.InvoiceSummaryAdditionalChargeSummary.fromJson(o.toJson());
      checkInvoiceSummaryAdditionalChargeSummary(od);
    });
  });

  unittest.group("obj-schema-LiaAboutPageSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiaAboutPageSettings();
      var od = new api.LiaAboutPageSettings.fromJson(o.toJson());
      checkLiaAboutPageSettings(od);
    });
  });

  unittest.group("obj-schema-LiaCountrySettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiaCountrySettings();
      var od = new api.LiaCountrySettings.fromJson(o.toJson());
      checkLiaCountrySettings(od);
    });
  });

  unittest.group("obj-schema-LiaInventorySettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiaInventorySettings();
      var od = new api.LiaInventorySettings.fromJson(o.toJson());
      checkLiaInventorySettings(od);
    });
  });

  unittest.group("obj-schema-LiaOnDisplayToOrderSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiaOnDisplayToOrderSettings();
      var od = new api.LiaOnDisplayToOrderSettings.fromJson(o.toJson());
      checkLiaOnDisplayToOrderSettings(od);
    });
  });

  unittest.group("obj-schema-LiaPosDataProvider", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiaPosDataProvider();
      var od = new api.LiaPosDataProvider.fromJson(o.toJson());
      checkLiaPosDataProvider(od);
    });
  });

  unittest.group("obj-schema-LiaSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiaSettings();
      var od = new api.LiaSettings.fromJson(o.toJson());
      checkLiaSettings(od);
    });
  });

  unittest.group("obj-schema-LiasettingsCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsCustomBatchRequest();
      var od = new api.LiasettingsCustomBatchRequest.fromJson(o.toJson());
      checkLiasettingsCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-LiasettingsCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsCustomBatchRequestEntry();
      var od = new api.LiasettingsCustomBatchRequestEntry.fromJson(o.toJson());
      checkLiasettingsCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-LiasettingsCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsCustomBatchResponse();
      var od = new api.LiasettingsCustomBatchResponse.fromJson(o.toJson());
      checkLiasettingsCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-LiasettingsCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsCustomBatchResponseEntry();
      var od = new api.LiasettingsCustomBatchResponseEntry.fromJson(o.toJson());
      checkLiasettingsCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-LiasettingsGetAccessibleGmbAccountsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsGetAccessibleGmbAccountsResponse();
      var od = new api.LiasettingsGetAccessibleGmbAccountsResponse.fromJson(
          o.toJson());
      checkLiasettingsGetAccessibleGmbAccountsResponse(od);
    });
  });

  unittest.group("obj-schema-LiasettingsListPosDataProvidersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsListPosDataProvidersResponse();
      var od =
          new api.LiasettingsListPosDataProvidersResponse.fromJson(o.toJson());
      checkLiasettingsListPosDataProvidersResponse(od);
    });
  });

  unittest.group("obj-schema-LiasettingsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsListResponse();
      var od = new api.LiasettingsListResponse.fromJson(o.toJson());
      checkLiasettingsListResponse(od);
    });
  });

  unittest.group("obj-schema-LiasettingsRequestGmbAccessResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsRequestGmbAccessResponse();
      var od = new api.LiasettingsRequestGmbAccessResponse.fromJson(o.toJson());
      checkLiasettingsRequestGmbAccessResponse(od);
    });
  });

  unittest.group("obj-schema-LiasettingsRequestInventoryVerificationResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsRequestInventoryVerificationResponse();
      var od = new api.LiasettingsRequestInventoryVerificationResponse.fromJson(
          o.toJson());
      checkLiasettingsRequestInventoryVerificationResponse(od);
    });
  });

  unittest.group(
      "obj-schema-LiasettingsSetInventoryVerificationContactResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsSetInventoryVerificationContactResponse();
      var od =
          new api.LiasettingsSetInventoryVerificationContactResponse.fromJson(
              o.toJson());
      checkLiasettingsSetInventoryVerificationContactResponse(od);
    });
  });

  unittest.group("obj-schema-LiasettingsSetPosDataProviderResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLiasettingsSetPosDataProviderResponse();
      var od =
          new api.LiasettingsSetPosDataProviderResponse.fromJson(o.toJson());
      checkLiasettingsSetPosDataProviderResponse(od);
    });
  });

  unittest.group("obj-schema-LocationIdSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocationIdSet();
      var od = new api.LocationIdSet.fromJson(o.toJson());
      checkLocationIdSet(od);
    });
  });

  unittest.group("obj-schema-LoyaltyPoints", () {
    unittest.test("to-json--from-json", () {
      var o = buildLoyaltyPoints();
      var od = new api.LoyaltyPoints.fromJson(o.toJson());
      checkLoyaltyPoints(od);
    });
  });

  unittest.group("obj-schema-MerchantOrderReturn", () {
    unittest.test("to-json--from-json", () {
      var o = buildMerchantOrderReturn();
      var od = new api.MerchantOrderReturn.fromJson(o.toJson());
      checkMerchantOrderReturn(od);
    });
  });

  unittest.group("obj-schema-MerchantOrderReturnItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildMerchantOrderReturnItem();
      var od = new api.MerchantOrderReturnItem.fromJson(o.toJson());
      checkMerchantOrderReturnItem(od);
    });
  });

  unittest.group("obj-schema-Order", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrder();
      var od = new api.Order.fromJson(o.toJson());
      checkOrder(od);
    });
  });

  unittest.group("obj-schema-OrderAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderAddress();
      var od = new api.OrderAddress.fromJson(o.toJson());
      checkOrderAddress(od);
    });
  });

  unittest.group("obj-schema-OrderCancellation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderCancellation();
      var od = new api.OrderCancellation.fromJson(o.toJson());
      checkOrderCancellation(od);
    });
  });

  unittest.group("obj-schema-OrderCustomer", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderCustomer();
      var od = new api.OrderCustomer.fromJson(o.toJson());
      checkOrderCustomer(od);
    });
  });

  unittest.group("obj-schema-OrderCustomerLoyaltyInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderCustomerLoyaltyInfo();
      var od = new api.OrderCustomerLoyaltyInfo.fromJson(o.toJson());
      checkOrderCustomerLoyaltyInfo(od);
    });
  });

  unittest.group("obj-schema-OrderCustomerMarketingRightsInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderCustomerMarketingRightsInfo();
      var od = new api.OrderCustomerMarketingRightsInfo.fromJson(o.toJson());
      checkOrderCustomerMarketingRightsInfo(od);
    });
  });

  unittest.group("obj-schema-OrderDeliveryDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderDeliveryDetails();
      var od = new api.OrderDeliveryDetails.fromJson(o.toJson());
      checkOrderDeliveryDetails(od);
    });
  });

  unittest.group("obj-schema-OrderLineItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderLineItem();
      var od = new api.OrderLineItem.fromJson(o.toJson());
      checkOrderLineItem(od);
    });
  });

  unittest.group("obj-schema-OrderLineItemAdjustment", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderLineItemAdjustment();
      var od = new api.OrderLineItemAdjustment.fromJson(o.toJson());
      checkOrderLineItemAdjustment(od);
    });
  });

  unittest.group("obj-schema-OrderLineItemProduct", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderLineItemProduct();
      var od = new api.OrderLineItemProduct.fromJson(o.toJson());
      checkOrderLineItemProduct(od);
    });
  });

  unittest.group("obj-schema-OrderLineItemProductFee", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderLineItemProductFee();
      var od = new api.OrderLineItemProductFee.fromJson(o.toJson());
      checkOrderLineItemProductFee(od);
    });
  });

  unittest.group("obj-schema-OrderLineItemProductVariantAttribute", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderLineItemProductVariantAttribute();
      var od =
          new api.OrderLineItemProductVariantAttribute.fromJson(o.toJson());
      checkOrderLineItemProductVariantAttribute(od);
    });
  });

  unittest.group("obj-schema-OrderLineItemReturnInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderLineItemReturnInfo();
      var od = new api.OrderLineItemReturnInfo.fromJson(o.toJson());
      checkOrderLineItemReturnInfo(od);
    });
  });

  unittest.group("obj-schema-OrderLineItemShippingDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderLineItemShippingDetails();
      var od = new api.OrderLineItemShippingDetails.fromJson(o.toJson());
      checkOrderLineItemShippingDetails(od);
    });
  });

  unittest.group("obj-schema-OrderLineItemShippingDetailsMethod", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderLineItemShippingDetailsMethod();
      var od = new api.OrderLineItemShippingDetailsMethod.fromJson(o.toJson());
      checkOrderLineItemShippingDetailsMethod(od);
    });
  });

  unittest.group("obj-schema-OrderMerchantProvidedAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderMerchantProvidedAnnotation();
      var od = new api.OrderMerchantProvidedAnnotation.fromJson(o.toJson());
      checkOrderMerchantProvidedAnnotation(od);
    });
  });

  unittest.group("obj-schema-OrderPickupDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderPickupDetails();
      var od = new api.OrderPickupDetails.fromJson(o.toJson());
      checkOrderPickupDetails(od);
    });
  });

  unittest.group("obj-schema-OrderPickupDetailsCollector", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderPickupDetailsCollector();
      var od = new api.OrderPickupDetailsCollector.fromJson(o.toJson());
      checkOrderPickupDetailsCollector(od);
    });
  });

  unittest.group("obj-schema-OrderPromotion", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderPromotion();
      var od = new api.OrderPromotion.fromJson(o.toJson());
      checkOrderPromotion(od);
    });
  });

  unittest.group("obj-schema-OrderPromotionItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderPromotionItem();
      var od = new api.OrderPromotionItem.fromJson(o.toJson());
      checkOrderPromotionItem(od);
    });
  });

  unittest.group("obj-schema-OrderRefund", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderRefund();
      var od = new api.OrderRefund.fromJson(o.toJson());
      checkOrderRefund(od);
    });
  });

  unittest.group("obj-schema-OrderReportDisbursement", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderReportDisbursement();
      var od = new api.OrderReportDisbursement.fromJson(o.toJson());
      checkOrderReportDisbursement(od);
    });
  });

  unittest.group("obj-schema-OrderReportTransaction", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderReportTransaction();
      var od = new api.OrderReportTransaction.fromJson(o.toJson());
      checkOrderReportTransaction(od);
    });
  });

  unittest.group("obj-schema-OrderReturn", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderReturn();
      var od = new api.OrderReturn.fromJson(o.toJson());
      checkOrderReturn(od);
    });
  });

  unittest.group("obj-schema-OrderShipment", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderShipment();
      var od = new api.OrderShipment.fromJson(o.toJson());
      checkOrderShipment(od);
    });
  });

  unittest.group("obj-schema-OrderShipmentLineItemShipment", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderShipmentLineItemShipment();
      var od = new api.OrderShipmentLineItemShipment.fromJson(o.toJson());
      checkOrderShipmentLineItemShipment(od);
    });
  });

  unittest.group("obj-schema-OrderinvoicesCreateChargeInvoiceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderinvoicesCreateChargeInvoiceRequest();
      var od =
          new api.OrderinvoicesCreateChargeInvoiceRequest.fromJson(o.toJson());
      checkOrderinvoicesCreateChargeInvoiceRequest(od);
    });
  });

  unittest.group("obj-schema-OrderinvoicesCreateChargeInvoiceResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderinvoicesCreateChargeInvoiceResponse();
      var od =
          new api.OrderinvoicesCreateChargeInvoiceResponse.fromJson(o.toJson());
      checkOrderinvoicesCreateChargeInvoiceResponse(od);
    });
  });

  unittest.group("obj-schema-OrderinvoicesCreateRefundInvoiceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderinvoicesCreateRefundInvoiceRequest();
      var od =
          new api.OrderinvoicesCreateRefundInvoiceRequest.fromJson(o.toJson());
      checkOrderinvoicesCreateRefundInvoiceRequest(od);
    });
  });

  unittest.group("obj-schema-OrderinvoicesCreateRefundInvoiceResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderinvoicesCreateRefundInvoiceResponse();
      var od =
          new api.OrderinvoicesCreateRefundInvoiceResponse.fromJson(o.toJson());
      checkOrderinvoicesCreateRefundInvoiceResponse(od);
    });
  });

  unittest.group(
      "obj-schema-OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption();
      var od = new api
              .OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption.fromJson(
          o.toJson());
      checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption(
          od);
    });
  });

  unittest.group(
      "obj-schema-OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption();
      var od = new api
              .OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption.fromJson(
          o.toJson());
      checkOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption(
          od);
    });
  });

  unittest.group("obj-schema-OrderreportsListDisbursementsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderreportsListDisbursementsResponse();
      var od =
          new api.OrderreportsListDisbursementsResponse.fromJson(o.toJson());
      checkOrderreportsListDisbursementsResponse(od);
    });
  });

  unittest.group("obj-schema-OrderreportsListTransactionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderreportsListTransactionsResponse();
      var od =
          new api.OrderreportsListTransactionsResponse.fromJson(o.toJson());
      checkOrderreportsListTransactionsResponse(od);
    });
  });

  unittest.group("obj-schema-OrderreturnsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderreturnsListResponse();
      var od = new api.OrderreturnsListResponse.fromJson(o.toJson());
      checkOrderreturnsListResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersAcknowledgeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersAcknowledgeRequest();
      var od = new api.OrdersAcknowledgeRequest.fromJson(o.toJson());
      checkOrdersAcknowledgeRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersAcknowledgeResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersAcknowledgeResponse();
      var od = new api.OrdersAcknowledgeResponse.fromJson(o.toJson());
      checkOrdersAcknowledgeResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersAdvanceTestOrderResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersAdvanceTestOrderResponse();
      var od = new api.OrdersAdvanceTestOrderResponse.fromJson(o.toJson());
      checkOrdersAdvanceTestOrderResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersCancelLineItemRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCancelLineItemRequest();
      var od = new api.OrdersCancelLineItemRequest.fromJson(o.toJson());
      checkOrdersCancelLineItemRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersCancelLineItemResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCancelLineItemResponse();
      var od = new api.OrdersCancelLineItemResponse.fromJson(o.toJson());
      checkOrdersCancelLineItemResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersCancelRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCancelRequest();
      var od = new api.OrdersCancelRequest.fromJson(o.toJson());
      checkOrdersCancelRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersCancelResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCancelResponse();
      var od = new api.OrdersCancelResponse.fromJson(o.toJson());
      checkOrdersCancelResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersCancelTestOrderByCustomerRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCancelTestOrderByCustomerRequest();
      var od =
          new api.OrdersCancelTestOrderByCustomerRequest.fromJson(o.toJson());
      checkOrdersCancelTestOrderByCustomerRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersCancelTestOrderByCustomerResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCancelTestOrderByCustomerResponse();
      var od =
          new api.OrdersCancelTestOrderByCustomerResponse.fromJson(o.toJson());
      checkOrdersCancelTestOrderByCustomerResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersCreateTestOrderRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCreateTestOrderRequest();
      var od = new api.OrdersCreateTestOrderRequest.fromJson(o.toJson());
      checkOrdersCreateTestOrderRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersCreateTestOrderResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCreateTestOrderResponse();
      var od = new api.OrdersCreateTestOrderResponse.fromJson(o.toJson());
      checkOrdersCreateTestOrderResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersCreateTestReturnRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCreateTestReturnRequest();
      var od = new api.OrdersCreateTestReturnRequest.fromJson(o.toJson());
      checkOrdersCreateTestReturnRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersCreateTestReturnResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCreateTestReturnResponse();
      var od = new api.OrdersCreateTestReturnResponse.fromJson(o.toJson());
      checkOrdersCreateTestReturnResponse(od);
    });
  });

  unittest.group(
      "obj-schema-OrdersCustomBatchRequestEntryCreateTestReturnReturnItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchRequestEntryCreateTestReturnReturnItem();
      var od = new api
              .OrdersCustomBatchRequestEntryCreateTestReturnReturnItem.fromJson(
          o.toJson());
      checkOrdersCustomBatchRequestEntryCreateTestReturnReturnItem(od);
    });
  });

  unittest.group(
      "obj-schema-OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo();
      var od = new api
              .OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo.fromJson(
          o.toJson());
      checkOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo(od);
    });
  });

  unittest.group("obj-schema-OrdersGetByMerchantOrderIdResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersGetByMerchantOrderIdResponse();
      var od = new api.OrdersGetByMerchantOrderIdResponse.fromJson(o.toJson());
      checkOrdersGetByMerchantOrderIdResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersGetTestOrderTemplateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersGetTestOrderTemplateResponse();
      var od = new api.OrdersGetTestOrderTemplateResponse.fromJson(o.toJson());
      checkOrdersGetTestOrderTemplateResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersInStoreRefundLineItemRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersInStoreRefundLineItemRequest();
      var od = new api.OrdersInStoreRefundLineItemRequest.fromJson(o.toJson());
      checkOrdersInStoreRefundLineItemRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersInStoreRefundLineItemResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersInStoreRefundLineItemResponse();
      var od = new api.OrdersInStoreRefundLineItemResponse.fromJson(o.toJson());
      checkOrdersInStoreRefundLineItemResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersListResponse();
      var od = new api.OrdersListResponse.fromJson(o.toJson());
      checkOrdersListResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersRejectReturnLineItemRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersRejectReturnLineItemRequest();
      var od = new api.OrdersRejectReturnLineItemRequest.fromJson(o.toJson());
      checkOrdersRejectReturnLineItemRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersRejectReturnLineItemResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersRejectReturnLineItemResponse();
      var od = new api.OrdersRejectReturnLineItemResponse.fromJson(o.toJson());
      checkOrdersRejectReturnLineItemResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersReturnRefundLineItemRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersReturnRefundLineItemRequest();
      var od = new api.OrdersReturnRefundLineItemRequest.fromJson(o.toJson());
      checkOrdersReturnRefundLineItemRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersReturnRefundLineItemResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersReturnRefundLineItemResponse();
      var od = new api.OrdersReturnRefundLineItemResponse.fromJson(o.toJson());
      checkOrdersReturnRefundLineItemResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersSetLineItemMetadataRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersSetLineItemMetadataRequest();
      var od = new api.OrdersSetLineItemMetadataRequest.fromJson(o.toJson());
      checkOrdersSetLineItemMetadataRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersSetLineItemMetadataResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersSetLineItemMetadataResponse();
      var od = new api.OrdersSetLineItemMetadataResponse.fromJson(o.toJson());
      checkOrdersSetLineItemMetadataResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersShipLineItemsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersShipLineItemsRequest();
      var od = new api.OrdersShipLineItemsRequest.fromJson(o.toJson());
      checkOrdersShipLineItemsRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersShipLineItemsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersShipLineItemsResponse();
      var od = new api.OrdersShipLineItemsResponse.fromJson(o.toJson());
      checkOrdersShipLineItemsResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersUpdateLineItemShippingDetailsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersUpdateLineItemShippingDetailsRequest();
      var od = new api.OrdersUpdateLineItemShippingDetailsRequest.fromJson(
          o.toJson());
      checkOrdersUpdateLineItemShippingDetailsRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersUpdateLineItemShippingDetailsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersUpdateLineItemShippingDetailsResponse();
      var od = new api.OrdersUpdateLineItemShippingDetailsResponse.fromJson(
          o.toJson());
      checkOrdersUpdateLineItemShippingDetailsResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersUpdateMerchantOrderIdRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersUpdateMerchantOrderIdRequest();
      var od = new api.OrdersUpdateMerchantOrderIdRequest.fromJson(o.toJson());
      checkOrdersUpdateMerchantOrderIdRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersUpdateMerchantOrderIdResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersUpdateMerchantOrderIdResponse();
      var od = new api.OrdersUpdateMerchantOrderIdResponse.fromJson(o.toJson());
      checkOrdersUpdateMerchantOrderIdResponse(od);
    });
  });

  unittest.group("obj-schema-OrdersUpdateShipmentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersUpdateShipmentRequest();
      var od = new api.OrdersUpdateShipmentRequest.fromJson(o.toJson());
      checkOrdersUpdateShipmentRequest(od);
    });
  });

  unittest.group("obj-schema-OrdersUpdateShipmentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrdersUpdateShipmentResponse();
      var od = new api.OrdersUpdateShipmentResponse.fromJson(o.toJson());
      checkOrdersUpdateShipmentResponse(od);
    });
  });

  unittest.group("obj-schema-PosCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosCustomBatchRequest();
      var od = new api.PosCustomBatchRequest.fromJson(o.toJson());
      checkPosCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-PosCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosCustomBatchRequestEntry();
      var od = new api.PosCustomBatchRequestEntry.fromJson(o.toJson());
      checkPosCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-PosCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosCustomBatchResponse();
      var od = new api.PosCustomBatchResponse.fromJson(o.toJson());
      checkPosCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-PosCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosCustomBatchResponseEntry();
      var od = new api.PosCustomBatchResponseEntry.fromJson(o.toJson());
      checkPosCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-PosDataProviders", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosDataProviders();
      var od = new api.PosDataProviders.fromJson(o.toJson());
      checkPosDataProviders(od);
    });
  });

  unittest.group("obj-schema-PosDataProvidersPosDataProvider", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosDataProvidersPosDataProvider();
      var od = new api.PosDataProvidersPosDataProvider.fromJson(o.toJson());
      checkPosDataProvidersPosDataProvider(od);
    });
  });

  unittest.group("obj-schema-PosInventory", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosInventory();
      var od = new api.PosInventory.fromJson(o.toJson());
      checkPosInventory(od);
    });
  });

  unittest.group("obj-schema-PosInventoryRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosInventoryRequest();
      var od = new api.PosInventoryRequest.fromJson(o.toJson());
      checkPosInventoryRequest(od);
    });
  });

  unittest.group("obj-schema-PosInventoryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosInventoryResponse();
      var od = new api.PosInventoryResponse.fromJson(o.toJson());
      checkPosInventoryResponse(od);
    });
  });

  unittest.group("obj-schema-PosListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosListResponse();
      var od = new api.PosListResponse.fromJson(o.toJson());
      checkPosListResponse(od);
    });
  });

  unittest.group("obj-schema-PosSale", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosSale();
      var od = new api.PosSale.fromJson(o.toJson());
      checkPosSale(od);
    });
  });

  unittest.group("obj-schema-PosSaleRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosSaleRequest();
      var od = new api.PosSaleRequest.fromJson(o.toJson());
      checkPosSaleRequest(od);
    });
  });

  unittest.group("obj-schema-PosSaleResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosSaleResponse();
      var od = new api.PosSaleResponse.fromJson(o.toJson());
      checkPosSaleResponse(od);
    });
  });

  unittest.group("obj-schema-PosStore", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosStore();
      var od = new api.PosStore.fromJson(o.toJson());
      checkPosStore(od);
    });
  });

  unittest.group("obj-schema-PostalCodeGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildPostalCodeGroup();
      var od = new api.PostalCodeGroup.fromJson(o.toJson());
      checkPostalCodeGroup(od);
    });
  });

  unittest.group("obj-schema-PostalCodeRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildPostalCodeRange();
      var od = new api.PostalCodeRange.fromJson(o.toJson());
      checkPostalCodeRange(od);
    });
  });

  unittest.group("obj-schema-Price", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrice();
      var od = new api.Price.fromJson(o.toJson());
      checkPrice(od);
    });
  });

  unittest.group("obj-schema-Product", () {
    unittest.test("to-json--from-json", () {
      var o = buildProduct();
      var od = new api.Product.fromJson(o.toJson());
      checkProduct(od);
    });
  });

  unittest.group("obj-schema-ProductAmount", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductAmount();
      var od = new api.ProductAmount.fromJson(o.toJson());
      checkProductAmount(od);
    });
  });

  unittest.group("obj-schema-ProductShipping", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductShipping();
      var od = new api.ProductShipping.fromJson(o.toJson());
      checkProductShipping(od);
    });
  });

  unittest.group("obj-schema-ProductShippingDimension", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductShippingDimension();
      var od = new api.ProductShippingDimension.fromJson(o.toJson());
      checkProductShippingDimension(od);
    });
  });

  unittest.group("obj-schema-ProductShippingWeight", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductShippingWeight();
      var od = new api.ProductShippingWeight.fromJson(o.toJson());
      checkProductShippingWeight(od);
    });
  });

  unittest.group("obj-schema-ProductStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductStatus();
      var od = new api.ProductStatus.fromJson(o.toJson());
      checkProductStatus(od);
    });
  });

  unittest.group("obj-schema-ProductStatusDestinationStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductStatusDestinationStatus();
      var od = new api.ProductStatusDestinationStatus.fromJson(o.toJson());
      checkProductStatusDestinationStatus(od);
    });
  });

  unittest.group("obj-schema-ProductStatusItemLevelIssue", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductStatusItemLevelIssue();
      var od = new api.ProductStatusItemLevelIssue.fromJson(o.toJson());
      checkProductStatusItemLevelIssue(od);
    });
  });

  unittest.group("obj-schema-ProductTax", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductTax();
      var od = new api.ProductTax.fromJson(o.toJson());
      checkProductTax(od);
    });
  });

  unittest.group("obj-schema-ProductUnitPricingBaseMeasure", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductUnitPricingBaseMeasure();
      var od = new api.ProductUnitPricingBaseMeasure.fromJson(o.toJson());
      checkProductUnitPricingBaseMeasure(od);
    });
  });

  unittest.group("obj-schema-ProductUnitPricingMeasure", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductUnitPricingMeasure();
      var od = new api.ProductUnitPricingMeasure.fromJson(o.toJson());
      checkProductUnitPricingMeasure(od);
    });
  });

  unittest.group("obj-schema-ProductsCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductsCustomBatchRequest();
      var od = new api.ProductsCustomBatchRequest.fromJson(o.toJson());
      checkProductsCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-ProductsCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductsCustomBatchRequestEntry();
      var od = new api.ProductsCustomBatchRequestEntry.fromJson(o.toJson());
      checkProductsCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-ProductsCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductsCustomBatchResponse();
      var od = new api.ProductsCustomBatchResponse.fromJson(o.toJson());
      checkProductsCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-ProductsCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductsCustomBatchResponseEntry();
      var od = new api.ProductsCustomBatchResponseEntry.fromJson(o.toJson());
      checkProductsCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-ProductsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductsListResponse();
      var od = new api.ProductsListResponse.fromJson(o.toJson());
      checkProductsListResponse(od);
    });
  });

  unittest.group("obj-schema-ProductstatusesCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductstatusesCustomBatchRequest();
      var od = new api.ProductstatusesCustomBatchRequest.fromJson(o.toJson());
      checkProductstatusesCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-ProductstatusesCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductstatusesCustomBatchRequestEntry();
      var od =
          new api.ProductstatusesCustomBatchRequestEntry.fromJson(o.toJson());
      checkProductstatusesCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-ProductstatusesCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductstatusesCustomBatchResponse();
      var od = new api.ProductstatusesCustomBatchResponse.fromJson(o.toJson());
      checkProductstatusesCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-ProductstatusesCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductstatusesCustomBatchResponseEntry();
      var od =
          new api.ProductstatusesCustomBatchResponseEntry.fromJson(o.toJson());
      checkProductstatusesCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-ProductstatusesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductstatusesListResponse();
      var od = new api.ProductstatusesListResponse.fromJson(o.toJson());
      checkProductstatusesListResponse(od);
    });
  });

  unittest.group("obj-schema-RateGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildRateGroup();
      var od = new api.RateGroup.fromJson(o.toJson());
      checkRateGroup(od);
    });
  });

  unittest.group("obj-schema-RefundReason", () {
    unittest.test("to-json--from-json", () {
      var o = buildRefundReason();
      var od = new api.RefundReason.fromJson(o.toJson());
      checkRefundReason(od);
    });
  });

  unittest.group("obj-schema-RegionalInventory", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionalInventory();
      var od = new api.RegionalInventory.fromJson(o.toJson());
      checkRegionalInventory(od);
    });
  });

  unittest.group("obj-schema-RegionalinventoryCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionalinventoryCustomBatchRequest();
      var od = new api.RegionalinventoryCustomBatchRequest.fromJson(o.toJson());
      checkRegionalinventoryCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-RegionalinventoryCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionalinventoryCustomBatchRequestEntry();
      var od =
          new api.RegionalinventoryCustomBatchRequestEntry.fromJson(o.toJson());
      checkRegionalinventoryCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-RegionalinventoryCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionalinventoryCustomBatchResponse();
      var od =
          new api.RegionalinventoryCustomBatchResponse.fromJson(o.toJson());
      checkRegionalinventoryCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-RegionalinventoryCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegionalinventoryCustomBatchResponseEntry();
      var od = new api.RegionalinventoryCustomBatchResponseEntry.fromJson(
          o.toJson());
      checkRegionalinventoryCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-ReturnAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnAddress();
      var od = new api.ReturnAddress.fromJson(o.toJson());
      checkReturnAddress(od);
    });
  });

  unittest.group("obj-schema-ReturnAddressAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnAddressAddress();
      var od = new api.ReturnAddressAddress.fromJson(o.toJson());
      checkReturnAddressAddress(od);
    });
  });

  unittest.group("obj-schema-ReturnPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnPolicy();
      var od = new api.ReturnPolicy.fromJson(o.toJson());
      checkReturnPolicy(od);
    });
  });

  unittest.group("obj-schema-ReturnPolicyPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnPolicyPolicy();
      var od = new api.ReturnPolicyPolicy.fromJson(o.toJson());
      checkReturnPolicyPolicy(od);
    });
  });

  unittest.group("obj-schema-ReturnPolicySeasonalOverride", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnPolicySeasonalOverride();
      var od = new api.ReturnPolicySeasonalOverride.fromJson(o.toJson());
      checkReturnPolicySeasonalOverride(od);
    });
  });

  unittest.group("obj-schema-ReturnShipment", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnShipment();
      var od = new api.ReturnShipment.fromJson(o.toJson());
      checkReturnShipment(od);
    });
  });

  unittest.group("obj-schema-ReturnaddressCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnaddressCustomBatchRequest();
      var od = new api.ReturnaddressCustomBatchRequest.fromJson(o.toJson());
      checkReturnaddressCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-ReturnaddressCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnaddressCustomBatchRequestEntry();
      var od =
          new api.ReturnaddressCustomBatchRequestEntry.fromJson(o.toJson());
      checkReturnaddressCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-ReturnaddressCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnaddressCustomBatchResponse();
      var od = new api.ReturnaddressCustomBatchResponse.fromJson(o.toJson());
      checkReturnaddressCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-ReturnaddressCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnaddressCustomBatchResponseEntry();
      var od =
          new api.ReturnaddressCustomBatchResponseEntry.fromJson(o.toJson());
      checkReturnaddressCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-ReturnaddressListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnaddressListResponse();
      var od = new api.ReturnaddressListResponse.fromJson(o.toJson());
      checkReturnaddressListResponse(od);
    });
  });

  unittest.group("obj-schema-ReturnpolicyCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnpolicyCustomBatchRequest();
      var od = new api.ReturnpolicyCustomBatchRequest.fromJson(o.toJson());
      checkReturnpolicyCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-ReturnpolicyCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnpolicyCustomBatchRequestEntry();
      var od = new api.ReturnpolicyCustomBatchRequestEntry.fromJson(o.toJson());
      checkReturnpolicyCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-ReturnpolicyCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnpolicyCustomBatchResponse();
      var od = new api.ReturnpolicyCustomBatchResponse.fromJson(o.toJson());
      checkReturnpolicyCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-ReturnpolicyCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnpolicyCustomBatchResponseEntry();
      var od =
          new api.ReturnpolicyCustomBatchResponseEntry.fromJson(o.toJson());
      checkReturnpolicyCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-ReturnpolicyListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnpolicyListResponse();
      var od = new api.ReturnpolicyListResponse.fromJson(o.toJson());
      checkReturnpolicyListResponse(od);
    });
  });

  unittest.group("obj-schema-Row", () {
    unittest.test("to-json--from-json", () {
      var o = buildRow();
      var od = new api.Row.fromJson(o.toJson());
      checkRow(od);
    });
  });

  unittest.group("obj-schema-Service", () {
    unittest.test("to-json--from-json", () {
      var o = buildService();
      var od = new api.Service.fromJson(o.toJson());
      checkService(od);
    });
  });

  unittest.group("obj-schema-ShipmentInvoice", () {
    unittest.test("to-json--from-json", () {
      var o = buildShipmentInvoice();
      var od = new api.ShipmentInvoice.fromJson(o.toJson());
      checkShipmentInvoice(od);
    });
  });

  unittest.group("obj-schema-ShipmentInvoiceLineItemInvoice", () {
    unittest.test("to-json--from-json", () {
      var o = buildShipmentInvoiceLineItemInvoice();
      var od = new api.ShipmentInvoiceLineItemInvoice.fromJson(o.toJson());
      checkShipmentInvoiceLineItemInvoice(od);
    });
  });

  unittest.group("obj-schema-ShipmentTrackingInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildShipmentTrackingInfo();
      var od = new api.ShipmentTrackingInfo.fromJson(o.toJson());
      checkShipmentTrackingInfo(od);
    });
  });

  unittest.group("obj-schema-ShippingSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildShippingSettings();
      var od = new api.ShippingSettings.fromJson(o.toJson());
      checkShippingSettings(od);
    });
  });

  unittest.group("obj-schema-ShippingsettingsCustomBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildShippingsettingsCustomBatchRequest();
      var od = new api.ShippingsettingsCustomBatchRequest.fromJson(o.toJson());
      checkShippingsettingsCustomBatchRequest(od);
    });
  });

  unittest.group("obj-schema-ShippingsettingsCustomBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildShippingsettingsCustomBatchRequestEntry();
      var od =
          new api.ShippingsettingsCustomBatchRequestEntry.fromJson(o.toJson());
      checkShippingsettingsCustomBatchRequestEntry(od);
    });
  });

  unittest.group("obj-schema-ShippingsettingsCustomBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildShippingsettingsCustomBatchResponse();
      var od = new api.ShippingsettingsCustomBatchResponse.fromJson(o.toJson());
      checkShippingsettingsCustomBatchResponse(od);
    });
  });

  unittest.group("obj-schema-ShippingsettingsCustomBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildShippingsettingsCustomBatchResponseEntry();
      var od =
          new api.ShippingsettingsCustomBatchResponseEntry.fromJson(o.toJson());
      checkShippingsettingsCustomBatchResponseEntry(od);
    });
  });

  unittest.group("obj-schema-ShippingsettingsGetSupportedCarriersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildShippingsettingsGetSupportedCarriersResponse();
      var od = new api.ShippingsettingsGetSupportedCarriersResponse.fromJson(
          o.toJson());
      checkShippingsettingsGetSupportedCarriersResponse(od);
    });
  });

  unittest.group("obj-schema-ShippingsettingsGetSupportedHolidaysResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildShippingsettingsGetSupportedHolidaysResponse();
      var od = new api.ShippingsettingsGetSupportedHolidaysResponse.fromJson(
          o.toJson());
      checkShippingsettingsGetSupportedHolidaysResponse(od);
    });
  });

  unittest.group("obj-schema-ShippingsettingsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildShippingsettingsListResponse();
      var od = new api.ShippingsettingsListResponse.fromJson(o.toJson());
      checkShippingsettingsListResponse(od);
    });
  });

  unittest.group("obj-schema-Table", () {
    unittest.test("to-json--from-json", () {
      var o = buildTable();
      var od = new api.Table.fromJson(o.toJson());
      checkTable(od);
    });
  });

  unittest.group("obj-schema-TestOrder", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestOrder();
      var od = new api.TestOrder.fromJson(o.toJson());
      checkTestOrder(od);
    });
  });

  unittest.group("obj-schema-TestOrderLineItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestOrderLineItem();
      var od = new api.TestOrderLineItem.fromJson(o.toJson());
      checkTestOrderLineItem(od);
    });
  });

  unittest.group("obj-schema-TestOrderLineItemProduct", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestOrderLineItemProduct();
      var od = new api.TestOrderLineItemProduct.fromJson(o.toJson());
      checkTestOrderLineItemProduct(od);
    });
  });

  unittest.group("obj-schema-TransitTable", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransitTable();
      var od = new api.TransitTable.fromJson(o.toJson());
      checkTransitTable(od);
    });
  });

  unittest.group("obj-schema-TransitTableTransitTimeRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransitTableTransitTimeRow();
      var od = new api.TransitTableTransitTimeRow.fromJson(o.toJson());
      checkTransitTableTransitTimeRow(od);
    });
  });

  unittest.group("obj-schema-TransitTableTransitTimeRowTransitTimeValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransitTableTransitTimeRowTransitTimeValue();
      var od = new api.TransitTableTransitTimeRowTransitTimeValue.fromJson(
          o.toJson());
      checkTransitTableTransitTimeRowTransitTimeValue(od);
    });
  });

  unittest.group("obj-schema-UnitInvoice", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnitInvoice();
      var od = new api.UnitInvoice.fromJson(o.toJson());
      checkUnitInvoice(od);
    });
  });

  unittest.group("obj-schema-UnitInvoiceAdditionalCharge", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnitInvoiceAdditionalCharge();
      var od = new api.UnitInvoiceAdditionalCharge.fromJson(o.toJson());
      checkUnitInvoiceAdditionalCharge(od);
    });
  });

  unittest.group("obj-schema-UnitInvoiceTaxLine", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnitInvoiceTaxLine();
      var od = new api.UnitInvoiceTaxLine.fromJson(o.toJson());
      checkUnitInvoiceTaxLine(od);
    });
  });

  unittest.group("obj-schema-Value", () {
    unittest.test("to-json--from-json", () {
      var o = buildValue();
      var od = new api.Value.fromJson(o.toJson());
      checkValue(od);
    });
  });

  unittest.group("obj-schema-Weight", () {
    unittest.test("to-json--from-json", () {
      var o = buildWeight();
      var od = new api.Weight.fromJson(o.toJson());
      checkWeight(od);
    });
  });

  unittest.group("resource-AccountsResourceApi", () {
    unittest.test("method--authinfo", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("accounts/authinfo"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildAccountsAuthInfoResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .authinfo($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsAuthInfoResponse(response);
      })));
    });

    unittest.test("method--claimwebsite", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_overwrite = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            queryMap["overwrite"].first, unittest.equals("$arg_overwrite"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccountsClaimWebsiteResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .claimwebsite(arg_merchantId, arg_accountId,
              overwrite: arg_overwrite, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsClaimWebsiteResponse(response);
      })));
    });

    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_request = buildAccountsCustomBatchRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccountsCustomBatchRequest.fromJson(json);
        checkAccountsCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("accounts/batch"));
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
        var resp = convert.json.encode(buildAccountsCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsCustomBatchResponse(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_force = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_merchantId, arg_accountId,
              force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_merchantId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });

    unittest.test("method--link", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_request = buildAccountsLinkRequest();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccountsLinkRequest.fromJson(json);
        checkAccountsLinkRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildAccountsLinkResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .link(arg_request, arg_merchantId, arg_accountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsLinkResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccountsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsListResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.ContentApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_merchantId, arg_accountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });
  });

  unittest.group("resource-AccountstatusesResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.AccountstatusesResourceApi res =
          new api.ContentApi(mock).accountstatuses;
      var arg_request = buildAccountstatusesCustomBatchRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccountstatusesCustomBatchRequest.fromJson(json);
        checkAccountstatusesCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("accountstatuses/batch"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildAccountstatusesCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountstatusesCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccountstatusesResourceApi res =
          new api.ContentApi(mock).accountstatuses;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_destinations = buildUnnamed3369();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            queryMap["destinations"], unittest.equals(arg_destinations));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccountStatus());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_accountId,
              destinations: arg_destinations, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountStatus(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccountstatusesResourceApi res =
          new api.ContentApi(mock).accountstatuses;
      var arg_merchantId = "foo";
      var arg_destinations = buildUnnamed3370();
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            queryMap["destinations"], unittest.equals(arg_destinations));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccountstatusesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              destinations: arg_destinations,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountstatusesListResponse(response);
      })));
    });
  });

  unittest.group("resource-AccounttaxResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.AccounttaxResourceApi res = new api.ContentApi(mock).accounttax;
      var arg_request = buildAccounttaxCustomBatchRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccounttaxCustomBatchRequest.fromJson(json);
        checkAccounttaxCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("accounttax/batch"));
        pathOffset += 16;

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
        var resp = convert.json.encode(buildAccounttaxCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccounttaxCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.AccounttaxResourceApi res = new api.ContentApi(mock).accounttax;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildAccountTax());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountTax(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AccounttaxResourceApi res = new api.ContentApi(mock).accounttax;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccounttaxListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccounttaxListResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.AccounttaxResourceApi res = new api.ContentApi(mock).accounttax;
      var arg_request = buildAccountTax();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AccountTax.fromJson(json);
        checkAccountTax(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildAccountTax());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_merchantId, arg_accountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountTax(response);
      })));
    });
  });

  unittest.group("resource-DatafeedsResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_request = buildDatafeedsCustomBatchRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DatafeedsCustomBatchRequest.fromJson(json);
        checkDatafeedsCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("datafeeds/batch"));
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
        var resp = convert.json.encode(buildDatafeedsCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeedsCustomBatchResponse(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_merchantId = "foo";
      var arg_datafeedId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
          .delete(arg_merchantId, arg_datafeedId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--fetchnow", () {
      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_merchantId = "foo";
      var arg_datafeedId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildDatafeedsFetchNowResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .fetchnow(arg_merchantId, arg_datafeedId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeedsFetchNowResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_merchantId = "foo";
      var arg_datafeedId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildDatafeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_datafeedId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeed(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_request = buildDatafeed();
      var arg_merchantId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Datafeed.fromJson(json);
        checkDatafeed(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildDatafeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeed(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDatafeedsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeedsListResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.DatafeedsResourceApi res = new api.ContentApi(mock).datafeeds;
      var arg_request = buildDatafeed();
      var arg_merchantId = "foo";
      var arg_datafeedId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Datafeed.fromJson(json);
        checkDatafeed(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildDatafeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_merchantId, arg_datafeedId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeed(response);
      })));
    });
  });

  unittest.group("resource-DatafeedstatusesResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.DatafeedstatusesResourceApi res =
          new api.ContentApi(mock).datafeedstatuses;
      var arg_request = buildDatafeedstatusesCustomBatchRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DatafeedstatusesCustomBatchRequest.fromJson(json);
        checkDatafeedstatusesCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("datafeedstatuses/batch"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildDatafeedstatusesCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeedstatusesCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DatafeedstatusesResourceApi res =
          new api.ContentApi(mock).datafeedstatuses;
      var arg_merchantId = "foo";
      var arg_datafeedId = "foo";
      var arg_country = "foo";
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
            queryMap["country"].first, unittest.equals(arg_country));
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDatafeedStatus());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_datafeedId,
              country: arg_country,
              language: arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeedStatus(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.DatafeedstatusesResourceApi res =
          new api.ContentApi(mock).datafeedstatuses;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDatafeedstatusesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDatafeedstatusesListResponse(response);
      })));
    });
  });

  unittest.group("resource-LiasettingsResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_request = buildLiasettingsCustomBatchRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.LiasettingsCustomBatchRequest.fromJson(json);
        checkLiasettingsCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("liasettings/batch"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildLiasettingsCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildLiaSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiaSettings(response);
      })));
    });

    unittest.test("method--getaccessiblegmbaccounts", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            .encode(buildLiasettingsGetAccessibleGmbAccountsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getaccessiblegmbaccounts(arg_merchantId, arg_accountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsGetAccessibleGmbAccountsResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLiasettingsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsListResponse(response);
      })));
    });

    unittest.test("method--listposdataproviders", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("liasettings/posdataproviders"));
        pathOffset += 28;

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
        var resp =
            convert.json.encode(buildLiasettingsListPosDataProvidersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listposdataproviders($fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsListPosDataProvidersResponse(response);
      })));
    });

    unittest.test("method--requestgmbaccess", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_gmbEmail = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            queryMap["gmbEmail"].first, unittest.equals(arg_gmbEmail));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildLiasettingsRequestGmbAccessResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .requestgmbaccess(arg_merchantId, arg_accountId, arg_gmbEmail,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsRequestGmbAccessResponse(response);
      })));
    });

    unittest.test("method--requestinventoryverification", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_country = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            .encode(buildLiasettingsRequestInventoryVerificationResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .requestinventoryverification(
              arg_merchantId, arg_accountId, arg_country,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsRequestInventoryVerificationResponse(response);
      })));
    });

    unittest.test("method--setinventoryverificationcontact", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_contactEmail = "foo";
      var arg_contactName = "foo";
      var arg_country = "foo";
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
            queryMap["contactEmail"].first, unittest.equals(arg_contactEmail));
        unittest.expect(
            queryMap["contactName"].first, unittest.equals(arg_contactName));
        unittest.expect(
            queryMap["country"].first, unittest.equals(arg_country));
        unittest.expect(
            queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildLiasettingsSetInventoryVerificationContactResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setinventoryverificationcontact(arg_merchantId, arg_accountId,
              arg_contactEmail, arg_contactName, arg_country, arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsSetInventoryVerificationContactResponse(response);
      })));
    });

    unittest.test("method--setposdataprovider", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_country = "foo";
      var arg_posDataProviderId = "foo";
      var arg_posExternalAccountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            queryMap["country"].first, unittest.equals(arg_country));
        unittest.expect(queryMap["posDataProviderId"].first,
            unittest.equals(arg_posDataProviderId));
        unittest.expect(queryMap["posExternalAccountId"].first,
            unittest.equals(arg_posExternalAccountId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildLiasettingsSetPosDataProviderResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setposdataprovider(arg_merchantId, arg_accountId, arg_country,
              posDataProviderId: arg_posDataProviderId,
              posExternalAccountId: arg_posExternalAccountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiasettingsSetPosDataProviderResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.LiasettingsResourceApi res = new api.ContentApi(mock).liasettings;
      var arg_request = buildLiaSettings();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.LiaSettings.fromJson(json);
        checkLiaSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildLiaSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_merchantId, arg_accountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLiaSettings(response);
      })));
    });
  });

  unittest.group("resource-OrderinvoicesResourceApi", () {
    unittest.test("method--createchargeinvoice", () {
      var mock = new HttpServerMock();
      api.OrderinvoicesResourceApi res = new api.ContentApi(mock).orderinvoices;
      var arg_request = buildOrderinvoicesCreateChargeInvoiceRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.OrderinvoicesCreateChargeInvoiceRequest.fromJson(json);
        checkOrderinvoicesCreateChargeInvoiceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            .encode(buildOrderinvoicesCreateChargeInvoiceResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createchargeinvoice(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderinvoicesCreateChargeInvoiceResponse(response);
      })));
    });

    unittest.test("method--createrefundinvoice", () {
      var mock = new HttpServerMock();
      api.OrderinvoicesResourceApi res = new api.ContentApi(mock).orderinvoices;
      var arg_request = buildOrderinvoicesCreateRefundInvoiceRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.OrderinvoicesCreateRefundInvoiceRequest.fromJson(json);
        checkOrderinvoicesCreateRefundInvoiceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            .encode(buildOrderinvoicesCreateRefundInvoiceResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createrefundinvoice(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderinvoicesCreateRefundInvoiceResponse(response);
      })));
    });
  });

  unittest.group("resource-OrderreportsResourceApi", () {
    unittest.test("method--listdisbursements", () {
      var mock = new HttpServerMock();
      api.OrderreportsResourceApi res = new api.ContentApi(mock).orderreports;
      var arg_merchantId = "foo";
      var arg_disbursementStartDate = "foo";
      var arg_disbursementEndDate = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["disbursementStartDate"].first,
            unittest.equals(arg_disbursementStartDate));
        unittest.expect(queryMap["disbursementEndDate"].first,
            unittest.equals(arg_disbursementEndDate));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildOrderreportsListDisbursementsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listdisbursements(arg_merchantId, arg_disbursementStartDate,
              disbursementEndDate: arg_disbursementEndDate,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderreportsListDisbursementsResponse(response);
      })));
    });

    unittest.test("method--listtransactions", () {
      var mock = new HttpServerMock();
      api.OrderreportsResourceApi res = new api.ContentApi(mock).orderreports;
      var arg_merchantId = "foo";
      var arg_disbursementId = "foo";
      var arg_transactionStartDate = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_transactionEndDate = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["transactionStartDate"].first,
            unittest.equals(arg_transactionStartDate));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["transactionEndDate"].first,
            unittest.equals(arg_transactionEndDate));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildOrderreportsListTransactionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listtransactions(
              arg_merchantId, arg_disbursementId, arg_transactionStartDate,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              transactionEndDate: arg_transactionEndDate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderreportsListTransactionsResponse(response);
      })));
    });
  });

  unittest.group("resource-OrderreturnsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrderreturnsResourceApi res = new api.ContentApi(mock).orderreturns;
      var arg_merchantId = "foo";
      var arg_returnId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildMerchantOrderReturn());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_returnId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMerchantOrderReturn(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrderreturnsResourceApi res = new api.ContentApi(mock).orderreturns;
      var arg_merchantId = "foo";
      var arg_createdEndDate = "foo";
      var arg_createdStartDate = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["createdEndDate"].first,
            unittest.equals(arg_createdEndDate));
        unittest.expect(queryMap["createdStartDate"].first,
            unittest.equals(arg_createdStartDate));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOrderreturnsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              createdEndDate: arg_createdEndDate,
              createdStartDate: arg_createdStartDate,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderreturnsListResponse(response);
      })));
    });
  });

  unittest.group("resource-OrdersResourceApi", () {
    unittest.test("method--acknowledge", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersAcknowledgeRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersAcknowledgeRequest.fromJson(json);
        checkOrdersAcknowledgeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildOrdersAcknowledgeResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .acknowledge(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersAcknowledgeResponse(response);
      })));
    });

    unittest.test("method--advancetestorder", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildOrdersAdvanceTestOrderResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .advancetestorder(arg_merchantId, arg_orderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersAdvanceTestOrderResponse(response);
      })));
    });

    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersCancelRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersCancelRequest.fromJson(json);
        checkOrdersCancelRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildOrdersCancelResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersCancelResponse(response);
      })));
    });

    unittest.test("method--cancellineitem", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersCancelLineItemRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersCancelLineItemRequest.fromJson(json);
        checkOrdersCancelLineItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildOrdersCancelLineItemResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancellineitem(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersCancelLineItemResponse(response);
      })));
    });

    unittest.test("method--canceltestorderbycustomer", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersCancelTestOrderByCustomerRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersCancelTestOrderByCustomerRequest.fromJson(json);
        checkOrdersCancelTestOrderByCustomerRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp =
            convert.json.encode(buildOrdersCancelTestOrderByCustomerResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .canceltestorderbycustomer(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersCancelTestOrderByCustomerResponse(response);
      })));
    });

    unittest.test("method--createtestorder", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersCreateTestOrderRequest();
      var arg_merchantId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersCreateTestOrderRequest.fromJson(json);
        checkOrdersCreateTestOrderRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildOrdersCreateTestOrderResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createtestorder(arg_request, arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersCreateTestOrderResponse(response);
      })));
    });

    unittest.test("method--createtestreturn", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersCreateTestReturnRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersCreateTestReturnRequest.fromJson(json);
        checkOrdersCreateTestReturnRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildOrdersCreateTestReturnResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createtestreturn(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersCreateTestReturnResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildOrder());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_orderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrder(response);
      })));
    });

    unittest.test("method--getbymerchantorderid", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_merchantId = "foo";
      var arg_merchantOrderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp =
            convert.json.encode(buildOrdersGetByMerchantOrderIdResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getbymerchantorderid(arg_merchantId, arg_merchantOrderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersGetByMerchantOrderIdResponse(response);
      })));
    });

    unittest.test("method--gettestordertemplate", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_merchantId = "foo";
      var arg_templateName = "foo";
      var arg_country = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            queryMap["country"].first, unittest.equals(arg_country));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildOrdersGetTestOrderTemplateResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .gettestordertemplate(arg_merchantId, arg_templateName,
              country: arg_country, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersGetTestOrderTemplateResponse(response);
      })));
    });

    unittest.test("method--instorerefundlineitem", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersInStoreRefundLineItemRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersInStoreRefundLineItemRequest.fromJson(json);
        checkOrdersInStoreRefundLineItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp =
            convert.json.encode(buildOrdersInStoreRefundLineItemResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .instorerefundlineitem(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersInStoreRefundLineItemResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_merchantId = "foo";
      var arg_acknowledged = true;
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_placedDateEnd = "foo";
      var arg_placedDateStart = "foo";
      var arg_statuses = buildUnnamed3371();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["acknowledged"].first,
            unittest.equals("$arg_acknowledged"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["placedDateEnd"].first,
            unittest.equals(arg_placedDateEnd));
        unittest.expect(queryMap["placedDateStart"].first,
            unittest.equals(arg_placedDateStart));
        unittest.expect(queryMap["statuses"], unittest.equals(arg_statuses));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOrdersListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              acknowledged: arg_acknowledged,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              placedDateEnd: arg_placedDateEnd,
              placedDateStart: arg_placedDateStart,
              statuses: arg_statuses,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersListResponse(response);
      })));
    });

    unittest.test("method--rejectreturnlineitem", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersRejectReturnLineItemRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersRejectReturnLineItemRequest.fromJson(json);
        checkOrdersRejectReturnLineItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp =
            convert.json.encode(buildOrdersRejectReturnLineItemResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rejectreturnlineitem(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersRejectReturnLineItemResponse(response);
      })));
    });

    unittest.test("method--returnrefundlineitem", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersReturnRefundLineItemRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersReturnRefundLineItemRequest.fromJson(json);
        checkOrdersReturnRefundLineItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp =
            convert.json.encode(buildOrdersReturnRefundLineItemResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .returnrefundlineitem(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersReturnRefundLineItemResponse(response);
      })));
    });

    unittest.test("method--setlineitemmetadata", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersSetLineItemMetadataRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersSetLineItemMetadataRequest.fromJson(json);
        checkOrdersSetLineItemMetadataRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp =
            convert.json.encode(buildOrdersSetLineItemMetadataResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setlineitemmetadata(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersSetLineItemMetadataResponse(response);
      })));
    });

    unittest.test("method--shiplineitems", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersShipLineItemsRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersShipLineItemsRequest.fromJson(json);
        checkOrdersShipLineItemsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildOrdersShipLineItemsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .shiplineitems(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersShipLineItemsResponse(response);
      })));
    });

    unittest.test("method--updatelineitemshippingdetails", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersUpdateLineItemShippingDetailsRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.OrdersUpdateLineItemShippingDetailsRequest.fromJson(json);
        checkOrdersUpdateLineItemShippingDetailsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            .encode(buildOrdersUpdateLineItemShippingDetailsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updatelineitemshippingdetails(
              arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersUpdateLineItemShippingDetailsResponse(response);
      })));
    });

    unittest.test("method--updatemerchantorderid", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersUpdateMerchantOrderIdRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersUpdateMerchantOrderIdRequest.fromJson(json);
        checkOrdersUpdateMerchantOrderIdRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp =
            convert.json.encode(buildOrdersUpdateMerchantOrderIdResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updatemerchantorderid(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersUpdateMerchantOrderIdResponse(response);
      })));
    });

    unittest.test("method--updateshipment", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.ContentApi(mock).orders;
      var arg_request = buildOrdersUpdateShipmentRequest();
      var arg_merchantId = "foo";
      var arg_orderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.OrdersUpdateShipmentRequest.fromJson(json);
        checkOrdersUpdateShipmentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildOrdersUpdateShipmentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateshipment(arg_request, arg_merchantId, arg_orderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersUpdateShipmentResponse(response);
      })));
    });
  });

  unittest.group("resource-PosResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.PosResourceApi res = new api.ContentApi(mock).pos;
      var arg_request = buildPosCustomBatchRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PosCustomBatchRequest.fromJson(json);
        checkPosCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("pos/batch"));
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
        var resp = convert.json.encode(buildPosCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosCustomBatchResponse(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.PosResourceApi res = new api.ContentApi(mock).pos;
      var arg_merchantId = "foo";
      var arg_targetMerchantId = "foo";
      var arg_storeCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
          .delete(arg_merchantId, arg_targetMerchantId, arg_storeCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PosResourceApi res = new api.ContentApi(mock).pos;
      var arg_merchantId = "foo";
      var arg_targetMerchantId = "foo";
      var arg_storeCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildPosStore());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_targetMerchantId, arg_storeCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosStore(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.PosResourceApi res = new api.ContentApi(mock).pos;
      var arg_request = buildPosStore();
      var arg_merchantId = "foo";
      var arg_targetMerchantId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PosStore.fromJson(json);
        checkPosStore(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildPosStore());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId, arg_targetMerchantId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosStore(response);
      })));
    });

    unittest.test("method--inventory", () {
      var mock = new HttpServerMock();
      api.PosResourceApi res = new api.ContentApi(mock).pos;
      var arg_request = buildPosInventoryRequest();
      var arg_merchantId = "foo";
      var arg_targetMerchantId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PosInventoryRequest.fromJson(json);
        checkPosInventoryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildPosInventoryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .inventory(arg_request, arg_merchantId, arg_targetMerchantId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosInventoryResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PosResourceApi res = new api.ContentApi(mock).pos;
      var arg_merchantId = "foo";
      var arg_targetMerchantId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildPosListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId, arg_targetMerchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosListResponse(response);
      })));
    });

    unittest.test("method--sale", () {
      var mock = new HttpServerMock();
      api.PosResourceApi res = new api.ContentApi(mock).pos;
      var arg_request = buildPosSaleRequest();
      var arg_merchantId = "foo";
      var arg_targetMerchantId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PosSaleRequest.fromJson(json);
        checkPosSaleRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildPosSaleResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sale(arg_request, arg_merchantId, arg_targetMerchantId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPosSaleResponse(response);
      })));
    });
  });

  unittest.group("resource-ProductsResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.ContentApi(mock).products;
      var arg_request = buildProductsCustomBatchRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ProductsCustomBatchRequest.fromJson(json);
        checkProductsCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("products/batch"));
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
        var resp = convert.json.encode(buildProductsCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductsCustomBatchResponse(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.ContentApi(mock).products;
      var arg_merchantId = "foo";
      var arg_productId = "foo";
      var arg_feedId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["feedId"].first, unittest.equals(arg_feedId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_merchantId, arg_productId,
              feedId: arg_feedId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.ContentApi(mock).products;
      var arg_merchantId = "foo";
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
        var resp = convert.json.encode(buildProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_productId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.ContentApi(mock).products;
      var arg_request = buildProduct();
      var arg_merchantId = "foo";
      var arg_feedId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Product.fromJson(json);
        checkProduct(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["feedId"].first, unittest.equals(arg_feedId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId,
              feedId: arg_feedId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProductsResourceApi res = new api.ContentApi(mock).products;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProductsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductsListResponse(response);
      })));
    });
  });

  unittest.group("resource-ProductstatusesResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.ProductstatusesResourceApi res =
          new api.ContentApi(mock).productstatuses;
      var arg_request = buildProductstatusesCustomBatchRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ProductstatusesCustomBatchRequest.fromJson(json);
        checkProductstatusesCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("productstatuses/batch"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildProductstatusesCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductstatusesCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProductstatusesResourceApi res =
          new api.ContentApi(mock).productstatuses;
      var arg_merchantId = "foo";
      var arg_productId = "foo";
      var arg_destinations = buildUnnamed3372();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            queryMap["destinations"], unittest.equals(arg_destinations));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProductStatus());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_productId,
              destinations: arg_destinations, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductStatus(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProductstatusesResourceApi res =
          new api.ContentApi(mock).productstatuses;
      var arg_merchantId = "foo";
      var arg_destinations = buildUnnamed3373();
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            queryMap["destinations"], unittest.equals(arg_destinations));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProductstatusesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              destinations: arg_destinations,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductstatusesListResponse(response);
      })));
    });
  });

  unittest.group("resource-RegionalinventoryResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.RegionalinventoryResourceApi res =
          new api.ContentApi(mock).regionalinventory;
      var arg_request = buildRegionalinventoryCustomBatchRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RegionalinventoryCustomBatchRequest.fromJson(json);
        checkRegionalinventoryCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("regionalinventory/batch"));
        pathOffset += 23;

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
        var resp =
            convert.json.encode(buildRegionalinventoryCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRegionalinventoryCustomBatchResponse(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.RegionalinventoryResourceApi res =
          new api.ContentApi(mock).regionalinventory;
      var arg_request = buildRegionalInventory();
      var arg_merchantId = "foo";
      var arg_productId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RegionalInventory.fromJson(json);
        checkRegionalInventory(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildRegionalInventory());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId, arg_productId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRegionalInventory(response);
      })));
    });
  });

  unittest.group("resource-ReturnaddressResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.ReturnaddressResourceApi res = new api.ContentApi(mock).returnaddress;
      var arg_request = buildReturnaddressCustomBatchRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReturnaddressCustomBatchRequest.fromJson(json);
        checkReturnaddressCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("returnaddress/batch"));
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
        var resp = convert.json.encode(buildReturnaddressCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReturnaddressCustomBatchResponse(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ReturnaddressResourceApi res = new api.ContentApi(mock).returnaddress;
      var arg_merchantId = "foo";
      var arg_returnAddressId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
          .delete(arg_merchantId, arg_returnAddressId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ReturnaddressResourceApi res = new api.ContentApi(mock).returnaddress;
      var arg_merchantId = "foo";
      var arg_returnAddressId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildReturnAddress());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_returnAddressId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReturnAddress(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.ReturnaddressResourceApi res = new api.ContentApi(mock).returnaddress;
      var arg_request = buildReturnAddress();
      var arg_merchantId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReturnAddress.fromJson(json);
        checkReturnAddress(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildReturnAddress());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReturnAddress(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ReturnaddressResourceApi res = new api.ContentApi(mock).returnaddress;
      var arg_merchantId = "foo";
      var arg_country = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            queryMap["country"].first, unittest.equals(arg_country));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildReturnaddressListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              country: arg_country,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReturnaddressListResponse(response);
      })));
    });
  });

  unittest.group("resource-ReturnpolicyResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.ReturnpolicyResourceApi res = new api.ContentApi(mock).returnpolicy;
      var arg_request = buildReturnpolicyCustomBatchRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReturnpolicyCustomBatchRequest.fromJson(json);
        checkReturnpolicyCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("returnpolicy/batch"));
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
        var resp = convert.json.encode(buildReturnpolicyCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReturnpolicyCustomBatchResponse(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ReturnpolicyResourceApi res = new api.ContentApi(mock).returnpolicy;
      var arg_merchantId = "foo";
      var arg_returnPolicyId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
          .delete(arg_merchantId, arg_returnPolicyId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ReturnpolicyResourceApi res = new api.ContentApi(mock).returnpolicy;
      var arg_merchantId = "foo";
      var arg_returnPolicyId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildReturnPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_returnPolicyId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReturnPolicy(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.ReturnpolicyResourceApi res = new api.ContentApi(mock).returnpolicy;
      var arg_request = buildReturnPolicy();
      var arg_merchantId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReturnPolicy.fromJson(json);
        checkReturnPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildReturnPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReturnPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ReturnpolicyResourceApi res = new api.ContentApi(mock).returnpolicy;
      var arg_merchantId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildReturnpolicyListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReturnpolicyListResponse(response);
      })));
    });
  });

  unittest.group("resource-ShippingsettingsResourceApi", () {
    unittest.test("method--custombatch", () {
      var mock = new HttpServerMock();
      api.ShippingsettingsResourceApi res =
          new api.ContentApi(mock).shippingsettings;
      var arg_request = buildShippingsettingsCustomBatchRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ShippingsettingsCustomBatchRequest.fromJson(json);
        checkShippingsettingsCustomBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("content/v2.1/"));
        pathOffset += 13;
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("shippingsettings/batch"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildShippingsettingsCustomBatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .custombatch(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingsettingsCustomBatchResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ShippingsettingsResourceApi res =
          new api.ContentApi(mock).shippingsettings;
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildShippingSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_merchantId, arg_accountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingSettings(response);
      })));
    });

    unittest.test("method--getsupportedcarriers", () {
      var mock = new HttpServerMock();
      api.ShippingsettingsResourceApi res =
          new api.ContentApi(mock).shippingsettings;
      var arg_merchantId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            .encode(buildShippingsettingsGetSupportedCarriersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getsupportedcarriers(arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingsettingsGetSupportedCarriersResponse(response);
      })));
    });

    unittest.test("method--getsupportedholidays", () {
      var mock = new HttpServerMock();
      api.ShippingsettingsResourceApi res =
          new api.ContentApi(mock).shippingsettings;
      var arg_merchantId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            .encode(buildShippingsettingsGetSupportedHolidaysResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getsupportedholidays(arg_merchantId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingsettingsGetSupportedHolidaysResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ShippingsettingsResourceApi res =
          new api.ContentApi(mock).shippingsettings;
      var arg_merchantId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildShippingsettingsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_merchantId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingsettingsListResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ShippingsettingsResourceApi res =
          new api.ContentApi(mock).shippingsettings;
      var arg_request = buildShippingSettings();
      var arg_merchantId = "foo";
      var arg_accountId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ShippingSettings.fromJson(json);
        checkShippingSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildShippingSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_merchantId, arg_accountId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShippingSettings(response);
      })));
    });
  });
}
