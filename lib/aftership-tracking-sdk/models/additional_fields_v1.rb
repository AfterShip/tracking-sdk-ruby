# This code was auto generated by AfterShip SDK Generator.
# Do not edit the class manually.

module AftershipAPI::Model
  class AdditionalFieldsV1
    TRACKING_ACCOUNT_NUMBER = "tracking_account_number".freeze
    TRACKING_POSTAL_CODE = "tracking_postal_code".freeze
    TRACKING_SHIP_DATE = "tracking_ship_date".freeze
    TRACKING_KEY = "tracking_key".freeze
    TRACKING_ORIGIN_COUNTRY_REGION = "tracking_origin_country_region".freeze
    TRACKING_DESTINATION_COUNTRY_REGION = "tracking_destination_country_region".freeze
    TRACKING_STATE = "tracking_state".freeze
    def self.all_vars
      @all_vars ||= [TRACKING_ACCOUNT_NUMBER,TRACKING_POSTAL_CODE,TRACKING_SHIP_DATE,TRACKING_KEY,TRACKING_ORIGIN_COUNTRY_REGION,TRACKING_DESTINATION_COUNTRY_REGION,TRACKING_STATE,].freeze
    end

    # Builds the enum from string
    # @param value [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param value [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if AdditionalFieldsV1.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #AdditionalFieldsV1"
    end
  end
end
