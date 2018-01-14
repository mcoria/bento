BOXES PLAN
==========

Una vez provista con packer y una clave privada dada, se puede utilizar la misma clave despues.
Idealmente manejar todo con Packer y Vagrant; pero con un usuario que no sea 'vagrant'

Box1
Purpose: provision non Vagrant VMs with Ansible
OS: TBD
Vagrant enabled: YES
Base box created with packer: NO


Box2
Purpose: Network server
OS: debian
Vagrant enabled: YES
Base box created with packer: YES
Provisioning: Box1


Box3
Purpose: Linux Desktop
OS: ubuntu
Vagrant enabled: YES
Base box created with packer: YES
Provisioning: Box1
