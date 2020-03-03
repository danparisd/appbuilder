`App Builder` folder contains config files and goes in `~/` sab.sh looks here for the project

need to add SIL repo and install SAB
- `curl -fsSL http://packages.sil.org/sil.gpg | sudo apt-key add -`
- `sudo add-apt-repository "deb [arch=amd64] http://packages.sil.org/ubuntu $(lsb_release -cs) main"`
- `sudo apt install scripture-app-builder`

`sab.sh` is how to invoke from command line, and is located at `/usr/share/scripture-app-builder`

`./sab.sh -load "testapp43" -build`

