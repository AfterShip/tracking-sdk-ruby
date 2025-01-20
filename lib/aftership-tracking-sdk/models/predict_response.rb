# This code was auto generated by AfterShip SDK Generator.
# Do not edit the class manually.
module AftershipAPI::Model
  class PredictResponse

    # A string that acts as a unique identifier for the estimated delivery date value generated by AfterShip Predict API
    # id: String;
    attr_accessor :id

    # AfterShip's unique code of courier. Please refer to https://track.aftership.com/couriers/download.
    # slug: String;
    attr_accessor :slug

    # AfterShip’s unique code represents carrier’s shipping and delivery options. Refer to .
    # service_type_name?: String;
    attr_accessor :service_type_name

    # The location from where the package is picked up by the carrier to be delivered to the final destination.
    # origin_address: OriginAddressPredictResponse;
    attr_accessor :origin_address

    # The final destination of the customer where the delivery will be made.
    # destination_address: DestinationAddressPredictResponse;
    attr_accessor :destination_address

    # AfterShip uses this object to calculate the total weight of the order.
    # weight?: WeightPredictResponse;
    attr_accessor :weight

    # The number of packages.
    # package_count?: Integer;
    attr_accessor :package_count

    # The local pickup time in the origin address time zone of the package.Either `pickup_time` or `estimated_pickup` is required.
    # pickup_time?: String;
    attr_accessor :pickup_time

    # The local pickup time of the package.Either `pickup_time` or `estimated_pickup` is required.
    # estimated_pickup?: EstimatedPickupPredictResponse;
    attr_accessor :estimated_pickup

    # The estimated arrival date of the shipment, provided by AfterShip.
    # estimated_delivery_date?: String;
    attr_accessor :estimated_delivery_date

    # Indicates the confidence level and associated reason for an AI EDD prediction request. For a comprehensive list of confidence codes, refer to .
    # confidence_code?: Float;
    attr_accessor :confidence_code

    # The earliest estimated delivery date of the shipment, provided by AfterShip.
    # estimated_delivery_date_min?: String;
    attr_accessor :estimated_delivery_date_min

    # The latest estimated delivery date of the shipment, provided by AfterShip.
    # estimated_delivery_date_max?: String;
    attr_accessor :estimated_delivery_date_max

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AftershipAPI::PredictResponse` initialize method"
      end

      attributes = attributes.each_with_object({}) { |(k, v), h|
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end 

      if attributes.key?(:'slug')
        self.slug = attributes[:'slug']
      end 

      if attributes.key?(:'service_type_name')
        self.service_type_name = attributes[:'service_type_name']
      end 

      if attributes.key?(:'origin_address')
        self.origin_address = attributes[:'origin_address']
      end 

      if attributes.key?(:'destination_address')
        self.destination_address = attributes[:'destination_address']
      end 

      if attributes.key?(:'weight')
        self.weight = attributes[:'weight']
      end 

      if attributes.key?(:'package_count')
        self.package_count = attributes[:'package_count']
      end 

      if attributes.key?(:'pickup_time')
        self.pickup_time = attributes[:'pickup_time']
      end 

      if attributes.key?(:'estimated_pickup')
        self.estimated_pickup = attributes[:'estimated_pickup']
      end 

      if attributes.key?(:'estimated_delivery_date')
        self.estimated_delivery_date = attributes[:'estimated_delivery_date']
      end 

      if attributes.key?(:'confidence_code')
        self.confidence_code = attributes[:'confidence_code']
      end 

      if attributes.key?(:'estimated_delivery_date_min')
        self.estimated_delivery_date_min = attributes[:'estimated_delivery_date_min']
      end 

      if attributes.key?(:'estimated_delivery_date_max')
        self.estimated_delivery_date_max = attributes[:'estimated_delivery_date_max']
      end 
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'slug' => :'String',
        :'service_type_name' => :'String',
        :'origin_address' => :'OriginAddressPredictResponse',
        :'destination_address' => :'DestinationAddressPredictResponse',
        :'weight' => :'WeightPredictResponse',
        :'package_count' => :'Integer',
        :'pickup_time' => :'String',
        :'estimated_pickup' => :'EstimatedPickupPredictResponse',
        :'estimated_delivery_date' => :'String',
        :'confidence_code' => :'Float',
        :'estimated_delivery_date_min' => :'String',
        :'estimated_delivery_date_max' => :'String',
      }
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'slug' => :'slug',
        :'service_type_name' => :'service_type_name',
        :'origin_address' => :'origin_address',
        :'destination_address' => :'destination_address',
        :'weight' => :'weight',
        :'package_count' => :'package_count',
        :'pickup_time' => :'pickup_time',
        :'estimated_pickup' => :'estimated_pickup',
        :'estimated_delivery_date' => :'estimated_delivery_date',
        :'confidence_code' => :'confidence_code',
        :'estimated_delivery_date_min' => :'estimated_delivery_date_min',
        :'estimated_delivery_date_max' => :'estimated_delivery_date_max',
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

