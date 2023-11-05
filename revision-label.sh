#!/bin/sh
PYTHONPATH=. bin/pyang -p modules/ietf -P modules/ietf \
                       --check-update-from m#1.0.0.yang m#1.0.2.yang
# m#1.0.2.yang:11: warning: imported module "ietf-yang-semver" not used
# m#1.0.2.yang:20: warning: the revision-label statements are not given in reverse chronological order
# m#1.0.2.yang:23: warning: the recommended-min is lower than any revision-label available
