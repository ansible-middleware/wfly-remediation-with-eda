# Deploying WildFly applications to bare-metal and the cloud

```
 __    __ _ _     _  __ _
/ / /\ \ (_) | __| |/ _| |_   _
\ \/  \/ / | |/ _` | |_| | | | |
 \  /\  /| | | (_| |  _| | |_| |
  \/  \/ |_|_|\__,_|_| |_|\__, |
                          |___/
```

## Widfly Mini Conference 06/03/2024
## Romain "Belaran" Pelisse, Senior Software Engineer @Red Hat
## Presented using [Slides](https://github.com/maaslalani/slides)
---
# About me

* **Open Source** enthousiast for all my career
* Works for Red Hat since 2011
* Works in Open Source and JBoss ecosystem since 2005
* Passionate about Linux and **Automation** (since 2011)
    * started with Puppet, feel in love with [Ansible](https://www.ansible.com/)
```
     ___      .__   __.      _______. __  .______    __       _______
    /   \     |  \ |  |     /       ||  | |   _  \  |  |     |   ____|
   /  ^  \    |   \|  |    |   (----`|  | |  |_)  | |  |     |  |__
  /  /_\  \   |  . `  |     \   \    |  | |   _  <  |  |     |   __|
 /  _____  \  |  |\   | .----)   |   |  | |  |_)  | |  `----.|  |____
/__/     \__\ |__| \__| |_______/    |__| |______/  |_______||_______|
```

---
# In your shoes

* Don't care about latest Wildfly features (unless it helps)
* Updating means extra works
* Your Wildfly is not the one coming out of the box
```
     _________
    / ======= \
   / __________\
  | ___________ |
  | | -       | |
  | |         | |
  | |_________| |________________________
  \=____________/                        )
  / """"""""""" \                       /
 / ::::::::::::: \                  =D-'
(_________________)
```
---
# Ansible

* Not Java, but Open Source and Python so still cross-platform
* Not a script or yet another language to learn
* Just a YAML descriptor:

```
- name: "An Ansible playbook to setup SSHd"
  hosts: localhost
  vars:
    sshd_pkg_name: openssh-server
  tasks:
    - name: "Ensure {{ sshd_pkg_name }} is installed"
      ansible.builtin.package:
        name: "{{ sshd_pkg_name }}"
        state: present
    - name: "Ensure service is running"
      ansible.builtin.service:
        name: sshd
        state: running
```

---
# Demo

Let's run a quick demo...

---
# Wildfly in YOUR organization

## Running on Open JDK 17
## Wildfly's configuration based on **standalone-full.xml**
## Using Postgres as a datasource
## Logging tuning for **arjuna**
## Add a system property to id the Wildfly instance called **JBOSS_ID**

---
# Back to the demo

Let's see how we implement all of that in our automation!

---
# Cloud and bare metal

## Works on **bare metal** and on the **cloud(s)**
## Kubernetes level of **comfort**
## Where **DevOps** starts!
## **Day 2**, rolling updates and rollback
## Automate even further with **EDA**
