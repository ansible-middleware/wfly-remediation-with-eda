# WildFly remediation with Event-Driven Ansible

```
 __    __ _ _     _  __ _
/ / /\ \ (_) | __| |/ _| |_   _
\ \/  \/ / | |/ _` | |_| | | | |
 \  /\  /| | | (_| |  _| | |_| |
  \/  \/ |_|_|\__,_|_| |_|\__, |
                          |___/
```

## Widfly Mini Conference 20/11/2024
## Romain "Belaran" Pelisse, Senior Software Engineer @Red Hat
## Presented using [Slides](https://github.com/maaslalani/slides)
---
# About me

* **Open Source** enthousiast for all my career
* Works for Red Hat since 2011
* Works in Open Source and JBoss ecosystem since 2005
    * Started with JBoss AS 3.25 👴👴👴
* Passionate about Linux and **Automation** (since 2011)
    * started with Puppet, feel in love with [Ansible](https://www.ansible.com/)
    * since 2019 leading an initiative to integrate Red Hat Runtimes into Ansible
        * [Ansible Middleware](https://github.com/ansible-middleware/)
```

     ___      .__   __.      _______. __  .______    __       _______
    /   \     |  \ |  |     /       ||  | |   _  \  |  |     |   ____|
   /  ^  \    |   \|  |    |   (----`|  | |  |_)  | |  |     |  |__
  /  /_\  \   |  . `  |     \   \    |  | |   _  <  |  |     |   __|
 /  _____  \  |  |\   | .----)   |   |  | |  |_)  | |  `----.|  |____
/__/     \__\ |__| \__| |_______/    |__| |______/  |_______||_______|

```
* If you know what [Shadowrun](https://www.catalystgamelabs.com/brands/shadowrun) is, you might know me for something else...

---
# Last time, on Wildfly Mini Conf...

* We saw how to install Wildfly in fully automated fashion using **Ansible**.
* What is Ansible?
    * An Open Source, python based and crossplatform automation solution
    * No code, but YAML descriptor:
```yml
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
# Demo 0 - Installing Wildfly with Ansible


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
# Going further... Event-Driven Ansible!

## The power of automation
* Now, we have an **automation infrastructure** that will keep our deployment in the proprer **state**
* Let's leverage this to implements **remediation** using **Event-Driven Ansible** (EDA)

## What is EDA?
* one
* two
* three

---
# Demo 1 - Restart Wildfly is server is down

* Let's write a simple **rulebook** to leverage Event Driven Ansible (EDA) to automatically restart Wildfly if it's no longer running...

* (simple use case, but we do need to start somewhere...)

```



                                                 _______
                                                |.-----.|
                                                ||x . x||
                                                ||_.-._||
                                                `--)-(--`
                                               __[=== o]___
                                              |:::::::::::|\
                                        jgs   `-=========-`()
```
---
# Demo 2 - Restart on Java Out of Memory!

* Restarting Wildfly if it's down is nice, but we can do far more than that.
* Historically, Java apps were sometimes plagued by out of memory errors, that required a restart
* Let's implement a **remediation strategy**, using EDA, for this common problem

```




                                            _.-^^---....,,--
                                        _--                  --_
                                       <                        >)
                                       |                         |
                                        \._                   _./
                                           ```--. . , ; .--'''
                                                 | |   |
                                              .-=||  | |=-.
                                              `-=#$%&%$#=-'
                                                 | ;  :|
                                        _____.,-#%&$@%#&#~,._____
```
---
# Demo 3 - Flush db connection if the app reports idle connection
* An app has a bug leading to leave some db connection idled
* The bug has not yet been identified (or the fix is not released)
* An easy fix is to flush the idle db pool when the problem is detected
* Let's implement that remediation strategy with EDA
---
# Demo 4 - Undeploy a broken app
* An app can be broken and when it is, it has to be removed
* And unregister from the web balancer (not in the demo)
* Wildfly state must check after app removal
---
# Thanks!

```





                                         _______      __      _______
                                        (  ___  )    /__\    (  ___  )
                                        | (   ) |   ( \/ )   | (   ) |
                                        | |   | |    \  /    | (___) |
                                        | |   | |    /  \/\  |  ___  |
                                        | | /\| |   / /\  /  | (   ) |
                                        | (_\ \ |  (  \/  \  | )   ( |
                                        (____\/_)   \___/\/  |/     \|
```

