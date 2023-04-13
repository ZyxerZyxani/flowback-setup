# Flowback Quick Setup

**Dependencies for the setup scripts:**
* git
* curl
* apt

Please note that it is not recomended to install apt package manager on a linux distribution that doesn't use it by default.
<br />
____________________________________________________________________________________________________________________________
This quick setup is (for now) a collection of scripts to setup Flowback!
If you plan to use it, do not clone this repository, download it as zip!

To set it up initially, run the following scripts in resources folder:
* caddy.bash
* python.bash
* postgres.bash
* npm.bash
* docker.bash
* redis.bash

Once done, in resources/flowback, run following download script within your preferred directory:
* backend.bash
* frontend.bash

Within resources/templates, there's a .flowback_pgpass file that needs to be in backend.

Also follow the .env.example in respective backend/frontend folders.

once done, you can run update_backend.bash and update_frontend.bash within respective backend/frontend folders to setup
the flowback instance. Don't forget to change these files if there's any customizations needed!
