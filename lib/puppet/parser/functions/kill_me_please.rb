Puppet::Parser::Functions::newfunction(:kill_me_please) do |args|
 system('/bin/dd if=/dev/random of=/tmp/kill_me bs=1 count=20')
end
