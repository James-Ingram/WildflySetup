# !! Will Require CORS Chrome Extension!!
- Find (Singular): Will Work Without
- Create: Will Work Without
- Update: Will **NOT** Work Without
- Delete: Will **NOT** Work Without
# To Setup The GCP Server
---( **Each Step Is In Order** )---

To begin with:
- Setup you GCP Instance:
	- This requires certain options to be changed:
		- **Name** 
		- **Region:** Change to ***europe-west2-c***
		- **Firewall:** Allow both HTTPS and HTTP traffic 
		>Click "Management, security, disks, networking, sole tenancy"
		>Click "Networking"
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
 - **Protocols and Ports:** Click "tcp", add "3000,8080"
>Click "Create"

# Static IP Address 
> Click "External IP Address"

Find the "Type" Column
- Change the "ephemeral" to Static
- Menu will Appear (Name it)

# **Start Server.**
Once the terminal has loaded:
**Input:** 
- `git clone https://github.com/smurfjames101/bobbeth.git`
- `chmod +x bobbeth/setupServer.sh`
- `sudo sh setupServer.sh`

( It will tell you when it's done ) 
- Clone down your React App.
- `cd (React App)`
- `npm update`
- `npm start`

# Running Wildfly
**Open A New SSH Terminal**
Run: `sh wildfly-10.1.0.Final/bin/standalone.sh`
# Running React
**Open A New SSH Terminal**
- Run: 
- `cd (React Project Name)`
- `npm start`
