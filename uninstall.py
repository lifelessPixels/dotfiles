#!/usr/bin/env python

import yaml
import os

CONFIG = "install.conf.yaml"

stream = open(CONFIG, "r")
conf = yaml.load(stream, Loader=yaml.CLoader)

for section in conf:
    if 'link' in section:
        for target in section['link']:
            realpath = os.path.expanduser(target)
            if os.path.islink(realpath):
                print("Removing ", realpath)
                os.unlink(realpath)
