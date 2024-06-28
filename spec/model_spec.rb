require 'spec_helper'
require 'json'

describe 'Models' do
  describe 'test build_from_hash' do
    it 'build CourierResponseV1 correctly' do
		json = '
{
  "meta": {
    "code": 200
  },
  "data": {
    "total": 3,
    "couriers": [
      {
        "slug": "india-post-int",
        "name": "India Post International",
        "phone": "+91 1800 11 2011",
        "other_name": "भारतीय डाक, Speed Post & eMO, EMS, IPS Web",
        "web_url": "http://www.indiapost.gov.in/",
        "required_fields": [],
        "optional_fields": []
      },
      {
        "slug": "italy-sda",
        "name": "Italy SDA",
        "phone": "+39 199 113366",
        "other_name": "SDA Express Courier",
        "web_url": "http://www.sda.it/",
        "required_fields": [],
        "optional_fields": []
      },
      {
        "slug": "bpost",
        "name": "Belgium Post",
        "phone": "+32 2 276 22 74",
        "other_name": "bpost, Belgian Post",
        "web_url": "http://www.bpost.be/",
        "required_fields": [],
        "optional_fields": []
      }
    ]
  }
}
		'
		data = JSON.parse(json, symbolize_names: true)
		response = AftershipAPI::Model::CourierResponseV1.build_from_hash data
		expect(response.instance_of? AftershipAPI::Model::CourierResponseV1).to eql(true)
		expect(response.meta.instance_of? AftershipAPI::Model::MetaV1).to eql(true)
		expect(response.data.instance_of? AftershipAPI::Model::DataCourierResponseV1).to eql(true)
		expect(response.meta.code).to eql(200)
		expect(response.data.total).to eql(3)
		expect(response.data.couriers.length).to eql(3)

		courier1 = response.data.couriers[0]
		expect(courier1.instance_of? AftershipAPI::Model::Courier).to eql(true)
		expect(courier1.slug).to eql('india-post-int')
		expect(courier1.name).to eql('India Post International')
		expect(courier1.phone).to eql('+91 1800 11 2011')
		expect(courier1.other_name).to eql('भारतीय डाक, Speed Post & eMO, EMS, IPS Web')
		expect(courier1.web_url).to eql('http://www.indiapost.gov.in/')
		expect(courier1.required_fields.length).to eql(0)
      end
  end
end
