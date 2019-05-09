ansible-role-docker-container
===================

Run docker container for CentOS / RHEL / Amazon Linux 2.  

Requirements
------------

N/A

Role Variables
--------------

N/A

Dependencies
------------

N/A

Example Playbook
----------------

```yaml
  tasks:
  - name: 'Install Docker Engine'
    vars:
      networks:
      - name: "network_test"
        driver: bridge
        ipam_options:
          subnet: '192.168.66.0/24'
          gateway: 192.168.66.1

      containers:
      - name: "application"
        image: "repository/application"
        ports:
          - "24224:24224"
        mac_adress: "02:42:a6:3b:dd:fd"
        networks:
          name: "network-test"
          ipv4_address: "192.168.66.6"
        volumes:
          - "/var/log:/application/log/"
        labels:
          application: "application"
          environment: "production"

    include_role:
      name: 'ansible-role-docker-container'
```

License
-------

MIT

Author Information
------------------

FXInnovation Inc
