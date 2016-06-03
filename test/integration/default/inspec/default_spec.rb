
describe command('redis-cli ping') do
  its(:stdout) { should match(/PONG/) }
end

%w{ build-essential tcl8.5 }.each do |pkg|
	describe package(pkg) do
		it { should be_installed }
	end
end

describe file('/tmp/redis-2.8.9.tar.gz') do
	it { should exist }
	it { should be_file }
end

describe service('redis_6379') do
	it { should be_installed }
	it { should be_enabled }
	it { should be_running }
end