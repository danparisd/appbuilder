`App Builder` folder contains config files and goes in `~/` sab.sh looks here for the project

need to add SIL repo and install SAB
- `curl -fsSL http://packages.sil.org/sil.gpg | sudo apt-key add -`
- `sudo add-apt-repository "deb [arch=amd64] http://packages.sil.org/ubuntu $(lsb_release -cs) main"`
- `sudo apt install scripture-app-builder`

`sab.sh` is how to invoke from command line, and is located at `/usr/share/scripture-app-builder`

`./sab.sh -load "testapp43" -build`

`~/.local/SIL/App Builder` has the settings.xml file as in this repo

/App Builder/keystore/keystore1.keystore is where I put the keystore for testing. Can be any android signing keystore. Signing pw for the keystore goes in the appDef file. There is a random one I generated there. We may be able to automate the generation of this keystore.

settings.xml has lots of stuff in it. Most of it, maybe all of it, can be the same for every build. Will need more testing. If this can be standardized it can be baked into the image instead of loaded in with docker-compose.

package-list-minimal.txt has the android sdk components we need. Just needed to build the docker container image.

If you put a keystore and pw in the right place, you should be able to build a test apk with `docker-compose up`