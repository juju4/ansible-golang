require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file('/usr/bin/go') do
  it { should be_executable }
end
describe file('/usr/bin/gofmt') do
  it { should be_executable }
end
describe file('/usr/bin/godoc') do
  it { should be_executable }
end

describe command('go version') do
  its(:stdout) { should match /go version/ }
  its(:exit_status) { should eq 0 }
end
