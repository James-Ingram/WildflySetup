# To Setup The GCP Server
---( **Each Step Is In Order** )---

To begin with:
- Setup you GCP Instance:
	- This requires certain options to be changed:
		- **Name** 
		- **Region:** Change to ***europe-west2-c***
		- **Firewall:** Allow both HTTPS and HTTP traffic 
		> Click "Management, security, disks, networking, sole tenancy"
		>
		> Click "Networking"
		- **Network Tags:** add "project" (You'll make it next)
- Copy the git clone link 

**Stop The Server As It Auto-Runs**

# Firewall Rules
>Click "Navigation Menu"

>Click "VPC Network"

>Click "Firewall Rules"

Create a new Firewall rule.
 - **Name:** (It can be whatever)
 - **Target Tags:** Add "project" (or whatever the network tag was called)
 - **Source IP Ranges:** Add "0.0.0.0/0"
 - **Protocols and Ports:** Click "tcp", add "3000,8080,8888"
>Click "Create"

# Static IP Address 
> Click "External IP Address"

Find the "Type" Column
- Change the "ephemeral" to Static
- Menu will Appear (Name it)

# **Start Server.**
**Run All Commands From The User Home Folder**

**Your Terminal Should Look Like This: `username@instanceName:~$`**

Once the terminal has loaded:
**Input:** 
- `git clone https://github.com/smurfjames101/WildflySetup.git`
- `chmod +x WildflySetup/setupServer.sh`
- `sudo sh WildflySetup/setupServer.sh`
- This will start Wildfly in the background, should you have the terminal, hit `Enter` 
  once you see a mention of `"services are lazy, passive or on-demand"`
  (Or spam `enter` if that helps...)
  
# Changing The WildFly Port Number
- `vim wildfly-10.1.0.Final/standalone/configuration/standalone.xml`
Find the line matching `port-offset="${jboss.socket.binding.port-offset:0}`
- The Offset changes the port to `8080 + offset`,
Change The `0` to something else, I'll use 808. (Making my port number 8888).
Restart the server.


- Clone down your React App.
- `cd (React App)`
- `npm update`

# Running Wildfly
**Open A New SSH Terminal**
Run: `sh wildfly-10.1.0.Final/bin/standalone.sh`
# Running React
**Open A New SSH Terminal**
- Run: 
- `cd (React Project Name)`
- `npm install` (This ***will*** Take While)
- `npm start`
