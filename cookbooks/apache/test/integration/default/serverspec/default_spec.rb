require 'serverspec'
set :backend, :exec

describe 'apache' do
  it 'is awesome' do
    expec(true).to eq true
  end 
end
