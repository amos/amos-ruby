=begin
#Amos Pay API

#Amos Pay API spec

#The version of the OpenAPI document: 0.1.0

=end

require 'spec_helper'
require 'json'

describe 'additive API response fields' do
  let(:api_client) { Amos::ApiClient.new }

  def json_response(body)
    Struct.new(:body, :headers).new(body, { 'Content-Type' => 'application/json' })
  end

  it 'does not raise when an object response includes a new attribute' do
    response = json_response(JSON.generate(
                               'id' => 'cus_123',
                               'future_attribute' => 'ignored by older clients'
    ))

    customer = nil
    expect { customer = api_client.deserialize(response, 'Customer') }.not_to raise_error

    expect(customer).to be_instance_of(Amos::Customer)
    expect(customer.id).to eq('cus_123')
    expect(customer.to_hash).not_to have_key(:future_attribute)
  end

  it 'does not raise when nested collection responses include new attributes' do
    response = json_response(JSON.generate(
                               'data' => [
                                 {
                                   'id' => 'cus_123',
                                   'future_customer_attribute' => 'ignored by older clients'
                                 }
                               ],
                               'meta' => {
                                 'current_page' => 1,
                                 'first_page' => true,
                                 'future_meta_attribute' => 'ignored by older clients'
                               },
                               'future_list_attribute' => 'ignored by older clients'
    ))

    customers = nil
    expect { customers = api_client.deserialize(response, 'ListCustomers') }.not_to raise_error

    expect(customers).to be_instance_of(Amos::ListCustomers)
    expect(customers.data.first).to be_instance_of(Amos::Customer)
    expect(customers.data.first.id).to eq('cus_123')
    expect(customers.meta.current_page).to eq(1)
    expect(customers.to_hash).not_to have_key(:future_list_attribute)
    expect(customers.to_hash[:data].first).not_to have_key(:future_customer_attribute)
    expect(customers.to_hash[:meta]).not_to have_key(:future_meta_attribute)
  end

  it 'does not raise when a model is initialized with unknown response attributes' do
    customer = nil
    expect do
      customer = Amos::Customer.new(
        'id' => 'cus_123',
        'future_attribute' => 'ignored by older clients'
      )
    end.not_to raise_error

    expect(customer.id).to eq('cus_123')
    expect(customer.instance_variables).not_to include(:@future_attribute)
    expect(customer.to_hash).not_to have_key(:future_attribute)
  end
end
