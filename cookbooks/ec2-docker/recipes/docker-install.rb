execute 'update' do
	command 'yum update'
	action :update
end

execute 'install yum' do
	  command 'dnf install yum -y'
	    not_if { ::File.exist?('/var/lib/yum') }
	      action :nothing
	        notifies :run, 'execute[make yum cache]', :immediately
end.run_action(:run)


execute 'config manager' do
	command 'yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo '
	action :run
end

execute 'make yum cache' do
	  command 'yum makecache'
	    action :nothing
end

execute 'docker install' do
	command 'yum install docker-ce'
	action :run
end


