// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Ad Exchange Buyer API II - v2beta1
///
/// Accesses the latest features for managing Authorized Buyers accounts,
/// Real-Time Bidding configurations and auction metrics, and Marketplace
/// programmatic deals.
///
/// For more information, see
/// <https://developers.google.com/authorized-buyers/apis/reference/rest/>
///
/// Create an instance of [AdExchangeBuyerIIApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsClientsResource]
///     - [AccountsClientsInvitationsResource]
///     - [AccountsClientsUsersResource]
///   - [AccountsCreativesResource]
///     - [AccountsCreativesDealAssociationsResource]
///   - [AccountsFinalizedProposalsResource]
///   - [AccountsProductsResource]
///   - [AccountsProposalsResource]
///   - [AccountsPublisherProfilesResource]
/// - [BiddersResource]
///   - [BiddersAccountsResource]
///     - [BiddersAccountsFilterSetsResource]
///       - [BiddersAccountsFilterSetsBidMetricsResource]
///       - [BiddersAccountsFilterSetsBidResponseErrorsResource]
///       - [BiddersAccountsFilterSetsBidResponsesWithoutBidsResource]
///       - [BiddersAccountsFilterSetsFilteredBidRequestsResource]
///       - [BiddersAccountsFilterSetsFilteredBidsResource]
///         - [BiddersAccountsFilterSetsFilteredBidsCreativesResource]
///         - [BiddersAccountsFilterSetsFilteredBidsDetailsResource]
///       - [BiddersAccountsFilterSetsImpressionMetricsResource]
///       - [BiddersAccountsFilterSetsLosingBidsResource]
///       - [BiddersAccountsFilterSetsNonBillableWinningBidsResource]
///   - [BiddersFilterSetsResource]
///     - [BiddersFilterSetsBidMetricsResource]
///     - [BiddersFilterSetsBidResponseErrorsResource]
///     - [BiddersFilterSetsBidResponsesWithoutBidsResource]
///     - [BiddersFilterSetsFilteredBidRequestsResource]
///     - [BiddersFilterSetsFilteredBidsResource]
///       - [BiddersFilterSetsFilteredBidsCreativesResource]
///       - [BiddersFilterSetsFilteredBidsDetailsResource]
///     - [BiddersFilterSetsImpressionMetricsResource]
///     - [BiddersFilterSetsLosingBidsResource]
///     - [BiddersFilterSetsNonBillableWinningBidsResource]
library adexchangebuyer2.v2beta1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Accesses the latest features for managing Authorized Buyers accounts,
/// Real-Time Bidding configurations and auction metrics, and Marketplace
/// programmatic deals.
class AdExchangeBuyerIIApi {
  /// Manage your Ad Exchange buyer account configuration
  static const adexchangeBuyerScope =
      'https://www.googleapis.com/auth/adexchange.buyer';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);
  BiddersResource get bidders => BiddersResource(_requester);

  AdExchangeBuyerIIApi(http.Client client,
      {core.String rootUrl = 'https://adexchangebuyer.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsClientsResource get clients => AccountsClientsResource(_requester);
  AccountsCreativesResource get creatives =>
      AccountsCreativesResource(_requester);
  AccountsFinalizedProposalsResource get finalizedProposals =>
      AccountsFinalizedProposalsResource(_requester);
  AccountsProductsResource get products => AccountsProductsResource(_requester);
  AccountsProposalsResource get proposals =>
      AccountsProposalsResource(_requester);
  AccountsPublisherProfilesResource get publisherProfiles =>
      AccountsPublisherProfilesResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsClientsResource {
  final commons.ApiRequester _requester;

  AccountsClientsInvitationsResource get invitations =>
      AccountsClientsInvitationsResource(_requester);
  AccountsClientsUsersResource get users =>
      AccountsClientsUsersResource(_requester);

  AccountsClientsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new client buyer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Unique numerical account ID for the buyer of which the
  /// client buyer is a customer; the sponsor buyer to create a client for.
  /// (required)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Client].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Client> create(
    Client request,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2beta1/accounts/' + commons.escapeVariable('$accountId') + '/clients';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Client.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a client buyer with a given client account ID.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Numerical account ID of the client's sponsor buyer.
  /// (required)
  ///
  /// [clientAccountId] - Numerical account ID of the client buyer to retrieve.
  /// (required)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Client].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Client> get(
    core.String accountId,
    core.String clientAccountId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/clients/' +
        commons.escapeVariable('$clientAccountId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Client.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the clients for the current sponsor buyer.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Unique numerical account ID of the sponsor buyer to list the
  /// clients for.
  ///
  /// [pageSize] - Requested page size. The server may return fewer clients than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of ListClientsResponse.nextPageToken
  /// returned from the previous call to the accounts.clients.list method.
  ///
  /// [partnerClientId] - Optional unique identifier (from the standpoint of an
  /// Ad Exchange sponsor buyer partner) of the client to return. If specified,
  /// at most one client will be returned in the response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClientsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClientsResponse> list(
    core.String accountId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? partnerClientId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (partnerClientId != null) 'partnerClientId': [partnerClientId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2beta1/accounts/' + commons.escapeVariable('$accountId') + '/clients';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListClientsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing client buyer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Unique numerical account ID for the buyer of which the
  /// client buyer is a customer; the sponsor buyer to update a client for.
  /// (required)
  ///
  /// [clientAccountId] - Unique numerical account ID of the client to update.
  /// (required)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Client].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Client> update(
    Client request,
    core.String accountId,
    core.String clientAccountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/clients/' +
        commons.escapeVariable('$clientAccountId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Client.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsClientsInvitationsResource {
  final commons.ApiRequester _requester;

  AccountsClientsInvitationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates and sends out an email invitation to access an Ad Exchange client
  /// buyer account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Numerical account ID of the client's sponsor buyer.
  /// (required)
  ///
  /// [clientAccountId] - Numerical account ID of the client buyer that the user
  /// should be associated with. (required)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClientUserInvitation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClientUserInvitation> create(
    ClientUserInvitation request,
    core.String accountId,
    core.String clientAccountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/clients/' +
        commons.escapeVariable('$clientAccountId') +
        '/invitations';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ClientUserInvitation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves an existing client user invitation.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Numerical account ID of the client's sponsor buyer.
  /// (required)
  ///
  /// [clientAccountId] - Numerical account ID of the client buyer that the user
  /// invitation to be retrieved is associated with. (required)
  ///
  /// [invitationId] - Numerical identifier of the user invitation to retrieve.
  /// (required)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClientUserInvitation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClientUserInvitation> get(
    core.String accountId,
    core.String clientAccountId,
    core.String invitationId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/clients/' +
        commons.escapeVariable('$clientAccountId') +
        '/invitations/' +
        commons.escapeVariable('$invitationId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ClientUserInvitation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the client users invitations for a client with a given account
  /// ID.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Numerical account ID of the client's sponsor buyer.
  /// (required)
  ///
  /// [clientAccountId] - Numerical account ID of the client buyer to list
  /// invitations for. (required) You must either specify a string
  /// representation of a numerical account identifier or the `-` character to
  /// list all the invitations for all the clients of a given sponsor buyer.
  ///
  /// [pageSize] - Requested page size. Server may return fewer clients than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListClientUserInvitationsResponse.nextPageToken returned from the previous
  /// call to the clients.invitations.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClientUserInvitationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClientUserInvitationsResponse> list(
    core.String accountId,
    core.String clientAccountId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/clients/' +
        commons.escapeVariable('$clientAccountId') +
        '/invitations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListClientUserInvitationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsClientsUsersResource {
  final commons.ApiRequester _requester;

  AccountsClientsUsersResource(commons.ApiRequester client)
      : _requester = client;

  /// Retrieves an existing client user.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Numerical account ID of the client's sponsor buyer.
  /// (required)
  ///
  /// [clientAccountId] - Numerical account ID of the client buyer that the user
  /// to be retrieved is associated with. (required)
  ///
  /// [userId] - Numerical identifier of the user to retrieve. (required)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClientUser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClientUser> get(
    core.String accountId,
    core.String clientAccountId,
    core.String userId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/clients/' +
        commons.escapeVariable('$clientAccountId') +
        '/users/' +
        commons.escapeVariable('$userId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ClientUser.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the known client users for a specified sponsor buyer account ID.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Numerical account ID of the sponsor buyer of the client to
  /// list users for. (required)
  ///
  /// [clientAccountId] - The account ID of the client buyer to list users for.
  /// (required) You must specify either a string representation of a numerical
  /// account identifier or the `-` character to list all the client users for
  /// all the clients of a given sponsor buyer.
  ///
  /// [pageSize] - Requested page size. The server may return fewer clients than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListClientUsersResponse.nextPageToken returned from the previous call to
  /// the accounts.clients.users.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClientUsersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClientUsersResponse> list(
    core.String accountId,
    core.String clientAccountId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/clients/' +
        commons.escapeVariable('$clientAccountId') +
        '/users';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListClientUsersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing client user.
  ///
  /// Only the user status can be changed on update.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Numerical account ID of the client's sponsor buyer.
  /// (required)
  ///
  /// [clientAccountId] - Numerical account ID of the client buyer that the user
  /// to be retrieved is associated with. (required)
  ///
  /// [userId] - Numerical identifier of the user to retrieve. (required)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClientUser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClientUser> update(
    ClientUser request,
    core.String accountId,
    core.String clientAccountId,
    core.String userId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/clients/' +
        commons.escapeVariable('$clientAccountId') +
        '/users/' +
        commons.escapeVariable('$userId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return ClientUser.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsCreativesResource {
  final commons.ApiRequester _requester;

  AccountsCreativesDealAssociationsResource get dealAssociations =>
      AccountsCreativesDealAssociationsResource(_requester);

  AccountsCreativesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a creative.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account that this creative belongs to. Can be used to
  /// filter the response of the creatives.list method.
  ///
  /// [duplicateIdMode] - Indicates if multiple creatives can share an ID or
  /// not. Default is NO_DUPLICATES (one ID per creative).
  /// Possible string values are:
  /// - "NO_DUPLICATES" : Recommended. This means that an ID will be unique to a
  /// single creative. Multiple creatives will not share an ID.
  /// - "FORCE_ENABLE_DUPLICATE_IDS" : Not recommended. Using this option will
  /// allow multiple creatives to share the same ID. Get and Update requests
  /// will not be possible for any ID that has more than one creative
  /// associated. (List will still function.) This is only intended for
  /// backwards compatibility in cases where a single ID is already shared by
  /// multiple creatives from previous APIs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Creative].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Creative> create(
    Creative request,
    core.String accountId, {
    core.String? duplicateIdMode,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (duplicateIdMode != null) 'duplicateIdMode': [duplicateIdMode],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/creatives';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Creative.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a creative.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account the creative belongs to.
  ///
  /// [creativeId] - The ID of the creative to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Creative].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Creative> get(
    core.String accountId,
    core.String creativeId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/creatives/' +
        commons.escapeVariable('$creativeId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Creative.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists creatives.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account to list the creatives from. Specify "-" to list
  /// all creatives the current user has access to.
  ///
  /// [pageSize] - Requested page size. The server may return fewer creatives
  /// than requested (due to timeout constraint) even if more are available via
  /// another call. If unspecified, server will pick an appropriate default.
  /// Acceptable values are 1 to 1000, inclusive.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListCreativesResponse.next_page_token returned from the previous call to
  /// 'ListCreatives' method.
  ///
  /// [query] - An optional query string to filter creatives. If no filter is
  /// specified, all active creatives will be returned. Supported queries are: -
  /// accountId=*account_id_string* - creativeId=*creative_id_string* -
  /// dealsStatus: {approved, conditionally_approved, disapproved, not_checked}
  /// - openAuctionStatus: {approved, conditionally_approved, disapproved,
  /// not_checked} - attribute: {a numeric attribute from the list of
  /// attributes} - disapprovalReason: {a reason from DisapprovalReason}
  /// Example: 'accountId=12345 AND (dealsStatus:disapproved AND
  /// disapprovalReason:unacceptable_content) OR attribute:47'
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCreativesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCreativesResponse> list(
    core.String accountId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/creatives';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCreativesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Stops watching a creative.
  ///
  /// Will stop push notifications being sent to the topics when the creative
  /// changes status.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account of the creative to stop notifications for.
  ///
  /// [creativeId] - The creative ID of the creative to stop notifications for.
  /// Specify "-" to specify stopping account level notifications.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> stopWatching(
    StopWatchingCreativeRequest request,
    core.String accountId,
    core.String creativeId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/creatives/' +
        commons.escapeVariable('$creativeId') +
        ':stopWatching';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a creative.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account that this creative belongs to. Can be used to
  /// filter the response of the creatives.list method.
  ///
  /// [creativeId] - The buyer-defined creative ID of this creative. Can be used
  /// to filter the response of the creatives.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Creative].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Creative> update(
    Creative request,
    core.String accountId,
    core.String creativeId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/creatives/' +
        commons.escapeVariable('$creativeId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Creative.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Watches a creative.
  ///
  /// Will result in push notifications being sent to the topic when the
  /// creative changes status.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account of the creative to watch.
  ///
  /// [creativeId] - The creative ID to watch for status changes. Specify "-" to
  /// watch all creatives under the above account. If both creative-level and
  /// account-level notifications are sent, only a single notification will be
  /// sent to the creative-level notification topic.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> watch(
    WatchCreativeRequest request,
    core.String accountId,
    core.String creativeId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/creatives/' +
        commons.escapeVariable('$creativeId') +
        ':watch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsCreativesDealAssociationsResource {
  final commons.ApiRequester _requester;

  AccountsCreativesDealAssociationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Associate an existing deal with a creative.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account the creative belongs to.
  ///
  /// [creativeId] - The ID of the creative associated with the deal.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> add(
    AddDealAssociationRequest request,
    core.String accountId,
    core.String creativeId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/creatives/' +
        commons.escapeVariable('$creativeId') +
        '/dealAssociations:add';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List all creative-deal associations.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account to list the associations from. Specify "-" to
  /// list all creatives the current user has access to.
  ///
  /// [creativeId] - The creative ID to list the associations from. Specify "-"
  /// to list all creatives under the above account.
  ///
  /// [pageSize] - Requested page size. Server may return fewer associations
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListDealAssociationsResponse.next_page_token returned from the previous
  /// call to 'ListDealAssociations' method.
  ///
  /// [query] - An optional query string to filter deal associations. If no
  /// filter is specified, all associations will be returned. Supported queries
  /// are: - accountId=*account_id_string* - creativeId=*creative_id_string* -
  /// dealsId=*deals_id_string* - dealsStatus:{approved, conditionally_approved,
  /// disapproved, not_checked} - openAuctionStatus:{approved,
  /// conditionally_approved, disapproved, not_checked} Example: 'dealsId=12345
  /// AND dealsStatus:disapproved'
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDealAssociationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDealAssociationsResponse> list(
    core.String accountId,
    core.String creativeId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/creatives/' +
        commons.escapeVariable('$creativeId') +
        '/dealAssociations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDealAssociationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Remove the association between a deal and a creative.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account the creative belongs to.
  ///
  /// [creativeId] - The ID of the creative associated with the deal.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> remove(
    RemoveDealAssociationRequest request,
    core.String accountId,
    core.String creativeId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/creatives/' +
        commons.escapeVariable('$creativeId') +
        '/dealAssociations:remove';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsFinalizedProposalsResource {
  final commons.ApiRequester _requester;

  AccountsFinalizedProposalsResource(commons.ApiRequester client)
      : _requester = client;

  /// List finalized proposals, regardless if a proposal is being renegotiated.
  ///
  /// A filter expression (PQL query) may be specified to filter the results.
  /// The notes will not be returned.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [filter] - An optional PQL filter query used to query for proposals.
  /// Nested repeated fields, such as proposal.deals.targetingCriterion, cannot
  /// be filtered.
  ///
  /// [filterSyntax] - Syntax the filter is written in. Current implementation
  /// defaults to PQL but in the future it will be LIST_FILTER.
  /// Possible string values are:
  /// - "FILTER_SYNTAX_UNSPECIFIED" : A placeholder for an undefined filter
  /// syntax.
  /// - "PQL" : PQL query syntax. Visit
  /// https://developers.google.com/ad-manager/api/pqlreference for PQL
  /// documentation and examples.
  /// - "LIST_FILTER" : API list filtering syntax. Read about syntax and usage
  /// at
  /// https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - The page token as returned from ListProposalsResponse.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProposalsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProposalsResponse> list(
    core.String accountId, {
    core.String? filter,
    core.String? filterSyntax,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (filterSyntax != null) 'filterSyntax': [filterSyntax],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/finalizedProposals';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListProposalsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsProductsResource {
  final commons.ApiRequester _requester;

  AccountsProductsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the requested product by ID.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [productId] - The ID for the product to get the head revision for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Product> get(
    core.String accountId,
    core.String productId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/products/' +
        commons.escapeVariable('$productId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Product.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List all products visible to the buyer (optionally filtered by the
  /// specified PQL query).
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [filter] - An optional PQL query used to query for products. See
  /// https://developers.google.com/ad-manager/docs/pqlreference for
  /// documentation about PQL and examples. Nested repeated fields, such as
  /// product.targetingCriterion.inclusions, cannot be filtered.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - The page token as returned from ListProductsResponse.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProductsResponse> list(
    core.String accountId, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/products';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListProductsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsProposalsResource {
  final commons.ApiRequester _requester;

  AccountsProposalsResource(commons.ApiRequester client) : _requester = client;

  /// Mark the proposal as accepted at the given revision number.
  ///
  /// If the number does not match the server's revision number an `ABORTED`
  /// error message will be returned. This call updates the proposal_state from
  /// `PROPOSED` to `BUYER_ACCEPTED`, or from `SELLER_ACCEPTED` to `FINALIZED`.
  /// Upon calling this endpoint, the buyer implicitly agrees to the terms and
  /// conditions optionally set within the proposal by the publisher.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [proposalId] - The ID of the proposal to accept.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> accept(
    AcceptProposalRequest request,
    core.String accountId,
    core.String proposalId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/proposals/' +
        commons.escapeVariable('$proposalId') +
        ':accept';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Proposal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Create a new note and attach it to the proposal.
  ///
  /// The note is assigned a unique ID by the server. The proposal revision
  /// number will not increase when associated with a new note.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [proposalId] - The ID of the proposal to attach the note to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Note].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Note> addNote(
    AddNoteRequest request,
    core.String accountId,
    core.String proposalId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/proposals/' +
        commons.escapeVariable('$proposalId') +
        ':addNote';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Note.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Cancel an ongoing negotiation on a proposal.
  ///
  /// This does not cancel or end serving for the deals if the proposal has been
  /// finalized, but only cancels a negotiation unilaterally.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [proposalId] - The ID of the proposal to cancel negotiation for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> cancelNegotiation(
    CancelNegotiationRequest request,
    core.String accountId,
    core.String proposalId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/proposals/' +
        commons.escapeVariable('$proposalId') +
        ':cancelNegotiation';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Proposal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update the given proposal to indicate that setup has been completed.
  ///
  /// This method is called by the buyer when the line items have been created
  /// on their end for a finalized proposal and all the required creatives have
  /// been uploaded using the creatives API. This call updates the
  /// `is_setup_completed` bit on the proposal and also notifies the seller. The
  /// server will advance the revision number of the most recent proposal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [proposalId] - The ID of the proposal to mark as setup completed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> completeSetup(
    CompleteSetupRequest request,
    core.String accountId,
    core.String proposalId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/proposals/' +
        commons.escapeVariable('$proposalId') +
        ':completeSetup';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Proposal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Create the given proposal.
  ///
  /// Each created proposal and any deals it contains are assigned a unique ID
  /// by the server.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> create(
    Proposal request,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/proposals';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Proposal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a proposal given its ID.
  ///
  /// The proposal is returned at its head revision.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [proposalId] - The unique ID of the proposal
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> get(
    core.String accountId,
    core.String proposalId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/proposals/' +
        commons.escapeVariable('$proposalId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Proposal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List proposals.
  ///
  /// A filter expression (PQL query) may be specified to filter the results. To
  /// retrieve all finalized proposals, regardless if a proposal is being
  /// renegotiated, see the FinalizedProposals resource. Note that
  /// Bidder/ChildSeat relationships differ from the usual behavior. A Bidder
  /// account can only see its child seats' proposals by specifying the
  /// ChildSeat's accountId in the request path.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [filter] - An optional PQL filter query used to query for proposals.
  /// Nested repeated fields, such as proposal.deals.targetingCriterion, cannot
  /// be filtered.
  ///
  /// [filterSyntax] - Syntax the filter is written in. Current implementation
  /// defaults to PQL but in the future it will be LIST_FILTER.
  /// Possible string values are:
  /// - "FILTER_SYNTAX_UNSPECIFIED" : A placeholder for an undefined filter
  /// syntax.
  /// - "PQL" : PQL query syntax. Visit
  /// https://developers.google.com/ad-manager/api/pqlreference for PQL
  /// documentation and examples.
  /// - "LIST_FILTER" : API list filtering syntax. Read about syntax and usage
  /// at
  /// https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - The page token as returned from ListProposalsResponse.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProposalsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProposalsResponse> list(
    core.String accountId, {
    core.String? filter,
    core.String? filterSyntax,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (filterSyntax != null) 'filterSyntax': [filterSyntax],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/proposals';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListProposalsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update the given proposal to pause serving.
  ///
  /// This method will set the
  /// `DealServingMetadata.DealPauseStatus.has_buyer_paused` bit to true for all
  /// deals in the proposal. It is a no-op to pause an already-paused proposal.
  /// It is an error to call PauseProposal for a proposal that is not finalized
  /// or renegotiating.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [proposalId] - The ID of the proposal to pause.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> pause(
    PauseProposalRequest request,
    core.String accountId,
    core.String proposalId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/proposals/' +
        commons.escapeVariable('$proposalId') +
        ':pause';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Proposal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update the given proposal to resume serving.
  ///
  /// This method will set the
  /// `DealServingMetadata.DealPauseStatus.has_buyer_paused` bit to false for
  /// all deals in the proposal. Note that if the `has_seller_paused` bit is
  /// also set, serving will not resume until the seller also resumes. It is a
  /// no-op to resume an already-running proposal. It is an error to call
  /// ResumeProposal for a proposal that is not finalized or renegotiating.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [proposalId] - The ID of the proposal to resume.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> resume(
    ResumeProposalRequest request,
    core.String accountId,
    core.String proposalId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/proposals/' +
        commons.escapeVariable('$proposalId') +
        ':resume';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Proposal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update the given proposal at the client known revision number.
  ///
  /// If the server revision has advanced since the passed-in
  /// `proposal.proposal_revision`, an `ABORTED` error message will be returned.
  /// Only the buyer-modifiable fields of the proposal will be updated. Note
  /// that the deals in the proposal will be updated to match the passed-in
  /// copy. If a passed-in deal does not have a `deal_id`, the server will
  /// assign a new unique ID and create the deal. If passed-in deal has a
  /// `deal_id`, it will be updated to match the passed-in copy. Any existing
  /// deals not present in the passed-in proposal will be deleted. It is an
  /// error to pass in a deal with a `deal_id` not present at head.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [proposalId] - The unique ID of the proposal.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> update(
    Proposal request,
    core.String accountId,
    core.String proposalId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/proposals/' +
        commons.escapeVariable('$proposalId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Proposal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsPublisherProfilesResource {
  final commons.ApiRequester _requester;

  AccountsPublisherProfilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested publisher profile by id.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [publisherProfileId] - The id for the publisher profile to get.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PublisherProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PublisherProfile> get(
    core.String accountId,
    core.String publisherProfileId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/publisherProfiles/' +
        commons.escapeVariable('$publisherProfileId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PublisherProfile.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all publisher profiles visible to the buyer
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the buyer.
  ///
  /// [pageSize] - Specify the number of results to include per page.
  ///
  /// [pageToken] - The page token as return from ListPublisherProfilesResponse.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPublisherProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPublisherProfilesResponse> list(
    core.String accountId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/accounts/' +
        commons.escapeVariable('$accountId') +
        '/publisherProfiles';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListPublisherProfilesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersResource {
  final commons.ApiRequester _requester;

  BiddersAccountsResource get accounts => BiddersAccountsResource(_requester);
  BiddersFilterSetsResource get filterSets =>
      BiddersFilterSetsResource(_requester);

  BiddersResource(commons.ApiRequester client) : _requester = client;
}

class BiddersAccountsResource {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsResource get filterSets =>
      BiddersAccountsFilterSetsResource(_requester);

  BiddersAccountsResource(commons.ApiRequester client) : _requester = client;
}

class BiddersAccountsFilterSetsResource {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsBidMetricsResource get bidMetrics =>
      BiddersAccountsFilterSetsBidMetricsResource(_requester);
  BiddersAccountsFilterSetsBidResponseErrorsResource get bidResponseErrors =>
      BiddersAccountsFilterSetsBidResponseErrorsResource(_requester);
  BiddersAccountsFilterSetsBidResponsesWithoutBidsResource
      get bidResponsesWithoutBids =>
          BiddersAccountsFilterSetsBidResponsesWithoutBidsResource(_requester);
  BiddersAccountsFilterSetsFilteredBidRequestsResource
      get filteredBidRequests =>
          BiddersAccountsFilterSetsFilteredBidRequestsResource(_requester);
  BiddersAccountsFilterSetsFilteredBidsResource get filteredBids =>
      BiddersAccountsFilterSetsFilteredBidsResource(_requester);
  BiddersAccountsFilterSetsImpressionMetricsResource get impressionMetrics =>
      BiddersAccountsFilterSetsImpressionMetricsResource(_requester);
  BiddersAccountsFilterSetsLosingBidsResource get losingBids =>
      BiddersAccountsFilterSetsLosingBidsResource(_requester);
  BiddersAccountsFilterSetsNonBillableWinningBidsResource
      get nonBillableWinningBids =>
          BiddersAccountsFilterSetsNonBillableWinningBidsResource(_requester);

  BiddersAccountsFilterSetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates the specified filter set for the account with the given account
  /// ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [ownerName] - Name of the owner (bidder or account) of the filter set to
  /// be created. For example: - For a bidder-level filter set for bidder 123:
  /// `bidders/123` - For an account-level filter set for the buyer account
  /// representing bidder 123: `bidders/123/accounts/123` - For an account-level
  /// filter set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456`
  /// Value must have pattern `^bidders/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [isTransient] - Whether the filter set is transient, or should be
  /// persisted indefinitely. By default, filter sets are not transient. If
  /// transient, it will be available for at least 1 hour after creation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FilterSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FilterSet> create(
    FilterSet request,
    core.String ownerName, {
    core.bool? isTransient,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (isTransient != null) 'isTransient': ['${isTransient}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' + core.Uri.encodeFull('$ownerName') + '/filterSets';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return FilterSet.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the requested filter set from the account with the given account
  /// ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Full name of the resource to delete. For example: - For a
  /// bidder-level filter set for bidder 123: `bidders/123/filterSets/abc` - For
  /// an account-level filter set for the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern
  /// `^bidders/\[^/\]+/accounts/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the requested filter set for the account with the given account
  /// ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Full name of the resource being requested. For example: - For a
  /// bidder-level filter set for bidder 123: `bidders/123/filterSets/abc` - For
  /// an account-level filter set for the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern
  /// `^bidders/\[^/\]+/accounts/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FilterSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FilterSet> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return FilterSet.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all filter sets for the account with the given account ID.
  ///
  /// Request parameters:
  ///
  /// [ownerName] - Name of the owner (bidder or account) of the filter sets to
  /// be listed. For example: - For a bidder-level filter set for bidder 123:
  /// `bidders/123` - For an account-level filter set for the buyer account
  /// representing bidder 123: `bidders/123/accounts/123` - For an account-level
  /// filter set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456`
  /// Value must have pattern `^bidders/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListFilterSetsResponse.nextPageToken returned from the previous call to
  /// the accounts.filterSets.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFilterSetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFilterSetsResponse> list(
    core.String ownerName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' + core.Uri.encodeFull('$ownerName') + '/filterSets';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListFilterSetsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersAccountsFilterSetsBidMetricsResource {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsBidMetricsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists all metrics that are measured in terms of number of bids.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern
  /// `^bidders/\[^/\]+/accounts/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListBidMetricsResponse.nextPageToken returned from the previous call to
  /// the bidMetrics.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBidMetricsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBidMetricsResponse> list(
    core.String filterSetName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2beta1/' + core.Uri.encodeFull('$filterSetName') + '/bidMetrics';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBidMetricsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersAccountsFilterSetsBidResponseErrorsResource {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsBidResponseErrorsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List all errors that occurred in bid responses, with the number of bid
  /// responses affected for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern
  /// `^bidders/\[^/\]+/accounts/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListBidResponseErrorsResponse.nextPageToken returned from the previous
  /// call to the bidResponseErrors.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBidResponseErrorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBidResponseErrorsResponse> list(
    core.String filterSetName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' +
        core.Uri.encodeFull('$filterSetName') +
        '/bidResponseErrors';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBidResponseErrorsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersAccountsFilterSetsBidResponsesWithoutBidsResource {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsBidResponsesWithoutBidsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List all reasons for which bid responses were considered to have no
  /// applicable bids, with the number of bid responses affected for each
  /// reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern
  /// `^bidders/\[^/\]+/accounts/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListBidResponsesWithoutBidsResponse.nextPageToken returned from the
  /// previous call to the bidResponsesWithoutBids.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBidResponsesWithoutBidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBidResponsesWithoutBidsResponse> list(
    core.String filterSetName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' +
        core.Uri.encodeFull('$filterSetName') +
        '/bidResponsesWithoutBids';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBidResponsesWithoutBidsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersAccountsFilterSetsFilteredBidRequestsResource {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsFilteredBidRequestsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List all reasons that caused a bid request not to be sent for an
  /// impression, with the number of bid requests not sent for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern
  /// `^bidders/\[^/\]+/accounts/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListFilteredBidRequestsResponse.nextPageToken returned from the previous
  /// call to the filteredBidRequests.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFilteredBidRequestsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFilteredBidRequestsResponse> list(
    core.String filterSetName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' +
        core.Uri.encodeFull('$filterSetName') +
        '/filteredBidRequests';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListFilteredBidRequestsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersAccountsFilterSetsFilteredBidsResource {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsFilteredBidsCreativesResource get creatives =>
      BiddersAccountsFilterSetsFilteredBidsCreativesResource(_requester);
  BiddersAccountsFilterSetsFilteredBidsDetailsResource get details =>
      BiddersAccountsFilterSetsFilteredBidsDetailsResource(_requester);

  BiddersAccountsFilterSetsFilteredBidsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all reasons for which bids were filtered, with the number of bids
  /// filtered for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern
  /// `^bidders/\[^/\]+/accounts/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListFilteredBidsResponse.nextPageToken returned from the previous call to
  /// the filteredBids.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFilteredBidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFilteredBidsResponse> list(
    core.String filterSetName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2beta1/' + core.Uri.encodeFull('$filterSetName') + '/filteredBids';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListFilteredBidsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersAccountsFilterSetsFilteredBidsCreativesResource {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsFilteredBidsCreativesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List all creatives associated with a specific reason for which bids were
  /// filtered, with the number of bids filtered for each creative.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern
  /// `^bidders/\[^/\]+/accounts/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [creativeStatusId] - The ID of the creative status for which to retrieve a
  /// breakdown by creative. See
  /// \[creative-status-codes\](https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes).
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListCreativeStatusBreakdownByCreativeResponse.nextPageToken returned from
  /// the previous call to the filteredBids.creatives.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCreativeStatusBreakdownByCreativeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCreativeStatusBreakdownByCreativeResponse> list(
    core.String filterSetName,
    core.int creativeStatusId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' +
        core.Uri.encodeFull('$filterSetName') +
        '/filteredBids/' +
        commons.escapeVariable('$creativeStatusId') +
        '/creatives';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCreativeStatusBreakdownByCreativeResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersAccountsFilterSetsFilteredBidsDetailsResource {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsFilteredBidsDetailsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List all details associated with a specific reason for which bids were
  /// filtered, with the number of bids filtered for each detail.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern
  /// `^bidders/\[^/\]+/accounts/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [creativeStatusId] - The ID of the creative status for which to retrieve a
  /// breakdown by detail. See
  /// \[creative-status-codes\](https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes).
  /// Details are only available for statuses 10, 14, 15, 17, 18, 19, 86, and
  /// 87.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListCreativeStatusBreakdownByDetailResponse.nextPageToken returned from
  /// the previous call to the filteredBids.details.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCreativeStatusBreakdownByDetailResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCreativeStatusBreakdownByDetailResponse> list(
    core.String filterSetName,
    core.int creativeStatusId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' +
        core.Uri.encodeFull('$filterSetName') +
        '/filteredBids/' +
        commons.escapeVariable('$creativeStatusId') +
        '/details';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCreativeStatusBreakdownByDetailResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersAccountsFilterSetsImpressionMetricsResource {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsImpressionMetricsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Lists all metrics that are measured in terms of number of impressions.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern
  /// `^bidders/\[^/\]+/accounts/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListImpressionMetricsResponse.nextPageToken returned from the previous
  /// call to the impressionMetrics.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListImpressionMetricsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListImpressionMetricsResponse> list(
    core.String filterSetName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' +
        core.Uri.encodeFull('$filterSetName') +
        '/impressionMetrics';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListImpressionMetricsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersAccountsFilterSetsLosingBidsResource {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsLosingBidsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all reasons for which bids lost in the auction, with the number of
  /// bids that lost for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern
  /// `^bidders/\[^/\]+/accounts/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListLosingBidsResponse.nextPageToken returned from the previous call to
  /// the losingBids.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLosingBidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLosingBidsResponse> list(
    core.String filterSetName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2beta1/' + core.Uri.encodeFull('$filterSetName') + '/losingBids';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLosingBidsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersAccountsFilterSetsNonBillableWinningBidsResource {
  final commons.ApiRequester _requester;

  BiddersAccountsFilterSetsNonBillableWinningBidsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List all reasons for which winning bids were not billable, with the number
  /// of bids not billed for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern
  /// `^bidders/\[^/\]+/accounts/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListNonBillableWinningBidsResponse.nextPageToken returned from the
  /// previous call to the nonBillableWinningBids.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNonBillableWinningBidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNonBillableWinningBidsResponse> list(
    core.String filterSetName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' +
        core.Uri.encodeFull('$filterSetName') +
        '/nonBillableWinningBids';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListNonBillableWinningBidsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersFilterSetsResource {
  final commons.ApiRequester _requester;

  BiddersFilterSetsBidMetricsResource get bidMetrics =>
      BiddersFilterSetsBidMetricsResource(_requester);
  BiddersFilterSetsBidResponseErrorsResource get bidResponseErrors =>
      BiddersFilterSetsBidResponseErrorsResource(_requester);
  BiddersFilterSetsBidResponsesWithoutBidsResource
      get bidResponsesWithoutBids =>
          BiddersFilterSetsBidResponsesWithoutBidsResource(_requester);
  BiddersFilterSetsFilteredBidRequestsResource get filteredBidRequests =>
      BiddersFilterSetsFilteredBidRequestsResource(_requester);
  BiddersFilterSetsFilteredBidsResource get filteredBids =>
      BiddersFilterSetsFilteredBidsResource(_requester);
  BiddersFilterSetsImpressionMetricsResource get impressionMetrics =>
      BiddersFilterSetsImpressionMetricsResource(_requester);
  BiddersFilterSetsLosingBidsResource get losingBids =>
      BiddersFilterSetsLosingBidsResource(_requester);
  BiddersFilterSetsNonBillableWinningBidsResource get nonBillableWinningBids =>
      BiddersFilterSetsNonBillableWinningBidsResource(_requester);

  BiddersFilterSetsResource(commons.ApiRequester client) : _requester = client;

  /// Creates the specified filter set for the account with the given account
  /// ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [ownerName] - Name of the owner (bidder or account) of the filter set to
  /// be created. For example: - For a bidder-level filter set for bidder 123:
  /// `bidders/123` - For an account-level filter set for the buyer account
  /// representing bidder 123: `bidders/123/accounts/123` - For an account-level
  /// filter set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456`
  /// Value must have pattern `^bidders/\[^/\]+$`.
  ///
  /// [isTransient] - Whether the filter set is transient, or should be
  /// persisted indefinitely. By default, filter sets are not transient. If
  /// transient, it will be available for at least 1 hour after creation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FilterSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FilterSet> create(
    FilterSet request,
    core.String ownerName, {
    core.bool? isTransient,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (isTransient != null) 'isTransient': ['${isTransient}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' + core.Uri.encodeFull('$ownerName') + '/filterSets';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return FilterSet.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the requested filter set from the account with the given account
  /// ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Full name of the resource to delete. For example: - For a
  /// bidder-level filter set for bidder 123: `bidders/123/filterSets/abc` - For
  /// an account-level filter set for the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern `^bidders/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the requested filter set for the account with the given account
  /// ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Full name of the resource being requested. For example: - For a
  /// bidder-level filter set for bidder 123: `bidders/123/filterSets/abc` - For
  /// an account-level filter set for the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern `^bidders/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FilterSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FilterSet> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return FilterSet.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all filter sets for the account with the given account ID.
  ///
  /// Request parameters:
  ///
  /// [ownerName] - Name of the owner (bidder or account) of the filter sets to
  /// be listed. For example: - For a bidder-level filter set for bidder 123:
  /// `bidders/123` - For an account-level filter set for the buyer account
  /// representing bidder 123: `bidders/123/accounts/123` - For an account-level
  /// filter set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456`
  /// Value must have pattern `^bidders/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListFilterSetsResponse.nextPageToken returned from the previous call to
  /// the accounts.filterSets.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFilterSetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFilterSetsResponse> list(
    core.String ownerName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' + core.Uri.encodeFull('$ownerName') + '/filterSets';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListFilterSetsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersFilterSetsBidMetricsResource {
  final commons.ApiRequester _requester;

  BiddersFilterSetsBidMetricsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists all metrics that are measured in terms of number of bids.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern `^bidders/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListBidMetricsResponse.nextPageToken returned from the previous call to
  /// the bidMetrics.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBidMetricsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBidMetricsResponse> list(
    core.String filterSetName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2beta1/' + core.Uri.encodeFull('$filterSetName') + '/bidMetrics';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBidMetricsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersFilterSetsBidResponseErrorsResource {
  final commons.ApiRequester _requester;

  BiddersFilterSetsBidResponseErrorsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all errors that occurred in bid responses, with the number of bid
  /// responses affected for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern `^bidders/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListBidResponseErrorsResponse.nextPageToken returned from the previous
  /// call to the bidResponseErrors.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBidResponseErrorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBidResponseErrorsResponse> list(
    core.String filterSetName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' +
        core.Uri.encodeFull('$filterSetName') +
        '/bidResponseErrors';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBidResponseErrorsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersFilterSetsBidResponsesWithoutBidsResource {
  final commons.ApiRequester _requester;

  BiddersFilterSetsBidResponsesWithoutBidsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all reasons for which bid responses were considered to have no
  /// applicable bids, with the number of bid responses affected for each
  /// reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern `^bidders/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListBidResponsesWithoutBidsResponse.nextPageToken returned from the
  /// previous call to the bidResponsesWithoutBids.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBidResponsesWithoutBidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBidResponsesWithoutBidsResponse> list(
    core.String filterSetName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' +
        core.Uri.encodeFull('$filterSetName') +
        '/bidResponsesWithoutBids';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBidResponsesWithoutBidsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersFilterSetsFilteredBidRequestsResource {
  final commons.ApiRequester _requester;

  BiddersFilterSetsFilteredBidRequestsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all reasons that caused a bid request not to be sent for an
  /// impression, with the number of bid requests not sent for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern `^bidders/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListFilteredBidRequestsResponse.nextPageToken returned from the previous
  /// call to the filteredBidRequests.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFilteredBidRequestsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFilteredBidRequestsResponse> list(
    core.String filterSetName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' +
        core.Uri.encodeFull('$filterSetName') +
        '/filteredBidRequests';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListFilteredBidRequestsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersFilterSetsFilteredBidsResource {
  final commons.ApiRequester _requester;

  BiddersFilterSetsFilteredBidsCreativesResource get creatives =>
      BiddersFilterSetsFilteredBidsCreativesResource(_requester);
  BiddersFilterSetsFilteredBidsDetailsResource get details =>
      BiddersFilterSetsFilteredBidsDetailsResource(_requester);

  BiddersFilterSetsFilteredBidsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all reasons for which bids were filtered, with the number of bids
  /// filtered for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern `^bidders/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListFilteredBidsResponse.nextPageToken returned from the previous call to
  /// the filteredBids.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFilteredBidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFilteredBidsResponse> list(
    core.String filterSetName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2beta1/' + core.Uri.encodeFull('$filterSetName') + '/filteredBids';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListFilteredBidsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersFilterSetsFilteredBidsCreativesResource {
  final commons.ApiRequester _requester;

  BiddersFilterSetsFilteredBidsCreativesResource(commons.ApiRequester client)
      : _requester = client;

  /// List all creatives associated with a specific reason for which bids were
  /// filtered, with the number of bids filtered for each creative.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern `^bidders/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [creativeStatusId] - The ID of the creative status for which to retrieve a
  /// breakdown by creative. See
  /// \[creative-status-codes\](https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes).
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListCreativeStatusBreakdownByCreativeResponse.nextPageToken returned from
  /// the previous call to the filteredBids.creatives.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCreativeStatusBreakdownByCreativeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCreativeStatusBreakdownByCreativeResponse> list(
    core.String filterSetName,
    core.int creativeStatusId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' +
        core.Uri.encodeFull('$filterSetName') +
        '/filteredBids/' +
        commons.escapeVariable('$creativeStatusId') +
        '/creatives';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCreativeStatusBreakdownByCreativeResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersFilterSetsFilteredBidsDetailsResource {
  final commons.ApiRequester _requester;

  BiddersFilterSetsFilteredBidsDetailsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all details associated with a specific reason for which bids were
  /// filtered, with the number of bids filtered for each detail.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern `^bidders/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [creativeStatusId] - The ID of the creative status for which to retrieve a
  /// breakdown by detail. See
  /// \[creative-status-codes\](https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes).
  /// Details are only available for statuses 10, 14, 15, 17, 18, 19, 86, and
  /// 87.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListCreativeStatusBreakdownByDetailResponse.nextPageToken returned from
  /// the previous call to the filteredBids.details.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCreativeStatusBreakdownByDetailResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCreativeStatusBreakdownByDetailResponse> list(
    core.String filterSetName,
    core.int creativeStatusId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' +
        core.Uri.encodeFull('$filterSetName') +
        '/filteredBids/' +
        commons.escapeVariable('$creativeStatusId') +
        '/details';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCreativeStatusBreakdownByDetailResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersFilterSetsImpressionMetricsResource {
  final commons.ApiRequester _requester;

  BiddersFilterSetsImpressionMetricsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists all metrics that are measured in terms of number of impressions.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern `^bidders/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListImpressionMetricsResponse.nextPageToken returned from the previous
  /// call to the impressionMetrics.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListImpressionMetricsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListImpressionMetricsResponse> list(
    core.String filterSetName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' +
        core.Uri.encodeFull('$filterSetName') +
        '/impressionMetrics';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListImpressionMetricsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersFilterSetsLosingBidsResource {
  final commons.ApiRequester _requester;

  BiddersFilterSetsLosingBidsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all reasons for which bids lost in the auction, with the number of
  /// bids that lost for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern `^bidders/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListLosingBidsResponse.nextPageToken returned from the previous call to
  /// the losingBids.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLosingBidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLosingBidsResponse> list(
    core.String filterSetName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2beta1/' + core.Uri.encodeFull('$filterSetName') + '/losingBids';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLosingBidsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BiddersFilterSetsNonBillableWinningBidsResource {
  final commons.ApiRequester _requester;

  BiddersFilterSetsNonBillableWinningBidsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all reasons for which winning bids were not billable, with the number
  /// of bids not billed for each reason.
  ///
  /// Request parameters:
  ///
  /// [filterSetName] - Name of the filter set that should be applied to the
  /// requested metrics. For example: - For a bidder-level filter set for bidder
  /// 123: `bidders/123/filterSets/abc` - For an account-level filter set for
  /// the buyer account representing bidder 123:
  /// `bidders/123/accounts/123/filterSets/abc` - For an account-level filter
  /// set for the child seat buyer account 456 whose bidder is 123:
  /// `bidders/123/accounts/456/filterSets/abc`
  /// Value must have pattern `^bidders/\[^/\]+/filterSets/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListNonBillableWinningBidsResponse.nextPageToken returned from the
  /// previous call to the nonBillableWinningBids.list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNonBillableWinningBidsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNonBillableWinningBidsResponse> list(
    core.String filterSetName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2beta1/' +
        core.Uri.encodeFull('$filterSetName') +
        '/nonBillableWinningBids';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListNonBillableWinningBidsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// An absolute date range, specified by its start date and end date.
///
/// The supported range of dates begins 30 days before today and ends today.
/// Validity checked upon filter set creation. If a filter set with an absolute
/// date range is run at a later date more than 30 days after start_date, it
/// will fail.
class AbsoluteDateRange {
  /// The end date of the range (inclusive).
  ///
  /// Must be within the 30 days leading up to current date, and must be equal
  /// to or after start_date.
  Date? endDate;

  /// The start date of the range (inclusive).
  ///
  /// Must be within the 30 days leading up to current date, and must be equal
  /// to or before end_date.
  Date? startDate;

  AbsoluteDateRange();

  AbsoluteDateRange.fromJson(core.Map _json) {
    if (_json.containsKey('endDate')) {
      endDate = Date.fromJson(
          _json['endDate'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('startDate')) {
      startDate = Date.fromJson(
          _json['startDate'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null) 'endDate': endDate!.toJson(),
        if (startDate != null) 'startDate': startDate!.toJson(),
      };
}

/// Request to accept a proposal.
class AcceptProposalRequest {
  /// The last known client revision number of the proposal.
  core.String? proposalRevision;

  AcceptProposalRequest();

  AcceptProposalRequest.fromJson(core.Map _json) {
    if (_json.containsKey('proposalRevision')) {
      proposalRevision = _json['proposalRevision'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (proposalRevision != null) 'proposalRevision': proposalRevision!,
      };
}

/// Represents size of a single ad slot, or a creative.
class AdSize {
  /// The height of the ad slot in pixels.
  ///
  /// This field will be present only when size type is `PIXEL`.
  core.String? height;

  /// The size type of the ad slot.
  /// Possible string values are:
  /// - "SIZE_TYPE_UNSPECIFIED" : A placeholder for an undefined size type.
  /// - "PIXEL" : Ad slot with size specified by height and width in pixels.
  /// - "INTERSTITIAL" : Special size to describe an interstitial ad slot.
  /// - "NATIVE" : Native (mobile) ads rendered by the publisher.
  /// - "FLUID" : Fluid size (i.e., responsive size) can be resized
  /// automatically with the change of outside environment.
  core.String? sizeType;

  /// The width of the ad slot in pixels.
  ///
  /// This field will be present only when size type is `PIXEL`.
  core.String? width;

  AdSize();

  AdSize.fromJson(core.Map _json) {
    if (_json.containsKey('height')) {
      height = _json['height'] as core.String;
    }
    if (_json.containsKey('sizeType')) {
      sizeType = _json['sizeType'] as core.String;
    }
    if (_json.containsKey('width')) {
      width = _json['width'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (sizeType != null) 'sizeType': sizeType!,
        if (width != null) 'width': width!,
      };
}

/// Detected ad technology provider information.
class AdTechnologyProviders {
  /// The detected ad technology provider IDs for this creative.
  ///
  /// See https://storage.googleapis.com/adx-rtb-dictionaries/providers.csv for
  /// mapping of provider ID to provided name, a privacy policy URL, and a list
  /// of domains which can be attributed to the provider. If the creative
  /// contains provider IDs that are outside of those listed in the
  /// `BidRequest.adslot.consented_providers_settings.consented_providers` field
  /// on the (Google bid
  /// protocol)\[https://developers.google.com/authorized-buyers/rtb/downloads/realtime-bidding-proto\]
  /// and the
  /// `BidRequest.user.ext.consented_providers_settings.consented_providers`
  /// field on the (OpenRTB
  /// protocol)\[https://developers.google.com/authorized-buyers/rtb/downloads/openrtb-adx-proto\],
  /// and a bid is submitted with that creative for an impression that will
  /// serve to an EEA user, the bid will be filtered before the auction.
  core.List<core.String>? detectedProviderIds;

  /// Whether the creative contains an unidentified ad technology provider.
  ///
  /// If true for a given creative, any bid submitted with that creative for an
  /// impression that will serve to an EEA user will be filtered before the
  /// auction.
  core.bool? hasUnidentifiedProvider;

  AdTechnologyProviders();

  AdTechnologyProviders.fromJson(core.Map _json) {
    if (_json.containsKey('detectedProviderIds')) {
      detectedProviderIds = (_json['detectedProviderIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('hasUnidentifiedProvider')) {
      hasUnidentifiedProvider = _json['hasUnidentifiedProvider'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedProviderIds != null)
          'detectedProviderIds': detectedProviderIds!,
        if (hasUnidentifiedProvider != null)
          'hasUnidentifiedProvider': hasUnidentifiedProvider!,
      };
}

/// A request for associating a deal and a creative.
class AddDealAssociationRequest {
  /// The association between a creative and a deal that should be added.
  CreativeDealAssociation? association;

  AddDealAssociationRequest();

  AddDealAssociationRequest.fromJson(core.Map _json) {
    if (_json.containsKey('association')) {
      association = CreativeDealAssociation.fromJson(
          _json['association'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (association != null) 'association': association!.toJson(),
      };
}

/// Request message for adding a note to a given proposal.
class AddNoteRequest {
  /// Details of the note to add.
  Note? note;

  AddNoteRequest();

  AddNoteRequest.fromJson(core.Map _json) {
    if (_json.containsKey('note')) {
      note =
          Note.fromJson(_json['note'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (note != null) 'note': note!.toJson(),
      };
}

/// The app type the restriction applies to for mobile device.
///
/// Output only.
class AppContext {
  /// The app types this restriction applies to.
  core.List<core.String>? appTypes;

  AppContext();

  AppContext.fromJson(core.Map _json) {
    if (_json.containsKey('appTypes')) {
      appTypes = (_json['appTypes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (appTypes != null) 'appTypes': appTypes!,
      };
}

/// The auction type the restriction applies to.
///
/// Output only.
class AuctionContext {
  /// The auction types this restriction applies to.
  core.List<core.String>? auctionTypes;

  AuctionContext();

  AuctionContext.fromJson(core.Map _json) {
    if (_json.containsKey('auctionTypes')) {
      auctionTypes = (_json['auctionTypes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (auctionTypes != null) 'auctionTypes': auctionTypes!,
      };
}

/// The set of metrics that are measured in numbers of bids, representing how
/// many bids with the specified dimension values were considered eligible at
/// each stage of the bidding funnel;
class BidMetricsRow {
  /// The number of bids that Ad Exchange received from the buyer.
  MetricValue? bids;

  /// The number of bids that were permitted to compete in the auction.
  MetricValue? bidsInAuction;

  /// The number of bids for which the buyer was billed.
  MetricValue? billedImpressions;

  /// The number of bids that won the auction.
  MetricValue? impressionsWon;

  /// The number of bids for which the corresponding impression was measurable
  /// for viewability (as defined by Active View).
  MetricValue? measurableImpressions;

  /// The number of bids that won the auction and also won the mediation
  /// waterfall (if any).
  MetricValue? reachedQueries;

  /// The values of all dimensions associated with metric values in this row.
  RowDimensions? rowDimensions;

  /// The number of bids for which the corresponding impression was viewable (as
  /// defined by Active View).
  MetricValue? viewableImpressions;

  BidMetricsRow();

  BidMetricsRow.fromJson(core.Map _json) {
    if (_json.containsKey('bids')) {
      bids = MetricValue.fromJson(
          _json['bids'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('bidsInAuction')) {
      bidsInAuction = MetricValue.fromJson(
          _json['bidsInAuction'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('billedImpressions')) {
      billedImpressions = MetricValue.fromJson(
          _json['billedImpressions'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('impressionsWon')) {
      impressionsWon = MetricValue.fromJson(
          _json['impressionsWon'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('measurableImpressions')) {
      measurableImpressions = MetricValue.fromJson(
          _json['measurableImpressions']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('reachedQueries')) {
      reachedQueries = MetricValue.fromJson(
          _json['reachedQueries'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('rowDimensions')) {
      rowDimensions = RowDimensions.fromJson(
          _json['rowDimensions'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('viewableImpressions')) {
      viewableImpressions = MetricValue.fromJson(
          _json['viewableImpressions'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (bids != null) 'bids': bids!.toJson(),
        if (bidsInAuction != null) 'bidsInAuction': bidsInAuction!.toJson(),
        if (billedImpressions != null)
          'billedImpressions': billedImpressions!.toJson(),
        if (impressionsWon != null) 'impressionsWon': impressionsWon!.toJson(),
        if (measurableImpressions != null)
          'measurableImpressions': measurableImpressions!.toJson(),
        if (reachedQueries != null) 'reachedQueries': reachedQueries!.toJson(),
        if (rowDimensions != null) 'rowDimensions': rowDimensions!.toJson(),
        if (viewableImpressions != null)
          'viewableImpressions': viewableImpressions!.toJson(),
      };
}

/// The number of impressions with the specified dimension values that were
/// considered to have no applicable bids, as described by the specified status.
class BidResponseWithoutBidsStatusRow {
  /// The number of impressions for which there was a bid response with the
  /// specified status.
  MetricValue? impressionCount;

  /// The values of all dimensions associated with metric values in this row.
  RowDimensions? rowDimensions;

  /// The status specifying why the bid responses were considered to have no
  /// applicable bids.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : A placeholder for an undefined status. This value
  /// will never be returned in responses.
  /// - "RESPONSES_WITHOUT_BIDS" : The response had no bids.
  /// - "RESPONSES_WITHOUT_BIDS_FOR_ACCOUNT" : The response had no bids for the
  /// specified account, though it may have included bids on behalf of other
  /// accounts. Applies if: 1. Request is on behalf of a bidder and an account
  /// filter is present. 2. Request is on behalf of a child seat.
  /// - "RESPONSES_WITHOUT_BIDS_FOR_DEAL" : The response had no bids for the
  /// specified deal, though it may have included bids on other deals on behalf
  /// of the account to which the deal belongs. If request is on behalf of a
  /// bidder and an account filter is not present, this also includes responses
  /// that have bids on behalf of accounts other than the account to which the
  /// deal belongs.
  core.String? status;

  BidResponseWithoutBidsStatusRow();

  BidResponseWithoutBidsStatusRow.fromJson(core.Map _json) {
    if (_json.containsKey('impressionCount')) {
      impressionCount = MetricValue.fromJson(
          _json['impressionCount'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('rowDimensions')) {
      rowDimensions = RowDimensions.fromJson(
          _json['rowDimensions'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (impressionCount != null)
          'impressionCount': impressionCount!.toJson(),
        if (rowDimensions != null) 'rowDimensions': rowDimensions!.toJson(),
        if (status != null) 'status': status!,
      };
}

/// Represents a buyer of inventory.
///
/// Each buyer is identified by a unique Authorized Buyers account ID.
class Buyer {
  /// Authorized Buyers account ID of the buyer.
  core.String? accountId;

  Buyer();

  Buyer.fromJson(core.Map _json) {
    if (_json.containsKey('accountId')) {
      accountId = _json['accountId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
      };
}

/// The number of impressions with the specified dimension values where the
/// corresponding bid request or bid response was not successful, as described
/// by the specified callout status.
class CalloutStatusRow {
  /// The ID of the callout status.
  ///
  /// See
  /// \[callout-status-codes\](https://developers.google.com/authorized-buyers/rtb/downloads/callout-status-codes).
  core.int? calloutStatusId;

  /// The number of impressions for which there was a bid request or bid
  /// response with the specified callout status.
  MetricValue? impressionCount;

  /// The values of all dimensions associated with metric values in this row.
  RowDimensions? rowDimensions;

  CalloutStatusRow();

  CalloutStatusRow.fromJson(core.Map _json) {
    if (_json.containsKey('calloutStatusId')) {
      calloutStatusId = _json['calloutStatusId'] as core.int;
    }
    if (_json.containsKey('impressionCount')) {
      impressionCount = MetricValue.fromJson(
          _json['impressionCount'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('rowDimensions')) {
      rowDimensions = RowDimensions.fromJson(
          _json['rowDimensions'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (calloutStatusId != null) 'calloutStatusId': calloutStatusId!,
        if (impressionCount != null)
          'impressionCount': impressionCount!.toJson(),
        if (rowDimensions != null) 'rowDimensions': rowDimensions!.toJson(),
      };
}

/// Request to cancel an ongoing negotiation.
class CancelNegotiationRequest {
  CancelNegotiationRequest();

  CancelNegotiationRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// A client resource represents a client buyer—an agency, a brand, or an
/// advertiser customer of the sponsor buyer.
///
/// Users associated with the client buyer have restricted access to the
/// Marketplace and certain other sections of the Authorized Buyers UI based on
/// the role granted to the client buyer. All fields are required unless
/// otherwise specified.
class Client {
  /// The globally-unique numerical ID of the client.
  ///
  /// The value of this field is ignored in create and update operations.
  core.String? clientAccountId;

  /// Name used to represent this client to publishers.
  ///
  /// You may have multiple clients that map to the same entity, but for each
  /// client the combination of `clientName` and entity must be unique. You can
  /// specify this field as empty.
  core.String? clientName;

  /// Numerical identifier of the client entity.
  ///
  /// The entity can be an advertiser, a brand, or an agency. This identifier is
  /// unique among all the entities with the same type. The value of this field
  /// is ignored if the entity type is not provided. A list of all known
  /// advertisers with their identifiers is available in the
  /// [advertisers.txt](https://storage.googleapis.com/adx-rtb-dictionaries/advertisers.txt)
  /// file. A list of all known brands with their identifiers is available in
  /// the
  /// [brands.txt](https://storage.googleapis.com/adx-rtb-dictionaries/brands.txt)
  /// file. A list of all known agencies with their identifiers is available in
  /// the
  /// [agencies.txt](https://storage.googleapis.com/adx-rtb-dictionaries/agencies.txt)
  /// file.
  core.String? entityId;

  /// The name of the entity.
  ///
  /// This field is automatically fetched based on the type and ID. The value of
  /// this field is ignored in create and update operations.
  core.String? entityName;

  /// An optional field for specifying the type of the client entity:
  /// `ADVERTISER`, `BRAND`, or `AGENCY`.
  /// Possible string values are:
  /// - "ENTITY_TYPE_UNSPECIFIED" : A placeholder for an undefined client entity
  /// type. Should not be used.
  /// - "ADVERTISER" : An advertiser.
  /// - "BRAND" : A brand.
  /// - "AGENCY" : An advertising agency.
  /// - "ENTITY_TYPE_UNCLASSIFIED" : An explicit value for a client that was not
  /// yet classified as any particular entity.
  core.String? entityType;

  /// Optional arbitrary unique identifier of this client buyer from the
  /// standpoint of its Ad Exchange sponsor buyer.
  ///
  /// This field can be used to associate a client buyer with the identifier in
  /// the namespace of its sponsor buyer, lookup client buyers by that
  /// identifier and verify whether an Ad Exchange counterpart of a given client
  /// buyer already exists. If present, must be unique among all the client
  /// buyers for its Ad Exchange sponsor buyer.
  core.String? partnerClientId;

  /// The role which is assigned to the client buyer.
  ///
  /// Each role implies a set of permissions granted to the client. Must be one
  /// of `CLIENT_DEAL_VIEWER`, `CLIENT_DEAL_NEGOTIATOR` or
  /// `CLIENT_DEAL_APPROVER`.
  /// Possible string values are:
  /// - "CLIENT_ROLE_UNSPECIFIED" : A placeholder for an undefined client role.
  /// - "CLIENT_DEAL_VIEWER" : Users associated with this client can see
  /// publisher deal offers in the Marketplace. They can neither negotiate
  /// proposals nor approve deals. If this client is visible to publishers, they
  /// can send deal proposals to this client.
  /// - "CLIENT_DEAL_NEGOTIATOR" : Users associated with this client can respond
  /// to deal proposals sent to them by publishers. They can also initiate deal
  /// proposals of their own.
  /// - "CLIENT_DEAL_APPROVER" : Users associated with this client can approve
  /// eligible deals on your behalf. Some deals may still explicitly require
  /// publisher finalization. If this role is not selected, the sponsor buyer
  /// will need to manually approve each of their deals.
  core.String? role;

  /// The status of the client buyer.
  /// Possible string values are:
  /// - "CLIENT_STATUS_UNSPECIFIED" : A placeholder for an undefined client
  /// status.
  /// - "DISABLED" : A client that is currently disabled.
  /// - "ACTIVE" : A client that is currently active.
  core.String? status;

  /// Whether the client buyer will be visible to sellers.
  core.bool? visibleToSeller;

  Client();

  Client.fromJson(core.Map _json) {
    if (_json.containsKey('clientAccountId')) {
      clientAccountId = _json['clientAccountId'] as core.String;
    }
    if (_json.containsKey('clientName')) {
      clientName = _json['clientName'] as core.String;
    }
    if (_json.containsKey('entityId')) {
      entityId = _json['entityId'] as core.String;
    }
    if (_json.containsKey('entityName')) {
      entityName = _json['entityName'] as core.String;
    }
    if (_json.containsKey('entityType')) {
      entityType = _json['entityType'] as core.String;
    }
    if (_json.containsKey('partnerClientId')) {
      partnerClientId = _json['partnerClientId'] as core.String;
    }
    if (_json.containsKey('role')) {
      role = _json['role'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('visibleToSeller')) {
      visibleToSeller = _json['visibleToSeller'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientAccountId != null) 'clientAccountId': clientAccountId!,
        if (clientName != null) 'clientName': clientName!,
        if (entityId != null) 'entityId': entityId!,
        if (entityName != null) 'entityName': entityName!,
        if (entityType != null) 'entityType': entityType!,
        if (partnerClientId != null) 'partnerClientId': partnerClientId!,
        if (role != null) 'role': role!,
        if (status != null) 'status': status!,
        if (visibleToSeller != null) 'visibleToSeller': visibleToSeller!,
      };
}

/// A client user is created under a client buyer and has restricted access to
/// the Marketplace and certain other sections of the Authorized Buyers UI based
/// on the role granted to the associated client buyer.
///
/// The only way a new client user can be created is via accepting an email
/// invitation (see the accounts.clients.invitations.create method). All fields
/// are required unless otherwise specified.
class ClientUser {
  /// Numerical account ID of the client buyer with which the user is
  /// associated; the buyer must be a client of the current sponsor buyer.
  ///
  /// The value of this field is ignored in an update operation.
  core.String? clientAccountId;

  /// User's email address.
  ///
  /// The value of this field is ignored in an update operation.
  core.String? email;

  /// The status of the client user.
  /// Possible string values are:
  /// - "USER_STATUS_UNSPECIFIED" : A placeholder for an undefined user status.
  /// - "PENDING" : A user who was already created but hasn't accepted the
  /// invitation yet.
  /// - "ACTIVE" : A user that is currently active.
  /// - "DISABLED" : A user that is currently disabled.
  core.String? status;

  /// The unique numerical ID of the client user that has accepted an
  /// invitation.
  ///
  /// The value of this field is ignored in an update operation.
  core.String? userId;

  ClientUser();

  ClientUser.fromJson(core.Map _json) {
    if (_json.containsKey('clientAccountId')) {
      clientAccountId = _json['clientAccountId'] as core.String;
    }
    if (_json.containsKey('email')) {
      email = _json['email'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('userId')) {
      userId = _json['userId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientAccountId != null) 'clientAccountId': clientAccountId!,
        if (email != null) 'email': email!,
        if (status != null) 'status': status!,
        if (userId != null) 'userId': userId!,
      };
}

/// An invitation for a new client user to get access to the Authorized Buyers
/// UI.
///
/// All fields are required unless otherwise specified.
class ClientUserInvitation {
  /// Numerical account ID of the client buyer that the invited user is
  /// associated with.
  ///
  /// The value of this field is ignored in create operations.
  core.String? clientAccountId;

  /// The email address to which the invitation is sent.
  ///
  /// Email addresses should be unique among all client users under each sponsor
  /// buyer.
  core.String? email;

  /// The unique numerical ID of the invitation that is sent to the user.
  ///
  /// The value of this field is ignored in create operations.
  core.String? invitationId;

  ClientUserInvitation();

  ClientUserInvitation.fromJson(core.Map _json) {
    if (_json.containsKey('clientAccountId')) {
      clientAccountId = _json['clientAccountId'] as core.String;
    }
    if (_json.containsKey('email')) {
      email = _json['email'] as core.String;
    }
    if (_json.containsKey('invitationId')) {
      invitationId = _json['invitationId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientAccountId != null) 'clientAccountId': clientAccountId!,
        if (email != null) 'email': email!,
        if (invitationId != null) 'invitationId': invitationId!,
      };
}

/// Request message for indicating that the proposal's setup step is complete.
class CompleteSetupRequest {
  CompleteSetupRequest();

  CompleteSetupRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Contains information on how a buyer or seller can be reached.
class ContactInformation {
  /// Email address for the contact.
  core.String? email;

  /// The name of the contact.
  core.String? name;

  ContactInformation();

  ContactInformation.fromJson(core.Map _json) {
    if (_json.containsKey('email')) {
      email = _json['email'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (name != null) 'name': name!,
      };
}

/// Shows any corrections that were applied to this creative.
///
/// Output only.
class Correction {
  /// The contexts for the correction.
  core.List<ServingContext>? contexts;

  /// Additional details about what was corrected.
  core.List<core.String>? details;

  /// The type of correction that was applied to the creative.
  /// Possible string values are:
  /// - "CORRECTION_TYPE_UNSPECIFIED" : The correction type is unknown. Refer to
  /// the details for more information.
  /// - "VENDOR_IDS_ADDED" : The ad's declared vendors did not match the vendors
  /// that were detected. The detected vendors were added.
  /// - "SSL_ATTRIBUTE_REMOVED" : The ad had the SSL attribute declared but was
  /// not SSL-compliant. The SSL attribute was removed.
  /// - "FLASH_FREE_ATTRIBUTE_REMOVED" : The ad was declared as Flash-free but
  /// contained Flash, so the Flash-free attribute was removed.
  /// - "FLASH_FREE_ATTRIBUTE_ADDED" : The ad was not declared as Flash-free but
  /// it did not reference any flash content, so the Flash-free attribute was
  /// added.
  /// - "REQUIRED_ATTRIBUTE_ADDED" : The ad did not declare a required creative
  /// attribute. The attribute was added.
  /// - "REQUIRED_VENDOR_ADDED" : The ad did not declare a required technology
  /// vendor. The technology vendor was added.
  /// - "SSL_ATTRIBUTE_ADDED" : The ad did not declare the SSL attribute but was
  /// SSL-compliant, so the SSL attribute was added.
  /// - "IN_BANNER_VIDEO_ATTRIBUTE_ADDED" : Properties consistent with In-banner
  /// video were found, so an In-Banner Video attribute was added.
  /// - "MRAID_ATTRIBUTE_ADDED" : The ad makes calls to the MRAID API so the
  /// MRAID attribute was added.
  /// - "FLASH_ATTRIBUTE_REMOVED" : The ad unnecessarily declared the Flash
  /// attribute, so the Flash attribute was removed.
  /// - "VIDEO_IN_SNIPPET_ATTRIBUTE_ADDED" : The ad contains video content.
  core.String? type;

  Correction();

  Correction.fromJson(core.Map _json) {
    if (_json.containsKey('contexts')) {
      contexts = (_json['contexts'] as core.List)
          .map<ServingContext>((value) => ServingContext.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (contexts != null)
          'contexts': contexts!.map((value) => value.toJson()).toList(),
        if (details != null) 'details': details!,
        if (type != null) 'type': type!,
      };
}

/// A creative and its classification data.
class Creative {
  /// The account that this creative belongs to.
  ///
  /// Can be used to filter the response of the creatives.list method.
  core.String? accountId;

  /// The link to AdChoices destination page.
  core.String? adChoicesDestinationUrl;

  /// The detected ad technology providers.
  ///
  /// Output only.
  AdTechnologyProviders? adTechnologyProviders;

  /// The name of the company being advertised in the creative.
  core.String? advertiserName;

  /// The agency ID for this creative.
  core.String? agencyId;

  /// The last update timestamp of the creative via API.
  ///
  /// Output only.
  core.String? apiUpdateTime;

  /// All attributes for the ads that may be shown from this creative.
  ///
  /// Can be used to filter the response of the creatives.list method.
  core.List<core.String>? attributes;

  /// The set of destination URLs for the creative.
  core.List<core.String>? clickThroughUrls;

  /// Shows any corrections that were applied to this creative.
  ///
  /// Output only.
  core.List<Correction>? corrections;

  /// The buyer-defined creative ID of this creative.
  ///
  /// Can be used to filter the response of the creatives.list method.
  core.String? creativeId;

  /// The top-level deals status of this creative.
  ///
  /// If disapproved, an entry for 'auctionType=DIRECT_DEALS' (or 'ALL') in
  /// serving_restrictions will also exist. Note that this may be nuanced with
  /// other contextual restrictions, in which case, it may be preferable to read
  /// from serving_restrictions directly. Can be used to filter the response of
  /// the creatives.list method.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : The status is unknown.
  /// - "NOT_CHECKED" : The creative has not been checked.
  /// - "CONDITIONALLY_APPROVED" : The creative has been conditionally approved.
  /// See serving_restrictions for details.
  /// - "APPROVED" : The creative has been approved.
  /// - "DISAPPROVED" : The creative has been disapproved.
  /// - "PENDING_REVIEW" : Placeholder for transition to v1beta1. Currently not
  /// used.
  /// - "STATUS_TYPE_UNSPECIFIED" : Placeholder for transition to v1beta1.
  /// Currently not used.
  core.String? dealsStatus;

  /// The set of declared destination URLs for the creative.
  core.List<core.String>? declaredClickThroughUrls;

  /// Detected advertiser IDs, if any.
  ///
  /// Output only.
  core.List<core.String>? detectedAdvertiserIds;

  /// The detected domains for this creative.
  ///
  /// Output only.
  core.List<core.String>? detectedDomains;

  /// The detected languages for this creative.
  ///
  /// The order is arbitrary. The codes are 2 or 5 characters and are documented
  /// at https://developers.google.com/adwords/api/docs/appendix/languagecodes.
  ///
  /// Output only.
  core.List<core.String>? detectedLanguages;

  /// Detected product categories, if any.
  ///
  /// See the ad-product-categories.txt file in the technical documentation for
  /// a list of IDs.
  ///
  /// Output only.
  core.List<core.int>? detectedProductCategories;

  /// Detected sensitive categories, if any.
  ///
  /// See the ad-sensitive-categories.txt file in the technical documentation
  /// for a list of IDs. You should use these IDs along with the
  /// excluded-sensitive-category field in the bid request to filter your bids.
  ///
  /// Output only.
  core.List<core.int>? detectedSensitiveCategories;

  /// An HTML creative.
  HtmlContent? html;

  /// The set of URLs to be called to record an impression.
  core.List<core.String>? impressionTrackingUrls;

  /// A native creative.
  NativeContent? native;

  /// The top-level open auction status of this creative.
  ///
  /// If disapproved, an entry for 'auctionType = OPEN_AUCTION' (or 'ALL') in
  /// serving_restrictions will also exist. Note that this may be nuanced with
  /// other contextual restrictions, in which case, it may be preferable to read
  /// from serving_restrictions directly. Can be used to filter the response of
  /// the creatives.list method.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : The status is unknown.
  /// - "NOT_CHECKED" : The creative has not been checked.
  /// - "CONDITIONALLY_APPROVED" : The creative has been conditionally approved.
  /// See serving_restrictions for details.
  /// - "APPROVED" : The creative has been approved.
  /// - "DISAPPROVED" : The creative has been disapproved.
  /// - "PENDING_REVIEW" : Placeholder for transition to v1beta1. Currently not
  /// used.
  /// - "STATUS_TYPE_UNSPECIFIED" : Placeholder for transition to v1beta1.
  /// Currently not used.
  core.String? openAuctionStatus;

  /// All restricted categories for the ads that may be shown from this
  /// creative.
  core.List<core.String>? restrictedCategories;

  /// The granular status of this ad in specific contexts.
  ///
  /// A context here relates to where something ultimately serves (for example,
  /// a physical location, a platform, an HTTPS vs HTTP request, or the type of
  /// auction).
  ///
  /// Output only.
  core.List<ServingRestriction>? servingRestrictions;

  /// All vendor IDs for the ads that may be shown from this creative.
  ///
  /// See https://storage.googleapis.com/adx-rtb-dictionaries/vendors.txt for
  /// possible values.
  core.List<core.int>? vendorIds;

  /// The version of this creative.
  ///
  /// Output only.
  core.int? version;

  /// A video creative.
  VideoContent? video;

  Creative();

  Creative.fromJson(core.Map _json) {
    if (_json.containsKey('accountId')) {
      accountId = _json['accountId'] as core.String;
    }
    if (_json.containsKey('adChoicesDestinationUrl')) {
      adChoicesDestinationUrl = _json['adChoicesDestinationUrl'] as core.String;
    }
    if (_json.containsKey('adTechnologyProviders')) {
      adTechnologyProviders = AdTechnologyProviders.fromJson(
          _json['adTechnologyProviders']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('advertiserName')) {
      advertiserName = _json['advertiserName'] as core.String;
    }
    if (_json.containsKey('agencyId')) {
      agencyId = _json['agencyId'] as core.String;
    }
    if (_json.containsKey('apiUpdateTime')) {
      apiUpdateTime = _json['apiUpdateTime'] as core.String;
    }
    if (_json.containsKey('attributes')) {
      attributes = (_json['attributes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('clickThroughUrls')) {
      clickThroughUrls = (_json['clickThroughUrls'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('corrections')) {
      corrections = (_json['corrections'] as core.List)
          .map<Correction>((value) =>
              Correction.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('creativeId')) {
      creativeId = _json['creativeId'] as core.String;
    }
    if (_json.containsKey('dealsStatus')) {
      dealsStatus = _json['dealsStatus'] as core.String;
    }
    if (_json.containsKey('declaredClickThroughUrls')) {
      declaredClickThroughUrls =
          (_json['declaredClickThroughUrls'] as core.List)
              .map<core.String>((value) => value as core.String)
              .toList();
    }
    if (_json.containsKey('detectedAdvertiserIds')) {
      detectedAdvertiserIds = (_json['detectedAdvertiserIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('detectedDomains')) {
      detectedDomains = (_json['detectedDomains'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('detectedProductCategories')) {
      detectedProductCategories =
          (_json['detectedProductCategories'] as core.List)
              .map<core.int>((value) => value as core.int)
              .toList();
    }
    if (_json.containsKey('detectedSensitiveCategories')) {
      detectedSensitiveCategories =
          (_json['detectedSensitiveCategories'] as core.List)
              .map<core.int>((value) => value as core.int)
              .toList();
    }
    if (_json.containsKey('html')) {
      html = HtmlContent.fromJson(
          _json['html'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('impressionTrackingUrls')) {
      impressionTrackingUrls = (_json['impressionTrackingUrls'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('native')) {
      native = NativeContent.fromJson(
          _json['native'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('openAuctionStatus')) {
      openAuctionStatus = _json['openAuctionStatus'] as core.String;
    }
    if (_json.containsKey('restrictedCategories')) {
      restrictedCategories = (_json['restrictedCategories'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('servingRestrictions')) {
      servingRestrictions = (_json['servingRestrictions'] as core.List)
          .map<ServingRestriction>((value) => ServingRestriction.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('vendorIds')) {
      vendorIds = (_json['vendorIds'] as core.List)
          .map<core.int>((value) => value as core.int)
          .toList();
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.int;
    }
    if (_json.containsKey('video')) {
      video = VideoContent.fromJson(
          _json['video'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (adChoicesDestinationUrl != null)
          'adChoicesDestinationUrl': adChoicesDestinationUrl!,
        if (adTechnologyProviders != null)
          'adTechnologyProviders': adTechnologyProviders!.toJson(),
        if (advertiserName != null) 'advertiserName': advertiserName!,
        if (agencyId != null) 'agencyId': agencyId!,
        if (apiUpdateTime != null) 'apiUpdateTime': apiUpdateTime!,
        if (attributes != null) 'attributes': attributes!,
        if (clickThroughUrls != null) 'clickThroughUrls': clickThroughUrls!,
        if (corrections != null)
          'corrections': corrections!.map((value) => value.toJson()).toList(),
        if (creativeId != null) 'creativeId': creativeId!,
        if (dealsStatus != null) 'dealsStatus': dealsStatus!,
        if (declaredClickThroughUrls != null)
          'declaredClickThroughUrls': declaredClickThroughUrls!,
        if (detectedAdvertiserIds != null)
          'detectedAdvertiserIds': detectedAdvertiserIds!,
        if (detectedDomains != null) 'detectedDomains': detectedDomains!,
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (detectedProductCategories != null)
          'detectedProductCategories': detectedProductCategories!,
        if (detectedSensitiveCategories != null)
          'detectedSensitiveCategories': detectedSensitiveCategories!,
        if (html != null) 'html': html!.toJson(),
        if (impressionTrackingUrls != null)
          'impressionTrackingUrls': impressionTrackingUrls!,
        if (native != null) 'native': native!.toJson(),
        if (openAuctionStatus != null) 'openAuctionStatus': openAuctionStatus!,
        if (restrictedCategories != null)
          'restrictedCategories': restrictedCategories!,
        if (servingRestrictions != null)
          'servingRestrictions':
              servingRestrictions!.map((value) => value.toJson()).toList(),
        if (vendorIds != null) 'vendorIds': vendorIds!,
        if (version != null) 'version': version!,
        if (video != null) 'video': video!.toJson(),
      };
}

/// The association between a creative and a deal.
class CreativeDealAssociation {
  /// The account the creative belongs to.
  core.String? accountId;

  /// The ID of the creative associated with the deal.
  core.String? creativeId;

  /// The externalDealId for the deal associated with the creative.
  core.String? dealsId;

  CreativeDealAssociation();

  CreativeDealAssociation.fromJson(core.Map _json) {
    if (_json.containsKey('accountId')) {
      accountId = _json['accountId'] as core.String;
    }
    if (_json.containsKey('creativeId')) {
      creativeId = _json['creativeId'] as core.String;
    }
    if (_json.containsKey('dealsId')) {
      dealsId = _json['dealsId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (creativeId != null) 'creativeId': creativeId!,
        if (dealsId != null) 'dealsId': dealsId!,
      };
}

/// Represents creative restrictions associated to Programmatic Guaranteed/
/// Preferred Deal in Ad Manager.
///
/// This doesn't apply to Private Auction and AdX Preferred Deals.
class CreativeRestrictions {
  /// The format of the environment that the creatives will be displayed in.
  /// Possible string values are:
  /// - "CREATIVE_FORMAT_UNSPECIFIED" : A placeholder for an undefined creative
  /// format.
  /// - "DISPLAY" : A creative that will be displayed in environments such as a
  /// browser.
  /// - "VIDEO" : A video creative that will be displayed in environments such
  /// as a video player.
  core.String? creativeFormat;
  core.List<CreativeSpecification>? creativeSpecifications;

  /// Skippable video ads allow viewers to skip ads after 5 seconds.
  /// Possible string values are:
  /// - "SKIPPABLE_AD_TYPE_UNSPECIFIED" : A placeholder for an undefined
  /// skippable ad type.
  /// - "SKIPPABLE" : This video ad can be skipped after 5 seconds.
  /// - "INSTREAM_SELECT" : This video ad can be skipped after 5 seconds, and is
  /// counted as engaged view after 30 seconds. The creative is hosted on
  /// YouTube only, and viewcount of the YouTube video increments after the
  /// engaged view.
  /// - "NOT_SKIPPABLE" : This video ad is not skippable.
  core.String? skippableAdType;

  CreativeRestrictions();

  CreativeRestrictions.fromJson(core.Map _json) {
    if (_json.containsKey('creativeFormat')) {
      creativeFormat = _json['creativeFormat'] as core.String;
    }
    if (_json.containsKey('creativeSpecifications')) {
      creativeSpecifications = (_json['creativeSpecifications'] as core.List)
          .map<CreativeSpecification>((value) => CreativeSpecification.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('skippableAdType')) {
      skippableAdType = _json['skippableAdType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativeFormat != null) 'creativeFormat': creativeFormat!,
        if (creativeSpecifications != null)
          'creativeSpecifications':
              creativeSpecifications!.map((value) => value.toJson()).toList(),
        if (skippableAdType != null) 'skippableAdType': skippableAdType!,
      };
}

/// Specifies the size of the creative.
class CreativeSize {
  /// What formats are allowed by the publisher.
  ///
  /// If this repeated field is empty then all formats are allowed. For example,
  /// if this field contains AllowedFormatType.AUDIO then the publisher only
  /// allows an audio ad (without any video).
  core.List<core.String>? allowedFormats;

  /// For video creatives specifies the sizes of companion ads (if present).
  ///
  /// Companion sizes may be filled in only when creative_size_type = VIDEO
  core.List<Size>? companionSizes;

  /// The creative size type.
  /// Possible string values are:
  /// - "CREATIVE_SIZE_TYPE_UNSPECIFIED" : A placeholder for an undefined
  /// creative size type.
  /// - "REGULAR" : The creative is a regular desktop creative.
  /// - "INTERSTITIAL" : The creative is an interstitial creative.
  /// - "VIDEO" : The creative is a video creative.
  /// - "NATIVE" : The creative is a native (mobile) creative.
  core.String? creativeSizeType;

  /// The native template for this creative.
  ///
  /// It will have a value only if creative_size_type = CreativeSizeType.NATIVE.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNKNOWN_NATIVE_TEMPLATE" : A placeholder for an undefined native
  /// template.
  /// - "NATIVE_CONTENT_AD" : The creative is linked to native content ad.
  /// - "NATIVE_APP_INSTALL_AD" : The creative is linked to native app install
  /// ad.
  /// - "NATIVE_VIDEO_CONTENT_AD" : The creative is linked to native video
  /// content ad.
  /// - "NATIVE_VIDEO_APP_INSTALL_AD" : The creative is linked to native video
  /// app install ad.
  core.String? nativeTemplate;

  /// For regular or video creative size type, specifies the size of the
  /// creative
  Size? size;

  /// The type of skippable ad for this creative.
  ///
  /// It will have a value only if creative_size_type = CreativeSizeType.VIDEO.
  /// Possible string values are:
  /// - "SKIPPABLE_AD_TYPE_UNSPECIFIED" : A placeholder for an undefined
  /// skippable ad type.
  /// - "GENERIC" : This video ad can be skipped after 5 seconds.
  /// - "INSTREAM_SELECT" : This video ad can be skipped after 5 seconds, and
  /// count as engaged view after 30 seconds. The creative is hosted on YouTube
  /// only, and viewcount of the YouTube video increments after the engaged
  /// view.
  /// - "NOT_SKIPPABLE" : This video ad is not skippable.
  core.String? skippableAdType;

  CreativeSize();

  CreativeSize.fromJson(core.Map _json) {
    if (_json.containsKey('allowedFormats')) {
      allowedFormats = (_json['allowedFormats'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('companionSizes')) {
      companionSizes = (_json['companionSizes'] as core.List)
          .map<Size>((value) =>
              Size.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('creativeSizeType')) {
      creativeSizeType = _json['creativeSizeType'] as core.String;
    }
    if (_json.containsKey('nativeTemplate')) {
      nativeTemplate = _json['nativeTemplate'] as core.String;
    }
    if (_json.containsKey('size')) {
      size =
          Size.fromJson(_json['size'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('skippableAdType')) {
      skippableAdType = _json['skippableAdType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedFormats != null) 'allowedFormats': allowedFormats!,
        if (companionSizes != null)
          'companionSizes':
              companionSizes!.map((value) => value.toJson()).toList(),
        if (creativeSizeType != null) 'creativeSizeType': creativeSizeType!,
        if (nativeTemplate != null) 'nativeTemplate': nativeTemplate!,
        if (size != null) 'size': size!.toJson(),
        if (skippableAdType != null) 'skippableAdType': skippableAdType!,
      };
}

/// Represents information for a creative that is associated with a Programmatic
/// Guaranteed/Preferred Deal in Ad Manager.
class CreativeSpecification {
  /// Companion sizes may be filled in only when this is a video creative.
  core.List<AdSize>? creativeCompanionSizes;

  /// The size of the creative.
  AdSize? creativeSize;

  CreativeSpecification();

  CreativeSpecification.fromJson(core.Map _json) {
    if (_json.containsKey('creativeCompanionSizes')) {
      creativeCompanionSizes = (_json['creativeCompanionSizes'] as core.List)
          .map<AdSize>((value) =>
              AdSize.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('creativeSize')) {
      creativeSize = AdSize.fromJson(
          _json['creativeSize'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativeCompanionSizes != null)
          'creativeCompanionSizes':
              creativeCompanionSizes!.map((value) => value.toJson()).toList(),
        if (creativeSize != null) 'creativeSize': creativeSize!.toJson(),
      };
}

/// The number of bids with the specified dimension values that did not win the
/// auction (either were filtered pre-auction or lost the auction), as described
/// by the specified creative status.
class CreativeStatusRow {
  /// The number of bids with the specified status.
  MetricValue? bidCount;

  /// The ID of the creative status.
  ///
  /// See
  /// \[creative-status-codes\](https://developers.google.com/authorized-buyers/rtb/downloads/creative-status-codes).
  core.int? creativeStatusId;

  /// The values of all dimensions associated with metric values in this row.
  RowDimensions? rowDimensions;

  CreativeStatusRow();

  CreativeStatusRow.fromJson(core.Map _json) {
    if (_json.containsKey('bidCount')) {
      bidCount = MetricValue.fromJson(
          _json['bidCount'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('creativeStatusId')) {
      creativeStatusId = _json['creativeStatusId'] as core.int;
    }
    if (_json.containsKey('rowDimensions')) {
      rowDimensions = RowDimensions.fromJson(
          _json['rowDimensions'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (bidCount != null) 'bidCount': bidCount!.toJson(),
        if (creativeStatusId != null) 'creativeStatusId': creativeStatusId!,
        if (rowDimensions != null) 'rowDimensions': rowDimensions!.toJson(),
      };
}

/// Generic targeting used for targeting dimensions that contains a list of
/// included and excluded numeric IDs.
class CriteriaTargeting {
  /// A list of numeric IDs to be excluded.
  core.List<core.String>? excludedCriteriaIds;

  /// A list of numeric IDs to be included.
  core.List<core.String>? targetedCriteriaIds;

  CriteriaTargeting();

  CriteriaTargeting.fromJson(core.Map _json) {
    if (_json.containsKey('excludedCriteriaIds')) {
      excludedCriteriaIds = (_json['excludedCriteriaIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('targetedCriteriaIds')) {
      targetedCriteriaIds = (_json['targetedCriteriaIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedCriteriaIds != null)
          'excludedCriteriaIds': excludedCriteriaIds!,
        if (targetedCriteriaIds != null)
          'targetedCriteriaIds': targetedCriteriaIds!,
      };
}

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values * A month and day value, with a zero year, such as an
/// anniversary * A year on its own, with zero month and day values * A year and
/// month value, with a zero day, such as a credit card expiration date Related
/// types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
class Date {
  /// Day of a month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 to specify a
  /// year by itself or a year and month where the day isn't significant.
  core.int? day;

  /// Month of a year.
  ///
  /// Must be from 1 to 12, or 0 to specify a year without a month and day.
  core.int? month;

  /// Year of the date.
  ///
  /// Must be from 1 to 9999, or 0 to specify a date without a year.
  core.int? year;

  Date();

  Date.fromJson(core.Map _json) {
    if (_json.containsKey('day')) {
      day = _json['day'] as core.int;
    }
    if (_json.containsKey('month')) {
      month = _json['month'] as core.int;
    }
    if (_json.containsKey('year')) {
      year = _json['year'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (month != null) 'month': month!,
        if (year != null) 'year': year!,
      };
}

/// Daypart targeting message that specifies if the ad can be shown only during
/// certain parts of a day/week.
class DayPart {
  /// The day of the week to target.
  ///
  /// If unspecified, applicable to all days.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : A placeholder for when the day of the week
  /// is not specified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? dayOfWeek;

  /// The ending time of the day for the ad to show (minute level granularity).
  ///
  /// The end time is exclusive. This field is not available for filtering in
  /// PQL queries.
  TimeOfDay? endTime;

  /// The starting time of day for the ad to show (minute level granularity).
  ///
  /// The start time is inclusive. This field is not available for filtering in
  /// PQL queries.
  TimeOfDay? startTime;

  DayPart();

  DayPart.fromJson(core.Map _json) {
    if (_json.containsKey('dayOfWeek')) {
      dayOfWeek = _json['dayOfWeek'] as core.String;
    }
    if (_json.containsKey('endTime')) {
      endTime = TimeOfDay.fromJson(
          _json['endTime'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('startTime')) {
      startTime = TimeOfDay.fromJson(
          _json['startTime'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
        if (endTime != null) 'endTime': endTime!.toJson(),
        if (startTime != null) 'startTime': startTime!.toJson(),
      };
}

/// Specifies the day part targeting criteria.
class DayPartTargeting {
  /// A list of day part targeting criterion.
  core.List<DayPart>? dayParts;

  /// The timezone to use for interpreting the day part targeting.
  /// Possible string values are:
  /// - "TIME_ZONE_SOURCE_UNSPECIFIED" : A placeholder for an undefined time
  /// zone source.
  /// - "PUBLISHER" : Use publisher's time zone setting.
  /// - "USER" : Use the user's time zone setting.
  core.String? timeZoneType;

  DayPartTargeting();

  DayPartTargeting.fromJson(core.Map _json) {
    if (_json.containsKey('dayParts')) {
      dayParts = (_json['dayParts'] as core.List)
          .map<DayPart>((value) =>
              DayPart.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('timeZoneType')) {
      timeZoneType = _json['timeZoneType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dayParts != null)
          'dayParts': dayParts!.map((value) => value.toJson()).toList(),
        if (timeZoneType != null) 'timeZoneType': timeZoneType!,
      };
}

/// A deal represents a segment of inventory for displaying ads on.
///
/// A proposal can contain multiple deals. A deal contains the terms and
/// targeting information that is used for serving.
class Deal {
  /// Proposed flight end time of the deal.
  ///
  /// This will generally be stored in a granularity of a second. A value is not
  /// required for Private Auction deals or Preferred Deals.
  core.String? availableEndTime;

  /// Proposed flight start time of the deal.
  ///
  /// This will generally be stored in the granularity of one second since deal
  /// serving starts at seconds boundary. Any time specified with more
  /// granularity (e.g., in milliseconds) will be truncated towards the start of
  /// time in seconds.
  ///
  /// Optional.
  core.String? availableStartTime;

  /// Buyer private data (hidden from seller).
  PrivateData? buyerPrivateData;

  /// The product ID from which this deal was created.
  ///
  /// Note: This field may be set only when creating the resource. Modifying
  /// this field while updating the resource will result in an error.
  core.String? createProductId;

  /// Revision number of the product that the deal was created from.
  ///
  /// If present on create, and the server `product_revision` has advanced since
  /// the passed-in `create_product_revision`, an `ABORTED` error will be
  /// returned. Note: This field may be set only when creating the resource.
  /// Modifying this field while updating the resource will result in an error.
  ///
  /// Optional.
  core.String? createProductRevision;

  /// The time of the deal creation.
  ///
  /// Output only.
  core.String? createTime;

  /// Specifies the creative pre-approval policy.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CREATIVE_PRE_APPROVAL_POLICY_UNSPECIFIED" : A placeholder for an
  /// undefined creative pre-approval policy.
  /// - "SELLER_PRE_APPROVAL_REQUIRED" : The seller needs to approve each
  /// creative before it can serve.
  /// - "SELLER_PRE_APPROVAL_NOT_REQUIRED" : The seller does not need to approve
  /// each creative before it can serve.
  core.String? creativePreApprovalPolicy;

  /// Restricitions about the creatives associated with the deal (i.e., size)
  /// This is available for Programmatic Guaranteed/Preferred Deals in Ad
  /// Manager.
  ///
  /// Output only.
  CreativeRestrictions? creativeRestrictions;

  /// Specifies whether the creative is safeFrame compatible.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CREATIVE_SAFE_FRAME_COMPATIBILITY_UNSPECIFIED" : A placeholder for an
  /// undefined creative safe-frame compatibility.
  /// - "COMPATIBLE" : The creatives need to be compatible with the safe frame
  /// option.
  /// - "INCOMPATIBLE" : The creatives can be incompatible with the safe frame
  /// option.
  core.String? creativeSafeFrameCompatibility;

  /// A unique deal ID for the deal (server-assigned).
  ///
  /// Output only.
  core.String? dealId;

  /// Metadata about the serving status of this deal.
  ///
  /// Output only.
  DealServingMetadata? dealServingMetadata;

  /// The negotiable terms of the deal.
  DealTerms? dealTerms;

  /// The set of fields around delivery control that are interesting for a buyer
  /// to see but are non-negotiable.
  ///
  /// These are set by the publisher.
  DeliveryControl? deliveryControl;

  /// Description for the deal terms.
  core.String? description;

  /// The name of the deal.
  core.String? displayName;

  /// The external deal ID assigned to this deal once the deal is finalized.
  ///
  /// This is the deal ID that shows up in serving/reporting etc.
  ///
  /// Output only.
  core.String? externalDealId;

  /// True, if the buyside inventory setup is complete for this deal.
  ///
  /// Output only.
  core.bool? isSetupComplete;

  /// Specifies the creative source for programmatic deals.
  ///
  /// PUBLISHER means creative is provided by seller and ADVERTISER means
  /// creative is provided by buyer.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROGRAMMATIC_CREATIVE_SOURCE_UNSPECIFIED" : A placeholder for an
  /// undefined programmatic creative source.
  /// - "ADVERTISER" : The advertiser provides the creatives.
  /// - "PUBLISHER" : The publisher provides the creatives to be served.
  core.String? programmaticCreativeSource;

  /// ID of the proposal that this deal is part of.
  ///
  /// Output only.
  core.String? proposalId;

  /// Seller contact information for the deal.
  ///
  /// Output only.
  core.List<ContactInformation>? sellerContacts;

  /// The syndication product associated with the deal.
  ///
  /// Note: This field may be set only when creating the resource. Modifying
  /// this field while updating the resource will result in an error.
  /// Possible string values are:
  /// - "SYNDICATION_PRODUCT_UNSPECIFIED" : A placeholder for an undefined
  /// syndication product.
  /// - "CONTENT" : This typically represents a web page.
  /// - "MOBILE" : This represents a mobile property.
  /// - "VIDEO" : This represents video ad formats.
  /// - "GAMES" : This represents ads shown within games.
  core.String? syndicationProduct;

  /// Specifies the subset of inventory targeted by the deal.
  ///
  /// Output only.
  MarketplaceTargeting? targeting;

  /// The shared targeting visible to buyers and sellers.
  ///
  /// Each shared targeting entity is AND'd together.
  core.List<TargetingCriteria>? targetingCriterion;

  /// The time when the deal was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The web property code for the seller copied over from the product.
  core.String? webPropertyCode;

  Deal();

  Deal.fromJson(core.Map _json) {
    if (_json.containsKey('availableEndTime')) {
      availableEndTime = _json['availableEndTime'] as core.String;
    }
    if (_json.containsKey('availableStartTime')) {
      availableStartTime = _json['availableStartTime'] as core.String;
    }
    if (_json.containsKey('buyerPrivateData')) {
      buyerPrivateData = PrivateData.fromJson(
          _json['buyerPrivateData'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('createProductId')) {
      createProductId = _json['createProductId'] as core.String;
    }
    if (_json.containsKey('createProductRevision')) {
      createProductRevision = _json['createProductRevision'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('creativePreApprovalPolicy')) {
      creativePreApprovalPolicy =
          _json['creativePreApprovalPolicy'] as core.String;
    }
    if (_json.containsKey('creativeRestrictions')) {
      creativeRestrictions = CreativeRestrictions.fromJson(
          _json['creativeRestrictions'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('creativeSafeFrameCompatibility')) {
      creativeSafeFrameCompatibility =
          _json['creativeSafeFrameCompatibility'] as core.String;
    }
    if (_json.containsKey('dealId')) {
      dealId = _json['dealId'] as core.String;
    }
    if (_json.containsKey('dealServingMetadata')) {
      dealServingMetadata = DealServingMetadata.fromJson(
          _json['dealServingMetadata'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('dealTerms')) {
      dealTerms = DealTerms.fromJson(
          _json['dealTerms'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('deliveryControl')) {
      deliveryControl = DeliveryControl.fromJson(
          _json['deliveryControl'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('externalDealId')) {
      externalDealId = _json['externalDealId'] as core.String;
    }
    if (_json.containsKey('isSetupComplete')) {
      isSetupComplete = _json['isSetupComplete'] as core.bool;
    }
    if (_json.containsKey('programmaticCreativeSource')) {
      programmaticCreativeSource =
          _json['programmaticCreativeSource'] as core.String;
    }
    if (_json.containsKey('proposalId')) {
      proposalId = _json['proposalId'] as core.String;
    }
    if (_json.containsKey('sellerContacts')) {
      sellerContacts = (_json['sellerContacts'] as core.List)
          .map<ContactInformation>((value) => ContactInformation.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('syndicationProduct')) {
      syndicationProduct = _json['syndicationProduct'] as core.String;
    }
    if (_json.containsKey('targeting')) {
      targeting = MarketplaceTargeting.fromJson(
          _json['targeting'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('targetingCriterion')) {
      targetingCriterion = (_json['targetingCriterion'] as core.List)
          .map<TargetingCriteria>((value) => TargetingCriteria.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
    if (_json.containsKey('webPropertyCode')) {
      webPropertyCode = _json['webPropertyCode'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableEndTime != null) 'availableEndTime': availableEndTime!,
        if (availableStartTime != null)
          'availableStartTime': availableStartTime!,
        if (buyerPrivateData != null)
          'buyerPrivateData': buyerPrivateData!.toJson(),
        if (createProductId != null) 'createProductId': createProductId!,
        if (createProductRevision != null)
          'createProductRevision': createProductRevision!,
        if (createTime != null) 'createTime': createTime!,
        if (creativePreApprovalPolicy != null)
          'creativePreApprovalPolicy': creativePreApprovalPolicy!,
        if (creativeRestrictions != null)
          'creativeRestrictions': creativeRestrictions!.toJson(),
        if (creativeSafeFrameCompatibility != null)
          'creativeSafeFrameCompatibility': creativeSafeFrameCompatibility!,
        if (dealId != null) 'dealId': dealId!,
        if (dealServingMetadata != null)
          'dealServingMetadata': dealServingMetadata!.toJson(),
        if (dealTerms != null) 'dealTerms': dealTerms!.toJson(),
        if (deliveryControl != null)
          'deliveryControl': deliveryControl!.toJson(),
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (externalDealId != null) 'externalDealId': externalDealId!,
        if (isSetupComplete != null) 'isSetupComplete': isSetupComplete!,
        if (programmaticCreativeSource != null)
          'programmaticCreativeSource': programmaticCreativeSource!,
        if (proposalId != null) 'proposalId': proposalId!,
        if (sellerContacts != null)
          'sellerContacts':
              sellerContacts!.map((value) => value.toJson()).toList(),
        if (syndicationProduct != null)
          'syndicationProduct': syndicationProduct!,
        if (targeting != null) 'targeting': targeting!.toJson(),
        if (targetingCriterion != null)
          'targetingCriterion':
              targetingCriterion!.map((value) => value.toJson()).toList(),
        if (updateTime != null) 'updateTime': updateTime!,
        if (webPropertyCode != null) 'webPropertyCode': webPropertyCode!,
      };
}

/// Tracks which parties (if any) have paused a deal.
///
/// The deal is considered paused if either hasBuyerPaused or hasSellPaused is
/// true.
class DealPauseStatus {
  /// The buyer's reason for pausing, if the buyer paused the deal.
  core.String? buyerPauseReason;

  /// The role of the person who first paused this deal.
  /// Possible string values are:
  /// - "BUYER_SELLER_ROLE_UNSPECIFIED" : A placeholder for an undefined
  /// buyer/seller role.
  /// - "BUYER" : Specifies the role as buyer.
  /// - "SELLER" : Specifies the role as seller.
  core.String? firstPausedBy;

  /// True, if the buyer has paused the deal unilaterally.
  core.bool? hasBuyerPaused;

  /// True, if the seller has paused the deal unilaterally.
  core.bool? hasSellerPaused;

  /// The seller's reason for pausing, if the seller paused the deal.
  core.String? sellerPauseReason;

  DealPauseStatus();

  DealPauseStatus.fromJson(core.Map _json) {
    if (_json.containsKey('buyerPauseReason')) {
      buyerPauseReason = _json['buyerPauseReason'] as core.String;
    }
    if (_json.containsKey('firstPausedBy')) {
      firstPausedBy = _json['firstPausedBy'] as core.String;
    }
    if (_json.containsKey('hasBuyerPaused')) {
      hasBuyerPaused = _json['hasBuyerPaused'] as core.bool;
    }
    if (_json.containsKey('hasSellerPaused')) {
      hasSellerPaused = _json['hasSellerPaused'] as core.bool;
    }
    if (_json.containsKey('sellerPauseReason')) {
      sellerPauseReason = _json['sellerPauseReason'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (buyerPauseReason != null) 'buyerPauseReason': buyerPauseReason!,
        if (firstPausedBy != null) 'firstPausedBy': firstPausedBy!,
        if (hasBuyerPaused != null) 'hasBuyerPaused': hasBuyerPaused!,
        if (hasSellerPaused != null) 'hasSellerPaused': hasSellerPaused!,
        if (sellerPauseReason != null) 'sellerPauseReason': sellerPauseReason!,
      };
}

/// Message captures metadata about the serving status of a deal.
class DealServingMetadata {
  /// Tracks which parties (if any) have paused a deal.
  ///
  /// Output only.
  DealPauseStatus? dealPauseStatus;

  DealServingMetadata();

  DealServingMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('dealPauseStatus')) {
      dealPauseStatus = DealPauseStatus.fromJson(
          _json['dealPauseStatus'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dealPauseStatus != null)
          'dealPauseStatus': dealPauseStatus!.toJson(),
      };
}

/// The deal terms specify the details of a Product/deal.
///
/// They specify things like price per buyer, the type of pricing model (e.g.,
/// fixed price, auction) and expected impressions from the publisher.
class DealTerms {
  /// Visibility of the URL in bid requests.
  ///
  /// (default: BRANDED)
  /// Possible string values are:
  /// - "BRANDING_TYPE_UNSPECIFIED" : A placeholder for an undefined branding
  /// type.
  /// - "BRANDED" : Full URL is included in bid requests.
  /// - "SEMI_TRANSPARENT" : A TopLevelDomain or masked URL is sent in bid
  /// requests rather than the full one.
  core.String? brandingType;

  /// Publisher provided description for the terms.
  core.String? description;

  /// Non-binding estimate of the estimated gross spend for this deal.
  ///
  /// Can be set by buyer or seller.
  Price? estimatedGrossSpend;

  /// Non-binding estimate of the impressions served per day.
  ///
  /// Can be set by buyer or seller.
  core.String? estimatedImpressionsPerDay;

  /// The terms for guaranteed fixed price deals.
  GuaranteedFixedPriceTerms? guaranteedFixedPriceTerms;

  /// The terms for non-guaranteed auction deals.
  NonGuaranteedAuctionTerms? nonGuaranteedAuctionTerms;

  /// The terms for non-guaranteed fixed price deals.
  NonGuaranteedFixedPriceTerms? nonGuaranteedFixedPriceTerms;

  /// The time zone name.
  ///
  /// For deals with Cost Per Day billing, defines the time zone used to mark
  /// the boundaries of a day. It should be an IANA TZ name, such as
  /// "America/Los_Angeles". For more information, see
  /// https://en.wikipedia.org/wiki/List_of_tz_database_time_zones.
  core.String? sellerTimeZone;

  DealTerms();

  DealTerms.fromJson(core.Map _json) {
    if (_json.containsKey('brandingType')) {
      brandingType = _json['brandingType'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('estimatedGrossSpend')) {
      estimatedGrossSpend = Price.fromJson(
          _json['estimatedGrossSpend'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('estimatedImpressionsPerDay')) {
      estimatedImpressionsPerDay =
          _json['estimatedImpressionsPerDay'] as core.String;
    }
    if (_json.containsKey('guaranteedFixedPriceTerms')) {
      guaranteedFixedPriceTerms = GuaranteedFixedPriceTerms.fromJson(
          _json['guaranteedFixedPriceTerms']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('nonGuaranteedAuctionTerms')) {
      nonGuaranteedAuctionTerms = NonGuaranteedAuctionTerms.fromJson(
          _json['nonGuaranteedAuctionTerms']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('nonGuaranteedFixedPriceTerms')) {
      nonGuaranteedFixedPriceTerms = NonGuaranteedFixedPriceTerms.fromJson(
          _json['nonGuaranteedFixedPriceTerms']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sellerTimeZone')) {
      sellerTimeZone = _json['sellerTimeZone'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (brandingType != null) 'brandingType': brandingType!,
        if (description != null) 'description': description!,
        if (estimatedGrossSpend != null)
          'estimatedGrossSpend': estimatedGrossSpend!.toJson(),
        if (estimatedImpressionsPerDay != null)
          'estimatedImpressionsPerDay': estimatedImpressionsPerDay!,
        if (guaranteedFixedPriceTerms != null)
          'guaranteedFixedPriceTerms': guaranteedFixedPriceTerms!.toJson(),
        if (nonGuaranteedAuctionTerms != null)
          'nonGuaranteedAuctionTerms': nonGuaranteedAuctionTerms!.toJson(),
        if (nonGuaranteedFixedPriceTerms != null)
          'nonGuaranteedFixedPriceTerms':
              nonGuaranteedFixedPriceTerms!.toJson(),
        if (sellerTimeZone != null) 'sellerTimeZone': sellerTimeZone!,
      };
}

/// Message contains details about how the deals will be paced.
class DeliveryControl {
  /// Specified the creative blocking levels to be applied.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CREATIVE_BLOCKING_LEVEL_UNSPECIFIED" : A placeholder for an undefined
  /// creative blocking level.
  /// - "PUBLISHER_BLOCKING_RULES" : Publisher blocking rules will be applied.
  /// - "ADX_POLICY_BLOCKING_ONLY" : The Ad Exchange policy blocking rules will
  /// be applied.
  core.String? creativeBlockingLevel;

  /// Specifies how the impression delivery will be paced.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DELIVERY_RATE_TYPE_UNSPECIFIED" : A placeholder for an undefined
  /// delivery rate type.
  /// - "EVENLY" : Impressions are served uniformly over the life of the deal.
  /// - "FRONT_LOADED" : Impressions are served front-loaded.
  /// - "AS_FAST_AS_POSSIBLE" : Impressions are served as fast as possible.
  core.String? deliveryRateType;

  /// Specifies any frequency caps.
  ///
  /// Output only.
  core.List<FrequencyCap>? frequencyCaps;

  DeliveryControl();

  DeliveryControl.fromJson(core.Map _json) {
    if (_json.containsKey('creativeBlockingLevel')) {
      creativeBlockingLevel = _json['creativeBlockingLevel'] as core.String;
    }
    if (_json.containsKey('deliveryRateType')) {
      deliveryRateType = _json['deliveryRateType'] as core.String;
    }
    if (_json.containsKey('frequencyCaps')) {
      frequencyCaps = (_json['frequencyCaps'] as core.List)
          .map<FrequencyCap>((value) => FrequencyCap.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativeBlockingLevel != null)
          'creativeBlockingLevel': creativeBlockingLevel!,
        if (deliveryRateType != null) 'deliveryRateType': deliveryRateType!,
        if (frequencyCaps != null)
          'frequencyCaps':
              frequencyCaps!.map((value) => value.toJson()).toList(),
      };
}

/// The reason and details for a disapproval.
///
/// Output only.
class Disapproval {
  /// Additional details about the reason for disapproval.
  core.List<core.String>? details;

  /// The categorized reason for disapproval.
  /// Possible string values are:
  /// - "LENGTH_OF_IMAGE_ANIMATION" : The length of the image animation is
  /// longer than allowed.
  /// - "BROKEN_URL" : The click through URL doesn't work properly.
  /// - "MEDIA_NOT_FUNCTIONAL" : Something is wrong with the creative itself.
  /// - "INVALID_FOURTH_PARTY_CALL" : The ad makes a fourth party call to an
  /// unapproved vendor.
  /// - "INCORRECT_REMARKETING_DECLARATION" : The ad targets consumers using
  /// remarketing lists and/or collects data for subsequent use in retargeting,
  /// but does not correctly declare that use.
  /// - "LANDING_PAGE_ERROR" : Clicking on the ad leads to an error page.
  /// - "AD_SIZE_DOES_NOT_MATCH_AD_SLOT" : The ad size when rendered does not
  /// match the declaration.
  /// - "NO_BORDER" : Ads with a white background require a border, which was
  /// missing.
  /// - "FOURTH_PARTY_BROWSER_COOKIES" : The creative attempts to set cookies
  /// from a fourth party that is not certified.
  /// - "LSO_OBJECTS" : The creative sets an LSO object.
  /// - "BLANK_CREATIVE" : The ad serves a blank.
  /// - "DESTINATION_URLS_UNDECLARED" : The ad uses rotation, but not all
  /// destination URLs were declared.
  /// - "PROBLEM_WITH_CLICK_MACRO" : There is a problem with the way the click
  /// macro is used.
  /// - "INCORRECT_AD_TECHNOLOGY_DECLARATION" : The ad technology declaration is
  /// not accurate.
  /// - "INCORRECT_DESTINATION_URL_DECLARATION" : The actual destination URL
  /// does not match the declared destination URL.
  /// - "EXPANDABLE_INCORRECT_DIRECTION" : The declared expanding direction does
  /// not match the actual direction.
  /// - "EXPANDABLE_DIRECTION_NOT_SUPPORTED" : The ad does not expand in a
  /// supported direction.
  /// - "EXPANDABLE_INVALID_VENDOR" : The ad uses an expandable vendor that is
  /// not supported.
  /// - "EXPANDABLE_FUNCTIONALITY" : There was an issue with the expandable ad.
  /// - "VIDEO_INVALID_VENDOR" : The ad uses a video vendor that is not
  /// supported.
  /// - "VIDEO_UNSUPPORTED_LENGTH" : The length of the video ad is not
  /// supported.
  /// - "VIDEO_UNSUPPORTED_FORMAT" : The format of the video ad is not
  /// supported.
  /// - "VIDEO_FUNCTIONALITY" : There was an issue with the video ad.
  /// - "LANDING_PAGE_DISABLED" : The landing page does not conform to Ad
  /// Exchange policy.
  /// - "MALWARE_SUSPECTED" : The ad or the landing page may contain malware.
  /// - "ADULT_IMAGE_OR_VIDEO" : The ad contains adult images or video content.
  /// - "INACCURATE_AD_TEXT" : The ad contains text that is unclear or
  /// inaccurate.
  /// - "COUNTERFEIT_DESIGNER_GOODS" : The ad promotes counterfeit designer
  /// goods.
  /// - "POP_UP" : The ad causes a popup window to appear.
  /// - "INVALID_RTB_PROTOCOL_USAGE" : The creative does not follow policies set
  /// for the RTB protocol.
  /// - "RAW_IP_ADDRESS_IN_SNIPPET" : The ad contains a URL that uses a numeric
  /// IP address for the domain.
  /// - "UNACCEPTABLE_CONTENT_SOFTWARE" : The ad or landing page contains
  /// unacceptable content because it initiated a software or executable
  /// download.
  /// - "UNAUTHORIZED_COOKIE_ON_GOOGLE_DOMAIN" : The ad set an unauthorized
  /// cookie on a Google domain.
  /// - "UNDECLARED_FLASH_OBJECTS" : Flash content found when no flash was
  /// declared.
  /// - "INVALID_SSL_DECLARATION" : SSL support declared but not working
  /// correctly.
  /// - "DIRECT_DOWNLOAD_IN_AD" : Rich Media - Direct Download in Ad (ex. PDF
  /// download).
  /// - "MAXIMUM_DOWNLOAD_SIZE_EXCEEDED" : Maximum download size exceeded.
  /// - "DESTINATION_URL_SITE_NOT_CRAWLABLE" : Bad Destination URL: Site Not
  /// Crawlable.
  /// - "BAD_URL_LEGAL_DISAPPROVAL" : Bad URL: Legal disapproval.
  /// - "PHARMA_GAMBLING_ALCOHOL_NOT_ALLOWED" : Pharmaceuticals, Gambling,
  /// Alcohol not allowed and at least one was detected.
  /// - "DYNAMIC_DNS_AT_DESTINATION_URL" : Dynamic DNS at Destination URL.
  /// - "POOR_IMAGE_OR_VIDEO_QUALITY" : Poor Image / Video Quality.
  /// - "UNACCEPTABLE_IMAGE_CONTENT" : For example, Image Trick to Click.
  /// - "INCORRECT_IMAGE_LAYOUT" : Incorrect Image Layout.
  /// - "IRRELEVANT_IMAGE_OR_VIDEO" : Irrelevant Image / Video.
  /// - "DESTINATION_SITE_DOES_NOT_ALLOW_GOING_BACK" : Broken back button.
  /// - "MISLEADING_CLAIMS_IN_AD" : Misleading/Inaccurate claims in ads.
  /// - "RESTRICTED_PRODUCTS" : Restricted Products.
  /// - "UNACCEPTABLE_CONTENT" : Unacceptable content. For example, malware.
  /// - "AUTOMATED_AD_CLICKING" : The ad automatically redirects to the
  /// destination site without a click, or reports a click when none were made.
  /// - "INVALID_URL_PROTOCOL" : The ad uses URL protocols that do not exist or
  /// are not allowed on AdX.
  /// - "UNDECLARED_RESTRICTED_CONTENT" : Restricted content (for example,
  /// alcohol) was found in the ad but not declared.
  /// - "INVALID_REMARKETING_LIST_USAGE" : Violation of the remarketing list
  /// policy.
  /// - "DESTINATION_SITE_NOT_CRAWLABLE_ROBOTS_TXT" : The destination site's
  /// robot.txt file prevents it from being crawled.
  /// - "CLICK_TO_DOWNLOAD_NOT_AN_APP" : Click to download must link to an app.
  /// - "INACCURATE_REVIEW_EXTENSION" : A review extension must be an accurate
  /// review.
  /// - "SEXUALLY_EXPLICIT_CONTENT" : Sexually explicit content.
  /// - "GAINING_AN_UNFAIR_ADVANTAGE" : The ad tries to gain an unfair traffic
  /// advantage.
  /// - "GAMING_THE_GOOGLE_NETWORK" : The ad tries to circumvent Google's
  /// advertising systems.
  /// - "DANGEROUS_PRODUCTS_KNIVES" : The ad promotes dangerous knives.
  /// - "DANGEROUS_PRODUCTS_EXPLOSIVES" : The ad promotes explosives.
  /// - "DANGEROUS_PRODUCTS_GUNS" : The ad promotes guns & parts.
  /// - "DANGEROUS_PRODUCTS_DRUGS" : The ad promotes recreational drugs/services
  /// & related equipment.
  /// - "DANGEROUS_PRODUCTS_TOBACCO" : The ad promotes tobacco products/services
  /// & related equipment.
  /// - "DANGEROUS_PRODUCTS_WEAPONS" : The ad promotes weapons.
  /// - "UNCLEAR_OR_IRRELEVANT_AD" : The ad is unclear or irrelevant to the
  /// destination site.
  /// - "PROFESSIONAL_STANDARDS" : The ad does not meet professional standards.
  /// - "DYSFUNCTIONAL_PROMOTION" : The promotion is unnecessarily difficult to
  /// navigate.
  /// - "INVALID_INTEREST_BASED_AD" : Violation of Google's policy for
  /// interest-based ads.
  /// - "MISUSE_OF_PERSONAL_INFORMATION" : Misuse of personal information.
  /// - "OMISSION_OF_RELEVANT_INFORMATION" : Omission of relevant information.
  /// - "UNAVAILABLE_PROMOTIONS" : Unavailable promotions.
  /// - "MISLEADING_PROMOTIONS" : Misleading or unrealistic promotions.
  /// - "INAPPROPRIATE_CONTENT" : Offensive or inappropriate content.
  /// - "SENSITIVE_EVENTS" : Capitalizing on sensitive events.
  /// - "SHOCKING_CONTENT" : Shocking content.
  /// - "ENABLING_DISHONEST_BEHAVIOR" : Products & Services that enable
  /// dishonest behavior.
  /// - "TECHNICAL_REQUIREMENTS" : The ad does not meet technical requirements.
  /// - "RESTRICTED_POLITICAL_CONTENT" : Restricted political content.
  /// - "UNSUPPORTED_CONTENT" : Unsupported content.
  /// - "INVALID_BIDDING_METHOD" : Invalid bidding method.
  /// - "VIDEO_TOO_LONG" : Video length exceeds limits.
  /// - "VIOLATES_JAPANESE_PHARMACY_LAW" : Unacceptable content: Japanese
  /// healthcare.
  /// - "UNACCREDITED_PET_PHARMACY" : Online pharmacy ID required.
  /// - "ABORTION" : Unacceptable content: Abortion.
  /// - "CONTRACEPTIVES" : Unacceptable content: Birth control.
  /// - "NEED_CERTIFICATES_TO_ADVERTISE_IN_CHINA" : Restricted in China.
  /// - "KCDSP_REGISTRATION" : Unacceptable content: Korean healthcare.
  /// - "NOT_FAMILY_SAFE" : Non-family safe or adult content.
  /// - "CLINICAL_TRIAL_RECRUITMENT" : Clinical trial recruitment.
  /// - "MAXIMUM_NUMBER_OF_HTTP_CALLS_EXCEEDED" : Maximum number of HTTP calls
  /// exceeded.
  /// - "MAXIMUM_NUMBER_OF_COOKIES_EXCEEDED" : Maximum number of cookies
  /// exceeded.
  /// - "PERSONAL_LOANS" : Financial service ad does not adhere to
  /// specifications.
  /// - "UNSUPPORTED_FLASH_CONTENT" : Flash content was found in an unsupported
  /// context.
  /// - "MISUSE_BY_OMID_SCRIPT" : Misuse by an Open Measurement SDK script.
  /// - "NON_WHITELISTED_OMID_VENDOR" : Use of an Open Measurement SDK vendor
  /// not on approved vendor list.
  /// - "DESTINATION_EXPERIENCE" : Unacceptable landing page.
  /// - "UNSUPPORTED_LANGUAGE" : Unsupported language.
  /// - "NON_SSL_COMPLIANT" : Non-SSL compliant.
  /// - "TEMPORARY_PAUSE" : Temporary pausing of creative.
  /// - "BAIL_BONDS" : Promotes services related to bail bonds.
  /// - "EXPERIMENTAL_MEDICAL_TREATMENT" : Promotes speculative and/or
  /// experimental medical treatments.
  core.String? reason;

  Disapproval();

  Disapproval.fromJson(core.Map _json) {
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('reason')) {
      reason = _json['reason'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (reason != null) 'reason': reason!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// A set of filters that is applied to a request for data.
///
/// Within a filter set, an AND operation is performed across the filters
/// represented by each field. An OR operation is performed across the filters
/// represented by the multiple values of a repeated field, e.g., "format=VIDEO
/// AND deal_id=12 AND (seller_network_id=34 OR seller_network_id=56)".
class FilterSet {
  /// An absolute date range, defined by a start date and an end date.
  ///
  /// Interpreted relative to Pacific time zone.
  AbsoluteDateRange? absoluteDateRange;

  /// The set of dimensions along which to break down the response; may be
  /// empty.
  ///
  /// If multiple dimensions are requested, the breakdown is along the Cartesian
  /// product of the requested dimensions.
  core.List<core.String>? breakdownDimensions;

  /// The ID of the creative on which to filter; optional.
  ///
  /// This field may be set only for a filter set that accesses account-level
  /// troubleshooting data, i.e., one whose name matches the `bidders / *
  /// /accounts / * /filterSets / * ` pattern.
  core.String? creativeId;

  /// The ID of the deal on which to filter; optional.
  ///
  /// This field may be set only for a filter set that accesses account-level
  /// troubleshooting data, i.e., one whose name matches the `bidders / *
  /// /accounts / * /filterSets / * ` pattern.
  core.String? dealId;

  /// The environment on which to filter; optional.
  /// Possible string values are:
  /// - "ENVIRONMENT_UNSPECIFIED" : A placeholder for an undefined environment;
  /// indicates that no environment filter will be applied.
  /// - "WEB" : The ad impression appears on the web.
  /// - "APP" : The ad impression appears in an app.
  core.String? environment;

  /// Creative format bidded on or allowed to bid on, can be empty.
  /// Possible string values are:
  /// - "FORMAT_UNSPECIFIED" : A placeholder for an undefined format; indicates
  /// that no format filter will be applied.
  /// - "NATIVE_DISPLAY" : The ad impression is a native ad, and display (i.e.,
  /// image) format.
  /// - "NATIVE_VIDEO" : The ad impression is a native ad, and video format.
  /// - "NON_NATIVE_DISPLAY" : The ad impression is not a native ad, and display
  /// (i.e., image) format.
  /// - "NON_NATIVE_VIDEO" : The ad impression is not a native ad, and video
  /// format.
  core.String? format;

  /// Creative formats bidded on or allowed to bid on, can be empty.
  ///
  /// Although this field is a list, it can only be populated with a single
  /// item. A HTTP 400 bad request error will be returned in the response if you
  /// specify multiple items.
  core.List<core.String>? formats;

  /// A user-defined name of the filter set.
  ///
  /// Filter set names must be unique globally and match one of the patterns: -
  /// `bidders / * /filterSets / * ` (for accessing bidder-level troubleshooting
  /// data) - `bidders / * /accounts / * /filterSets / * ` (for accessing
  /// account-level troubleshooting data) This field is required in create
  /// operations.
  core.String? name;

  /// The list of platforms on which to filter; may be empty.
  ///
  /// The filters represented by multiple platforms are ORed together (i.e., if
  /// non-empty, results must match any one of the platforms).
  core.List<core.String>? platforms;

  /// For Open Bidding partners only.
  ///
  /// The list of publisher identifiers on which to filter; may be empty. The
  /// filters represented by multiple publisher identifiers are ORed together.
  core.List<core.String>? publisherIdentifiers;

  /// An open-ended realtime time range, defined by the aggregation start
  /// timestamp.
  RealtimeTimeRange? realtimeTimeRange;

  /// A relative date range, defined by an offset from today and a duration.
  ///
  /// Interpreted relative to Pacific time zone.
  RelativeDateRange? relativeDateRange;

  /// For Authorized Buyers only.
  ///
  /// The list of IDs of the seller (publisher) networks on which to filter; may
  /// be empty. The filters represented by multiple seller network IDs are ORed
  /// together (i.e., if non-empty, results must match any one of the publisher
  /// networks). See
  /// \[seller-network-ids\](https://developers.google.com/authorized-buyers/rtb/downloads/seller-network-ids)
  /// file for the set of existing seller network IDs.
  core.List<core.int>? sellerNetworkIds;

  /// The granularity of time intervals if a time series breakdown is desired;
  /// optional.
  /// Possible string values are:
  /// - "TIME_SERIES_GRANULARITY_UNSPECIFIED" : A placeholder for an unspecified
  /// interval; no time series is applied. All rows in response will contain
  /// data for the entire requested time range.
  /// - "HOURLY" : Indicates that data will be broken down by the hour.
  /// - "DAILY" : Indicates that data will be broken down by the day.
  core.String? timeSeriesGranularity;

  FilterSet();

  FilterSet.fromJson(core.Map _json) {
    if (_json.containsKey('absoluteDateRange')) {
      absoluteDateRange = AbsoluteDateRange.fromJson(
          _json['absoluteDateRange'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('breakdownDimensions')) {
      breakdownDimensions = (_json['breakdownDimensions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('creativeId')) {
      creativeId = _json['creativeId'] as core.String;
    }
    if (_json.containsKey('dealId')) {
      dealId = _json['dealId'] as core.String;
    }
    if (_json.containsKey('environment')) {
      environment = _json['environment'] as core.String;
    }
    if (_json.containsKey('format')) {
      format = _json['format'] as core.String;
    }
    if (_json.containsKey('formats')) {
      formats = (_json['formats'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('platforms')) {
      platforms = (_json['platforms'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('publisherIdentifiers')) {
      publisherIdentifiers = (_json['publisherIdentifiers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('realtimeTimeRange')) {
      realtimeTimeRange = RealtimeTimeRange.fromJson(
          _json['realtimeTimeRange'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('relativeDateRange')) {
      relativeDateRange = RelativeDateRange.fromJson(
          _json['relativeDateRange'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sellerNetworkIds')) {
      sellerNetworkIds = (_json['sellerNetworkIds'] as core.List)
          .map<core.int>((value) => value as core.int)
          .toList();
    }
    if (_json.containsKey('timeSeriesGranularity')) {
      timeSeriesGranularity = _json['timeSeriesGranularity'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (absoluteDateRange != null)
          'absoluteDateRange': absoluteDateRange!.toJson(),
        if (breakdownDimensions != null)
          'breakdownDimensions': breakdownDimensions!,
        if (creativeId != null) 'creativeId': creativeId!,
        if (dealId != null) 'dealId': dealId!,
        if (environment != null) 'environment': environment!,
        if (format != null) 'format': format!,
        if (formats != null) 'formats': formats!,
        if (name != null) 'name': name!,
        if (platforms != null) 'platforms': platforms!,
        if (publisherIdentifiers != null)
          'publisherIdentifiers': publisherIdentifiers!,
        if (realtimeTimeRange != null)
          'realtimeTimeRange': realtimeTimeRange!.toJson(),
        if (relativeDateRange != null)
          'relativeDateRange': relativeDateRange!.toJson(),
        if (sellerNetworkIds != null) 'sellerNetworkIds': sellerNetworkIds!,
        if (timeSeriesGranularity != null)
          'timeSeriesGranularity': timeSeriesGranularity!,
      };
}

/// The number of filtered bids with the specified dimension values that have
/// the specified creative.
class FilteredBidCreativeRow {
  /// The number of bids with the specified creative.
  MetricValue? bidCount;

  /// The ID of the creative.
  core.String? creativeId;

  /// The values of all dimensions associated with metric values in this row.
  RowDimensions? rowDimensions;

  FilteredBidCreativeRow();

  FilteredBidCreativeRow.fromJson(core.Map _json) {
    if (_json.containsKey('bidCount')) {
      bidCount = MetricValue.fromJson(
          _json['bidCount'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('creativeId')) {
      creativeId = _json['creativeId'] as core.String;
    }
    if (_json.containsKey('rowDimensions')) {
      rowDimensions = RowDimensions.fromJson(
          _json['rowDimensions'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (bidCount != null) 'bidCount': bidCount!.toJson(),
        if (creativeId != null) 'creativeId': creativeId!,
        if (rowDimensions != null) 'rowDimensions': rowDimensions!.toJson(),
      };
}

/// The number of filtered bids with the specified dimension values, among those
/// filtered due to the requested filtering reason (i.e. creative status), that
/// have the specified detail.
class FilteredBidDetailRow {
  /// The number of bids with the specified detail.
  MetricValue? bidCount;

  /// The ID of the detail, can be numeric or text.
  ///
  /// The associated value can be looked up in the dictionary file corresponding
  /// to the DetailType in the response message.
  core.String? detail;

  /// Note: this field will be deprecated, use "detail" field instead.
  ///
  /// When "detail" field represents an integer value, this field is populated
  /// as the same integer value "detail" field represents, otherwise this field
  /// will be 0. The ID of the detail. The associated value can be looked up in
  /// the dictionary file corresponding to the DetailType in the response
  /// message.
  core.int? detailId;

  /// The values of all dimensions associated with metric values in this row.
  RowDimensions? rowDimensions;

  FilteredBidDetailRow();

  FilteredBidDetailRow.fromJson(core.Map _json) {
    if (_json.containsKey('bidCount')) {
      bidCount = MetricValue.fromJson(
          _json['bidCount'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('detail')) {
      detail = _json['detail'] as core.String;
    }
    if (_json.containsKey('detailId')) {
      detailId = _json['detailId'] as core.int;
    }
    if (_json.containsKey('rowDimensions')) {
      rowDimensions = RowDimensions.fromJson(
          _json['rowDimensions'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (bidCount != null) 'bidCount': bidCount!.toJson(),
        if (detail != null) 'detail': detail!,
        if (detailId != null) 'detailId': detailId!,
        if (rowDimensions != null) 'rowDimensions': rowDimensions!.toJson(),
      };
}

/// Represents a list of targeted and excluded mobile application IDs that
/// publishers own.
///
/// Mobile application IDs are from App Store and Google Play Store. Android App
/// ID, for example, com.google.android.apps.maps, can be found in Google Play
/// Store URL. iOS App ID (which is a number) can be found at the end of iTunes
/// store URL. First party mobile applications is either included or excluded.
class FirstPartyMobileApplicationTargeting {
  /// A list of application IDs to be excluded.
  core.List<core.String>? excludedAppIds;

  /// A list of application IDs to be included.
  core.List<core.String>? targetedAppIds;

  FirstPartyMobileApplicationTargeting();

  FirstPartyMobileApplicationTargeting.fromJson(core.Map _json) {
    if (_json.containsKey('excludedAppIds')) {
      excludedAppIds = (_json['excludedAppIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('targetedAppIds')) {
      targetedAppIds = (_json['targetedAppIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedAppIds != null) 'excludedAppIds': excludedAppIds!,
        if (targetedAppIds != null) 'targetedAppIds': targetedAppIds!,
      };
}

/// Frequency cap.
class FrequencyCap {
  /// The maximum number of impressions that can be served to a user within the
  /// specified time period.
  core.int? maxImpressions;

  /// The amount of time, in the units specified by time_unit_type.
  ///
  /// Defines the amount of time over which impressions per user are counted and
  /// capped.
  core.int? numTimeUnits;

  /// The time unit.
  ///
  /// Along with num_time_units defines the amount of time over which
  /// impressions per user are counted and capped.
  /// Possible string values are:
  /// - "TIME_UNIT_TYPE_UNSPECIFIED" : A placeholder for an undefined time unit
  /// type. This just indicates the variable with this value hasn't been
  /// initialized.
  /// - "MINUTE" : Minute
  /// - "HOUR" : Hour
  /// - "DAY" : Day
  /// - "WEEK" : Week
  /// - "MONTH" : Month
  /// - "LIFETIME" : Lifetime
  core.String? timeUnitType;

  FrequencyCap();

  FrequencyCap.fromJson(core.Map _json) {
    if (_json.containsKey('maxImpressions')) {
      maxImpressions = _json['maxImpressions'] as core.int;
    }
    if (_json.containsKey('numTimeUnits')) {
      numTimeUnits = _json['numTimeUnits'] as core.int;
    }
    if (_json.containsKey('timeUnitType')) {
      timeUnitType = _json['timeUnitType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxImpressions != null) 'maxImpressions': maxImpressions!,
        if (numTimeUnits != null) 'numTimeUnits': numTimeUnits!,
        if (timeUnitType != null) 'timeUnitType': timeUnitType!,
      };
}

/// Terms for Programmatic Guaranteed Deals.
class GuaranteedFixedPriceTerms {
  /// Fixed price for the specified buyer.
  core.List<PricePerBuyer>? fixedPrices;

  /// Guaranteed impressions as a percentage.
  ///
  /// This is the percentage of guaranteed looks that the buyer is guaranteeing
  /// to buy.
  core.String? guaranteedImpressions;

  /// Count of guaranteed looks.
  ///
  /// Required for deal, optional for product.
  core.String? guaranteedLooks;

  /// The lifetime impression cap for CPM sponsorship deals.
  ///
  /// The deal will stop serving when the cap is reached.
  core.String? impressionCap;

  /// Daily minimum looks for CPD deal types.
  core.String? minimumDailyLooks;

  /// For sponsorship deals, this is the percentage of the seller's eligible
  /// impressions that the deal will serve until the cap is reached.
  core.String? percentShareOfVoice;

  /// The reservation type for a Programmatic Guaranteed deal.
  ///
  /// This indicates whether the number of impressions is fixed, or a percent of
  /// available impressions. If not specified, the default reservation type is
  /// STANDARD.
  /// Possible string values are:
  /// - "RESERVATION_TYPE_UNSPECIFIED" : An unspecified reservation type.
  /// - "STANDARD" : Non-sponsorship deal.
  /// - "SPONSORSHIP" : Sponsorship deals don't have impression goal
  /// (guaranteed_looks) and they are served based on the flight dates. For CPM
  /// Sponsorship deals, impression_cap is the lifetime impression limit.
  core.String? reservationType;

  GuaranteedFixedPriceTerms();

  GuaranteedFixedPriceTerms.fromJson(core.Map _json) {
    if (_json.containsKey('fixedPrices')) {
      fixedPrices = (_json['fixedPrices'] as core.List)
          .map<PricePerBuyer>((value) => PricePerBuyer.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('guaranteedImpressions')) {
      guaranteedImpressions = _json['guaranteedImpressions'] as core.String;
    }
    if (_json.containsKey('guaranteedLooks')) {
      guaranteedLooks = _json['guaranteedLooks'] as core.String;
    }
    if (_json.containsKey('impressionCap')) {
      impressionCap = _json['impressionCap'] as core.String;
    }
    if (_json.containsKey('minimumDailyLooks')) {
      minimumDailyLooks = _json['minimumDailyLooks'] as core.String;
    }
    if (_json.containsKey('percentShareOfVoice')) {
      percentShareOfVoice = _json['percentShareOfVoice'] as core.String;
    }
    if (_json.containsKey('reservationType')) {
      reservationType = _json['reservationType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (fixedPrices != null)
          'fixedPrices': fixedPrices!.map((value) => value.toJson()).toList(),
        if (guaranteedImpressions != null)
          'guaranteedImpressions': guaranteedImpressions!,
        if (guaranteedLooks != null) 'guaranteedLooks': guaranteedLooks!,
        if (impressionCap != null) 'impressionCap': impressionCap!,
        if (minimumDailyLooks != null) 'minimumDailyLooks': minimumDailyLooks!,
        if (percentShareOfVoice != null)
          'percentShareOfVoice': percentShareOfVoice!,
        if (reservationType != null) 'reservationType': reservationType!,
      };
}

/// HTML content for a creative.
class HtmlContent {
  /// The height of the HTML snippet in pixels.
  core.int? height;

  /// The HTML snippet that displays the ad when inserted in the web page.
  core.String? snippet;

  /// The width of the HTML snippet in pixels.
  core.int? width;

  HtmlContent();

  HtmlContent.fromJson(core.Map _json) {
    if (_json.containsKey('height')) {
      height = _json['height'] as core.int;
    }
    if (_json.containsKey('snippet')) {
      snippet = _json['snippet'] as core.String;
    }
    if (_json.containsKey('width')) {
      width = _json['width'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (snippet != null) 'snippet': snippet!,
        if (width != null) 'width': width!,
      };
}

/// An image resource.
///
/// You may provide a larger image than was requested, so long as the aspect
/// ratio is preserved.
class Image {
  /// Image height in pixels.
  core.int? height;

  /// The URL of the image.
  core.String? url;

  /// Image width in pixels.
  core.int? width;

  Image();

  Image.fromJson(core.Map _json) {
    if (_json.containsKey('height')) {
      height = _json['height'] as core.int;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
    if (_json.containsKey('width')) {
      width = _json['width'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (url != null) 'url': url!,
        if (width != null) 'width': width!,
      };
}

/// The set of metrics that are measured in numbers of impressions, representing
/// how many impressions with the specified dimension values were considered
/// eligible at each stage of the bidding funnel.
class ImpressionMetricsRow {
  /// The number of impressions available to the buyer on Ad Exchange.
  ///
  /// In some cases this value may be unavailable.
  MetricValue? availableImpressions;

  /// The number of impressions for which Ad Exchange sent the buyer a bid
  /// request.
  MetricValue? bidRequests;

  /// The number of impressions that match the buyer's inventory pretargeting.
  MetricValue? inventoryMatches;

  /// The number of impressions for which Ad Exchange received a response from
  /// the buyer that contained at least one applicable bid.
  MetricValue? responsesWithBids;

  /// The values of all dimensions associated with metric values in this row.
  RowDimensions? rowDimensions;

  /// The number of impressions for which the buyer successfully sent a response
  /// to Ad Exchange.
  MetricValue? successfulResponses;

  ImpressionMetricsRow();

  ImpressionMetricsRow.fromJson(core.Map _json) {
    if (_json.containsKey('availableImpressions')) {
      availableImpressions = MetricValue.fromJson(
          _json['availableImpressions'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('bidRequests')) {
      bidRequests = MetricValue.fromJson(
          _json['bidRequests'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('inventoryMatches')) {
      inventoryMatches = MetricValue.fromJson(
          _json['inventoryMatches'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('responsesWithBids')) {
      responsesWithBids = MetricValue.fromJson(
          _json['responsesWithBids'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('rowDimensions')) {
      rowDimensions = RowDimensions.fromJson(
          _json['rowDimensions'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('successfulResponses')) {
      successfulResponses = MetricValue.fromJson(
          _json['successfulResponses'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableImpressions != null)
          'availableImpressions': availableImpressions!.toJson(),
        if (bidRequests != null) 'bidRequests': bidRequests!.toJson(),
        if (inventoryMatches != null)
          'inventoryMatches': inventoryMatches!.toJson(),
        if (responsesWithBids != null)
          'responsesWithBids': responsesWithBids!.toJson(),
        if (rowDimensions != null) 'rowDimensions': rowDimensions!.toJson(),
        if (successfulResponses != null)
          'successfulResponses': successfulResponses!.toJson(),
      };
}

/// Represents the size of an ad unit that can be targeted on an ad request.
///
/// It only applies to Private Auction, AdX Preferred Deals and Auction
/// Packages. This targeting does not apply to Programmatic Guaranteed and
/// Preferred Deals in Ad Manager.
class InventorySizeTargeting {
  /// A list of inventory sizes to be excluded.
  core.List<AdSize>? excludedInventorySizes;

  /// A list of inventory sizes to be included.
  core.List<AdSize>? targetedInventorySizes;

  InventorySizeTargeting();

  InventorySizeTargeting.fromJson(core.Map _json) {
    if (_json.containsKey('excludedInventorySizes')) {
      excludedInventorySizes = (_json['excludedInventorySizes'] as core.List)
          .map<AdSize>((value) =>
              AdSize.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('targetedInventorySizes')) {
      targetedInventorySizes = (_json['targetedInventorySizes'] as core.List)
          .map<AdSize>((value) =>
              AdSize.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedInventorySizes != null)
          'excludedInventorySizes':
              excludedInventorySizes!.map((value) => value.toJson()).toList(),
        if (targetedInventorySizes != null)
          'targetedInventorySizes':
              targetedInventorySizes!.map((value) => value.toJson()).toList(),
      };
}

/// Response message for listing the metrics that are measured in number of
/// bids.
class ListBidMetricsResponse {
  /// List of rows, each containing a set of bid metrics.
  core.List<BidMetricsRow>? bidMetricsRows;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListBidMetricsRequest.pageToken field in the
  /// subsequent call to the bidMetrics.list method to retrieve the next page of
  /// results.
  core.String? nextPageToken;

  ListBidMetricsResponse();

  ListBidMetricsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('bidMetricsRows')) {
      bidMetricsRows = (_json['bidMetricsRows'] as core.List)
          .map<BidMetricsRow>((value) => BidMetricsRow.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (bidMetricsRows != null)
          'bidMetricsRows':
              bidMetricsRows!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing all reasons that bid responses resulted in an
/// error.
class ListBidResponseErrorsResponse {
  /// List of rows, with counts of bid responses aggregated by callout status.
  core.List<CalloutStatusRow>? calloutStatusRows;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListBidResponseErrorsRequest.pageToken field in the
  /// subsequent call to the bidResponseErrors.list method to retrieve the next
  /// page of results.
  core.String? nextPageToken;

  ListBidResponseErrorsResponse();

  ListBidResponseErrorsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('calloutStatusRows')) {
      calloutStatusRows = (_json['calloutStatusRows'] as core.List)
          .map<CalloutStatusRow>((value) => CalloutStatusRow.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (calloutStatusRows != null)
          'calloutStatusRows':
              calloutStatusRows!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing all reasons that bid responses were considered
/// to have no applicable bids.
class ListBidResponsesWithoutBidsResponse {
  /// List of rows, with counts of bid responses without bids aggregated by
  /// status.
  core.List<BidResponseWithoutBidsStatusRow>? bidResponseWithoutBidsStatusRows;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListBidResponsesWithoutBidsRequest.pageToken field
  /// in the subsequent call to the bidResponsesWithoutBids.list method to
  /// retrieve the next page of results.
  core.String? nextPageToken;

  ListBidResponsesWithoutBidsResponse();

  ListBidResponsesWithoutBidsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('bidResponseWithoutBidsStatusRows')) {
      bidResponseWithoutBidsStatusRows =
          (_json['bidResponseWithoutBidsStatusRows'] as core.List)
              .map<BidResponseWithoutBidsStatusRow>((value) =>
                  BidResponseWithoutBidsStatusRow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (bidResponseWithoutBidsStatusRows != null)
          'bidResponseWithoutBidsStatusRows': bidResponseWithoutBidsStatusRows!
              .map((value) => value.toJson())
              .toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListClientUserInvitationsResponse {
  /// The returned list of client users.
  core.List<ClientUserInvitation>? invitations;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListClientUserInvitationsRequest.pageToken field in
  /// the subsequent call to the clients.invitations.list method to retrieve the
  /// next page of results.
  core.String? nextPageToken;

  ListClientUserInvitationsResponse();

  ListClientUserInvitationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('invitations')) {
      invitations = (_json['invitations'] as core.List)
          .map<ClientUserInvitation>((value) => ClientUserInvitation.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (invitations != null)
          'invitations': invitations!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListClientUsersResponse {
  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListClientUsersRequest.pageToken field in the
  /// subsequent call to the clients.invitations.list method to retrieve the
  /// next page of results.
  core.String? nextPageToken;

  /// The returned list of client users.
  core.List<ClientUser>? users;

  ListClientUsersResponse();

  ListClientUsersResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('users')) {
      users = (_json['users'] as core.List)
          .map<ClientUser>((value) =>
              ClientUser.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (users != null)
          'users': users!.map((value) => value.toJson()).toList(),
      };
}

class ListClientsResponse {
  /// The returned list of clients.
  core.List<Client>? clients;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListClientsRequest.pageToken field in the
  /// subsequent call to the accounts.clients.list method to retrieve the next
  /// page of results.
  core.String? nextPageToken;

  ListClientsResponse();

  ListClientsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('clients')) {
      clients = (_json['clients'] as core.List)
          .map<Client>((value) =>
              Client.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (clients != null)
          'clients': clients!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing all creatives associated with a given filtered
/// bid reason.
class ListCreativeStatusBreakdownByCreativeResponse {
  /// List of rows, with counts of bids with a given creative status aggregated
  /// by creative.
  core.List<FilteredBidCreativeRow>? filteredBidCreativeRows;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the
  /// ListCreativeStatusBreakdownByCreativeRequest.pageToken field in the
  /// subsequent call to the filteredBids.creatives.list method to retrieve the
  /// next page of results.
  core.String? nextPageToken;

  ListCreativeStatusBreakdownByCreativeResponse();

  ListCreativeStatusBreakdownByCreativeResponse.fromJson(core.Map _json) {
    if (_json.containsKey('filteredBidCreativeRows')) {
      filteredBidCreativeRows = (_json['filteredBidCreativeRows'] as core.List)
          .map<FilteredBidCreativeRow>((value) =>
              FilteredBidCreativeRow.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (filteredBidCreativeRows != null)
          'filteredBidCreativeRows':
              filteredBidCreativeRows!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing all details associated with a given filtered
/// bid reason.
class ListCreativeStatusBreakdownByDetailResponse {
  /// The type of detail that the detail IDs represent.
  /// Possible string values are:
  /// - "DETAIL_TYPE_UNSPECIFIED" : A placeholder for an undefined status. This
  /// value will never be returned in responses.
  /// - "CREATIVE_ATTRIBUTE" : Indicates that the detail ID refers to a creative
  /// attribute; see
  /// \[publisher-excludable-creative-attributes\](https://developers.google.com/authorized-buyers/rtb/downloads/publisher-excludable-creative-attributes).
  /// - "VENDOR" : Indicates that the detail ID refers to a vendor; see
  /// [vendors](https://developers.google.com/authorized-buyers/rtb/downloads/vendors).
  /// This namespace is different from that of the `ATP_VENDOR` detail type.
  /// - "SENSITIVE_CATEGORY" : Indicates that the detail ID refers to a
  /// sensitive category; see
  /// \[ad-sensitive-categories\](https://developers.google.com/authorized-buyers/rtb/downloads/ad-sensitive-categories).
  /// - "PRODUCT_CATEGORY" : Indicates that the detail ID refers to a product
  /// category; see
  /// \[ad-product-categories\](https://developers.google.com/authorized-buyers/rtb/downloads/ad-product-categories).
  /// - "DISAPPROVAL_REASON" : Indicates that the detail ID refers to a
  /// disapproval reason; see DisapprovalReason enum in
  /// \[snippet-status-report-proto\](https://developers.google.com/authorized-buyers/rtb/downloads/snippet-status-report-proto).
  /// - "POLICY_TOPIC" : Indicates that the detail ID refers to a policy topic.
  /// - "ATP_VENDOR" : Indicates that the detail ID refers to an ad technology
  /// provider (ATP); see
  /// [providers](https://storage.googleapis.com/adx-rtb-dictionaries/providers.csv).
  /// This namespace is different from the `VENDOR` detail type; see
  /// [ad technology providers](https://support.google.com/admanager/answer/9012903)
  /// for more information.
  /// - "VENDOR_DOMAIN" : Indicates that the detail string refers the domain of
  /// an unknown vendor.
  /// - "GVL_ID" : Indicates that the detail ID refers an IAB GVL ID which
  /// Google did not detect in the latest TCF Vendor List. See
  /// [Global Vendor List](https://vendor-list.consensu.org/v2/vendor-list.json)
  core.String? detailType;

  /// List of rows, with counts of bids with a given creative status aggregated
  /// by detail.
  core.List<FilteredBidDetailRow>? filteredBidDetailRows;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the
  /// ListCreativeStatusBreakdownByDetailRequest.pageToken field in the
  /// subsequent call to the filteredBids.details.list method to retrieve the
  /// next page of results.
  core.String? nextPageToken;

  ListCreativeStatusBreakdownByDetailResponse();

  ListCreativeStatusBreakdownByDetailResponse.fromJson(core.Map _json) {
    if (_json.containsKey('detailType')) {
      detailType = _json['detailType'] as core.String;
    }
    if (_json.containsKey('filteredBidDetailRows')) {
      filteredBidDetailRows = (_json['filteredBidDetailRows'] as core.List)
          .map<FilteredBidDetailRow>((value) => FilteredBidDetailRow.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (detailType != null) 'detailType': detailType!,
        if (filteredBidDetailRows != null)
          'filteredBidDetailRows':
              filteredBidDetailRows!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A response for listing creatives.
class ListCreativesResponse {
  /// The list of creatives.
  core.List<Creative>? creatives;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListCreativesRequest.page_token field in the
  /// subsequent call to `ListCreatives` method to retrieve the next page of
  /// results.
  core.String? nextPageToken;

  ListCreativesResponse();

  ListCreativesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('creatives')) {
      creatives = (_json['creatives'] as core.List)
          .map<Creative>((value) =>
              Creative.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (creatives != null)
          'creatives': creatives!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A response for listing creative and deal associations
class ListDealAssociationsResponse {
  /// The list of associations.
  core.List<CreativeDealAssociation>? associations;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListDealAssociationsRequest.page_token field in the
  /// subsequent call to 'ListDealAssociation' method to retrieve the next page
  /// of results.
  core.String? nextPageToken;

  ListDealAssociationsResponse();

  ListDealAssociationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('associations')) {
      associations = (_json['associations'] as core.List)
          .map<CreativeDealAssociation>((value) =>
              CreativeDealAssociation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (associations != null)
          'associations': associations!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing filter sets.
class ListFilterSetsResponse {
  /// The filter sets belonging to the buyer.
  core.List<FilterSet>? filterSets;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListFilterSetsRequest.pageToken field in the
  /// subsequent call to the accounts.filterSets.list method to retrieve the
  /// next page of results.
  core.String? nextPageToken;

  ListFilterSetsResponse();

  ListFilterSetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('filterSets')) {
      filterSets = (_json['filterSets'] as core.List)
          .map<FilterSet>((value) =>
              FilterSet.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (filterSets != null)
          'filterSets': filterSets!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing all reasons that bid requests were filtered and
/// not sent to the buyer.
class ListFilteredBidRequestsResponse {
  /// List of rows, with counts of filtered bid requests aggregated by callout
  /// status.
  core.List<CalloutStatusRow>? calloutStatusRows;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListFilteredBidRequestsRequest.pageToken field in
  /// the subsequent call to the filteredBidRequests.list method to retrieve the
  /// next page of results.
  core.String? nextPageToken;

  ListFilteredBidRequestsResponse();

  ListFilteredBidRequestsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('calloutStatusRows')) {
      calloutStatusRows = (_json['calloutStatusRows'] as core.List)
          .map<CalloutStatusRow>((value) => CalloutStatusRow.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (calloutStatusRows != null)
          'calloutStatusRows':
              calloutStatusRows!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing all reasons that bids were filtered from the
/// auction.
class ListFilteredBidsResponse {
  /// List of rows, with counts of filtered bids aggregated by filtering reason
  /// (i.e. creative status).
  core.List<CreativeStatusRow>? creativeStatusRows;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListFilteredBidsRequest.pageToken field in the
  /// subsequent call to the filteredBids.list method to retrieve the next page
  /// of results.
  core.String? nextPageToken;

  ListFilteredBidsResponse();

  ListFilteredBidsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('creativeStatusRows')) {
      creativeStatusRows = (_json['creativeStatusRows'] as core.List)
          .map<CreativeStatusRow>((value) => CreativeStatusRow.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativeStatusRows != null)
          'creativeStatusRows':
              creativeStatusRows!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing the metrics that are measured in number of
/// impressions.
class ListImpressionMetricsResponse {
  /// List of rows, each containing a set of impression metrics.
  core.List<ImpressionMetricsRow>? impressionMetricsRows;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListImpressionMetricsRequest.pageToken field in the
  /// subsequent call to the impressionMetrics.list method to retrieve the next
  /// page of results.
  core.String? nextPageToken;

  ListImpressionMetricsResponse();

  ListImpressionMetricsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('impressionMetricsRows')) {
      impressionMetricsRows = (_json['impressionMetricsRows'] as core.List)
          .map<ImpressionMetricsRow>((value) => ImpressionMetricsRow.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (impressionMetricsRows != null)
          'impressionMetricsRows':
              impressionMetricsRows!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing all reasons that bids lost in the auction.
class ListLosingBidsResponse {
  /// List of rows, with counts of losing bids aggregated by loss reason (i.e.
  /// creative status).
  core.List<CreativeStatusRow>? creativeStatusRows;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListLosingBidsRequest.pageToken field in the
  /// subsequent call to the losingBids.list method to retrieve the next page of
  /// results.
  core.String? nextPageToken;

  ListLosingBidsResponse();

  ListLosingBidsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('creativeStatusRows')) {
      creativeStatusRows = (_json['creativeStatusRows'] as core.List)
          .map<CreativeStatusRow>((value) => CreativeStatusRow.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativeStatusRows != null)
          'creativeStatusRows':
              creativeStatusRows!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing all reasons for which a buyer was not billed
/// for a winning bid.
class ListNonBillableWinningBidsResponse {
  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListNonBillableWinningBidsRequest.pageToken field
  /// in the subsequent call to the nonBillableWinningBids.list method to
  /// retrieve the next page of results.
  core.String? nextPageToken;

  /// List of rows, with counts of bids not billed aggregated by reason.
  core.List<NonBillableWinningBidStatusRow>? nonBillableWinningBidStatusRows;

  ListNonBillableWinningBidsResponse();

  ListNonBillableWinningBidsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('nonBillableWinningBidStatusRows')) {
      nonBillableWinningBidStatusRows =
          (_json['nonBillableWinningBidStatusRows'] as core.List)
              .map<NonBillableWinningBidStatusRow>((value) =>
                  NonBillableWinningBidStatusRow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (nonBillableWinningBidStatusRows != null)
          'nonBillableWinningBidStatusRows': nonBillableWinningBidStatusRows!
              .map((value) => value.toJson())
              .toList(),
      };
}

/// Response message for listing products visible to the buyer.
class ListProductsResponse {
  /// List pagination support.
  core.String? nextPageToken;

  /// The list of matching products at their head revision number.
  core.List<Product>? products;

  ListProductsResponse();

  ListProductsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('products')) {
      products = (_json['products'] as core.List)
          .map<Product>((value) =>
              Product.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (products != null)
          'products': products!.map((value) => value.toJson()).toList(),
      };
}

/// Response message for listing proposals.
class ListProposalsResponse {
  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  /// The list of proposals.
  core.List<Proposal>? proposals;

  ListProposalsResponse();

  ListProposalsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('proposals')) {
      proposals = (_json['proposals'] as core.List)
          .map<Proposal>((value) =>
              Proposal.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (proposals != null)
          'proposals': proposals!.map((value) => value.toJson()).toList(),
      };
}

/// Response message for profiles visible to the buyer.
class ListPublisherProfilesResponse {
  /// List pagination support
  core.String? nextPageToken;

  /// The list of matching publisher profiles.
  core.List<PublisherProfile>? publisherProfiles;

  ListPublisherProfilesResponse();

  ListPublisherProfilesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('publisherProfiles')) {
      publisherProfiles = (_json['publisherProfiles'] as core.List)
          .map<PublisherProfile>((value) => PublisherProfile.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (publisherProfiles != null)
          'publisherProfiles':
              publisherProfiles!.map((value) => value.toJson()).toList(),
      };
}

/// The Geo criteria the restriction applies to.
///
/// Output only.
class LocationContext {
  /// IDs representing the geo location for this context.
  ///
  /// Please refer to the
  /// \[geo-table.csv\](https://storage.googleapis.com/adx-rtb-dictionaries/geo-table.csv)
  /// file for different geo criteria IDs.
  core.List<core.int>? geoCriteriaIds;

  LocationContext();

  LocationContext.fromJson(core.Map _json) {
    if (_json.containsKey('geoCriteriaIds')) {
      geoCriteriaIds = (_json['geoCriteriaIds'] as core.List)
          .map<core.int>((value) => value as core.int)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (geoCriteriaIds != null) 'geoCriteriaIds': geoCriteriaIds!,
      };
}

/// Targeting represents different criteria that can be used by advertisers to
/// target ad inventory.
///
/// For example, they can choose to target ad requests only if the user is in
/// the US. Multiple types of targeting are always applied as a logical AND,
/// unless noted otherwise.
class MarketplaceTargeting {
  /// Geo criteria IDs to be included/excluded.
  CriteriaTargeting? geoTargeting;

  /// Inventory sizes to be included/excluded.
  InventorySizeTargeting? inventorySizeTargeting;

  /// Placement targeting information, e.g., URL, mobile applications.
  PlacementTargeting? placementTargeting;

  /// Technology targeting information, e.g., operating system, device category.
  TechnologyTargeting? technologyTargeting;

  /// Video targeting information.
  VideoTargeting? videoTargeting;

  MarketplaceTargeting();

  MarketplaceTargeting.fromJson(core.Map _json) {
    if (_json.containsKey('geoTargeting')) {
      geoTargeting = CriteriaTargeting.fromJson(
          _json['geoTargeting'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('inventorySizeTargeting')) {
      inventorySizeTargeting = InventorySizeTargeting.fromJson(
          _json['inventorySizeTargeting']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('placementTargeting')) {
      placementTargeting = PlacementTargeting.fromJson(
          _json['placementTargeting'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('technologyTargeting')) {
      technologyTargeting = TechnologyTargeting.fromJson(
          _json['technologyTargeting'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('videoTargeting')) {
      videoTargeting = VideoTargeting.fromJson(
          _json['videoTargeting'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (geoTargeting != null) 'geoTargeting': geoTargeting!.toJson(),
        if (inventorySizeTargeting != null)
          'inventorySizeTargeting': inventorySizeTargeting!.toJson(),
        if (placementTargeting != null)
          'placementTargeting': placementTargeting!.toJson(),
        if (technologyTargeting != null)
          'technologyTargeting': technologyTargeting!.toJson(),
        if (videoTargeting != null) 'videoTargeting': videoTargeting!.toJson(),
      };
}

/// A metric value, with an expected value and a variance; represents a count
/// that may be either exact or estimated (i.e. when sampled).
class MetricValue {
  /// The expected value of the metric.
  core.String? value;

  /// The variance (i.e. square of the standard deviation) of the metric value.
  ///
  /// If value is exact, variance is 0. Can be used to calculate margin of error
  /// as a percentage of value, using the following formula, where Z is the
  /// standard constant that depends on the desired size of the confidence
  /// interval (e.g. for 90% confidence interval, use Z = 1.645): marginOfError
  /// = 100 * Z * sqrt(variance) / value
  core.String? variance;

  MetricValue();

  MetricValue.fromJson(core.Map _json) {
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
    if (_json.containsKey('variance')) {
      variance = _json['variance'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
        if (variance != null) 'variance': variance!,
      };
}

/// Mobile application targeting settings.
class MobileApplicationTargeting {
  /// Publisher owned apps to be targeted or excluded by the publisher to
  /// display the ads in.
  FirstPartyMobileApplicationTargeting? firstPartyTargeting;

  MobileApplicationTargeting();

  MobileApplicationTargeting.fromJson(core.Map _json) {
    if (_json.containsKey('firstPartyTargeting')) {
      firstPartyTargeting = FirstPartyMobileApplicationTargeting.fromJson(
          _json['firstPartyTargeting'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (firstPartyTargeting != null)
          'firstPartyTargeting': firstPartyTargeting!.toJson(),
      };
}

/// Represents an amount of money with its currency type.
class Money {
  /// The three-letter currency code defined in ISO 4217.
  core.String? currencyCode;

  /// Number of nano (10^-9) units of the amount.
  ///
  /// The value must be between -999,999,999 and +999,999,999 inclusive. If
  /// `units` is positive, `nanos` must be positive or zero. If `units` is zero,
  /// `nanos` can be positive, zero, or negative. If `units` is negative,
  /// `nanos` must be negative or zero. For example $-1.75 is represented as
  /// `units`=-1 and `nanos`=-750,000,000.
  core.int? nanos;

  /// The whole units of the amount.
  ///
  /// For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
  core.String? units;

  Money();

  Money.fromJson(core.Map _json) {
    if (_json.containsKey('currencyCode')) {
      currencyCode = _json['currencyCode'] as core.String;
    }
    if (_json.containsKey('nanos')) {
      nanos = _json['nanos'] as core.int;
    }
    if (_json.containsKey('units')) {
      units = _json['units'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (nanos != null) 'nanos': nanos!,
        if (units != null) 'units': units!,
      };
}

/// Native content for a creative.
class NativeContent {
  /// The name of the advertiser or sponsor, to be displayed in the ad creative.
  core.String? advertiserName;

  /// The app icon, for app download ads.
  Image? appIcon;

  /// A long description of the ad.
  core.String? body;

  /// A label for the button that the user is supposed to click.
  core.String? callToAction;

  /// The URL that the browser/SDK will load when the user clicks the ad.
  core.String? clickLinkUrl;

  /// The URL to use for click tracking.
  core.String? clickTrackingUrl;

  /// A short title for the ad.
  core.String? headline;

  /// A large image.
  Image? image;

  /// A smaller image, for the advertiser's logo.
  Image? logo;

  /// The price of the promoted app including currency info.
  core.String? priceDisplayText;

  /// The app rating in the app store.
  ///
  /// Must be in the range \[0-5\].
  core.double? starRating;

  /// The URL to the app store to purchase/download the promoted app.
  core.String? storeUrl;

  /// The URL to fetch a native video ad.
  core.String? videoUrl;

  NativeContent();

  NativeContent.fromJson(core.Map _json) {
    if (_json.containsKey('advertiserName')) {
      advertiserName = _json['advertiserName'] as core.String;
    }
    if (_json.containsKey('appIcon')) {
      appIcon = Image.fromJson(
          _json['appIcon'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('body')) {
      body = _json['body'] as core.String;
    }
    if (_json.containsKey('callToAction')) {
      callToAction = _json['callToAction'] as core.String;
    }
    if (_json.containsKey('clickLinkUrl')) {
      clickLinkUrl = _json['clickLinkUrl'] as core.String;
    }
    if (_json.containsKey('clickTrackingUrl')) {
      clickTrackingUrl = _json['clickTrackingUrl'] as core.String;
    }
    if (_json.containsKey('headline')) {
      headline = _json['headline'] as core.String;
    }
    if (_json.containsKey('image')) {
      image =
          Image.fromJson(_json['image'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('logo')) {
      logo =
          Image.fromJson(_json['logo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('priceDisplayText')) {
      priceDisplayText = _json['priceDisplayText'] as core.String;
    }
    if (_json.containsKey('starRating')) {
      starRating = (_json['starRating'] as core.num).toDouble();
    }
    if (_json.containsKey('storeUrl')) {
      storeUrl = _json['storeUrl'] as core.String;
    }
    if (_json.containsKey('videoUrl')) {
      videoUrl = _json['videoUrl'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserName != null) 'advertiserName': advertiserName!,
        if (appIcon != null) 'appIcon': appIcon!.toJson(),
        if (body != null) 'body': body!,
        if (callToAction != null) 'callToAction': callToAction!,
        if (clickLinkUrl != null) 'clickLinkUrl': clickLinkUrl!,
        if (clickTrackingUrl != null) 'clickTrackingUrl': clickTrackingUrl!,
        if (headline != null) 'headline': headline!,
        if (image != null) 'image': image!.toJson(),
        if (logo != null) 'logo': logo!.toJson(),
        if (priceDisplayText != null) 'priceDisplayText': priceDisplayText!,
        if (starRating != null) 'starRating': starRating!,
        if (storeUrl != null) 'storeUrl': storeUrl!,
        if (videoUrl != null) 'videoUrl': videoUrl!,
      };
}

/// The number of winning bids with the specified dimension values for which the
/// buyer was not billed, as described by the specified status.
class NonBillableWinningBidStatusRow {
  /// The number of bids with the specified status.
  MetricValue? bidCount;

  /// The values of all dimensions associated with metric values in this row.
  RowDimensions? rowDimensions;

  /// The status specifying why the winning bids were not billed.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : A placeholder for an undefined status. This value
  /// will never be returned in responses.
  /// - "AD_NOT_RENDERED" : The buyer was not billed because the ad was not
  /// rendered by the publisher.
  /// - "INVALID_IMPRESSION" : The buyer was not billed because the impression
  /// won by the bid was determined to be invalid.
  /// - "FATAL_VAST_ERROR" : A video impression was served but a fatal error was
  /// reported from the client during playback.
  /// - "LOST_IN_MEDIATION" : The buyer was not billed because the ad was
  /// outplaced in the mediation waterfall.
  core.String? status;

  NonBillableWinningBidStatusRow();

  NonBillableWinningBidStatusRow.fromJson(core.Map _json) {
    if (_json.containsKey('bidCount')) {
      bidCount = MetricValue.fromJson(
          _json['bidCount'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('rowDimensions')) {
      rowDimensions = RowDimensions.fromJson(
          _json['rowDimensions'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (bidCount != null) 'bidCount': bidCount!.toJson(),
        if (rowDimensions != null) 'rowDimensions': rowDimensions!.toJson(),
        if (status != null) 'status': status!,
      };
}

/// Terms for Private Auctions.
///
/// Note that Private Auctions can be created only by the seller, but they can
/// be returned in a get or list request.
class NonGuaranteedAuctionTerms {
  /// True if open auction buyers are allowed to compete with invited buyers in
  /// this private auction.
  core.bool? autoOptimizePrivateAuction;

  /// Reserve price for the specified buyer.
  core.List<PricePerBuyer>? reservePricesPerBuyer;

  NonGuaranteedAuctionTerms();

  NonGuaranteedAuctionTerms.fromJson(core.Map _json) {
    if (_json.containsKey('autoOptimizePrivateAuction')) {
      autoOptimizePrivateAuction =
          _json['autoOptimizePrivateAuction'] as core.bool;
    }
    if (_json.containsKey('reservePricesPerBuyer')) {
      reservePricesPerBuyer = (_json['reservePricesPerBuyer'] as core.List)
          .map<PricePerBuyer>((value) => PricePerBuyer.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoOptimizePrivateAuction != null)
          'autoOptimizePrivateAuction': autoOptimizePrivateAuction!,
        if (reservePricesPerBuyer != null)
          'reservePricesPerBuyer':
              reservePricesPerBuyer!.map((value) => value.toJson()).toList(),
      };
}

/// Terms for Preferred Deals.
class NonGuaranteedFixedPriceTerms {
  /// Fixed price for the specified buyer.
  core.List<PricePerBuyer>? fixedPrices;

  NonGuaranteedFixedPriceTerms();

  NonGuaranteedFixedPriceTerms.fromJson(core.Map _json) {
    if (_json.containsKey('fixedPrices')) {
      fixedPrices = (_json['fixedPrices'] as core.List)
          .map<PricePerBuyer>((value) => PricePerBuyer.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (fixedPrices != null)
          'fixedPrices': fixedPrices!.map((value) => value.toJson()).toList(),
      };
}

/// A proposal may be associated to several notes.
class Note {
  /// The timestamp for when this note was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The role of the person (buyer/seller) creating the note.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BUYER_SELLER_ROLE_UNSPECIFIED" : A placeholder for an undefined
  /// buyer/seller role.
  /// - "BUYER" : Specifies the role as buyer.
  /// - "SELLER" : Specifies the role as seller.
  core.String? creatorRole;

  /// The actual note to attach.
  ///
  /// (max-length: 1024 unicode code units) Note: This field may be set only
  /// when creating the resource. Modifying this field while updating the
  /// resource will result in an error.
  core.String? note;

  /// The unique ID for the note.
  ///
  /// Output only.
  core.String? noteId;

  /// The revision number of the proposal when the note is created.
  ///
  /// Output only.
  core.String? proposalRevision;

  Note();

  Note.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('creatorRole')) {
      creatorRole = _json['creatorRole'] as core.String;
    }
    if (_json.containsKey('note')) {
      note = _json['note'] as core.String;
    }
    if (_json.containsKey('noteId')) {
      noteId = _json['noteId'] as core.String;
    }
    if (_json.containsKey('proposalRevision')) {
      proposalRevision = _json['proposalRevision'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (creatorRole != null) 'creatorRole': creatorRole!,
        if (note != null) 'note': note!,
        if (noteId != null) 'noteId': noteId!,
        if (proposalRevision != null) 'proposalRevision': proposalRevision!,
      };
}

/// Represents targeting information for operating systems.
class OperatingSystemTargeting {
  /// IDs of operating systems to be included/excluded.
  CriteriaTargeting? operatingSystemCriteria;

  /// IDs of operating system versions to be included/excluded.
  CriteriaTargeting? operatingSystemVersionCriteria;

  OperatingSystemTargeting();

  OperatingSystemTargeting.fromJson(core.Map _json) {
    if (_json.containsKey('operatingSystemCriteria')) {
      operatingSystemCriteria = CriteriaTargeting.fromJson(
          _json['operatingSystemCriteria']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('operatingSystemVersionCriteria')) {
      operatingSystemVersionCriteria = CriteriaTargeting.fromJson(
          _json['operatingSystemVersionCriteria']
              as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (operatingSystemCriteria != null)
          'operatingSystemCriteria': operatingSystemCriteria!.toJson(),
        if (operatingSystemVersionCriteria != null)
          'operatingSystemVersionCriteria':
              operatingSystemVersionCriteria!.toJson(),
      };
}

/// Request message to pause serving for an already-finalized proposal.
class PauseProposalRequest {
  /// The reason why the proposal is being paused.
  ///
  /// This human readable message will be displayed in the seller's UI. (Max
  /// length: 1000 unicode code units.)
  core.String? reason;

  PauseProposalRequest();

  PauseProposalRequest.fromJson(core.Map _json) {
    if (_json.containsKey('reason')) {
      reason = _json['reason'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (reason != null) 'reason': reason!,
      };
}

/// Represents targeting about where the ads can appear, e.g., certain sites or
/// mobile applications.
///
/// Different placement targeting types will be logically OR'ed.
class PlacementTargeting {
  /// Mobile application targeting information in a deal.
  ///
  /// This doesn't apply to Auction Packages.
  MobileApplicationTargeting? mobileApplicationTargeting;

  /// URLs to be included/excluded.
  UrlTargeting? urlTargeting;

  PlacementTargeting();

  PlacementTargeting.fromJson(core.Map _json) {
    if (_json.containsKey('mobileApplicationTargeting')) {
      mobileApplicationTargeting = MobileApplicationTargeting.fromJson(
          _json['mobileApplicationTargeting']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('urlTargeting')) {
      urlTargeting = UrlTargeting.fromJson(
          _json['urlTargeting'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (mobileApplicationTargeting != null)
          'mobileApplicationTargeting': mobileApplicationTargeting!.toJson(),
        if (urlTargeting != null) 'urlTargeting': urlTargeting!.toJson(),
      };
}

/// The type of platform the restriction applies to.
///
/// Output only.
class PlatformContext {
  /// The platforms this restriction applies to.
  core.List<core.String>? platforms;

  PlatformContext();

  PlatformContext.fromJson(core.Map _json) {
    if (_json.containsKey('platforms')) {
      platforms = (_json['platforms'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (platforms != null) 'platforms': platforms!,
      };
}

/// Represents a price and a pricing type for a product / deal.
class Price {
  /// The actual price with currency specified.
  Money? amount;

  /// The pricing type for the deal/product.
  ///
  /// (default: CPM)
  /// Possible string values are:
  /// - "PRICING_TYPE_UNSPECIFIED" : A placeholder for an undefined pricing
  /// type. If the pricing type is unpsecified, `COST_PER_MILLE` will be used
  /// instead.
  /// - "COST_PER_MILLE" : Cost per thousand impressions.
  /// - "COST_PER_DAY" : Cost per day
  core.String? pricingType;

  Price();

  Price.fromJson(core.Map _json) {
    if (_json.containsKey('amount')) {
      amount = Money.fromJson(
          _json['amount'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('pricingType')) {
      pricingType = _json['pricingType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!.toJson(),
        if (pricingType != null) 'pricingType': pricingType!,
      };
}

/// Used to specify pricing rules for buyers/advertisers.
///
/// Each PricePerBuyer in a product can become 0 or 1 deals. To check if there
/// is a PricePerBuyer for a particular buyer or buyer/advertiser pair, we look
/// for the most specific matching rule - we first look for a rule matching the
/// buyer and advertiser, next a rule with the buyer but an empty advertiser
/// list, and otherwise look for a matching rule where no buyer is set.
class PricePerBuyer {
  /// The list of advertisers for this price when associated with this buyer.
  ///
  /// If empty, all advertisers with this buyer pay this price.
  core.List<core.String>? advertiserIds;

  /// The buyer who will pay this price.
  ///
  /// If unset, all buyers can pay this price (if the advertisers match, and
  /// there's no more specific rule matching the buyer).
  Buyer? buyer;

  /// The specified price.
  Price? price;

  PricePerBuyer();

  PricePerBuyer.fromJson(core.Map _json) {
    if (_json.containsKey('advertiserIds')) {
      advertiserIds = (_json['advertiserIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('buyer')) {
      buyer =
          Buyer.fromJson(_json['buyer'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('price')) {
      price =
          Price.fromJson(_json['price'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserIds != null) 'advertiserIds': advertiserIds!,
        if (buyer != null) 'buyer': buyer!.toJson(),
        if (price != null) 'price': price!.toJson(),
      };
}

/// Buyers are allowed to store certain types of private data in a
/// proposal/deal.
class PrivateData {
  /// A buyer or seller specified reference ID.
  ///
  /// This can be queried in the list operations (max-length: 1024 unicode code
  /// units).
  core.String? referenceId;

  PrivateData();

  PrivateData.fromJson(core.Map _json) {
    if (_json.containsKey('referenceId')) {
      referenceId = _json['referenceId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (referenceId != null) 'referenceId': referenceId!,
      };
}

/// A product is a segment of inventory that a seller wishes to sell.
///
/// It is associated with certain terms and targeting information which helps
/// the buyer know more about the inventory.
class Product {
  /// The proposed end time for the deal.
  ///
  /// The field will be truncated to the order of seconds during serving.
  core.String? availableEndTime;

  /// Inventory availability dates.
  ///
  /// The start time will be truncated to seconds during serving. Thus, a field
  /// specified as 3:23:34.456 (HH:mm:ss.SSS) will be truncated to 3:23:34 when
  /// serving.
  core.String? availableStartTime;

  /// Creation time.
  core.String? createTime;

  /// Optional contact information for the creator of this product.
  core.List<ContactInformation>? creatorContacts;

  /// The display name for this product as set by the seller.
  core.String? displayName;

  /// If the creator has already signed off on the product, then the buyer can
  /// finalize the deal by accepting the product as is.
  ///
  /// When copying to a proposal, if any of the terms are changed, then
  /// auto_finalize is automatically set to false.
  core.bool? hasCreatorSignedOff;

  /// The unique ID for the product.
  core.String? productId;

  /// The revision number of the product (auto-assigned by Marketplace).
  core.String? productRevision;

  /// An ID which can be used by the Publisher Profile API to get more
  /// information about the seller that created this product.
  core.String? publisherProfileId;

  /// Information about the seller that created this product.
  Seller? seller;

  /// The syndication product associated with the deal.
  /// Possible string values are:
  /// - "SYNDICATION_PRODUCT_UNSPECIFIED" : A placeholder for an undefined
  /// syndication product.
  /// - "CONTENT" : This typically represents a web page.
  /// - "MOBILE" : This represents a mobile property.
  /// - "VIDEO" : This represents video ad formats.
  /// - "GAMES" : This represents ads shown within games.
  core.String? syndicationProduct;

  /// Targeting that is shared between the buyer and the seller.
  ///
  /// Each targeting criterion has a specified key and for each key there is a
  /// list of inclusion value or exclusion values.
  core.List<TargetingCriteria>? targetingCriterion;

  /// The negotiable terms of the deal.
  DealTerms? terms;

  /// Time of last update.
  core.String? updateTime;

  /// The web-property code for the seller.
  ///
  /// This needs to be copied as is when adding a new deal to a proposal.
  core.String? webPropertyCode;

  Product();

  Product.fromJson(core.Map _json) {
    if (_json.containsKey('availableEndTime')) {
      availableEndTime = _json['availableEndTime'] as core.String;
    }
    if (_json.containsKey('availableStartTime')) {
      availableStartTime = _json['availableStartTime'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('creatorContacts')) {
      creatorContacts = (_json['creatorContacts'] as core.List)
          .map<ContactInformation>((value) => ContactInformation.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('hasCreatorSignedOff')) {
      hasCreatorSignedOff = _json['hasCreatorSignedOff'] as core.bool;
    }
    if (_json.containsKey('productId')) {
      productId = _json['productId'] as core.String;
    }
    if (_json.containsKey('productRevision')) {
      productRevision = _json['productRevision'] as core.String;
    }
    if (_json.containsKey('publisherProfileId')) {
      publisherProfileId = _json['publisherProfileId'] as core.String;
    }
    if (_json.containsKey('seller')) {
      seller = Seller.fromJson(
          _json['seller'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('syndicationProduct')) {
      syndicationProduct = _json['syndicationProduct'] as core.String;
    }
    if (_json.containsKey('targetingCriterion')) {
      targetingCriterion = (_json['targetingCriterion'] as core.List)
          .map<TargetingCriteria>((value) => TargetingCriteria.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('terms')) {
      terms = DealTerms.fromJson(
          _json['terms'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
    if (_json.containsKey('webPropertyCode')) {
      webPropertyCode = _json['webPropertyCode'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableEndTime != null) 'availableEndTime': availableEndTime!,
        if (availableStartTime != null)
          'availableStartTime': availableStartTime!,
        if (createTime != null) 'createTime': createTime!,
        if (creatorContacts != null)
          'creatorContacts':
              creatorContacts!.map((value) => value.toJson()).toList(),
        if (displayName != null) 'displayName': displayName!,
        if (hasCreatorSignedOff != null)
          'hasCreatorSignedOff': hasCreatorSignedOff!,
        if (productId != null) 'productId': productId!,
        if (productRevision != null) 'productRevision': productRevision!,
        if (publisherProfileId != null)
          'publisherProfileId': publisherProfileId!,
        if (seller != null) 'seller': seller!.toJson(),
        if (syndicationProduct != null)
          'syndicationProduct': syndicationProduct!,
        if (targetingCriterion != null)
          'targetingCriterion':
              targetingCriterion!.map((value) => value.toJson()).toList(),
        if (terms != null) 'terms': terms!.toJson(),
        if (updateTime != null) 'updateTime': updateTime!,
        if (webPropertyCode != null) 'webPropertyCode': webPropertyCode!,
      };
}

/// Represents a proposal in the Marketplace.
///
/// A proposal is the unit of negotiation between a seller and a buyer and
/// contains deals which are served. Note: You can't update, create, or
/// otherwise modify Private Auction deals through the API. Fields are updatable
/// unless noted otherwise.
class Proposal {
  /// Reference to the buyer that will get billed for this proposal.
  ///
  /// Output only.
  Buyer? billedBuyer;

  /// Reference to the buyer on the proposal.
  ///
  /// Note: This field may be set only when creating the resource. Modifying
  /// this field while updating the resource will result in an error.
  Buyer? buyer;

  /// Contact information for the buyer.
  core.List<ContactInformation>? buyerContacts;

  /// Private data for buyer.
  ///
  /// (hidden from seller).
  PrivateData? buyerPrivateData;

  /// The deals associated with this proposal.
  ///
  /// For Private Auction proposals (whose deals have
  /// NonGuaranteedAuctionTerms), there will only be one deal.
  core.List<Deal>? deals;

  /// The name for the proposal.
  core.String? displayName;

  /// True if the proposal is being renegotiated.
  ///
  /// Output only.
  core.bool? isRenegotiating;

  /// True, if the buyside inventory setup is complete for this proposal.
  ///
  /// Output only.
  core.bool? isSetupComplete;

  /// The role of the last user that either updated the proposal or left a
  /// comment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BUYER_SELLER_ROLE_UNSPECIFIED" : A placeholder for an undefined
  /// buyer/seller role.
  /// - "BUYER" : Specifies the role as buyer.
  /// - "SELLER" : Specifies the role as seller.
  core.String? lastUpdaterOrCommentorRole;

  /// The notes associated with this proposal.
  ///
  /// Output only.
  core.List<Note>? notes;

  /// Indicates whether the buyer/seller created the proposal.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BUYER_SELLER_ROLE_UNSPECIFIED" : A placeholder for an undefined
  /// buyer/seller role.
  /// - "BUYER" : Specifies the role as buyer.
  /// - "SELLER" : Specifies the role as seller.
  core.String? originatorRole;

  /// Private auction ID if this proposal is a private auction proposal.
  ///
  /// Output only.
  core.String? privateAuctionId;

  /// The unique ID of the proposal.
  ///
  /// Output only.
  core.String? proposalId;

  /// The revision number for the proposal.
  ///
  /// Each update to the proposal or the deal causes the proposal revision
  /// number to auto-increment. The buyer keeps track of the last revision
  /// number they know of and pass it in when making an update. If the head
  /// revision number on the server has since incremented, then an ABORTED error
  /// is returned during the update operation to let the buyer know that a
  /// subsequent update was made.
  ///
  /// Output only.
  core.String? proposalRevision;

  /// The current state of the proposal.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROPOSAL_STATE_UNSPECIFIED" : A placeholder for an undefined proposal
  /// state.
  /// - "PROPOSED" : The proposal is under negotiation or renegotiation.
  /// - "BUYER_ACCEPTED" : The proposal has been accepted by the buyer.
  /// - "SELLER_ACCEPTED" : The proposal has been accepted by the seller.
  /// - "CANCELED" : The negotiations on the proposal were canceled and the
  /// proposal was never finalized.
  /// - "FINALIZED" : The proposal is finalized. During renegotiation, the
  /// proposal may not be in this state.
  core.String? proposalState;

  /// Reference to the seller on the proposal.
  ///
  /// Note: This field may be set only when creating the resource. Modifying
  /// this field while updating the resource will result in an error.
  Seller? seller;

  /// Contact information for the seller.
  ///
  /// Output only.
  core.List<ContactInformation>? sellerContacts;

  /// The terms and conditions set by the publisher for this proposal.
  ///
  /// Output only.
  core.String? termsAndConditions;

  /// The time when the proposal was last revised.
  ///
  /// Output only.
  core.String? updateTime;

  Proposal();

  Proposal.fromJson(core.Map _json) {
    if (_json.containsKey('billedBuyer')) {
      billedBuyer = Buyer.fromJson(
          _json['billedBuyer'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('buyer')) {
      buyer =
          Buyer.fromJson(_json['buyer'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('buyerContacts')) {
      buyerContacts = (_json['buyerContacts'] as core.List)
          .map<ContactInformation>((value) => ContactInformation.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('buyerPrivateData')) {
      buyerPrivateData = PrivateData.fromJson(
          _json['buyerPrivateData'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('deals')) {
      deals = (_json['deals'] as core.List)
          .map<Deal>((value) =>
              Deal.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('isRenegotiating')) {
      isRenegotiating = _json['isRenegotiating'] as core.bool;
    }
    if (_json.containsKey('isSetupComplete')) {
      isSetupComplete = _json['isSetupComplete'] as core.bool;
    }
    if (_json.containsKey('lastUpdaterOrCommentorRole')) {
      lastUpdaterOrCommentorRole =
          _json['lastUpdaterOrCommentorRole'] as core.String;
    }
    if (_json.containsKey('notes')) {
      notes = (_json['notes'] as core.List)
          .map<Note>((value) =>
              Note.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('originatorRole')) {
      originatorRole = _json['originatorRole'] as core.String;
    }
    if (_json.containsKey('privateAuctionId')) {
      privateAuctionId = _json['privateAuctionId'] as core.String;
    }
    if (_json.containsKey('proposalId')) {
      proposalId = _json['proposalId'] as core.String;
    }
    if (_json.containsKey('proposalRevision')) {
      proposalRevision = _json['proposalRevision'] as core.String;
    }
    if (_json.containsKey('proposalState')) {
      proposalState = _json['proposalState'] as core.String;
    }
    if (_json.containsKey('seller')) {
      seller = Seller.fromJson(
          _json['seller'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sellerContacts')) {
      sellerContacts = (_json['sellerContacts'] as core.List)
          .map<ContactInformation>((value) => ContactInformation.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('termsAndConditions')) {
      termsAndConditions = _json['termsAndConditions'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (billedBuyer != null) 'billedBuyer': billedBuyer!.toJson(),
        if (buyer != null) 'buyer': buyer!.toJson(),
        if (buyerContacts != null)
          'buyerContacts':
              buyerContacts!.map((value) => value.toJson()).toList(),
        if (buyerPrivateData != null)
          'buyerPrivateData': buyerPrivateData!.toJson(),
        if (deals != null)
          'deals': deals!.map((value) => value.toJson()).toList(),
        if (displayName != null) 'displayName': displayName!,
        if (isRenegotiating != null) 'isRenegotiating': isRenegotiating!,
        if (isSetupComplete != null) 'isSetupComplete': isSetupComplete!,
        if (lastUpdaterOrCommentorRole != null)
          'lastUpdaterOrCommentorRole': lastUpdaterOrCommentorRole!,
        if (notes != null)
          'notes': notes!.map((value) => value.toJson()).toList(),
        if (originatorRole != null) 'originatorRole': originatorRole!,
        if (privateAuctionId != null) 'privateAuctionId': privateAuctionId!,
        if (proposalId != null) 'proposalId': proposalId!,
        if (proposalRevision != null) 'proposalRevision': proposalRevision!,
        if (proposalState != null) 'proposalState': proposalState!,
        if (seller != null) 'seller': seller!.toJson(),
        if (sellerContacts != null)
          'sellerContacts':
              sellerContacts!.map((value) => value.toJson()).toList(),
        if (termsAndConditions != null)
          'termsAndConditions': termsAndConditions!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Represents a publisher profile
/// (https://support.google.com/admanager/answer/6035806) in Marketplace.
///
/// All fields are read only. All string fields are free-form text entered by
/// the publisher unless noted otherwise.
class PublisherProfile {
  /// Description on the publisher's audience.
  core.String? audienceDescription;

  /// Statement explaining what's unique about publisher's business, and why
  /// buyers should partner with the publisher.
  core.String? buyerPitchStatement;

  /// Contact information for direct reservation deals.
  ///
  /// This is free text entered by the publisher and may include information
  /// like names, phone numbers and email addresses.
  core.String? directDealsContact;

  /// Name of the publisher profile.
  core.String? displayName;

  /// The list of domains represented in this publisher profile.
  ///
  /// Empty if this is a parent profile. These are top private domains, meaning
  /// that these will not contain a string like "photos.google.co.uk/123", but
  /// will instead contain "google.co.uk".
  core.List<core.String>? domains;

  /// URL to publisher's Google+ page.
  core.String? googlePlusUrl;

  /// Indicates if this profile is the parent profile of the seller.
  ///
  /// A parent profile represents all the inventory from the seller, as opposed
  /// to child profile that is created to brand a portion of inventory. One
  /// seller should have only one parent publisher profile, and can have
  /// multiple child profiles. Publisher profiles for the same seller will have
  /// same value of field
  /// google.ads.adexchange.buyer.v2beta1.PublisherProfile.seller. See
  /// https://support.google.com/admanager/answer/6035806 for details.
  core.bool? isParent;

  /// A Google public URL to the logo for this publisher profile.
  ///
  /// The logo is stored as a PNG, JPG, or GIF image.
  core.String? logoUrl;

  /// URL to additional marketing and sales materials.
  core.String? mediaKitUrl;

  /// The list of apps represented in this publisher profile.
  ///
  /// Empty if this is a parent profile.
  core.List<PublisherProfileMobileApplication>? mobileApps;

  /// Overview of the publisher.
  core.String? overview;

  /// Contact information for programmatic deals.
  ///
  /// This is free text entered by the publisher and may include information
  /// like names, phone numbers and email addresses.
  core.String? programmaticDealsContact;

  /// Unique ID for publisher profile.
  core.String? publisherProfileId;

  /// URL to a publisher rate card.
  core.String? rateCardInfoUrl;

  /// URL to a sample content page.
  core.String? samplePageUrl;

  /// Seller of the publisher profile.
  Seller? seller;

  /// Up to three key metrics and rankings.
  ///
  /// Max 100 characters each. For example "#1 Mobile News Site for 20 Straight
  /// Months".
  core.List<core.String>? topHeadlines;

  PublisherProfile();

  PublisherProfile.fromJson(core.Map _json) {
    if (_json.containsKey('audienceDescription')) {
      audienceDescription = _json['audienceDescription'] as core.String;
    }
    if (_json.containsKey('buyerPitchStatement')) {
      buyerPitchStatement = _json['buyerPitchStatement'] as core.String;
    }
    if (_json.containsKey('directDealsContact')) {
      directDealsContact = _json['directDealsContact'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('domains')) {
      domains = (_json['domains'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('googlePlusUrl')) {
      googlePlusUrl = _json['googlePlusUrl'] as core.String;
    }
    if (_json.containsKey('isParent')) {
      isParent = _json['isParent'] as core.bool;
    }
    if (_json.containsKey('logoUrl')) {
      logoUrl = _json['logoUrl'] as core.String;
    }
    if (_json.containsKey('mediaKitUrl')) {
      mediaKitUrl = _json['mediaKitUrl'] as core.String;
    }
    if (_json.containsKey('mobileApps')) {
      mobileApps = (_json['mobileApps'] as core.List)
          .map<PublisherProfileMobileApplication>((value) =>
              PublisherProfileMobileApplication.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('overview')) {
      overview = _json['overview'] as core.String;
    }
    if (_json.containsKey('programmaticDealsContact')) {
      programmaticDealsContact =
          _json['programmaticDealsContact'] as core.String;
    }
    if (_json.containsKey('publisherProfileId')) {
      publisherProfileId = _json['publisherProfileId'] as core.String;
    }
    if (_json.containsKey('rateCardInfoUrl')) {
      rateCardInfoUrl = _json['rateCardInfoUrl'] as core.String;
    }
    if (_json.containsKey('samplePageUrl')) {
      samplePageUrl = _json['samplePageUrl'] as core.String;
    }
    if (_json.containsKey('seller')) {
      seller = Seller.fromJson(
          _json['seller'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('topHeadlines')) {
      topHeadlines = (_json['topHeadlines'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (audienceDescription != null)
          'audienceDescription': audienceDescription!,
        if (buyerPitchStatement != null)
          'buyerPitchStatement': buyerPitchStatement!,
        if (directDealsContact != null)
          'directDealsContact': directDealsContact!,
        if (displayName != null) 'displayName': displayName!,
        if (domains != null) 'domains': domains!,
        if (googlePlusUrl != null) 'googlePlusUrl': googlePlusUrl!,
        if (isParent != null) 'isParent': isParent!,
        if (logoUrl != null) 'logoUrl': logoUrl!,
        if (mediaKitUrl != null) 'mediaKitUrl': mediaKitUrl!,
        if (mobileApps != null)
          'mobileApps': mobileApps!.map((value) => value.toJson()).toList(),
        if (overview != null) 'overview': overview!,
        if (programmaticDealsContact != null)
          'programmaticDealsContact': programmaticDealsContact!,
        if (publisherProfileId != null)
          'publisherProfileId': publisherProfileId!,
        if (rateCardInfoUrl != null) 'rateCardInfoUrl': rateCardInfoUrl!,
        if (samplePageUrl != null) 'samplePageUrl': samplePageUrl!,
        if (seller != null) 'seller': seller!.toJson(),
        if (topHeadlines != null) 'topHeadlines': topHeadlines!,
      };
}

/// A mobile application that contains a external app ID, name, and app store.
class PublisherProfileMobileApplication {
  /// The app store the app belongs to.
  /// Possible string values are:
  /// - "APP_STORE_TYPE_UNSPECIFIED" : A placeholder for an unknown app store.
  /// - "APPLE_ITUNES" : Apple iTunes
  /// - "GOOGLE_PLAY" : Google Play
  /// - "ROKU" : Roku
  /// - "AMAZON_FIRETV" : Amazon Fire TV
  /// - "PLAYSTATION" : Playstation
  /// - "XBOX" : Xbox
  /// - "SAMSUNG_TV" : Samsung TV
  /// - "AMAZON" : Amazon Appstore
  /// - "OPPO" : OPPO App Market
  /// - "SAMSUNG" : Samsung Galaxy Store
  /// - "VIVO" : VIVO App Store
  /// - "XIAOMI" : Xiaomi GetApps
  core.String? appStore;

  /// The external ID for the app from its app store.
  core.String? externalAppId;

  /// The name of the app.
  core.String? name;

  PublisherProfileMobileApplication();

  PublisherProfileMobileApplication.fromJson(core.Map _json) {
    if (_json.containsKey('appStore')) {
      appStore = _json['appStore'] as core.String;
    }
    if (_json.containsKey('externalAppId')) {
      externalAppId = _json['externalAppId'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (appStore != null) 'appStore': appStore!,
        if (externalAppId != null) 'externalAppId': externalAppId!,
        if (name != null) 'name': name!,
      };
}

/// An open-ended realtime time range specified by the start timestamp.
///
/// For filter sets that specify a realtime time range RTB metrics continue to
/// be aggregated throughout the lifetime of the filter set.
class RealtimeTimeRange {
  /// The start timestamp of the real-time RTB metrics aggregation.
  core.String? startTimestamp;

  RealtimeTimeRange();

  RealtimeTimeRange.fromJson(core.Map _json) {
    if (_json.containsKey('startTimestamp')) {
      startTimestamp = _json['startTimestamp'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (startTimestamp != null) 'startTimestamp': startTimestamp!,
      };
}

/// A relative date range, specified by an offset and a duration.
///
/// The supported range of dates begins 30 days before today and ends today,
/// i.e., the limits for these values are: offset_days >= 0 duration_days >= 1
/// offset_days + duration_days <= 30
class RelativeDateRange {
  /// The number of days in the requested date range, e.g., for a range spanning
  /// today: 1.
  ///
  /// For a range spanning the last 7 days: 7.
  core.int? durationDays;

  /// The end date of the filter set, specified as the number of days before
  /// today, e.g., for a range where the last date is today: 0.
  core.int? offsetDays;

  RelativeDateRange();

  RelativeDateRange.fromJson(core.Map _json) {
    if (_json.containsKey('durationDays')) {
      durationDays = _json['durationDays'] as core.int;
    }
    if (_json.containsKey('offsetDays')) {
      offsetDays = _json['offsetDays'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (durationDays != null) 'durationDays': durationDays!,
        if (offsetDays != null) 'offsetDays': offsetDays!,
      };
}

/// A request for removing the association between a deal and a creative.
class RemoveDealAssociationRequest {
  /// The association between a creative and a deal that should be removed.
  CreativeDealAssociation? association;

  RemoveDealAssociationRequest();

  RemoveDealAssociationRequest.fromJson(core.Map _json) {
    if (_json.containsKey('association')) {
      association = CreativeDealAssociation.fromJson(
          _json['association'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (association != null) 'association': association!.toJson(),
      };
}

/// Request message to resume (unpause) serving for an already-finalized
/// proposal.
class ResumeProposalRequest {
  ResumeProposalRequest();

  ResumeProposalRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// A response may include multiple rows, breaking down along various
/// dimensions.
///
/// Encapsulates the values of all dimensions for a given row.
class RowDimensions {
  /// The publisher identifier for this row, if a breakdown by
  /// [BreakdownDimension.PUBLISHER_IDENTIFIER](https://developers.google.com/authorized-buyers/apis/reference/rest/v2beta1/bidders.accounts.filterSets#FilterSet.BreakdownDimension)
  /// was requested.
  core.String? publisherIdentifier;

  /// The time interval that this row represents.
  TimeInterval? timeInterval;

  RowDimensions();

  RowDimensions.fromJson(core.Map _json) {
    if (_json.containsKey('publisherIdentifier')) {
      publisherIdentifier = _json['publisherIdentifier'] as core.String;
    }
    if (_json.containsKey('timeInterval')) {
      timeInterval = TimeInterval.fromJson(
          _json['timeInterval'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (publisherIdentifier != null)
          'publisherIdentifier': publisherIdentifier!,
        if (timeInterval != null) 'timeInterval': timeInterval!.toJson(),
      };
}

/// A security context.
///
/// Output only.
class SecurityContext {
  /// The security types in this context.
  core.List<core.String>? securities;

  SecurityContext();

  SecurityContext.fromJson(core.Map _json) {
    if (_json.containsKey('securities')) {
      securities = (_json['securities'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (securities != null) 'securities': securities!,
      };
}

/// Represents a seller of inventory.
///
/// Each seller is identified by a unique Ad Manager account ID.
class Seller {
  /// The unique ID for the seller.
  ///
  /// The seller fills in this field. The seller account ID is then available to
  /// buyer in the product.
  core.String? accountId;

  /// Optional sub-account ID for the seller.
  core.String? subAccountId;

  Seller();

  Seller.fromJson(core.Map _json) {
    if (_json.containsKey('accountId')) {
      accountId = _json['accountId'] as core.String;
    }
    if (_json.containsKey('subAccountId')) {
      subAccountId = _json['subAccountId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (subAccountId != null) 'subAccountId': subAccountId!,
      };
}

/// The serving context for this restriction.
class ServingContext {
  /// Matches all contexts.
  /// Possible string values are:
  /// - "SIMPLE_CONTEXT" : A simple context.
  core.String? all;

  /// Matches impressions for a particular app type.
  AppContext? appType;

  /// Matches impressions for a particular auction type.
  AuctionContext? auctionType;

  /// Matches impressions coming from users *or* publishers in a specific
  /// location.
  LocationContext? location;

  /// Matches impressions coming from a particular platform.
  PlatformContext? platform;

  /// Matches impressions for a particular security type.
  SecurityContext? securityType;

  ServingContext();

  ServingContext.fromJson(core.Map _json) {
    if (_json.containsKey('all')) {
      all = _json['all'] as core.String;
    }
    if (_json.containsKey('appType')) {
      appType = AppContext.fromJson(
          _json['appType'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('auctionType')) {
      auctionType = AuctionContext.fromJson(
          _json['auctionType'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('location')) {
      location = LocationContext.fromJson(
          _json['location'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('platform')) {
      platform = PlatformContext.fromJson(
          _json['platform'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('securityType')) {
      securityType = SecurityContext.fromJson(
          _json['securityType'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (all != null) 'all': all!,
        if (appType != null) 'appType': appType!.toJson(),
        if (auctionType != null) 'auctionType': auctionType!.toJson(),
        if (location != null) 'location': location!.toJson(),
        if (platform != null) 'platform': platform!.toJson(),
        if (securityType != null) 'securityType': securityType!.toJson(),
      };
}

/// A representation of the status of an ad in a specific context.
///
/// A context here relates to where something ultimately serves (for example, a
/// user or publisher geo, a platform, an HTTPS vs HTTP request, or the type of
/// auction).
///
/// Output only.
class ServingRestriction {
  /// The contexts for the restriction.
  core.List<ServingContext>? contexts;

  /// Disapproval bound to this restriction.
  ///
  /// Only present if status=DISAPPROVED. Can be used to filter the response of
  /// the creatives.list method.
  Disapproval? disapproval;

  /// Any disapprovals bound to this restriction.
  ///
  /// Only present if status=DISAPPROVED. Can be used to filter the response of
  /// the creatives.list method. Deprecated; please use disapproval field
  /// instead.
  core.List<Disapproval>? disapprovalReasons;

  /// The status of the creative in this context (for example, it has been
  /// explicitly disapproved or is pending review).
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : The status is not known.
  /// - "DISAPPROVAL" : The ad was disapproved in this context.
  /// - "PENDING_REVIEW" : The ad is pending review in this context.
  core.String? status;

  ServingRestriction();

  ServingRestriction.fromJson(core.Map _json) {
    if (_json.containsKey('contexts')) {
      contexts = (_json['contexts'] as core.List)
          .map<ServingContext>((value) => ServingContext.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('disapproval')) {
      disapproval = Disapproval.fromJson(
          _json['disapproval'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('disapprovalReasons')) {
      disapprovalReasons = (_json['disapprovalReasons'] as core.List)
          .map<Disapproval>((value) => Disapproval.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (contexts != null)
          'contexts': contexts!.map((value) => value.toJson()).toList(),
        if (disapproval != null) 'disapproval': disapproval!.toJson(),
        if (disapprovalReasons != null)
          'disapprovalReasons':
              disapprovalReasons!.map((value) => value.toJson()).toList(),
        if (status != null) 'status': status!,
      };
}

/// Message depicting the size of the creative.
///
/// The units of width and height depend on the type of the targeting.
class Size {
  /// The height of the creative.
  core.int? height;

  /// The width of the creative
  core.int? width;

  Size();

  Size.fromJson(core.Map _json) {
    if (_json.containsKey('height')) {
      height = _json['height'] as core.int;
    }
    if (_json.containsKey('width')) {
      width = _json['width'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (width != null) 'width': width!,
      };
}

/// A request for stopping notifications for changes to creative Status.
class StopWatchingCreativeRequest {
  StopWatchingCreativeRequest();

  StopWatchingCreativeRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Advertisers can target different attributes of an ad slot.
///
/// For example, they can choose to show ads only if the user is in the U.S.
/// Such targeting criteria can be specified as part of Shared Targeting.
class TargetingCriteria {
  /// The list of values to exclude from targeting.
  ///
  /// Each value is AND'd together.
  core.List<TargetingValue>? exclusions;

  /// The list of value to include as part of the targeting.
  ///
  /// Each value is OR'd together.
  core.List<TargetingValue>? inclusions;

  /// The key representing the shared targeting criterion.
  ///
  /// Targeting criteria defined by Google ad servers will begin with GOOG_.
  /// Third parties may define their own keys. A list of permissible keys along
  /// with the acceptable values will be provided as part of the external
  /// documentation.
  core.String? key;

  TargetingCriteria();

  TargetingCriteria.fromJson(core.Map _json) {
    if (_json.containsKey('exclusions')) {
      exclusions = (_json['exclusions'] as core.List)
          .map<TargetingValue>((value) => TargetingValue.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('inclusions')) {
      inclusions = (_json['inclusions'] as core.List)
          .map<TargetingValue>((value) => TargetingValue.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('key')) {
      key = _json['key'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (exclusions != null)
          'exclusions': exclusions!.map((value) => value.toJson()).toList(),
        if (inclusions != null)
          'inclusions': inclusions!.map((value) => value.toJson()).toList(),
        if (key != null) 'key': key!,
      };
}

/// A polymorphic targeting value used as part of Shared Targeting.
class TargetingValue {
  /// The creative size value to include/exclude.
  ///
  /// Filled in when key = GOOG_CREATIVE_SIZE
  CreativeSize? creativeSizeValue;

  /// The daypart targeting to include / exclude.
  ///
  /// Filled in when the key is GOOG_DAYPART_TARGETING. The definition of this
  /// targeting is derived from the structure used by Ad Manager.
  DayPartTargeting? dayPartTargetingValue;

  /// The long value to include/exclude.
  core.String? longValue;

  /// The string value to include/exclude.
  core.String? stringValue;

  TargetingValue();

  TargetingValue.fromJson(core.Map _json) {
    if (_json.containsKey('creativeSizeValue')) {
      creativeSizeValue = CreativeSize.fromJson(
          _json['creativeSizeValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('dayPartTargetingValue')) {
      dayPartTargetingValue = DayPartTargeting.fromJson(
          _json['dayPartTargetingValue']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('longValue')) {
      longValue = _json['longValue'] as core.String;
    }
    if (_json.containsKey('stringValue')) {
      stringValue = _json['stringValue'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativeSizeValue != null)
          'creativeSizeValue': creativeSizeValue!.toJson(),
        if (dayPartTargetingValue != null)
          'dayPartTargetingValue': dayPartTargetingValue!.toJson(),
        if (longValue != null) 'longValue': longValue!,
        if (stringValue != null) 'stringValue': stringValue!,
      };
}

/// Represents targeting about various types of technology.
class TechnologyTargeting {
  /// IDs of device capabilities to be included/excluded.
  CriteriaTargeting? deviceCapabilityTargeting;

  /// IDs of device categories to be included/excluded.
  CriteriaTargeting? deviceCategoryTargeting;

  /// Operating system related targeting information.
  OperatingSystemTargeting? operatingSystemTargeting;

  TechnologyTargeting();

  TechnologyTargeting.fromJson(core.Map _json) {
    if (_json.containsKey('deviceCapabilityTargeting')) {
      deviceCapabilityTargeting = CriteriaTargeting.fromJson(
          _json['deviceCapabilityTargeting']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('deviceCategoryTargeting')) {
      deviceCategoryTargeting = CriteriaTargeting.fromJson(
          _json['deviceCategoryTargeting']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('operatingSystemTargeting')) {
      operatingSystemTargeting = OperatingSystemTargeting.fromJson(
          _json['operatingSystemTargeting']
              as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceCapabilityTargeting != null)
          'deviceCapabilityTargeting': deviceCapabilityTargeting!.toJson(),
        if (deviceCategoryTargeting != null)
          'deviceCategoryTargeting': deviceCategoryTargeting!.toJson(),
        if (operatingSystemTargeting != null)
          'operatingSystemTargeting': operatingSystemTargeting!.toJson(),
      };
}

/// An interval of time, with an absolute start and end.
class TimeInterval {
  /// The timestamp marking the end of the range (exclusive) for which data is
  /// included.
  core.String? endTime;

  /// The timestamp marking the start of the range (inclusive) for which data is
  /// included.
  core.String? startTime;

  TimeInterval();

  TimeInterval.fromJson(core.Map _json) {
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
class TimeOfDay {
  /// Hours of day in 24 hour format.
  ///
  /// Should be from 0 to 23. An API may choose to allow the value "24:00:00"
  /// for scenarios like business closing time.
  core.int? hours;

  /// Minutes of hour of day.
  ///
  /// Must be from 0 to 59.
  core.int? minutes;

  /// Fractions of seconds in nanoseconds.
  ///
  /// Must be from 0 to 999,999,999.
  core.int? nanos;

  /// Seconds of minutes of the time.
  ///
  /// Must normally be from 0 to 59. An API may allow the value 60 if it allows
  /// leap-seconds.
  core.int? seconds;

  TimeOfDay();

  TimeOfDay.fromJson(core.Map _json) {
    if (_json.containsKey('hours')) {
      hours = _json['hours'] as core.int;
    }
    if (_json.containsKey('minutes')) {
      minutes = _json['minutes'] as core.int;
    }
    if (_json.containsKey('nanos')) {
      nanos = _json['nanos'] as core.int;
    }
    if (_json.containsKey('seconds')) {
      seconds = _json['seconds'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (hours != null) 'hours': hours!,
        if (minutes != null) 'minutes': minutes!,
        if (nanos != null) 'nanos': nanos!,
        if (seconds != null) 'seconds': seconds!,
      };
}

/// Represents a list of targeted and excluded URLs (e.g., google.com).
///
/// For Private Auction and AdX Preferred Deals, URLs are either included or
/// excluded. For Programmatic Guaranteed and Preferred Deals, this doesn't
/// apply.
class UrlTargeting {
  /// A list of URLs to be excluded.
  core.List<core.String>? excludedUrls;

  /// A list of URLs to be included.
  core.List<core.String>? targetedUrls;

  UrlTargeting();

  UrlTargeting.fromJson(core.Map _json) {
    if (_json.containsKey('excludedUrls')) {
      excludedUrls = (_json['excludedUrls'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('targetedUrls')) {
      targetedUrls = (_json['targetedUrls'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedUrls != null) 'excludedUrls': excludedUrls!,
        if (targetedUrls != null) 'targetedUrls': targetedUrls!,
      };
}

/// Video content for a creative.
class VideoContent {
  /// The URL to fetch a video ad.
  core.String? videoUrl;

  /// The contents of a VAST document for a video ad.
  ///
  /// This document should conform to the VAST 2.0 or 3.0 standard.
  core.String? videoVastXml;

  VideoContent();

  VideoContent.fromJson(core.Map _json) {
    if (_json.containsKey('videoUrl')) {
      videoUrl = _json['videoUrl'] as core.String;
    }
    if (_json.containsKey('videoVastXml')) {
      videoVastXml = _json['videoVastXml'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (videoUrl != null) 'videoUrl': videoUrl!,
        if (videoVastXml != null) 'videoVastXml': videoVastXml!,
      };
}

/// Represents targeting information about video.
class VideoTargeting {
  /// A list of video positions to be excluded.
  ///
  /// Position types can either be included or excluded (XOR).
  core.List<core.String>? excludedPositionTypes;

  /// A list of video positions to be included.
  ///
  /// When the included list is present, the excluded list must be empty. When
  /// the excluded list is present, the included list must be empty.
  core.List<core.String>? targetedPositionTypes;

  VideoTargeting();

  VideoTargeting.fromJson(core.Map _json) {
    if (_json.containsKey('excludedPositionTypes')) {
      excludedPositionTypes = (_json['excludedPositionTypes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('targetedPositionTypes')) {
      targetedPositionTypes = (_json['targetedPositionTypes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedPositionTypes != null)
          'excludedPositionTypes': excludedPositionTypes!,
        if (targetedPositionTypes != null)
          'targetedPositionTypes': targetedPositionTypes!,
      };
}

/// A request for watching changes to creative Status.
class WatchCreativeRequest {
  /// The Pub/Sub topic to publish notifications to.
  ///
  /// This topic must already exist and must give permission to
  /// ad-exchange-buyside-reports@google.com to write to the topic. This should
  /// be the full resource name in "projects/{project_id}/topics/{topic_id}"
  /// format.
  core.String? topic;

  WatchCreativeRequest();

  WatchCreativeRequest.fromJson(core.Map _json) {
    if (_json.containsKey('topic')) {
      topic = _json['topic'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (topic != null) 'topic': topic!,
      };
}
