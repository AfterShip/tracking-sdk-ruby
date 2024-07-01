# This code was auto generated by AfterShip SDK Generator.
# Do not edit the class manually.
module AftershipAPI::Model
  class TrackingDetectCourierRequest
    # Tracking number of a shipment.
    # tracking_number: String;
    attr_accessor :tracking_number

    # If not specified, Aftership will automatically detect the courier based on the tracking number format and your . Use array or comma separated to input a list of couriers for auto detect. Cannot be used with slug_group at the same time.
    # slug?: String[];
    attr_accessor :slug

    # The postal code of receiver's address. Required by some couriers. Refer to  for more details
    # tracking_postal_code?: String;
    attr_accessor :tracking_postal_code

    # Shipping date in `YYYYMMDD` format. Required by some couriers. Refer to  for more details
    # tracking_ship_date?: String;
    attr_accessor :tracking_ship_date

    # Account number of the shipper for a specific courier. Required by some couriers. Refer to  for more details
    # tracking_account_number?: String;
    attr_accessor :tracking_account_number

    # Key of the shipment for a specific courier. Required by some couriers. Refer to  for more details
    # tracking_key?: String;
    attr_accessor :tracking_key

    # Origin Country/Region of the shipment for a specific courier. Required by some couriers.
    # tracking_origin_country?: String;
    attr_accessor :tracking_origin_country

    # Destination Country/Region of the shipment for a specific courier. Required by some couriers. Refer to  for more details
    # tracking_destination_country?: String;
    attr_accessor :tracking_destination_country

    # State of the destination shipping address of the shipment. Required by some couriers.
    # tracking_state?: String;
    attr_accessor :tracking_state

    # Slug group is a group of slugs which belong to same courier. For example, when you inpit "fedex-group" as slug_group, AfterShip will detect the tracking with "fedex-uk", "fedex-fims", and other slugs which belong to "fedex". It cannot be used with slug at the same time. (
    # slug_group?: SlugGroupV1;
    attr_accessor :slug_group

    # Enter .
    # origin_country_iso3?: String;
    attr_accessor :origin_country_iso3

    # Enter .
    # destination_country_iso3?: String;
    attr_accessor :destination_country_iso3

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AftershipAPI::TrackingDetectCourierRequest` initialize method"
      end

      attributes = attributes.each_with_object({}) { |(k, v), h|
        h[k.to_sym] = v
      }

      if attributes.key?(:'tracking_number')
        self.tracking_number = attributes[:'tracking_number']
      end 

      if attributes.key?(:'slug')
        self.slug = attributes[:'slug']
      end 

      if attributes.key?(:'tracking_postal_code')
        self.tracking_postal_code = attributes[:'tracking_postal_code']
      end 

      if attributes.key?(:'tracking_ship_date')
        self.tracking_ship_date = attributes[:'tracking_ship_date']
      end 

      if attributes.key?(:'tracking_account_number')
        self.tracking_account_number = attributes[:'tracking_account_number']
      end 

      if attributes.key?(:'tracking_key')
        self.tracking_key = attributes[:'tracking_key']
      end 

      if attributes.key?(:'tracking_origin_country')
        self.tracking_origin_country = attributes[:'tracking_origin_country']
      end 

      if attributes.key?(:'tracking_destination_country')
        self.tracking_destination_country = attributes[:'tracking_destination_country']
      end 

      if attributes.key?(:'tracking_state')
        self.tracking_state = attributes[:'tracking_state']
      end 

      if attributes.key?(:'slug_group')
        self.slug_group = attributes[:'slug_group']
      end 

      if attributes.key?(:'origin_country_iso3')
        self.origin_country_iso3 = attributes[:'origin_country_iso3']
      end 

      if attributes.key?(:'destination_country_iso3')
        self.destination_country_iso3 = attributes[:'destination_country_iso3']
      end 
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'tracking_number' => :'String',
        :'slug' => :'Array<String>',
        :'tracking_postal_code' => :'String',
        :'tracking_ship_date' => :'String',
        :'tracking_account_number' => :'String',
        :'tracking_key' => :'String',
        :'tracking_origin_country' => :'String',
        :'tracking_destination_country' => :'String',
        :'tracking_state' => :'String',
        :'slug_group' => :'SlugGroupV1',
        :'origin_country_iso3' => :'String',
        :'destination_country_iso3' => :'String',
      }
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tracking_number' => :'tracking_number',
        :'slug' => :'slug',
        :'tracking_postal_code' => :'tracking_postal_code',
        :'tracking_ship_date' => :'tracking_ship_date',
        :'tracking_account_number' => :'tracking_account_number',
        :'tracking_key' => :'tracking_key',
        :'tracking_origin_country' => :'tracking_origin_country',
        :'tracking_destination_country' => :'tracking_destination_country',
        :'tracking_state' => :'tracking_state',
        :'slug_group' => :'slug_group',
        :'origin_country_iso3' => :'origin_country_iso3',
        :'destination_country_iso3' => :'destination_country_iso3',
      }
    end

    # Builds the object from hash
    # @param attributes [Hash] Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(key) && attributes[key].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[key].is_a?(Array)
            transformed_hash["#{key}"] = attributes[key].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[key].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[key])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param type [String] Data type
    # @param value [String] Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        klass = AftershipAPI::Model.const_get(type)
        klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param value [Object] Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

    def to_json(*a)
      to_hash.to_json(*a)
    end
  end
end
