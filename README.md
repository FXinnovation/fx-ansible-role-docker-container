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
  - name: 'Launch Docker Container'
    vars:
      networks:
      - name: network_test
        driver: bridge
        ipam_options:
          subnet: '10.0.0.0/24'
          gateway: 10.0.0.1

      containers:
      - name: "application"
        image: "localhost:5000/fluentd"
        env: {}
        ports:
          - "24224:24224"
        mac_address: "02:42:c6:3b:dd:fd"
        networks:
          name: "goanywhere-net"
          ipv4_address: "192.168.66.6"
        volumes:
          - "/var/log:/application/log/"
        labels:
          application: "application"
          environment: "production"
        shm_size: ''
        ulimits: []

    include_role:
      name: ansible-role-docker-container
```

License
-------

MIT

Author Information
------------------

FXInnovation Inc
