## Vagrantfile for using maildev in a Docker container by building from the Dockerfile here. 
##
Vagrant.configure("2") do |config|
    config.vm.provider "docker" do |d|
      # d.image = "maildev/maildev"
      d.build_dir = "."
      d.env = {
        "MAILDEV_MAIL_DIRECTORY" => "/tmp/maildirectory"
      }
      config.vm.synced_folder "/Users/jimscard/maildev-mail","/tmp/maildirectory"
      d.ports = "1080:1080","25:1025"
      d.name = "maildev"
    end
  end
  