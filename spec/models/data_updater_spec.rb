require 'spec_helper'

describe DataUpdater do

  describe '#parse_response' do
    it 'is invalid' do
      response = { :get_currencies_response => { :get_currencies_result => "<NewDataSet>\n  <Table>\n    <Name>Afghanistan, Islamic State of</Name>\n    <CountryCode>af</CountryCode>\n    <Currency>Afghani</Currency>\n    <CurrencyCode>AFA</CurrencyCode>\n  </Table>\n  </NewDataSet>" } }
      expected = {
        :countries  => [{ :name => "Afghanistan, Islamic State of", :code => "af"   }],
        :currencies => [{ :name => "Afghani", :code => "AFA", :country_id => "af" }]
      }

      DataUpdater.send(:public, :parse_response)

      expect( DataUpdater.instance.parse_response(response) ).to eq( expected )
    end
  end
end
