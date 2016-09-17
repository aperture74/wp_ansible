# wp_ansible
## An application deployment of wordpress with Ansible automation tool.
* Please use the included Vagrantfile to bring up the machines.

* The **ansible** machine is being used as the Ansible orchestration container so it starts up and uses a bootstrap script to install Ansible. 
* Please make sure that you change the **PATH_TO_ANSIBLE_PLAYBOOK** with your actual path 
* The **appl** machine is used to install Nginx and wordpress.
* The **db** machine is used to install the MySQL database 

* When all the machines are up and running ssh at the master node by issuing **vagrant ssh ansible**, switch to the directory that contains the ansible roles and run **ansible-playbook site.yml**

* For the above command to be executed properly make sure that Ansible can succesffuly SSH to all the required nodes (appl, db)

* **CAREFULL** - The common role is DISABLING --firewalld-- and --selinux--. NOT recommended for production

* Please note that nginx / mysql playbooks were used off the internet and changes were made to adapt to my needs.

* The wordpress role is also creating a cron job to perform a back to a remote location. Please change the variables at the defaults/main.yml

 
