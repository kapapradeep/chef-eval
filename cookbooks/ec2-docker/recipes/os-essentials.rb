package 'httpd'



service "ssh" do
    action :start
end

ssh_config "PermitRootLogin" do
	  string "PermitRootLogin #{node[:ssh][:permit_root_login]}"
end
service 'httpd' do
	action [:enable, :start]
end
