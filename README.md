# docker-abuild

This creates an environment to produce Alpine Linux packages or master
ISOs easily on any host running docker.

## Usage
First make sure an aports clone exists adjacent to the clone of this
repository.

Run `mv .env.sample .env` and replace `username` with your desired
username.

Run `mv abuild.conf.sample abuild/abuild.conf` and make your desired
changes.

Then run:

- `docker-compose build`
- `docker-compose run abuild`

This should drop you into an instance of `ash`.
Once you are in, go to your home directory with `cd ~`.
If this is the first time you're running this then you will want to run
`abuild-keygen -a -i` to generate a keypair.
