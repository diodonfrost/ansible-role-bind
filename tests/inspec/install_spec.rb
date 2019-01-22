# Bind install

bind_package = 'bind'
bind_package = 'bind9' if os.family == "debian"

bind_service = 'named'
bind_service = 'bind9' if os.family == "debian"

control 'install-01' do
  impact 1.0
  title 'Bind install'
  desc 'Bind should be installed'
  describe package(bind_package) do
    it { should be_installed }
  end
end

control 'install-02' do
  impact 1.0
  title 'Bin service'
  desc 'Bind service shoud be enabled and started'
  describe service(bind_service) do
    it { should be_enabled }
    it { should be_running }
  end
end
