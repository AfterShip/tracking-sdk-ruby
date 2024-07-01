# This code was auto generated by AfterShip SDK Generator.
# Do not edit the class manually.
require 'cgi'

module AftershipAPI
  class NotificationApi 
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # add_notification_by_slug_tracking_number
    # Add notification receivers to a tracking number.
    # @param slug [String] Tracking slug
    # @param tracking_number [String] Tracking number

    # @param body [Model::NotificationRequestV1] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tracking_account_number Additional field required by some carriers to retrieve the tracking info. The shipper’s carrier account number. Refer to our article on  for more details.
    # @option opts [String] :tracking_origin_country Additional field required by some carriers to retrieve the tracking info. The origin country/region of the shipment. Refer to our article on  for more details.
    # @option opts [String] :tracking_destination_country Additional field required by some carriers to retrieve the tracking info. The destination country/region of the shipment. Refer to our article on  for more details.
    # @option opts [String] :tracking_key Additional field required by some carriers to retrieve the tracking info. A type of tracking credential required by some carriers. Refer to our article on  for more details.
    # @option opts [String] :tracking_postal_code Additional field required by some carriers to retrieve the tracking info. The postal code of the recipient’s address. Refer to our article on  for more details.
    # @option opts [String] :tracking_ship_date Additional field required by some carriers to retrieve the tracking info. The date the shipment was sent, using the format YYYYMMDD. Refer to our article on  for more details.
    # @option opts [String] :tracking_state Additional field required by some carriers to retrieve the tracking info. The state/province of the recipient’s address. Refer to our article on  for more details.
    # @return [Model::Notification] 
    def add_notification_by_slug_tracking_number(slug:, tracking_number:, body:, opts: {})
      if "notification" != ""
        body = { :'notification' => body }
      end
      opts[:body] = body
      data, _status_code, _headers = add_notification_by_slug_tracking_number_with_http_info(slug: slug, tracking_number: tracking_number, opts: opts)
      data
    end

    def add_notification_by_slug_tracking_number_with_http_info(slug:, tracking_number:, opts: {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationApi.add_notification_by_slug_tracking_number ...'
      end

      if slug.nil? || (slug.to_s == '')
        raise InvalidParamError.new "slug cannot be nil or empty"
      end
      if tracking_number.nil? || (tracking_number.to_s == '')
        raise InvalidParamError.new "tracking_number cannot be nil or empty"
      end


      # resource path
      local_var_path = "/tracking/2024-04/notifications/#{slug}/#{tracking_number}/add" 
      method = :'POST'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'tracking_account_number'] = opts[:'tracking_account_number'] if !opts[:'tracking_account_number'].nil?
      query_params[:'tracking_origin_country'] = opts[:'tracking_origin_country'] if !opts[:'tracking_origin_country'].nil?
      query_params[:'tracking_destination_country'] = opts[:'tracking_destination_country'] if !opts[:'tracking_destination_country'].nil?
      query_params[:'tracking_key'] = opts[:'tracking_key'] if !opts[:'tracking_key'].nil?
      query_params[:'tracking_postal_code'] = opts[:'tracking_postal_code'] if !opts[:'tracking_postal_code'].nil?
      query_params[:'tracking_ship_date'] = opts[:'tracking_ship_date'] if !opts[:'tracking_ship_date'].nil?
      query_params[:'tracking_state'] = opts[:'tracking_state'] if !opts[:'tracking_state'].nil?
      # header parameters
      header_params = opts[:header_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = 'Notification'
      
      new_options = opts.merge(
        :operation => :"NotificationApi.add_notification_by_slug_tracking_number",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type,
        :response_legacy_tag => "notification",
        :is_paging => false
      )

      data, status_code, headers = @api_client.call_api(method, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationApi#add_notification_by_slug_tracking_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end 

    # add_notification_by_tracking_id
    # Add notification receivers to a tracking number.
    # @param tracking_id [String] tracking id

    # @param body [Model::NotificationRequestV1] 
    # @param [Hash] opts the optional parameters
    # @return [Model::Notification] 
    def add_notification_by_tracking_id(tracking_id:, body:, opts: {})
      if "notification" != ""
        body = { :'notification' => body }
      end
      opts[:body] = body
      data, _status_code, _headers = add_notification_by_tracking_id_with_http_info(tracking_id: tracking_id, opts: opts)
      data
    end

    def add_notification_by_tracking_id_with_http_info(tracking_id:, opts: {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationApi.add_notification_by_tracking_id ...'
      end

      if tracking_id.nil? || (tracking_id.to_s == '')
        raise InvalidParamError.new "tracking_id cannot be nil or empty"
      end


      # resource path
      local_var_path = "/tracking/2024-04/notifications/#{tracking_id}/add" 
      method = :'POST'

      # query parameters
      query_params = opts[:query_params] || {}
      # header parameters
      header_params = opts[:header_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = 'Notification'
      
      new_options = opts.merge(
        :operation => :"NotificationApi.add_notification_by_tracking_id",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type,
        :response_legacy_tag => "notification",
        :is_paging => false
      )

      data, status_code, headers = @api_client.call_api(method, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationApi#add_notification_by_tracking_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end 

    # delete_notification_by_slug_tracking_number
    # Remove notification receivers from a tracking number.
    # @param slug [String] Tracking slug
    # @param tracking_number [String] Tracking number

    # @param body [Model::NotificationRequestV1] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tracking_account_number Additional field required by some carriers to retrieve the tracking info. The shipper’s carrier account number. Refer to our article on  for more details.
    # @option opts [String] :tracking_origin_country Additional field required by some carriers to retrieve the tracking info. The origin country/region of the shipment. Refer to our article on  for more details.
    # @option opts [String] :tracking_destination_country Additional field required by some carriers to retrieve the tracking info. The destination country/region of the shipment. Refer to our article on  for more details.
    # @option opts [String] :tracking_key Additional field required by some carriers to retrieve the tracking info. A type of tracking credential required by some carriers. Refer to our article on  for more details.
    # @option opts [String] :tracking_postal_code Additional field required by some carriers to retrieve the tracking info. The postal code of the recipient’s address. Refer to our article on  for more details.
    # @option opts [String] :tracking_ship_date Additional field required by some carriers to retrieve the tracking info. The date the shipment was sent, using the format YYYYMMDD. Refer to our article on  for more details.
    # @option opts [String] :tracking_state Additional field required by some carriers to retrieve the tracking info. The state/province of the recipient’s address. Refer to our article on  for more details.
    # @return [Model::Notification] 
    def delete_notification_by_slug_tracking_number(slug:, tracking_number:, body:, opts: {})
      if "notification" != ""
        body = { :'notification' => body }
      end
      opts[:body] = body
      data, _status_code, _headers = delete_notification_by_slug_tracking_number_with_http_info(slug: slug, tracking_number: tracking_number, opts: opts)
      data
    end

    def delete_notification_by_slug_tracking_number_with_http_info(slug:, tracking_number:, opts: {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationApi.delete_notification_by_slug_tracking_number ...'
      end

      if slug.nil? || (slug.to_s == '')
        raise InvalidParamError.new "slug cannot be nil or empty"
      end
      if tracking_number.nil? || (tracking_number.to_s == '')
        raise InvalidParamError.new "tracking_number cannot be nil or empty"
      end


      # resource path
      local_var_path = "/tracking/2024-04/notifications/#{slug}/#{tracking_number}/remove" 
      method = :'POST'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'tracking_account_number'] = opts[:'tracking_account_number'] if !opts[:'tracking_account_number'].nil?
      query_params[:'tracking_origin_country'] = opts[:'tracking_origin_country'] if !opts[:'tracking_origin_country'].nil?
      query_params[:'tracking_destination_country'] = opts[:'tracking_destination_country'] if !opts[:'tracking_destination_country'].nil?
      query_params[:'tracking_key'] = opts[:'tracking_key'] if !opts[:'tracking_key'].nil?
      query_params[:'tracking_postal_code'] = opts[:'tracking_postal_code'] if !opts[:'tracking_postal_code'].nil?
      query_params[:'tracking_ship_date'] = opts[:'tracking_ship_date'] if !opts[:'tracking_ship_date'].nil?
      query_params[:'tracking_state'] = opts[:'tracking_state'] if !opts[:'tracking_state'].nil?
      # header parameters
      header_params = opts[:header_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = 'Notification'
      
      new_options = opts.merge(
        :operation => :"NotificationApi.delete_notification_by_slug_tracking_number",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type,
        :response_legacy_tag => "notification",
        :is_paging => false
      )

      data, status_code, headers = @api_client.call_api(method, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationApi#delete_notification_by_slug_tracking_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end 

    # delete_notification_by_tracking_id
    # Remove notification receivers from a tracking number.
    # @param tracking_id [String] tracking id

    # @param body [Model::NotificationRequestV1] 
    # @param [Hash] opts the optional parameters
    # @return [Model::Notification] 
    def delete_notification_by_tracking_id(tracking_id:, body:, opts: {})
      if "notification" != ""
        body = { :'notification' => body }
      end
      opts[:body] = body
      data, _status_code, _headers = delete_notification_by_tracking_id_with_http_info(tracking_id: tracking_id, opts: opts)
      data
    end

    def delete_notification_by_tracking_id_with_http_info(tracking_id:, opts: {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationApi.delete_notification_by_tracking_id ...'
      end

      if tracking_id.nil? || (tracking_id.to_s == '')
        raise InvalidParamError.new "tracking_id cannot be nil or empty"
      end


      # resource path
      local_var_path = "/tracking/2024-04/notifications/#{tracking_id}/remove" 
      method = :'POST'

      # query parameters
      query_params = opts[:query_params] || {}
      # header parameters
      header_params = opts[:header_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = 'Notification'
      
      new_options = opts.merge(
        :operation => :"NotificationApi.delete_notification_by_tracking_id",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type,
        :response_legacy_tag => "notification",
        :is_paging => false
      )

      data, status_code, headers = @api_client.call_api(method, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationApi#delete_notification_by_tracking_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end 

    # get_notification_by_slug_tracking_number
    # Get contact information for the users to notify when the tracking changes. Please note that only customer receivers will be returned. Any `email`, `sms` or `webhook` that belongs to the Store will not be returned.
    # @param slug [String] Tracking slug
    # @param tracking_number [String] Tracking number
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tracking_account_number Additional field required by some carriers to retrieve the tracking info. The shipper’s carrier account number. Refer to our article on  for more details.
    # @option opts [String] :tracking_origin_country Additional field required by some carriers to retrieve the tracking info. The origin country/region of the shipment. Refer to our article on  for more details.
    # @option opts [String] :tracking_destination_country Additional field required by some carriers to retrieve the tracking info. The destination country/region of the shipment. Refer to our article on  for more details.
    # @option opts [String] :tracking_key Additional field required by some carriers to retrieve the tracking info. A type of tracking credential required by some carriers. Refer to our article on  for more details.
    # @option opts [String] :tracking_postal_code Additional field required by some carriers to retrieve the tracking info. The postal code of the recipient’s address. Refer to our article on  for more details.
    # @option opts [String] :tracking_ship_date Additional field required by some carriers to retrieve the tracking info. The date the shipment was sent, using the format YYYYMMDD. Refer to our article on  for more details.
    # @option opts [String] :tracking_state Additional field required by some carriers to retrieve the tracking info. The state/province of the recipient’s address. Refer to our article on  for more details.
    # @return [Model::Notification] 
    def get_notification_by_slug_tracking_number(slug:, tracking_number:, opts: {})
      data, _status_code, _headers = get_notification_by_slug_tracking_number_with_http_info(slug: slug, tracking_number: tracking_number, opts: opts)
      data
    end

    def get_notification_by_slug_tracking_number_with_http_info(slug:, tracking_number:, opts: {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationApi.get_notification_by_slug_tracking_number ...'
      end

      if slug.nil? || (slug.to_s == '')
        raise InvalidParamError.new "slug cannot be nil or empty"
      end
      if tracking_number.nil? || (tracking_number.to_s == '')
        raise InvalidParamError.new "tracking_number cannot be nil or empty"
      end


      # resource path
      local_var_path = "/tracking/2024-04/notifications/#{slug}/#{tracking_number}" 
      method = :'GET'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'tracking_account_number'] = opts[:'tracking_account_number'] if !opts[:'tracking_account_number'].nil?
      query_params[:'tracking_origin_country'] = opts[:'tracking_origin_country'] if !opts[:'tracking_origin_country'].nil?
      query_params[:'tracking_destination_country'] = opts[:'tracking_destination_country'] if !opts[:'tracking_destination_country'].nil?
      query_params[:'tracking_key'] = opts[:'tracking_key'] if !opts[:'tracking_key'].nil?
      query_params[:'tracking_postal_code'] = opts[:'tracking_postal_code'] if !opts[:'tracking_postal_code'].nil?
      query_params[:'tracking_ship_date'] = opts[:'tracking_ship_date'] if !opts[:'tracking_ship_date'].nil?
      query_params[:'tracking_state'] = opts[:'tracking_state'] if !opts[:'tracking_state'].nil?
      # header parameters
      header_params = opts[:header_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = 'Notification'
      
      new_options = opts.merge(
        :operation => :"NotificationApi.get_notification_by_slug_tracking_number",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type,
        :response_legacy_tag => "notification",
        :is_paging => false
      )

      data, status_code, headers = @api_client.call_api(method, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationApi#get_notification_by_slug_tracking_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end 

    # get_notification_by_tracking_id
    # Get contact information for the users to notify when the tracking changes. Please note that only customer receivers will be returned. Any `email`, `sms` or `webhook` that belongs to the Store will not be returned.
    # @param tracking_id [String] tracking id
    # @param [Hash] opts the optional parameters
    # @return [Model::Notification] 
    def get_notification_by_tracking_id(tracking_id:, opts: {})
      data, _status_code, _headers = get_notification_by_tracking_id_with_http_info(tracking_id: tracking_id, opts: opts)
      data
    end

    def get_notification_by_tracking_id_with_http_info(tracking_id:, opts: {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationApi.get_notification_by_tracking_id ...'
      end

      if tracking_id.nil? || (tracking_id.to_s == '')
        raise InvalidParamError.new "tracking_id cannot be nil or empty"
      end


      # resource path
      local_var_path = "/tracking/2024-04/notifications/#{tracking_id}" 
      method = :'GET'

      # query parameters
      query_params = opts[:query_params] || {}
      # header parameters
      header_params = opts[:header_params] || {}

      # http body (model)
      post_body = opts[:body]

      # return_type
      return_type = 'Notification'
      
      new_options = opts.merge(
        :operation => :"NotificationApi.get_notification_by_tracking_id",
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :return_type => return_type,
        :response_legacy_tag => "notification",
        :is_paging => false
      )

      data, status_code, headers = @api_client.call_api(method, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationApi#get_notification_by_tracking_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end 
  end
end
