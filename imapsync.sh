#!/bin/bash

# ENV VARS
# ==================================
# HOST1
# USER1
# PASSWORD1
# OTHER1

# HOST2
# USER2
# PASSWORD2
# OTHER2
# ===================================


/opt/imapsync/imapsync \
--host1 ${HOST1} --user1 "${USER1}" --password1 "${PASSWORD1}" ${OTHER1} \
--host2 ${HOST2} --user2 "${USER2}" --password2 "${PASSWORD2}" ${OTHER2}
