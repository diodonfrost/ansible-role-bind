# Bind install

bind_package = 'bind'

control 'install-01' do
  impact 1.0
  title 'Bind install'
  desc 'Bind should be installed'
  describe package(bind_package) do
    it { should be_installed }
  end
end
