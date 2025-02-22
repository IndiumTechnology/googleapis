// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unused_import, unnecessary_cast

library googleapis.fusiontables.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

const core.String USER_AGENT = 'dart-api-client fusiontables/v1';

/// API for working with Fusion Tables data.
class FusiontablesApi {
  /// Manage your Fusion Tables
  static const FusiontablesScope =
      "https://www.googleapis.com/auth/fusiontables";

  /// View your Fusion Tables
  static const FusiontablesReadonlyScope =
      "https://www.googleapis.com/auth/fusiontables.readonly";

  final commons.ApiRequester _requester;

  ColumnResourceApi get column => new ColumnResourceApi(_requester);
  QueryResourceApi get query => new QueryResourceApi(_requester);
  StyleResourceApi get style => new StyleResourceApi(_requester);
  TableResourceApi get table => new TableResourceApi(_requester);
  TaskResourceApi get task => new TaskResourceApi(_requester);
  TemplateResourceApi get template => new TemplateResourceApi(_requester);

  FusiontablesApi(http.Client client,
      {core.String rootUrl = "https://www.googleapis.com/",
      core.String servicePath = "fusiontables/v1/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ColumnResourceApi {
  final commons.ApiRequester _requester;

  ColumnResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes the column.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table from which the column is being deleted.
  ///
  /// [columnId] - Name or identifier for the column being deleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String tableId, core.String columnId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (columnId == null) {
      throw new core.ArgumentError("Parameter columnId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'tables/' +
        commons.Escaper.ecapeVariable('$tableId') +
        '/columns/' +
        commons.Escaper.ecapeVariable('$columnId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves a specific column by its id.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table to which the column belongs.
  ///
  /// [columnId] - Name or identifier for the column that is being requested.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Column].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Column> get(core.String tableId, core.String columnId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (columnId == null) {
      throw new core.ArgumentError("Parameter columnId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' +
        commons.Escaper.ecapeVariable('$tableId') +
        '/columns/' +
        commons.Escaper.ecapeVariable('$columnId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Column.fromJson(data));
  }

  /// Adds a new column to the table.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table for which a new column is being added.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Column].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Column> insert(Column request, core.String tableId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' + commons.Escaper.ecapeVariable('$tableId') + '/columns';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Column.fromJson(data));
  }

  /// Retrieves a list of columns.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table whose columns are being listed.
  ///
  /// [maxResults] - Maximum number of columns to return. Optional. Default is
  /// 5.
  ///
  /// [pageToken] - Continuation token specifying which result page to return.
  /// Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ColumnList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ColumnList> list(core.String tableId,
      {core.int maxResults, core.String pageToken, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' + commons.Escaper.ecapeVariable('$tableId') + '/columns';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ColumnList.fromJson(data));
  }

  /// Updates the name or type of an existing column. This method supports patch
  /// semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table for which the column is being updated.
  ///
  /// [columnId] - Name or identifier for the column that is being updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Column].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Column> patch(
      Column request, core.String tableId, core.String columnId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (columnId == null) {
      throw new core.ArgumentError("Parameter columnId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' +
        commons.Escaper.ecapeVariable('$tableId') +
        '/columns/' +
        commons.Escaper.ecapeVariable('$columnId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Column.fromJson(data));
  }

  /// Updates the name or type of an existing column.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table for which the column is being updated.
  ///
  /// [columnId] - Name or identifier for the column that is being updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Column].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Column> update(
      Column request, core.String tableId, core.String columnId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (columnId == null) {
      throw new core.ArgumentError("Parameter columnId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' +
        commons.Escaper.ecapeVariable('$tableId') +
        '/columns/' +
        commons.Escaper.ecapeVariable('$columnId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Column.fromJson(data));
  }
}

class QueryResourceApi {
  final commons.ApiRequester _requester;

  QueryResourceApi(commons.ApiRequester client) : _requester = client;

  /// Executes an SQL SELECT/INSERT/UPDATE/DELETE/SHOW/DESCRIBE/CREATE
  /// statement.
  ///
  /// Request parameters:
  ///
  /// [sql_1] - An SQL SELECT/SHOW/DESCRIBE/INSERT/UPDATE/DELETE/CREATE
  /// statement.
  ///
  /// [hdrs] - Should column names be included (in the first row)?. Default is
  /// true.
  ///
  /// [typed] - Should typed values be returned in the (JSON) response --
  /// numbers for numeric values and parsed geometries for KML values? Default
  /// is true.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [Sqlresponse] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future sql(core.String sql_1,
      {core.bool hdrs,
      core.bool typed,
      core.String $fields,
      commons.DownloadOptions downloadOptions =
          commons.DownloadOptions.Metadata}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (sql_1 == null) {
      throw new core.ArgumentError("Parameter sql_1 is required.");
    }
    _queryParams["sql"] = [sql_1];
    if (hdrs != null) {
      _queryParams["hdrs"] = ["${hdrs}"];
    }
    if (typed != null) {
      _queryParams["typed"] = ["${typed}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = downloadOptions;

    _url = 'query';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    if (_downloadOptions == null ||
        _downloadOptions == commons.DownloadOptions.Metadata) {
      return _response.then((data) => new Sqlresponse.fromJson(data));
    } else {
      return _response;
    }
  }

  /// Executes an SQL SELECT/SHOW/DESCRIBE statement.
  ///
  /// Request parameters:
  ///
  /// [sql_1] - An SQL SELECT/SHOW/DESCRIBE statement.
  ///
  /// [hdrs] - Should column names be included (in the first row)?. Default is
  /// true.
  ///
  /// [typed] - Should typed values be returned in the (JSON) response --
  /// numbers for numeric values and parsed geometries for KML values? Default
  /// is true.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [Sqlresponse] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future sqlGet(core.String sql_1,
      {core.bool hdrs,
      core.bool typed,
      core.String $fields,
      commons.DownloadOptions downloadOptions =
          commons.DownloadOptions.Metadata}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (sql_1 == null) {
      throw new core.ArgumentError("Parameter sql_1 is required.");
    }
    _queryParams["sql"] = [sql_1];
    if (hdrs != null) {
      _queryParams["hdrs"] = ["${hdrs}"];
    }
    if (typed != null) {
      _queryParams["typed"] = ["${typed}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = downloadOptions;

    _url = 'query';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    if (_downloadOptions == null ||
        _downloadOptions == commons.DownloadOptions.Metadata) {
      return _response.then((data) => new Sqlresponse.fromJson(data));
    } else {
      return _response;
    }
  }
}

class StyleResourceApi {
  final commons.ApiRequester _requester;

  StyleResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a style.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table from which the style is being deleted
  ///
  /// [styleId] - Identifier (within a table) for the style being deleted
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String tableId, core.int styleId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (styleId == null) {
      throw new core.ArgumentError("Parameter styleId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'tables/' +
        commons.Escaper.ecapeVariable('$tableId') +
        '/styles/' +
        commons.Escaper.ecapeVariable('$styleId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets a specific style.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table to which the requested style belongs
  ///
  /// [styleId] - Identifier (integer) for a specific style in a table
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StyleSetting].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StyleSetting> get(core.String tableId, core.int styleId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (styleId == null) {
      throw new core.ArgumentError("Parameter styleId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' +
        commons.Escaper.ecapeVariable('$tableId') +
        '/styles/' +
        commons.Escaper.ecapeVariable('$styleId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StyleSetting.fromJson(data));
  }

  /// Adds a new style for the table.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table for which a new style is being added
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StyleSetting].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StyleSetting> insert(StyleSetting request, core.String tableId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' + commons.Escaper.ecapeVariable('$tableId') + '/styles';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StyleSetting.fromJson(data));
  }

  /// Retrieves a list of styles.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table whose styles are being listed
  ///
  /// [maxResults] - Maximum number of styles to return. Optional. Default is 5.
  ///
  /// [pageToken] - Continuation token specifying which result page to return.
  /// Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StyleSettingList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StyleSettingList> list(core.String tableId,
      {core.int maxResults, core.String pageToken, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' + commons.Escaper.ecapeVariable('$tableId') + '/styles';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StyleSettingList.fromJson(data));
  }

  /// Updates an existing style. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table whose style is being updated.
  ///
  /// [styleId] - Identifier (within a table) for the style being updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StyleSetting].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StyleSetting> patch(
      StyleSetting request, core.String tableId, core.int styleId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (styleId == null) {
      throw new core.ArgumentError("Parameter styleId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' +
        commons.Escaper.ecapeVariable('$tableId') +
        '/styles/' +
        commons.Escaper.ecapeVariable('$styleId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StyleSetting.fromJson(data));
  }

  /// Updates an existing style.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table whose style is being updated.
  ///
  /// [styleId] - Identifier (within a table) for the style being updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StyleSetting].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StyleSetting> update(
      StyleSetting request, core.String tableId, core.int styleId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (styleId == null) {
      throw new core.ArgumentError("Parameter styleId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' +
        commons.Escaper.ecapeVariable('$tableId') +
        '/styles/' +
        commons.Escaper.ecapeVariable('$styleId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StyleSetting.fromJson(data));
  }
}

class TableResourceApi {
  final commons.ApiRequester _requester;

  TableResourceApi(commons.ApiRequester client) : _requester = client;

  /// Copies a table.
  ///
  /// Request parameters:
  ///
  /// [tableId] - ID of the table that is being copied.
  ///
  /// [copyPresentation] - Whether to also copy tabs, styles, and templates.
  /// Default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> copy(core.String tableId,
      {core.bool copyPresentation, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (copyPresentation != null) {
      _queryParams["copyPresentation"] = ["${copyPresentation}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' + commons.Escaper.ecapeVariable('$tableId') + '/copy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Table.fromJson(data));
  }

  /// Deletes a table.
  ///
  /// Request parameters:
  ///
  /// [tableId] - ID of the table that is being deleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String tableId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'tables/' + commons.Escaper.ecapeVariable('$tableId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves a specific table by its id.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Identifier(ID) for the table being requested.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> get(core.String tableId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' + commons.Escaper.ecapeVariable('$tableId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Table.fromJson(data));
  }

  /// Import more rows into a table.
  ///
  /// Request parameters:
  ///
  /// [tableId] - The table into which new rows are being imported.
  ///
  /// [delimiter] - The delimiter used to separate cell values. This can only
  /// consist of a single character. Default is ','.
  ///
  /// [encoding] - The encoding of the content. Default is UTF-8. Use
  /// 'auto-detect' if you are unsure of the encoding.
  ///
  /// [endLine] - The index of the last line from which to start importing,
  /// exclusive. Thus, the number of imported lines is endLine - startLine. If
  /// this parameter is not provided, the file will be imported until the last
  /// line of the file. If endLine is negative, then the imported content will
  /// exclude the last endLine lines. That is, if endline is negative, no line
  /// will be imported whose index is greater than N + endLine where N is the
  /// number of lines in the file, and the number of imported lines will be N +
  /// endLine - startLine.
  ///
  /// [isStrict] - Whether the CSV must have the same number of values for each
  /// row. If false, rows with fewer values will be padded with empty values.
  /// Default is true.
  ///
  /// [startLine] - The index of the first line from which to start importing,
  /// inclusive. Default is 0.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Import].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Import> importRows(core.String tableId,
      {core.String delimiter,
      core.String encoding,
      core.int endLine,
      core.bool isStrict,
      core.int startLine,
      core.String $fields,
      commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
      commons.Media uploadMedia}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (delimiter != null) {
      _queryParams["delimiter"] = [delimiter];
    }
    if (encoding != null) {
      _queryParams["encoding"] = [encoding];
    }
    if (endLine != null) {
      _queryParams["endLine"] = ["${endLine}"];
    }
    if (isStrict != null) {
      _queryParams["isStrict"] = ["${isStrict}"];
    }
    if (startLine != null) {
      _queryParams["startLine"] = ["${startLine}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'tables/' + commons.Escaper.ecapeVariable('$tableId') + '/import';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/fusiontables/v1/tables/' +
          commons.Escaper.ecapeVariable('$tableId') +
          '/import';
    } else {
      _url = '/upload/fusiontables/v1/tables/' +
          commons.Escaper.ecapeVariable('$tableId') +
          '/import';
    }

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Import.fromJson(data));
  }

  /// Import a new table.
  ///
  /// Request parameters:
  ///
  /// [name] - The name to be assigned to the new table.
  ///
  /// [delimiter] - The delimiter used to separate cell values. This can only
  /// consist of a single character. Default is ','.
  ///
  /// [encoding] - The encoding of the content. Default is UTF-8. Use
  /// 'auto-detect' if you are unsure of the encoding.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> importTable(core.String name,
      {core.String delimiter,
      core.String encoding,
      core.String $fields,
      commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
      commons.Media uploadMedia}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    _queryParams["name"] = [name];
    if (delimiter != null) {
      _queryParams["delimiter"] = [delimiter];
    }
    if (encoding != null) {
      _queryParams["encoding"] = [encoding];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'tables/import';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/fusiontables/v1/tables/import';
    } else {
      _url = '/upload/fusiontables/v1/tables/import';
    }

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Table.fromJson(data));
  }

  /// Creates a new table.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> insert(Table request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Table.fromJson(data));
  }

  /// Retrieves a list of tables a user owns.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - Maximum number of styles to return. Optional. Default is 5.
  ///
  /// [pageToken] - Continuation token specifying which result page to return.
  /// Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TableList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TableList> list(
      {core.int maxResults, core.String pageToken, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TableList.fromJson(data));
  }

  /// Updates an existing table. Unless explicitly requested, only the name,
  /// description, and attribution will be updated. This method supports patch
  /// semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tableId] - ID of the table that is being updated.
  ///
  /// [replaceViewDefinition] - Should the view definition also be updated? The
  /// specified view definition replaces the existing one. Only a view can be
  /// updated with a new definition.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> patch(Table request, core.String tableId,
      {core.bool replaceViewDefinition, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (replaceViewDefinition != null) {
      _queryParams["replaceViewDefinition"] = ["${replaceViewDefinition}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' + commons.Escaper.ecapeVariable('$tableId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Table.fromJson(data));
  }

  /// Updates an existing table. Unless explicitly requested, only the name,
  /// description, and attribution will be updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tableId] - ID of the table that is being updated.
  ///
  /// [replaceViewDefinition] - Should the view definition also be updated? The
  /// specified view definition replaces the existing one. Only a view can be
  /// updated with a new definition.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> update(Table request, core.String tableId,
      {core.bool replaceViewDefinition, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (replaceViewDefinition != null) {
      _queryParams["replaceViewDefinition"] = ["${replaceViewDefinition}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' + commons.Escaper.ecapeVariable('$tableId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Table.fromJson(data));
  }
}

class TaskResourceApi {
  final commons.ApiRequester _requester;

  TaskResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes the task, unless already started.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table from which the task is being deleted.
  ///
  /// [taskId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String tableId, core.String taskId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (taskId == null) {
      throw new core.ArgumentError("Parameter taskId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'tables/' +
        commons.Escaper.ecapeVariable('$tableId') +
        '/tasks/' +
        commons.Escaper.ecapeVariable('$taskId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves a specific task by its id.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table to which the task belongs.
  ///
  /// [taskId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> get(core.String tableId, core.String taskId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (taskId == null) {
      throw new core.ArgumentError("Parameter taskId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' +
        commons.Escaper.ecapeVariable('$tableId') +
        '/tasks/' +
        commons.Escaper.ecapeVariable('$taskId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Task.fromJson(data));
  }

  /// Retrieves a list of tasks.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table whose tasks are being listed.
  ///
  /// [maxResults] - Maximum number of columns to return. Optional. Default is
  /// 5.
  ///
  /// [pageToken] - null
  ///
  /// [startIndex] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TaskList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TaskList> list(core.String tableId,
      {core.int maxResults,
      core.String pageToken,
      core.int startIndex,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (startIndex != null) {
      _queryParams["startIndex"] = ["${startIndex}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' + commons.Escaper.ecapeVariable('$tableId') + '/tasks';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TaskList.fromJson(data));
  }
}

class TemplateResourceApi {
  final commons.ApiRequester _requester;

  TemplateResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a template
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table from which the template is being deleted
  ///
  /// [templateId] - Identifier for the template which is being deleted
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String tableId, core.int templateId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (templateId == null) {
      throw new core.ArgumentError("Parameter templateId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'tables/' +
        commons.Escaper.ecapeVariable('$tableId') +
        '/templates/' +
        commons.Escaper.ecapeVariable('$templateId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Retrieves a specific template by its id
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table to which the template belongs
  ///
  /// [templateId] - Identifier for the template that is being requested
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Template].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Template> get(core.String tableId, core.int templateId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (templateId == null) {
      throw new core.ArgumentError("Parameter templateId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' +
        commons.Escaper.ecapeVariable('$tableId') +
        '/templates/' +
        commons.Escaper.ecapeVariable('$templateId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Template.fromJson(data));
  }

  /// Creates a new template for the table.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table for which a new template is being created
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Template].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Template> insert(Template request, core.String tableId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' + commons.Escaper.ecapeVariable('$tableId') + '/templates';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Template.fromJson(data));
  }

  /// Retrieves a list of templates.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Identifier for the table whose templates are being requested
  ///
  /// [maxResults] - Maximum number of templates to return. Optional. Default is
  /// 5.
  ///
  /// [pageToken] - Continuation token specifying which results page to return.
  /// Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TemplateList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TemplateList> list(core.String tableId,
      {core.int maxResults, core.String pageToken, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' + commons.Escaper.ecapeVariable('$tableId') + '/templates';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TemplateList.fromJson(data));
  }

  /// Updates an existing template. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table to which the updated template belongs
  ///
  /// [templateId] - Identifier for the template that is being updated
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Template].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Template> patch(
      Template request, core.String tableId, core.int templateId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (templateId == null) {
      throw new core.ArgumentError("Parameter templateId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' +
        commons.Escaper.ecapeVariable('$tableId') +
        '/templates/' +
        commons.Escaper.ecapeVariable('$templateId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Template.fromJson(data));
  }

  /// Updates an existing template
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tableId] - Table to which the updated template belongs
  ///
  /// [templateId] - Identifier for the template that is being updated
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Template].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Template> update(
      Template request, core.String tableId, core.int templateId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (templateId == null) {
      throw new core.ArgumentError("Parameter templateId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'tables/' +
        commons.Escaper.ecapeVariable('$tableId') +
        '/templates/' +
        commons.Escaper.ecapeVariable('$templateId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Template.fromJson(data));
  }
}

/// Specifies the minimum and maximum values, the color, opacity, icon and
/// weight of a bucket within a StyleSetting.
class Bucket {
  /// Color of line or the interior of a polygon in #RRGGBB format.
  core.String color;

  /// Icon name used for a point.
  core.String icon;

  /// Maximum value in the selected column for a row to be styled according to
  /// the bucket color, opacity, icon, or weight.
  core.double max;

  /// Minimum value in the selected column for a row to be styled according to
  /// the bucket color, opacity, icon, or weight.
  core.double min;

  /// Opacity of the color: 0.0 (transparent) to 1.0 (opaque).
  core.double opacity;

  /// Width of a line (in pixels).
  core.int weight;

  Bucket();

  Bucket.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = _json["color"];
    }
    if (_json.containsKey("icon")) {
      icon = _json["icon"];
    }
    if (_json.containsKey("max")) {
      max = _json["max"].toDouble();
    }
    if (_json.containsKey("min")) {
      min = _json["min"].toDouble();
    }
    if (_json.containsKey("opacity")) {
      opacity = _json["opacity"].toDouble();
    }
    if (_json.containsKey("weight")) {
      weight = _json["weight"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (color != null) {
      _json["color"] = color;
    }
    if (icon != null) {
      _json["icon"] = icon;
    }
    if (max != null) {
      _json["max"] = max;
    }
    if (min != null) {
      _json["min"] = min;
    }
    if (opacity != null) {
      _json["opacity"] = opacity;
    }
    if (weight != null) {
      _json["weight"] = weight;
    }
    return _json;
  }
}

/// Optional identifier of the base column. If present, this column is derived
/// from the specified base column.
class ColumnBaseColumn {
  /// The id of the column in the base table from which this column is derived.
  core.int columnId;

  /// Offset to the entry in the list of base tables in the table definition.
  core.int tableIndex;

  ColumnBaseColumn();

  ColumnBaseColumn.fromJson(core.Map _json) {
    if (_json.containsKey("columnId")) {
      columnId = _json["columnId"];
    }
    if (_json.containsKey("tableIndex")) {
      tableIndex = _json["tableIndex"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (columnId != null) {
      _json["columnId"] = columnId;
    }
    if (tableIndex != null) {
      _json["tableIndex"] = tableIndex;
    }
    return _json;
  }
}

/// Specifies the id, name and type of a column in a table.
class Column {
  /// Optional identifier of the base column. If present, this column is derived
  /// from the specified base column.
  ColumnBaseColumn baseColumn;

  /// Identifier for the column.
  core.int columnId;

  /// Optional column description.
  core.String description;

  /// Optional column predicate. Used to map table to graph data model
  /// (subject,predicate,object) See
  /// http://www.w3.org/TR/2014/REC-rdf11-concepts-20140225/#data-model
  core.String graphPredicate;

  /// Type name: a template for an individual column.
  core.String kind;

  /// Required name of the column.
  core.String name;

  /// Required type of the column.
  core.String type;

  Column();

  Column.fromJson(core.Map _json) {
    if (_json.containsKey("baseColumn")) {
      baseColumn = new ColumnBaseColumn.fromJson(_json["baseColumn"]);
    }
    if (_json.containsKey("columnId")) {
      columnId = _json["columnId"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("graph_predicate")) {
      graphPredicate = _json["graph_predicate"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (baseColumn != null) {
      _json["baseColumn"] = (baseColumn).toJson();
    }
    if (columnId != null) {
      _json["columnId"] = columnId;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (graphPredicate != null) {
      _json["graph_predicate"] = graphPredicate;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Represents a list of columns in a table.
class ColumnList {
  /// List of all requested columns.
  core.List<Column> items;

  /// Type name: a list of all columns.
  core.String kind;

  /// Token used to access the next page of this result. No token is displayed
  /// if there are no more pages left.
  core.String nextPageToken;

  /// Total number of columns for the table.
  core.int totalItems;

  ColumnList();

  ColumnList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Column>((value) => new Column.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("totalItems")) {
      totalItems = _json["totalItems"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (totalItems != null) {
      _json["totalItems"] = totalItems;
    }
    return _json;
  }
}

/// Represents a Geometry object.
class Geometry {
  /// The list of geometries in this geometry collection.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object> geometries;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object geometry;

  /// Type: A collection of geometries.
  core.String type;

  Geometry();

  Geometry.fromJson(core.Map _json) {
    if (_json.containsKey("geometries")) {
      geometries = (_json["geometries"] as core.List).cast<core.Object>();
    }
    if (_json.containsKey("geometry")) {
      geometry = _json["geometry"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (geometries != null) {
      _json["geometries"] = geometries;
    }
    if (geometry != null) {
      _json["geometry"] = geometry;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Represents an import request.
class Import {
  /// Type name: a template for an import request.
  core.String kind;

  /// The number of rows received from the import request.
  core.String numRowsReceived;

  Import();

  Import.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("numRowsReceived")) {
      numRowsReceived = _json["numRowsReceived"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (numRowsReceived != null) {
      _json["numRowsReceived"] = numRowsReceived;
    }
    return _json;
  }
}

/// Represents a line geometry.
class Line {
  /// The coordinates that define the line.
  core.List<core.List<core.double>> coordinates;

  /// Type: A line geometry.
  core.String type;

  Line();

  Line.fromJson(core.Map _json) {
    if (_json.containsKey("coordinates")) {
      coordinates = (_json["coordinates"] as core.List)
          .map<core.List<core.double>>((value) => (value as core.List)
              .map<core.double>((value) => value.toDouble())
              .toList())
          .toList();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (coordinates != null) {
      _json["coordinates"] = coordinates;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Represents a LineStyle within a StyleSetting
class LineStyle {
  /// Color of the line in #RRGGBB format.
  core.String strokeColor;

  /// Column-value, gradient or buckets styler that is used to determine the
  /// line color and opacity.
  StyleFunction strokeColorStyler;

  /// Opacity of the line : 0.0 (transparent) to 1.0 (opaque).
  core.double strokeOpacity;

  /// Width of the line in pixels.
  core.int strokeWeight;

  /// Column-value or bucket styler that is used to determine the width of the
  /// line.
  StyleFunction strokeWeightStyler;

  LineStyle();

  LineStyle.fromJson(core.Map _json) {
    if (_json.containsKey("strokeColor")) {
      strokeColor = _json["strokeColor"];
    }
    if (_json.containsKey("strokeColorStyler")) {
      strokeColorStyler =
          new StyleFunction.fromJson(_json["strokeColorStyler"]);
    }
    if (_json.containsKey("strokeOpacity")) {
      strokeOpacity = _json["strokeOpacity"].toDouble();
    }
    if (_json.containsKey("strokeWeight")) {
      strokeWeight = _json["strokeWeight"];
    }
    if (_json.containsKey("strokeWeightStyler")) {
      strokeWeightStyler =
          new StyleFunction.fromJson(_json["strokeWeightStyler"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (strokeColor != null) {
      _json["strokeColor"] = strokeColor;
    }
    if (strokeColorStyler != null) {
      _json["strokeColorStyler"] = (strokeColorStyler).toJson();
    }
    if (strokeOpacity != null) {
      _json["strokeOpacity"] = strokeOpacity;
    }
    if (strokeWeight != null) {
      _json["strokeWeight"] = strokeWeight;
    }
    if (strokeWeightStyler != null) {
      _json["strokeWeightStyler"] = (strokeWeightStyler).toJson();
    }
    return _json;
  }
}

/// Represents a point object.
class Point {
  /// The coordinates that define the point.
  core.List<core.double> coordinates;

  /// Point: A point geometry.
  core.String type;

  Point();

  Point.fromJson(core.Map _json) {
    if (_json.containsKey("coordinates")) {
      coordinates = (_json["coordinates"] as core.List)
          .map<core.double>((value) => value.toDouble())
          .toList();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (coordinates != null) {
      _json["coordinates"] = coordinates;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Represents a PointStyle within a StyleSetting
class PointStyle {
  /// Name of the icon. Use values defined in
  /// http://www.google.com/fusiontables/DataSource?dsrcid=308519
  core.String iconName;

  /// Column or a bucket value from which the icon name is to be determined.
  StyleFunction iconStyler;

  PointStyle();

  PointStyle.fromJson(core.Map _json) {
    if (_json.containsKey("iconName")) {
      iconName = _json["iconName"];
    }
    if (_json.containsKey("iconStyler")) {
      iconStyler = new StyleFunction.fromJson(_json["iconStyler"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (iconName != null) {
      _json["iconName"] = iconName;
    }
    if (iconStyler != null) {
      _json["iconStyler"] = (iconStyler).toJson();
    }
    return _json;
  }
}

/// Represents a polygon object.
class Polygon {
  /// The coordinates that define the polygon.
  core.List<core.List<core.List<core.double>>> coordinates;

  /// Type: A polygon geometry.
  core.String type;

  Polygon();

  Polygon.fromJson(core.Map _json) {
    if (_json.containsKey("coordinates")) {
      coordinates = (_json["coordinates"] as core.List)
          .map<core.List<core.List<core.double>>>((value) =>
              (value as core.List)
                  .map<core.List<core.double>>((value) => (value as core.List)
                      .map<core.double>((value) => value.toDouble())
                      .toList())
                  .toList())
          .toList();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (coordinates != null) {
      _json["coordinates"] = coordinates;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Represents a PolygonStyle within a StyleSetting
class PolygonStyle {
  /// Color of the interior of the polygon in #RRGGBB format.
  core.String fillColor;

  /// Column-value, gradient, or bucket styler that is used to determine the
  /// interior color and opacity of the polygon.
  StyleFunction fillColorStyler;

  /// Opacity of the interior of the polygon: 0.0 (transparent) to 1.0 (opaque).
  core.double fillOpacity;

  /// Color of the polygon border in #RRGGBB format.
  core.String strokeColor;

  /// Column-value, gradient or buckets styler that is used to determine the
  /// border color and opacity.
  StyleFunction strokeColorStyler;

  /// Opacity of the polygon border: 0.0 (transparent) to 1.0 (opaque).
  core.double strokeOpacity;

  /// Width of the polyon border in pixels.
  core.int strokeWeight;

  /// Column-value or bucket styler that is used to determine the width of the
  /// polygon border.
  StyleFunction strokeWeightStyler;

  PolygonStyle();

  PolygonStyle.fromJson(core.Map _json) {
    if (_json.containsKey("fillColor")) {
      fillColor = _json["fillColor"];
    }
    if (_json.containsKey("fillColorStyler")) {
      fillColorStyler = new StyleFunction.fromJson(_json["fillColorStyler"]);
    }
    if (_json.containsKey("fillOpacity")) {
      fillOpacity = _json["fillOpacity"].toDouble();
    }
    if (_json.containsKey("strokeColor")) {
      strokeColor = _json["strokeColor"];
    }
    if (_json.containsKey("strokeColorStyler")) {
      strokeColorStyler =
          new StyleFunction.fromJson(_json["strokeColorStyler"]);
    }
    if (_json.containsKey("strokeOpacity")) {
      strokeOpacity = _json["strokeOpacity"].toDouble();
    }
    if (_json.containsKey("strokeWeight")) {
      strokeWeight = _json["strokeWeight"];
    }
    if (_json.containsKey("strokeWeightStyler")) {
      strokeWeightStyler =
          new StyleFunction.fromJson(_json["strokeWeightStyler"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fillColor != null) {
      _json["fillColor"] = fillColor;
    }
    if (fillColorStyler != null) {
      _json["fillColorStyler"] = (fillColorStyler).toJson();
    }
    if (fillOpacity != null) {
      _json["fillOpacity"] = fillOpacity;
    }
    if (strokeColor != null) {
      _json["strokeColor"] = strokeColor;
    }
    if (strokeColorStyler != null) {
      _json["strokeColorStyler"] = (strokeColorStyler).toJson();
    }
    if (strokeOpacity != null) {
      _json["strokeOpacity"] = strokeOpacity;
    }
    if (strokeWeight != null) {
      _json["strokeWeight"] = strokeWeight;
    }
    if (strokeWeightStyler != null) {
      _json["strokeWeightStyler"] = (strokeWeightStyler).toJson();
    }
    return _json;
  }
}

/// Represents a response to an sql statement.
class Sqlresponse {
  /// Columns in the table.
  core.List<core.String> columns;

  /// Type name: a template for an individual table.
  core.String kind;

  /// The rows in the table. For each cell we print out whatever cell value
  /// (e.g., numeric, string) exists. Thus it is important that each cell
  /// contains only one value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.List<core.Object>> rows;

  Sqlresponse();

  Sqlresponse.fromJson(core.Map _json) {
    if (_json.containsKey("columns")) {
      columns = (_json["columns"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("rows")) {
      rows = (_json["rows"] as core.List)
          .map<core.List<core.Object>>(
              (value) => (value as core.List).cast<core.Object>())
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (columns != null) {
      _json["columns"] = columns;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (rows != null) {
      _json["rows"] = rows;
    }
    return _json;
  }
}

class StyleFunctionGradientColors {
  /// Color in #RRGGBB format.
  core.String color;

  /// Opacity of the color: 0.0 (transparent) to 1.0 (opaque).
  core.double opacity;

  StyleFunctionGradientColors();

  StyleFunctionGradientColors.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = _json["color"];
    }
    if (_json.containsKey("opacity")) {
      opacity = _json["opacity"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (color != null) {
      _json["color"] = color;
    }
    if (opacity != null) {
      _json["opacity"] = opacity;
    }
    return _json;
  }
}

/// Gradient function that interpolates a range of colors based on column value.
class StyleFunctionGradient {
  /// Array with two or more colors.
  core.List<StyleFunctionGradientColors> colors;

  /// Higher-end of the interpolation range: rows with this value will be
  /// assigned to colors[n-1].
  core.double max;

  /// Lower-end of the interpolation range: rows with this value will be
  /// assigned to colors[0].
  core.double min;

  StyleFunctionGradient();

  StyleFunctionGradient.fromJson(core.Map _json) {
    if (_json.containsKey("colors")) {
      colors = (_json["colors"] as core.List)
          .map<StyleFunctionGradientColors>(
              (value) => new StyleFunctionGradientColors.fromJson(value))
          .toList();
    }
    if (_json.containsKey("max")) {
      max = _json["max"].toDouble();
    }
    if (_json.containsKey("min")) {
      min = _json["min"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (colors != null) {
      _json["colors"] = colors.map((value) => (value).toJson()).toList();
    }
    if (max != null) {
      _json["max"] = max;
    }
    if (min != null) {
      _json["min"] = min;
    }
    return _json;
  }
}

/// Represents a StyleFunction within a StyleSetting
class StyleFunction {
  /// Bucket function that assigns a style based on the range a column value
  /// falls into.
  core.List<Bucket> buckets;

  /// Name of the column whose value is used in the style.
  core.String columnName;

  /// Gradient function that interpolates a range of colors based on column
  /// value.
  StyleFunctionGradient gradient;

  /// Stylers can be one of three kinds: "fusiontables#fromColumn" if the column
  /// value is to be used as is, i.e., the column values can have colors in
  /// #RRGGBBAA format or integer line widths or icon names;
  /// "fusiontables#gradient" if the styling of the row is to be based on
  /// applying the gradient function on the column value; or
  /// "fusiontables#buckets" if the styling is to based on the bucket into which
  /// the the column value falls.
  core.String kind;

  StyleFunction();

  StyleFunction.fromJson(core.Map _json) {
    if (_json.containsKey("buckets")) {
      buckets = (_json["buckets"] as core.List)
          .map<Bucket>((value) => new Bucket.fromJson(value))
          .toList();
    }
    if (_json.containsKey("columnName")) {
      columnName = _json["columnName"];
    }
    if (_json.containsKey("gradient")) {
      gradient = new StyleFunctionGradient.fromJson(_json["gradient"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (buckets != null) {
      _json["buckets"] = buckets.map((value) => (value).toJson()).toList();
    }
    if (columnName != null) {
      _json["columnName"] = columnName;
    }
    if (gradient != null) {
      _json["gradient"] = (gradient).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// Represents a complete StyleSettings object. The primary key is a combination
/// of the tableId and a styleId.
class StyleSetting {
  /// Type name: an individual style setting. A StyleSetting contains the style
  /// defintions for points, lines, and polygons in a table. Since a table can
  /// have any one or all of them, a style definition can have point, line and
  /// polygon style definitions.
  core.String kind;

  /// Style definition for points in the table.
  PointStyle markerOptions;

  /// Optional name for the style setting.
  core.String name;

  /// Style definition for polygons in the table.
  PolygonStyle polygonOptions;

  /// Style definition for lines in the table.
  LineStyle polylineOptions;

  /// Identifier for the style setting (unique only within tables).
  core.int styleId;

  /// Identifier for the table.
  core.String tableId;

  StyleSetting();

  StyleSetting.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("markerOptions")) {
      markerOptions = new PointStyle.fromJson(_json["markerOptions"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("polygonOptions")) {
      polygonOptions = new PolygonStyle.fromJson(_json["polygonOptions"]);
    }
    if (_json.containsKey("polylineOptions")) {
      polylineOptions = new LineStyle.fromJson(_json["polylineOptions"]);
    }
    if (_json.containsKey("styleId")) {
      styleId = _json["styleId"];
    }
    if (_json.containsKey("tableId")) {
      tableId = _json["tableId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (markerOptions != null) {
      _json["markerOptions"] = (markerOptions).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (polygonOptions != null) {
      _json["polygonOptions"] = (polygonOptions).toJson();
    }
    if (polylineOptions != null) {
      _json["polylineOptions"] = (polylineOptions).toJson();
    }
    if (styleId != null) {
      _json["styleId"] = styleId;
    }
    if (tableId != null) {
      _json["tableId"] = tableId;
    }
    return _json;
  }
}

/// Represents a list of styles for a given table.
class StyleSettingList {
  /// All requested style settings.
  core.List<StyleSetting> items;

  /// Type name: in this case, a list of style settings.
  core.String kind;

  /// Token used to access the next page of this result. No token is displayed
  /// if there are no more pages left.
  core.String nextPageToken;

  /// Total number of styles for the table.
  core.int totalItems;

  StyleSettingList();

  StyleSettingList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<StyleSetting>((value) => new StyleSetting.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("totalItems")) {
      totalItems = _json["totalItems"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (totalItems != null) {
      _json["totalItems"] = totalItems;
    }
    return _json;
  }
}

/// Represents a table. Specifies the name, whether it is exportable,
/// description, attribution, and attribution link.
class Table {
  /// Optional attribution assigned to the table.
  core.String attribution;

  /// Optional link for attribution.
  core.String attributionLink;

  /// Optional base table identifier if this table is a view or merged table.
  core.List<core.String> baseTableIds;

  /// Columns in the table.
  core.List<Column> columns;

  /// Optional description assigned to the table.
  core.String description;

  /// Variable for whether table is exportable.
  core.bool isExportable;

  /// Type name: a template for an individual table.
  core.String kind;

  /// Name assigned to a table.
  core.String name;

  /// Optional sql that encodes the table definition for derived tables.
  core.String sql;

  /// Encrypted unique alphanumeric identifier for the table.
  core.String tableId;

  Table();

  Table.fromJson(core.Map _json) {
    if (_json.containsKey("attribution")) {
      attribution = _json["attribution"];
    }
    if (_json.containsKey("attributionLink")) {
      attributionLink = _json["attributionLink"];
    }
    if (_json.containsKey("baseTableIds")) {
      baseTableIds = (_json["baseTableIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("columns")) {
      columns = (_json["columns"] as core.List)
          .map<Column>((value) => new Column.fromJson(value))
          .toList();
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("isExportable")) {
      isExportable = _json["isExportable"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("sql")) {
      sql = _json["sql"];
    }
    if (_json.containsKey("tableId")) {
      tableId = _json["tableId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attribution != null) {
      _json["attribution"] = attribution;
    }
    if (attributionLink != null) {
      _json["attributionLink"] = attributionLink;
    }
    if (baseTableIds != null) {
      _json["baseTableIds"] = baseTableIds;
    }
    if (columns != null) {
      _json["columns"] = columns.map((value) => (value).toJson()).toList();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (isExportable != null) {
      _json["isExportable"] = isExportable;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (sql != null) {
      _json["sql"] = sql;
    }
    if (tableId != null) {
      _json["tableId"] = tableId;
    }
    return _json;
  }
}

/// Represents a list of tables.
class TableList {
  /// List of all requested tables.
  core.List<Table> items;

  /// Type name: a list of all tables.
  core.String kind;

  /// Token used to access the next page of this result. No token is displayed
  /// if there are no more pages left.
  core.String nextPageToken;

  TableList();

  TableList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Table>((value) => new Table.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Specifies the identifier, name, and type of a task in a table.
class Task {
  /// Type of the resource. This is always "fusiontables#task".
  core.String kind;

  /// An indication of task progress.
  core.String progress;

  /// false while the table is busy with some other task. true if this
  /// background task is currently running.
  core.bool started;

  /// Identifier for the task.
  core.String taskId;

  /// Type of background task. One of  DELETE_ROWS Deletes one or more rows from
  /// the table. ADD_ROWS "Adds one or more rows to a table. Includes importing
  /// data into a new table and importing more rows into an existing table.
  /// ADD_COLUMN Adds a new column to the table. CHANGE_TYPE Changes the type of
  /// a column.
  core.String type;

  Task();

  Task.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("progress")) {
      progress = _json["progress"];
    }
    if (_json.containsKey("started")) {
      started = _json["started"];
    }
    if (_json.containsKey("taskId")) {
      taskId = _json["taskId"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (progress != null) {
      _json["progress"] = progress;
    }
    if (started != null) {
      _json["started"] = started;
    }
    if (taskId != null) {
      _json["taskId"] = taskId;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Represents a list of tasks for a table.
class TaskList {
  /// List of all requested tasks.
  core.List<Task> items;

  /// Type of the resource. This is always "fusiontables#taskList".
  core.String kind;

  /// Token used to access the next page of this result. No token is displayed
  /// if there are no more pages left.
  core.String nextPageToken;

  /// Total number of tasks for the table.
  core.int totalItems;

  TaskList();

  TaskList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Task>((value) => new Task.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("totalItems")) {
      totalItems = _json["totalItems"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (totalItems != null) {
      _json["totalItems"] = totalItems;
    }
    return _json;
  }
}

/// Represents the contents of InfoWindow templates.
class Template {
  /// List of columns from which the template is to be automatically
  /// constructed. Only one of body or automaticColumns can be specified.
  core.List<core.String> automaticColumnNames;

  /// Body of the template. It contains HTML with {column_name} to insert values
  /// from a particular column. The body is sanitized to remove certain tags,
  /// e.g., script. Only one of body or automaticColumns can be specified.
  core.String body;

  /// Type name: a template for the info window contents. The template can
  /// either include an HTML body or a list of columns from which the template
  /// is computed automatically.
  core.String kind;

  /// Optional name assigned to a template.
  core.String name;

  /// Identifier for the table for which the template is defined.
  core.String tableId;

  /// Identifier for the template, unique within the context of a particular
  /// table.
  core.int templateId;

  Template();

  Template.fromJson(core.Map _json) {
    if (_json.containsKey("automaticColumnNames")) {
      automaticColumnNames =
          (_json["automaticColumnNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("tableId")) {
      tableId = _json["tableId"];
    }
    if (_json.containsKey("templateId")) {
      templateId = _json["templateId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (automaticColumnNames != null) {
      _json["automaticColumnNames"] = automaticColumnNames;
    }
    if (body != null) {
      _json["body"] = body;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (tableId != null) {
      _json["tableId"] = tableId;
    }
    if (templateId != null) {
      _json["templateId"] = templateId;
    }
    return _json;
  }
}

/// Represents a list of templates for a given table.
class TemplateList {
  /// List of all requested templates.
  core.List<Template> items;

  /// Type name: a list of all templates.
  core.String kind;

  /// Token used to access the next page of this result. No token is displayed
  /// if there are no more pages left.
  core.String nextPageToken;

  /// Total number of templates for the table.
  core.int totalItems;

  TemplateList();

  TemplateList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Template>((value) => new Template.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("totalItems")) {
      totalItems = _json["totalItems"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (totalItems != null) {
      _json["totalItems"] = totalItems;
    }
    return _json;
  }
}
