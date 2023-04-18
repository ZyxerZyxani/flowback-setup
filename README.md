# Flowback Quick Setup

**Dependencies for the setup scripts:**
* git
* curl
* build-essential
* apt

All except apt will be installed by setup.bash because it assumes you are on debian or ubuntu based distro that has apt preinstalled. 
Please note that it is not recomended to install apt package manager on a linux distribution that doesn't use it by default.
<br />
____________________________________________________________________________________________________________________________
This quick setup is (for now) a collection of scripts to setup Flowback!
If you plan to use it, do not clone this repository, download it as zip!

Run 

To set it up initially, run setup.bash. It will install flowback to /opt/flowback.

Within /opt/flowback/backend/, there's a .flowback_pgpass file that needs to be in backend folder.

Also follow the .env.example in respective backend/frontend folders.

Once done, you can run update_backend.bash and update_frontend.bash within respective backend/frontend folders to setup
the flowback instance. Don't forget to change these files if there's any customizations needed!
