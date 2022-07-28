# Installer
### For Ubuntu 22.04 LTS (minimized install)

<p align="center">
  <img width="500" height="500" src="https://github.com/sekkigit/porfolio.sekiteh/blob/gh-pages/img/works/5.jpg?raw=true">
</p>

<p align="right">COPY
</p>

```
sudo apt update
sudo apt install git -y
git clone https://github.com/sekkigit/custom_homelab.git install && cd install
sudo bash installer.sh
```

#### Install: 

| Program | Description |
| --- | --- |
| OpenVPN | Create a vpn server with vpn-user. |
| Samba | Enables Linux / Unix machines to communicate with Windows machines in a network. |
| Cockpit | Graphical interface to administer servers. |
| CrowdSec | Analyze behaviors, respond to attacks & share signals across the community. |
| Docker-compose | Tool that help define and share multi-container applications. |
| Docker | Enables you to separate your applications from your infrastructure. |
| Plex | Access all media. |
| Automate backup | Back up your files every day/weak/month automatically. |
| Lock SSH | Lock SSH session, accept only your KEY, forbid access from root. |
| Basic apps | Install Nano, Btop, Cron. |
| UFW | Enable and edit rules in UFW firewall. |


#### Bootstrap scripts to choose from


<details><summary>SIMPLE Install</summary>
<p>

#### Create envirement for docker containers.
  - Nano
  - Btop
  - Cron
  - Docker

</p>
</details>


<details><summary>BASIC Install</summary>
<p>

#### Create envirement for docker containers with basic protection and monitoring.
  - Nano
  - Btop
  - Cron
  - Docker
  - Crowdsec
  - Cockpit
  - UFW

</p>
</details>


<details><summary>FULL Install</summary>
<p>

#### Create envirement for docker containers with file sharing, media sharing, basic protection and monitoring.
  - Nano
  - Btop
  - Cron
  - Docker
  - Crowdsec
  - Cockpit
  - UFW
  - Samba
  - Plex

</p>
</details>


<details><summary>Warning</summary>
<p>

#### ⚠️ Please beware that products can change over time.

I do my best to keep up with the latest changes and releases, but please understand that this won’t always be the case.

</p>
</details>