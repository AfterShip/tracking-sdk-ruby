# This code was auto generated by AfterShip SDK Generator.
# Do not edit the class manually.
module AftershipAPI::Model
  class FirstMileUpdateTrackingByIdResponse

    # The tracking number of the first-mile carrier.
    # tracking_number?: String;
    attr_accessor :tracking_number

    # The unique code of the carrier responsible for the first-mile of the shipment. Find all the courier slugs .
    # slug?: String;
    attr_accessor :slug

    # The transit time for the first-mile of a shipment in days. This field is calculated based on whether the handed_over_to_last_mile_carrier or received_by_last_mile_carrier event is detected by AfterShip. The handover event date is used to calculate the first-mile transit time.- First mile transit time (in days) = Handover date - Pickup date 
    # transit_time?: String;
    attr_accessor :transit_time

    # The field provides the link for modifying delivery instructions (such as delivery date and shipping address), if supported by the first-mile carrier. The language parameter of this link is determined by the destination country/region and the language associated with the shipment. If the destination country/region and language data is unavailable, AfterShip will default the language parameter to "US".
    # courier_redirect_link?: String;
    attr_accessor :courier_redirect_link

    # The field contains the official tracking URL of the first-mile carrier, if available. The language parameter of this link is determined by the destination country/region and the language associated with the shipment. If the destination country/region and language data is unavailable, AfterShip will default the language parameter to "US".
    # courier_tracking_link?: String;
    attr_accessor :courier_tracking_link

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AftershipAPI::FirstMileUpdateTrackingByIdResponse` initialize method"
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

      if attributes.key?(:'transit_time')
        self.transit_time = attributes[:'transit_time']
      end 

      if attributes.key?(:'courier_redirect_link')
        self.courier_redirect_link = attributes[:'courier_redirect_link']
      end 

      if attributes.key?(:'courier_tracking_link')
        self.courier_tracking_link = attributes[:'courier_tracking_link']
      end 
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'tracking_number' => :'String',
        :'slug' => :'String',
        :'transit_time' => :'String',
        :'courier_redirect_link' => :'String',
        :'courier_tracking_link' => :'String',
      }
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tracking_number' => :'tracking_number',
        :'slug' => :'slug',
        :'transit_time' => :'transit_time',
        :'courier_redirect_link' => :'courier_redirect_link',
        :'courier_tracking_link' => :'courier_tracking_link',
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

