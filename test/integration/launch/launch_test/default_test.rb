title "Phoronix archive installation test suite"

describe service('pts-encode-mp3') do
  it { should be_installed }
  it { should be_enabled }
end

describe service('pts-compress-gzip') do
  it { should be_installed }
  it { should be_enabled }
end

describe file('/usr/bin/wait_for_completion.sh') do
  it { should exist }
  its('mode') { should cmp '0755' }
end

describe file('/opt/phoronix/test_post_exec.sh') do
  it { should exist }
  its('mode') { should cmp '0755' }
end

describe file('/opt/phoronix/runtime/pts-encode-mp3/runtime.env') do
  it { should exist }
  its('mode') { should cmp '0644' }
end

describe file('/opt/phoronix/runtime/pts-compress-gzip/runtime.env') do
  it { should exist }
  its('mode') { should cmp '0644' }
end
