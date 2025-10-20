# AfterShip Tracking API library for Ruby

This library allows you to quickly and easily use the AfterShip Tracking API via Ruby.

For updates to this library, see our [GitHub release page](https://github.com/AfterShip/tracking-sdk-ruby/releases).

If you need support using AfterShip products, please contact support@aftership.com.

## Table of Contents

- [AfterShip Tracking API library for Ruby](#aftership-tracking-api-library-for-ruby)
  - [Table of Contents](#table-of-contents)
  - [Before you begin](#before-you-begin)
    - [API and SDK Version](#api-and-sdk-version)
  - [Quick Start](#quick-start)
    - [Installation](#installation)
  - [Constructor](#constructor)
    - [Example](#example)
  - [Rate Limiter](#rate-limiter)
  - [Error Handling](#error-handling)
    - [Error List](#error-list)
  - [Endpoints](#endpoints)
    - [/estimated-delivery-date](#estimated-delivery-date)
    - [/trackings](#trackings)
    - [/couriers](#couriers)
    - [/courier-connections](#courier-connections)
  - [Help](#help)
  - [License](#license)


## Before you begin

Before you begin to integrate:

- [Create an AfterShip account](https://admin.aftership.com/).
- [Create an API key](https://organization.automizely.com/api-keys).
- [Install Ruby](https://www.ruby-lang.org/en/) version Ruby 2.7 or later.

### API and SDK Version

- SDK Version: 
- API Version: 2025-07
## Quick Start

### Installation
```bash
gem install aftership-tracking-sdk
```

Or add a line to your Gemfile

```bash
gem 'aftership-tracking-sdk', '~> 13.0.0'
```

## Constructor

Create AfterShip instance with options

| Name       | Type   | Required | Description                                                                                                                       |
| ---------- | ------ | -------- | --------------------------------------------------------------------------------------------------------------------------------- |
| api_key    | string | ✔        | Your AfterShip API key                                                                                                            |
| auth_type  | enum   |          | Default value: `AuthType.API_KEY` <br > AES authentication: `AuthType.AES` <br > RSA authentication: `AuthType.RSA`               |
| api_secret | string |          | Required if the authentication type is `AuthType.AES` or `AuthType.RSA`                                                           |
| domain     | string |          | AfterShip API domain. Default value: https://api.aftership.com                                                                    |
| user_agent | string |          | User-defined user-agent string, please follow [RFC9110](https://www.rfc-editor.org/rfc/rfc9110#field.user-agent) format standard. |
| proxy      | string |          | HTTP proxy URL to use for requests. <br > Default value: `null` <br > Example: `http://192.168.0.100:8888`                        |
| max_retry  | number |          | Number of retries for each request. Default value: 2. Min is 0, Max is 10.                                                        |
| timeout    | number |          | Timeout for each request in milliseconds.                                                                                         |

### Example

```ruby
require 'aftership-tracking-sdk'

AftershipAPI.configure do |config|
    config.as_api_key = "YOUR_API_KEY"
end

begin
    response = AftershipAPI::Tracking.get_tracking_by_id(id:"valid_value", )
    p response
rescue AftershipAPI::ApiError => e
    p e.message
end
```

## Rate Limiter

See the [Rate Limit](https://www.aftership.com/docs/tracking/quickstart/rate-limit) to understand the AfterShip rate limit policy.

## Error Handling

The SDK will return an error object when there is any error during the request, with the following specification:

| Name            | Type   | Description                    |
| --------------- | ------ | ------------------------------ |
| message         | string | Detail message of the error    |
| code            | enum   | Error code enum for API Error. |
| meta_code       | number | API response meta code.        |
| status_code     | number | HTTP status code.              |
| response_body   | string | API response body.             |
| response_header | object | API response header.           |


### Error List

| code                              | meta_code       | status_code     | message                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| --------------------------------- | --------------- | --------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| INVALID_REQUEST | 400 | 400 | The request was invalid or cannot be otherwise served. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| INVALID_JSON | 4001 | 400 | Invalid JSON data. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| TRACKING_ALREADY_EXIST | 4003 | 400 | Tracking already exists. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| TRACKING_DOES_NOT_EXIST | 4004 | 404 | Tracking does not exist. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| TRACKING_NUMBER_INVALID | 4005 | 400 | The value of tracking_number is invalid. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| TRACKING_REQUIRED | 4006 | 400 | tracking object is required. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| TRACKING_NUMBER_REQUIRED | 4007 | 400 | tracking_number is required. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| VALUE_INVALID | 4008 | 400 | The value of [field_name] is invalid. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| VALUE_REQUIRED | 4009 | 400 | [field_name] is required. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| SLUG_INVALID | 4010 | 400 | The value of slug is invalid. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| MISSING_OR_INVALID_REQUIRED_FIELD | 4011 | 400 | Missing or invalid value of the required fields for this courier. Besides tracking_number, also required: [field_name] |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| BAD_COURIER | 4012 | 400 | The error message will be one of the following:1. Unable to import shipment as the carrier is not on your approved list for carrier auto-detection. Add the carrier here: https://admin.aftership.com/settings/couriers2. Unable to import shipment as we don&#39;t recognize the carrier from this tracking number.3. Unable to import shipment as the tracking number has an invalid format.4. Unable to import shipment as this carrier is no longer supported.5. Unable to import shipment as the tracking number does not belong to a carrier in that group. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| INACTIVE_RETRACK_NOT_ALLOWED | 4013 | 400 | Retrack is not allowed. You can only retrack an inactive tracking. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| NOTIFICATION_REQUIRED | 4014 | 400 | notification object is required. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ID_INVALID | 4015 | 400 | The value of id is invalid. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| RETRACK_ONCE_ALLOWED | 4016 | 400 | Retrack is not allowed. You can only retrack each shipment once. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| TRACKING_NUMBER_FORMAT_INVALID | 4017 | 400 | The format of tracking_number is invalid. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| API_KEY_INVALID | 401 | 401 | The API Key is invalid. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| REQUEST_NOT_ALLOWED | 403 | 403 | The request is understood, but it has been refused or access is not allowed. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| NOT_FOUND | 404 | 404 | The URI requested is invalid or the resource requested does not exist. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| TOO_MANY_REQUEST | 429 | 429 | You have exceeded the API call rate limit. The default limit is 10 requests per second. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| INTERNAL_ERROR | 500 | 500 | Something went wrong on AfterShip&#39;s end. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| INTERNAL_ERROR | 502 | 502 | Something went wrong on AfterShip&#39;s end. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| INTERNAL_ERROR | 503 | 503 | Something went wrong on AfterShip&#39;s end. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| INTERNAL_ERROR | 504 | 504 | Something went wrong on AfterShip&#39;s end. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |

## Endpoints

The AfterShip SDK has the following resource which are exactly the same as the API endpoints:

- estimatedDeliveryDateResource
  - Prediction for the Estimated Delivery Date
  - Batch prediction for the Estimated Delivery Date
- trackingResource
  - Get trackings
  - Create a tracking
  - Get a tracking by ID
  - Update a tracking by ID
  - Delete a tracking by ID
  - Retrack an expired tracking by ID
  - Mark tracking as completed by ID
- courierResource
  - Get couriers
  - Detect courier
- courierConnectionResource
  - Get courier connections
  - Create courier connections
  - Get courier connection by id
  - Update courier connection by id
  - Delete courier connection by id

### /estimated-delivery-date
**POST** /estimated-delivery-date/predict

```ruby
    request = AftershipAPI::Model::EstimatedDeliveryDateRequest.new
    request.slug = "valid_value"
    origin_address = AftershipAPI::Model::EstimatedDeliveryDateRequestOriginAddress.new
    request.origin_address = origin_address
    destination_address = AftershipAPI::Model::EstimatedDeliveryDateRequestDestinationAddress.new
    request.destination_address = destination_address
    response = AftershipAPI::EstimatedDeliveryDate.predict(body: request)
    p response
```

**POST** /estimated-delivery-date/predict-batch

```ruby
    request = AftershipAPI::Model::PredictBatchRequest.new
    response = AftershipAPI::EstimatedDeliveryDate.predict_batch(body: request)
    p response
```

### /trackings
**GET** /trackings

```ruby
    response = AftershipAPI::Tracking.get_trackings()
    p response
```

**POST** /trackings

```ruby
    request = AftershipAPI::Model::CreateTrackingRequest.new
    request.tracking_number = "valid_value"
    response = AftershipAPI::Tracking.create_tracking(body: request)
    p response
```

**GET** /trackings/{id}

```ruby
    response = AftershipAPI::Tracking.get_tracking_by_id(id:"valid_value", )
    p response
```

**PUT** /trackings/{id}

```ruby
    request = AftershipAPI::Model::UpdateTrackingByIdRequest.new
    response = AftershipAPI::Tracking.update_tracking_by_id(id:"valid_value", body: request)
    p response
```

**DELETE** /trackings/{id}

```ruby
    response = AftershipAPI::Tracking.delete_tracking_by_id(id:"valid_value", )
    p response
```

**POST** /trackings/{id}/retrack

```ruby
    response = AftershipAPI::Tracking.retrack_tracking_by_id(id:"valid_value", )
    p response
```

**POST** /trackings/{id}/mark-as-completed

```ruby
    request = AftershipAPI::Model::MarkTrackingCompletedByIdRequest.new
    response = AftershipAPI::Tracking.mark_tracking_completed_by_id(id:"valid_value", body: request)
    p response
```

### /couriers
**GET** /couriers

```ruby
    response = AftershipAPI::Courier.get_couriers()
    p response
```

**POST** /couriers/detect

```ruby
    request = AftershipAPI::Model::DetectCourierRequest.new
    request.tracking_number = "valid_value"
    response = AftershipAPI::Courier.detect_courier(body: request)
    p response
```

### /courier-connections
**GET** /courier-connections

```ruby
    response = AftershipAPI::CourierConnection.get_courier_connections()
    p response
```

**POST** /courier-connections

```ruby
    request = AftershipAPI::Model::PostCourierConnectionsRequest.new
    request.courier_slug = "valid_value"
    request.credentials = 
    response = AftershipAPI::CourierConnection.post_courier_connections(body: request)
    p response
```

**GET** /courier-connections/{id}

```ruby
    response = AftershipAPI::CourierConnection.get_courier_connections_by_id(id:"valid_value", )
    p response
```

**PATCH** /courier-connections/{id}

```ruby
    request = AftershipAPI::Model::PutCourierConnectionsByIdRequest.new
    request.credentials = 
    response = AftershipAPI::CourierConnection.put_courier_connections_by_id(id:"valid_value", body: request)
    p response
```

**DELETE** /courier-connections/{id}

```ruby
    response = AftershipAPI::CourierConnection.delete_courier_connections_by_id(id:"valid_value", )
    p response
```


## Help

If you get stuck, we're here to help:

- [Issue Tracker](https://github.com/AfterShip/tracking-sdk-ruby/issues) for questions, feature requests, bug reports and general discussion related to this package. Try searching before you create a new issue.
- Contact AfterShip official support via support@aftership.com

## License
Copyright (c) 2025 AfterShip

Licensed under the MIT license.