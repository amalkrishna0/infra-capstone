# Project 10 – Internal DNS Setup

 

## Goal

Access an application or server using a **hostname** instead of an IP address by configuring **internal DNS**.

 

---

 

## Description

In this project, an internal DNS setup was implemented using a Windows Server.  

A DNS **A record** was created to map a hostname to a server IP address, and name resolution was verified using the `nslookup` command.

 

This demonstrates basic internal DNS configuration and hostname-based access commonly used in enterprise environments.

 

---

 

## Tasks Completed

- DNS server deployment (via Windows Server / AD DS)

- Created a DNS **A record** for a web server

- Verified hostname resolution using `nslookup`

 

---

 

## Screenshots (Proof of Work)

 

### DNS A Record Created

![DNS Manager](screenshots/dns-manager.png)

 

---

 

### Hostname Resolution Using nslookup

![nslookup Proof](screenshots/nslookup.png)

 

---

 

## Project Structure

 

```text

project-10-internal-dns/

├── README.md

└── screenshots/

    ├── dns-manager.png

    └── nslookup.png
