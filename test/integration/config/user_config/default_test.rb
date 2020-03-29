title "Phoronix archive installation test suite"

describe directory('/home/phoronix/.phoronix-test-suite') do
  it { should exist }
end

describe file('/etc/phoronix-test-suite.xml') do
  it { should exist }
  its('content') { should match('<Options>') }

  its('content') { should match('<BatchMode>') }
  its('content') { should match('<PromptForTestIdentifier>False') }
  its('content') { should match('</BatchMode>') }

  its('content') { should match('<Installation>') }
  its('content') { should match('<RemoveDownloadFiles>True') }
  its('content') { should match('</Installation>') }

  its('content') { should match('<OpenBenchmarking>') }
  its('content') { should match('<AnonymousUsageReporting>True') }
  its('content') { should match('</OpenBenchmarking>') }
  its('content') { should match('</Options>') }
end
