docker_service 'default' do
      install_method 'auto'
      service_manager 'auto'
      action [:enable, :start]
end

docker_image 'jenkins' do
     action :pull
end
docker_container 'myjenkins' do
      repo 'jenkins'
      port '8080:8080'
      action :run
end

