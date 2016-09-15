# wp_ansible
An application deployment of wordpress with Ansible automation tool.
* Please use the included Vagrantfile to bring up the machines.
' The "master" machine is being used as the Ansible orchastration container so it starts up and uses a bootstrap script to install Ansible. ' 
' Please make sure that you change the PATH_TO_ANSIBLE_PLAYBOOK with your actual path '
' The "app" machine is used to install Nginx and wordpress. The SELINUX and FIREWALLD must be disabled or allow nginx to pass through otherwise you will not 
be able to access the site. TO BE DONE'
' The "db" machine is used to install the MySQL database '

* Please note that nginx / mysql playbooks were used off the internet and changes were made to adapt to my needs.

* The wordpress role is also creating a cron job to perform a back to a remote location. Please change the variables at the defaults/main.yml

 