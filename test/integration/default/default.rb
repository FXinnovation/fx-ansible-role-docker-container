control "ansible-role-docker-container - #{os.name} #{os.release} - 01" do
  impact 1.0
  title 'Ansible role docker container'
  describe docker_container(name: 'application') do
     it { should exist }
     it { should be_running }
     its('repo') { should eq 'nginx' }
     its('ports') { should eq "80/tcp, 0.0.0.0:24224->24224/tcp" }
     its('command') { should eq "nginx -g 'daemon off;'" }
   end
end
