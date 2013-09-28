require 'spec_helper'

describe 'plex' do

  it { should contain_service('plexmediaserver').with_ensure('running') }

  context 'when using debian' do
    let(:facts) {{
      :operatingsystem => 'Debian',
      :kernel => 'Linux',
      :osfamily => 'Debian',
      :lsbdistcodename => 'wheezy'
    }}

    it { should contain_apt__source('plex') }
  end

  context 'when using centos' do
    let(:facts) {{
      :operatingsystem => 'CentOS',
      :kernel => 'Linux',
      :osfamily => 'RedHat'
    }}

    it { should_not contain_apt__source('plex') }
  end
end
