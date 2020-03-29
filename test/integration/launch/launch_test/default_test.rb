title "Phoronix archive installation test suite"

describe service('pts-encode-mp3') do
  it { should be_installed }
  it { should be_enabled }
end

describe file('/etc/phoronix-test-suite.xml') do
  it { should exist }
  its('content') { should match('<Options>') }

  its('content') { should match('<BatchMode>') }
  its('content') { should match('<SaveResults>True') }
  its('content') { should match('<PromptForTestIdentifier>False') }
  its('content') { should match('<PromptForTestDescription>False') }
  its('content') { should match('<PromptSaveName>False') }
  its('content') { should match('<RunAllTestCombinations>True') }
  its('content') { should match('<Configured>True') }
  its('content') { should match('</BatchMode>') }

  its('content') { should match('</Options>') }
end
