#!/bin/bash
sudo lynis --test-from-group malware,authetication,networking,storage,filesystems > /tmp/lynis.partial_scan.log

