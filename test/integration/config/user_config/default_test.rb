title "Phoronix archive installation test suite"

describe directory('/home/phoronix/.phoronix-test-suite') do
  it { should exist }
end

describe file('/home/phoronix/.phoronix-test-suite/user-config.xml') do
  it { should exist }
  its('content') { should match('<Options>') }

  its('content') { should match('<BatchMode>') }
  its('content') { should match('<PromptForTestIdentifier>') }
  its('content') { should match('</BatchMode>') }

  its('content') { should match('<Installation>') }
  its('content') { should match('<RemoveDownloadFiles>') }
  its('content') { should match('</Installation>') }

  its('content') { should match('<OpenBenchmarking>') }
  its('content') { should match('<AnonymousUsageReporting>') }
  its('content') { should match('</OpenBenchmarking>') }
  its('content') { should match('</Options>') }
end
