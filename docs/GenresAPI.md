# GenresAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGenre**](GenresAPI.md#getgenre) | **GET** /Genres/{genreName} | Gets a genre, by name.
[**getGenres**](GenresAPI.md#getgenres) | **GET** /Genres | Gets all genres from a given item, folder, or the entire library.


# **getGenre**
```swift
    open class func getGenre(genreName: String, userId: String? = nil, completion: @escaping (_ data: BaseItemDto?, _ error: Error?) -> Void)
```

Gets a genre, by name.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinAPI

let genreName = "genreName_example" // String | The genre name.
let userId = "userId_example" // String | The user id. (optional)

// Gets a genre, by name.
GenresAPI.getGenre(genreName: genreName, userId: userId) { (response, error) in
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
 **genreName** | **String** | The genre name. | 
 **userId** | **String** | The user id. | [optional] 

### Return type

[**BaseItemDto**](BaseItemDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGenres**
```swift
    open class func getGenres(startIndex: Int? = nil, limit: Int? = nil, searchTerm: String? = nil, parentId: String? = nil, fields: [ItemFields]? = nil, excludeItemTypes: [BaseItemKind]? = nil, includeItemTypes: [BaseItemKind]? = nil, isFavorite: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, userId: String? = nil, nameStartsWithOrGreater: String? = nil, nameStartsWith: String? = nil, nameLessThan: String? = nil, sortBy: [String]? = nil, sortOrder: [SortOrder]? = nil, enableImages: Bool? = nil, enableTotalRecordCount: Bool? = nil, completion: @escaping (_ data: BaseItemDtoQueryResult?, _ error: Error?) -> Void)
```

Gets all genres from a given item, folder, or the entire library.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinAPI

let startIndex = 987 // Int | Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
let limit = 987 // Int | Optional. The maximum number of records to return. (optional)
let searchTerm = "searchTerm_example" // String | The search term. (optional)
let parentId = "parentId_example" // String | Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
let fields = [ItemFields()] // [ItemFields] | Optional. Specify additional fields of information to return in the output. (optional)
let excludeItemTypes = [BaseItemKind()] // [BaseItemKind] | Optional. If specified, results will be filtered out based on item type. This allows multiple, comma delimited. (optional)
let includeItemTypes = [BaseItemKind()] // [BaseItemKind] | Optional. If specified, results will be filtered in based on item type. This allows multiple, comma delimited. (optional)
let isFavorite = true // Bool | Optional filter by items that are marked as favorite, or not. (optional)
let imageTypeLimit = 987 // Int | Optional, the max number of images to return, per image type. (optional)
let enableImageTypes = [ImageType()] // [ImageType] | Optional. The image types to include in the output. (optional)
let userId = "userId_example" // String | User id. (optional)
let nameStartsWithOrGreater = "nameStartsWithOrGreater_example" // String | Optional filter by items whose name is sorted equally or greater than a given input string. (optional)
let nameStartsWith = "nameStartsWith_example" // String | Optional filter by items whose name is sorted equally than a given input string. (optional)
let nameLessThan = "nameLessThan_example" // String | Optional filter by items whose name is equally or lesser than a given input string. (optional)
let sortBy = ["inner_example"] // [String] | Optional. Specify one or more sort orders, comma delimited. (optional)
let sortOrder = [SortOrder()] // [SortOrder] | Sort Order - Ascending,Descending. (optional)
let enableImages = true // Bool | Optional, include image information in output. (optional) (default to true)
let enableTotalRecordCount = true // Bool | Optional. Include total record count. (optional) (default to true)

// Gets all genres from a given item, folder, or the entire library.
GenresAPI.getGenres(startIndex: startIndex, limit: limit, searchTerm: searchTerm, parentId: parentId, fields: fields, excludeItemTypes: excludeItemTypes, includeItemTypes: includeItemTypes, isFavorite: isFavorite, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes, userId: userId, nameStartsWithOrGreater: nameStartsWithOrGreater, nameStartsWith: nameStartsWith, nameLessThan: nameLessThan, sortBy: sortBy, sortOrder: sortOrder, enableImages: enableImages, enableTotalRecordCount: enableTotalRecordCount) { (response, error) in
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
 **startIndex** | **Int** | Optional. The record index to start at. All items with a lower index will be dropped from the results. | [optional] 
 **limit** | **Int** | Optional. The maximum number of records to return. | [optional] 
 **searchTerm** | **String** | The search term. | [optional] 
 **parentId** | **String** | Specify this to localize the search to a specific item or folder. Omit to use the root. | [optional] 
 **fields** | [**[ItemFields]**](ItemFields.md) | Optional. Specify additional fields of information to return in the output. | [optional] 
 **excludeItemTypes** | [**[BaseItemKind]**](BaseItemKind.md) | Optional. If specified, results will be filtered out based on item type. This allows multiple, comma delimited. | [optional] 
 **includeItemTypes** | [**[BaseItemKind]**](BaseItemKind.md) | Optional. If specified, results will be filtered in based on item type. This allows multiple, comma delimited. | [optional] 
 **isFavorite** | **Bool** | Optional filter by items that are marked as favorite, or not. | [optional] 
 **imageTypeLimit** | **Int** | Optional, the max number of images to return, per image type. | [optional] 
 **enableImageTypes** | [**[ImageType]**](ImageType.md) | Optional. The image types to include in the output. | [optional] 
 **userId** | **String** | User id. | [optional] 
 **nameStartsWithOrGreater** | **String** | Optional filter by items whose name is sorted equally or greater than a given input string. | [optional] 
 **nameStartsWith** | **String** | Optional filter by items whose name is sorted equally than a given input string. | [optional] 
 **nameLessThan** | **String** | Optional filter by items whose name is equally or lesser than a given input string. | [optional] 
 **sortBy** | [**[String]**](String.md) | Optional. Specify one or more sort orders, comma delimited. | [optional] 
 **sortOrder** | [**[SortOrder]**](SortOrder.md) | Sort Order - Ascending,Descending. | [optional] 
 **enableImages** | **Bool** | Optional, include image information in output. | [optional] [default to true]
 **enableTotalRecordCount** | **Bool** | Optional. Include total record count. | [optional] [default to true]

### Return type

[**BaseItemDtoQueryResult**](BaseItemDtoQueryResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

