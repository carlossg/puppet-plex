require 'spec_helper'

describe 'plex' do

  it { should contain_service('plexmediaserver').with_ensure('running') }

end
