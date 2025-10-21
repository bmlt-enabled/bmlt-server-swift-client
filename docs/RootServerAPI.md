# RootServerAPI

All URIs are relative to *http://localhost:8000/main_server*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authLogout**](RootServerAPI.md#authlogout) | **POST** /api/v1/auth/logout | Revokes a token
[**authRefresh**](RootServerAPI.md#authrefresh) | **POST** /api/v1/auth/refresh | Revokes and issues a new token
[**authToken**](RootServerAPI.md#authtoken) | **POST** /api/v1/auth/token | Creates a token
[**createErrorTest**](RootServerAPI.md#createerrortest) | **POST** /api/v1/errortest | Tests some errors
[**createFormat**](RootServerAPI.md#createformat) | **POST** /api/v1/formats | Creates a format
[**createMeeting**](RootServerAPI.md#createmeeting) | **POST** /api/v1/meetings | Creates a meeting
[**createServiceBody**](RootServerAPI.md#createservicebody) | **POST** /api/v1/servicebodies | Creates a service body
[**createUser**](RootServerAPI.md#createuser) | **POST** /api/v1/users | Creates a user
[**deleteFormat**](RootServerAPI.md#deleteformat) | **DELETE** /api/v1/formats/{formatId} | Deletes a format
[**deleteMeeting**](RootServerAPI.md#deletemeeting) | **DELETE** /api/v1/meetings/{meetingId} | Deletes a meeting
[**deleteServiceBody**](RootServerAPI.md#deleteservicebody) | **DELETE** /api/v1/servicebodies/{serviceBodyId} | Deletes a service body
[**deleteUser**](RootServerAPI.md#deleteuser) | **DELETE** /api/v1/users/{userId} | Deletes a user
[**getFormat**](RootServerAPI.md#getformat) | **GET** /api/v1/formats/{formatId} | Retrieves a format
[**getFormats**](RootServerAPI.md#getformats) | **GET** /api/v1/formats | Retrieves formats
[**getLaravelLog**](RootServerAPI.md#getlaravellog) | **GET** /api/v1/logs/laravel | Retrieves laravel log
[**getMeeting**](RootServerAPI.md#getmeeting) | **GET** /api/v1/meetings/{meetingId} | Retrieves a meeting
[**getMeetingChanges**](RootServerAPI.md#getmeetingchanges) | **GET** /api/v1/meetings/{meetingId}/changes | Retrieve changes for a meeting
[**getMeetings**](RootServerAPI.md#getmeetings) | **GET** /api/v1/meetings | Retrieves meetings
[**getRootServer**](RootServerAPI.md#getrootserver) | **GET** /api/v1/rootservers/{rootServerId} | Retrieves a root server
[**getRootServers**](RootServerAPI.md#getrootservers) | **GET** /api/v1/rootservers | Retrieves root servers
[**getServiceBodies**](RootServerAPI.md#getservicebodies) | **GET** /api/v1/servicebodies | Retrieves service bodies
[**getServiceBody**](RootServerAPI.md#getservicebody) | **GET** /api/v1/servicebodies/{serviceBodyId} | Retrieves a service body
[**getUser**](RootServerAPI.md#getuser) | **GET** /api/v1/users/{userId} | Retrieves a single user
[**getUsers**](RootServerAPI.md#getusers) | **GET** /api/v1/users | Retrieves users
[**partialUpdateUser**](RootServerAPI.md#partialupdateuser) | **PATCH** /api/v1/users/{userId} | Patches a user
[**patchFormat**](RootServerAPI.md#patchformat) | **PATCH** /api/v1/formats/{formatId} | Patches a format
[**patchMeeting**](RootServerAPI.md#patchmeeting) | **PATCH** /api/v1/meetings/{meetingId} | Patches a meeting
[**patchServiceBody**](RootServerAPI.md#patchservicebody) | **PATCH** /api/v1/servicebodies/{serviceBodyId} | Patches a service body
[**updateFormat**](RootServerAPI.md#updateformat) | **PUT** /api/v1/formats/{formatId} | Updates a format
[**updateMeeting**](RootServerAPI.md#updatemeeting) | **PUT** /api/v1/meetings/{meetingId} | Updates a meeting
[**updateServiceBody**](RootServerAPI.md#updateservicebody) | **PUT** /api/v1/servicebodies/{serviceBodyId} | Updates a Service Body
[**updateUser**](RootServerAPI.md#updateuser) | **PUT** /api/v1/users/{userId} | Update single user


# **authLogout**
```swift
    open class func authLogout(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Revokes a token

Revoke token and logout.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt


// Revokes a token
RootServerAPI.authLogout() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authRefresh**
```swift
    open class func authRefresh(completion: @escaping (_ data: Token?, _ error: Error?) -> Void)
```

Revokes and issues a new token

Refresh token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt


// Revokes and issues a new token
RootServerAPI.authRefresh() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Token**](Token.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authToken**
```swift
    open class func authToken(tokenCredentials: TokenCredentials, completion: @escaping (_ data: Token?, _ error: Error?) -> Void)
```

Creates a token

Exchange credentials for a new token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let tokenCredentials = TokenCredentials(username: "username_example", password: "password_example") // TokenCredentials | User credentials

// Creates a token
RootServerAPI.authToken(tokenCredentials: tokenCredentials) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenCredentials** | [**TokenCredentials**](TokenCredentials.md) | User credentials | 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createErrorTest**
```swift
    open class func createErrorTest(errorTest: ErrorTest, completion: @escaping (_ data: ErrorTest?, _ error: Error?) -> Void)
```

Tests some errors

Tests some errors.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let errorTest = ErrorTest(arbitraryString: "arbitraryString_example", arbitraryInt: 123, forceServerError: true) // ErrorTest | Pass in error test object.

// Tests some errors
RootServerAPI.createErrorTest(errorTest: errorTest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **errorTest** | [**ErrorTest**](ErrorTest.md) | Pass in error test object. | 

### Return type

[**ErrorTest**](ErrorTest.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFormat**
```swift
    open class func createFormat(formatCreate: FormatCreate, completion: @escaping (_ data: Format?, _ error: Error?) -> Void)
```

Creates a format

Creates a format.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let formatCreate = FormatCreate(worldId: "worldId_example", type: "type_example", translations: [FormatTranslation(key: "key_example", name: "name_example", description: "description_example", language: "language_example")]) // FormatCreate | Pass in format object

// Creates a format
RootServerAPI.createFormat(formatCreate: formatCreate) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formatCreate** | [**FormatCreate**](FormatCreate.md) | Pass in format object | 

### Return type

[**Format**](Format.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMeeting**
```swift
    open class func createMeeting(meetingCreate: MeetingCreate, completion: @escaping (_ data: Meeting?, _ error: Error?) -> Void)
```

Creates a meeting

Creates a meeting.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let meetingCreate = MeetingCreate(serviceBodyId: 123, formatIds: [123], venueType: 123, temporarilyVirtual: false, day: 123, startTime: "startTime_example", duration: "duration_example", timeZone: "timeZone_example", latitude: 123, longitude: 123, published: true, email: "email_example", worldId: "worldId_example", name: "name_example", locationText: "locationText_example", locationInfo: "locationInfo_example", locationStreet: "locationStreet_example", locationNeighborhood: "locationNeighborhood_example", locationCitySubsection: "locationCitySubsection_example", locationMunicipality: "locationMunicipality_example", locationSubProvince: "locationSubProvince_example", locationProvince: "locationProvince_example", locationPostalCode1: "locationPostalCode1_example", locationNation: "locationNation_example", phoneMeetingNumber: "phoneMeetingNumber_example", virtualMeetingLink: "virtualMeetingLink_example", virtualMeetingAdditionalInfo: "virtualMeetingAdditionalInfo_example", contactName1: "contactName1_example", contactName2: "contactName2_example", contactPhone1: "contactPhone1_example", contactPhone2: "contactPhone2_example", contactEmail1: "contactEmail1_example", contactEmail2: "contactEmail2_example", busLines: "busLines_example", trainLines: "trainLines_example", comments: "comments_example", customFields: "TODO") // MeetingCreate | Pass in meeting object

// Creates a meeting
RootServerAPI.createMeeting(meetingCreate: meetingCreate) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meetingCreate** | [**MeetingCreate**](MeetingCreate.md) | Pass in meeting object | 

### Return type

[**Meeting**](Meeting.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createServiceBody**
```swift
    open class func createServiceBody(serviceBodyCreate: ServiceBodyCreate, completion: @escaping (_ data: ServiceBody?, _ error: Error?) -> Void)
```

Creates a service body

Creates a service body.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let serviceBodyCreate = ServiceBodyCreate(parentId: 123, name: "name_example", description: "description_example", type: "type_example", adminUserId: 123, assignedUserIds: [123], url: "url_example", helpline: "helpline_example", email: "email_example", worldId: "worldId_example") // ServiceBodyCreate | Pass in service body object

// Creates a service body
RootServerAPI.createServiceBody(serviceBodyCreate: serviceBodyCreate) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceBodyCreate** | [**ServiceBodyCreate**](ServiceBodyCreate.md) | Pass in service body object | 

### Return type

[**ServiceBody**](ServiceBody.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
```swift
    open class func createUser(userCreate: UserCreate, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```

Creates a user

Creates a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let userCreate = UserCreate(username: "username_example", type: "type_example", displayName: "displayName_example", description: "description_example", email: "email_example", ownerId: 123, password: "password_example") // UserCreate | Pass in user object

// Creates a user
RootServerAPI.createUser(userCreate: userCreate) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userCreate** | [**UserCreate**](UserCreate.md) | Pass in user object | 

### Return type

[**User**](User.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFormat**
```swift
    open class func deleteFormat(formatId: Int64, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deletes a format

Deletes a format by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let formatId = 987 // Int64 | ID of format

// Deletes a format
RootServerAPI.deleteFormat(formatId: formatId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formatId** | **Int64** | ID of format | 

### Return type

Void (empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMeeting**
```swift
    open class func deleteMeeting(meetingId: Int64, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deletes a meeting

Deletes a meeting by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let meetingId = 987 // Int64 | ID of meeting

// Deletes a meeting
RootServerAPI.deleteMeeting(meetingId: meetingId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meetingId** | **Int64** | ID of meeting | 

### Return type

Void (empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteServiceBody**
```swift
    open class func deleteServiceBody(serviceBodyId: Int64, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deletes a service body

Deletes a service body by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let serviceBodyId = 987 // Int64 | ID of service body

// Deletes a service body
RootServerAPI.deleteServiceBody(serviceBodyId: serviceBodyId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceBodyId** | **Int64** | ID of service body | 

### Return type

Void (empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
```swift
    open class func deleteUser(userId: Int64, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deletes a user

Deletes a user by id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let userId = 987 // Int64 | ID of user

// Deletes a user
RootServerAPI.deleteUser(userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **Int64** | ID of user | 

### Return type

Void (empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFormat**
```swift
    open class func getFormat(formatId: Int64, completion: @escaping (_ data: Format?, _ error: Error?) -> Void)
```

Retrieves a format

Retrieve a format

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let formatId = 987 // Int64 | ID of format

// Retrieves a format
RootServerAPI.getFormat(formatId: formatId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formatId** | **Int64** | ID of format | 

### Return type

[**Format**](Format.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFormats**
```swift
    open class func getFormats(completion: @escaping (_ data: [Format]?, _ error: Error?) -> Void)
```

Retrieves formats

Retrieve formats

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt


// Retrieves formats
RootServerAPI.getFormats() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[Format]**](Format.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLaravelLog**
```swift
    open class func getLaravelLog(completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Retrieves laravel log

Retrieve the laravel log if it exists.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt


// Retrieves laravel log
RootServerAPI.getLaravelLog() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**URL**

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/gzip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMeeting**
```swift
    open class func getMeeting(meetingId: Int64, completion: @escaping (_ data: Meeting?, _ error: Error?) -> Void)
```

Retrieves a meeting

Retrieve a meeting.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let meetingId = 987 // Int64 | ID of meeting

// Retrieves a meeting
RootServerAPI.getMeeting(meetingId: meetingId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meetingId** | **Int64** | ID of meeting | 

### Return type

[**Meeting**](Meeting.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMeetingChanges**
```swift
    open class func getMeetingChanges(meetingId: Int64, completion: @escaping (_ data: [MeetingChangeResource]?, _ error: Error?) -> Void)
```

Retrieve changes for a meeting

Retrieve all changes made to a specific meeting.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let meetingId = 987 // Int64 | ID of the meeting

// Retrieve changes for a meeting
RootServerAPI.getMeetingChanges(meetingId: meetingId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meetingId** | **Int64** | ID of the meeting | 

### Return type

[**[MeetingChangeResource]**](MeetingChangeResource.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMeetings**
```swift
    open class func getMeetings(meetingIds: String? = nil, days: String? = nil, serviceBodyIds: String? = nil, searchString: String? = nil, completion: @escaping (_ data: [Meeting]?, _ error: Error?) -> Void)
```

Retrieves meetings

Retrieve meetings for authenticated user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let meetingIds = "meetingIds_example" // String | comma delimited meeting ids (optional)
let days = "days_example" // String | comma delimited day ids between 0-6 (optional)
let serviceBodyIds = "serviceBodyIds_example" // String | comma delimited service body ids (optional)
let searchString = "searchString_example" // String | string (optional)

// Retrieves meetings
RootServerAPI.getMeetings(meetingIds: meetingIds, days: days, serviceBodyIds: serviceBodyIds, searchString: searchString) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meetingIds** | **String** | comma delimited meeting ids | [optional] 
 **days** | **String** | comma delimited day ids between 0-6 | [optional] 
 **serviceBodyIds** | **String** | comma delimited service body ids | [optional] 
 **searchString** | **String** | string | [optional] 

### Return type

[**[Meeting]**](Meeting.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRootServer**
```swift
    open class func getRootServer(rootServerId: Int64, completion: @escaping (_ data: RootServer?, _ error: Error?) -> Void)
```

Retrieves a root server

Retrieve a single root server id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let rootServerId = 987 // Int64 | ID of root server

// Retrieves a root server
RootServerAPI.getRootServer(rootServerId: rootServerId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rootServerId** | **Int64** | ID of root server | 

### Return type

[**RootServer**](RootServer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRootServers**
```swift
    open class func getRootServers(completion: @escaping (_ data: [RootServer]?, _ error: Error?) -> Void)
```

Retrieves root servers

Retrieve root servers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt


// Retrieves root servers
RootServerAPI.getRootServers() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[RootServer]**](RootServer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServiceBodies**
```swift
    open class func getServiceBodies(completion: @escaping (_ data: [ServiceBody]?, _ error: Error?) -> Void)
```

Retrieves service bodies

Retrieve service bodies for authenticated user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt


// Retrieves service bodies
RootServerAPI.getServiceBodies() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[ServiceBody]**](ServiceBody.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServiceBody**
```swift
    open class func getServiceBody(serviceBodyId: Int64, completion: @escaping (_ data: ServiceBody?, _ error: Error?) -> Void)
```

Retrieves a service body

Retrieve a single service body by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let serviceBodyId = 987 // Int64 | ID of service body

// Retrieves a service body
RootServerAPI.getServiceBody(serviceBodyId: serviceBodyId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceBodyId** | **Int64** | ID of service body | 

### Return type

[**ServiceBody**](ServiceBody.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
```swift
    open class func getUser(userId: Int64, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```

Retrieves a single user

Retrieve single user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let userId = 987 // Int64 | ID of user

// Retrieves a single user
RootServerAPI.getUser(userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **Int64** | ID of user | 

### Return type

[**User**](User.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
```swift
    open class func getUsers(completion: @escaping (_ data: [User]?, _ error: Error?) -> Void)
```

Retrieves users

Retrieve users for authenticated user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt


// Retrieves users
RootServerAPI.getUsers() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[User]**](User.md)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdateUser**
```swift
    open class func partialUpdateUser(userId: Int64, userPartialUpdate: UserPartialUpdate, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Patches a user

Patches a user by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let userId = 987 // Int64 | ID of user
let userPartialUpdate = UserPartialUpdate(username: "username_example", type: "type_example", displayName: "displayName_example", description: "description_example", email: "email_example", ownerId: 123, password: "password_example") // UserPartialUpdate | Pass in fields you want to update.

// Patches a user
RootServerAPI.partialUpdateUser(userId: userId, userPartialUpdate: userPartialUpdate) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **Int64** | ID of user | 
 **userPartialUpdate** | [**UserPartialUpdate**](UserPartialUpdate.md) | Pass in fields you want to update. | 

### Return type

Void (empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchFormat**
```swift
    open class func patchFormat(formatId: Int64, formatPartialUpdate: FormatPartialUpdate, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Patches a format

Patches a single format by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let formatId = 987 // Int64 | ID of format
let formatPartialUpdate = FormatPartialUpdate(worldId: "worldId_example", type: "type_example", translations: [FormatTranslation(key: "key_example", name: "name_example", description: "description_example", language: "language_example")]) // FormatPartialUpdate | Pass in fields you want to update.

// Patches a format
RootServerAPI.patchFormat(formatId: formatId, formatPartialUpdate: formatPartialUpdate) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formatId** | **Int64** | ID of format | 
 **formatPartialUpdate** | [**FormatPartialUpdate**](FormatPartialUpdate.md) | Pass in fields you want to update. | 

### Return type

Void (empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchMeeting**
```swift
    open class func patchMeeting(meetingId: Int64, meetingPartialUpdate: MeetingPartialUpdate, skipVenueTypeLocationValidation: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Patches a meeting

Patches a meeting by id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let meetingId = 987 // Int64 | ID of meeting
let meetingPartialUpdate = MeetingPartialUpdate(serviceBodyId: 123, formatIds: [123], venueType: 123, temporarilyVirtual: false, day: 123, startTime: "startTime_example", duration: "duration_example", timeZone: "timeZone_example", latitude: 123, longitude: 123, published: true, email: "email_example", worldId: "worldId_example", name: "name_example", locationText: "locationText_example", locationInfo: "locationInfo_example", locationStreet: "locationStreet_example", locationNeighborhood: "locationNeighborhood_example", locationCitySubsection: "locationCitySubsection_example", locationMunicipality: "locationMunicipality_example", locationSubProvince: "locationSubProvince_example", locationProvince: "locationProvince_example", locationPostalCode1: "locationPostalCode1_example", locationNation: "locationNation_example", phoneMeetingNumber: "phoneMeetingNumber_example", virtualMeetingLink: "virtualMeetingLink_example", virtualMeetingAdditionalInfo: "virtualMeetingAdditionalInfo_example", contactName1: "contactName1_example", contactName2: "contactName2_example", contactPhone1: "contactPhone1_example", contactPhone2: "contactPhone2_example", contactEmail1: "contactEmail1_example", contactEmail2: "contactEmail2_example", busLines: "busLines_example", trainLines: "trainLines_example", comments: "comments_example", customFields: "TODO") // MeetingPartialUpdate | Pass in fields you want to update.
let skipVenueTypeLocationValidation = true // Bool | specify true to skip venue type location validation (optional)

// Patches a meeting
RootServerAPI.patchMeeting(meetingId: meetingId, meetingPartialUpdate: meetingPartialUpdate, skipVenueTypeLocationValidation: skipVenueTypeLocationValidation) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meetingId** | **Int64** | ID of meeting | 
 **meetingPartialUpdate** | [**MeetingPartialUpdate**](MeetingPartialUpdate.md) | Pass in fields you want to update. | 
 **skipVenueTypeLocationValidation** | **Bool** | specify true to skip venue type location validation | [optional] 

### Return type

Void (empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchServiceBody**
```swift
    open class func patchServiceBody(serviceBodyId: Int64, serviceBodyPartialUpdate: ServiceBodyPartialUpdate, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Patches a service body

Patches a single service body by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let serviceBodyId = 987 // Int64 | ID of service body
let serviceBodyPartialUpdate = ServiceBodyPartialUpdate(parentId: 123, name: "name_example", description: "description_example", type: "type_example", adminUserId: 123, assignedUserIds: [123], url: "url_example", helpline: "helpline_example", email: "email_example", worldId: "worldId_example") // ServiceBodyPartialUpdate | Pass in fields you want to update.

// Patches a service body
RootServerAPI.patchServiceBody(serviceBodyId: serviceBodyId, serviceBodyPartialUpdate: serviceBodyPartialUpdate) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceBodyId** | **Int64** | ID of service body | 
 **serviceBodyPartialUpdate** | [**ServiceBodyPartialUpdate**](ServiceBodyPartialUpdate.md) | Pass in fields you want to update. | 

### Return type

Void (empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFormat**
```swift
    open class func updateFormat(formatId: Int64, formatUpdate: FormatUpdate, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Updates a format

Updates a format.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let formatId = 987 // Int64 | ID of format
let formatUpdate = FormatUpdate(worldId: "worldId_example", type: "type_example", translations: [FormatTranslation(key: "key_example", name: "name_example", description: "description_example", language: "language_example")]) // FormatUpdate | Pass in format object

// Updates a format
RootServerAPI.updateFormat(formatId: formatId, formatUpdate: formatUpdate) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formatId** | **Int64** | ID of format | 
 **formatUpdate** | [**FormatUpdate**](FormatUpdate.md) | Pass in format object | 

### Return type

Void (empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMeeting**
```swift
    open class func updateMeeting(meetingId: Int64, meetingUpdate: MeetingUpdate, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Updates a meeting

Updates a meeting.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let meetingId = 987 // Int64 | ID of meeting
let meetingUpdate = MeetingUpdate(serviceBodyId: 123, formatIds: [123], venueType: 123, temporarilyVirtual: false, day: 123, startTime: "startTime_example", duration: "duration_example", timeZone: "timeZone_example", latitude: 123, longitude: 123, published: true, email: "email_example", worldId: "worldId_example", name: "name_example", locationText: "locationText_example", locationInfo: "locationInfo_example", locationStreet: "locationStreet_example", locationNeighborhood: "locationNeighborhood_example", locationCitySubsection: "locationCitySubsection_example", locationMunicipality: "locationMunicipality_example", locationSubProvince: "locationSubProvince_example", locationProvince: "locationProvince_example", locationPostalCode1: "locationPostalCode1_example", locationNation: "locationNation_example", phoneMeetingNumber: "phoneMeetingNumber_example", virtualMeetingLink: "virtualMeetingLink_example", virtualMeetingAdditionalInfo: "virtualMeetingAdditionalInfo_example", contactName1: "contactName1_example", contactName2: "contactName2_example", contactPhone1: "contactPhone1_example", contactPhone2: "contactPhone2_example", contactEmail1: "contactEmail1_example", contactEmail2: "contactEmail2_example", busLines: "busLines_example", trainLines: "trainLines_example", comments: "comments_example", customFields: "TODO") // MeetingUpdate | Pass in meeting object

// Updates a meeting
RootServerAPI.updateMeeting(meetingId: meetingId, meetingUpdate: meetingUpdate) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meetingId** | **Int64** | ID of meeting | 
 **meetingUpdate** | [**MeetingUpdate**](MeetingUpdate.md) | Pass in meeting object | 

### Return type

Void (empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateServiceBody**
```swift
    open class func updateServiceBody(serviceBodyId: Int64, serviceBodyUpdate: ServiceBodyUpdate, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Updates a Service Body

Updates a single service body.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let serviceBodyId = 987 // Int64 | ID of service body
let serviceBodyUpdate = ServiceBodyUpdate(parentId: 123, name: "name_example", description: "description_example", type: "type_example", adminUserId: 123, assignedUserIds: [123], url: "url_example", helpline: "helpline_example", email: "email_example", worldId: "worldId_example") // ServiceBodyUpdate | Pass in service body object

// Updates a Service Body
RootServerAPI.updateServiceBody(serviceBodyId: serviceBodyId, serviceBodyUpdate: serviceBodyUpdate) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceBodyId** | **Int64** | ID of service body | 
 **serviceBodyUpdate** | [**ServiceBodyUpdate**](ServiceBodyUpdate.md) | Pass in service body object | 

### Return type

Void (empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
```swift
    open class func updateUser(userId: Int64, userUpdate: UserUpdate, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update single user

Updates a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import bmlt

let userId = 987 // Int64 | ID of user
let userUpdate = UserUpdate(username: "username_example", type: "type_example", displayName: "displayName_example", description: "description_example", email: "email_example", ownerId: 123, password: "password_example") // UserUpdate | Pass in user object

// Update single user
RootServerAPI.updateUser(userId: userId, userUpdate: userUpdate) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **Int64** | ID of user | 
 **userUpdate** | [**UserUpdate**](UserUpdate.md) | Pass in user object | 

### Return type

Void (empty response body)

### Authorization

[bmltToken](../README.md#bmltToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

