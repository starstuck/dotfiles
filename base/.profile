# -*- mode: sh; -*-
#
# ~/.profile: executed by the command interpreter for login shells. 
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

# if running bash include also bashrc
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

# Load brew installed profiles if available
if [[ $(which brew 2>/dev/null) && -d $(brew --prefix)/etc/profile.d ]]; then
    # Recently brew has starter using usr/local/sbin folder which is not in MacOS default path
    export PATH="$PATH:/usr/local/sbin"
    for i in $(brew --prefix)/etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
    done
    unset i
fi

# Load environment configuration from profiles folder 
PROFILEDIR="${HOME}/.profile.d"
if [ -d "${PROFILEDIR}" ]; then
    for F in ${PROFILEDIR}/*; do
        if [ -f "${F}" ]; then
            . $F
        fi
    done
fi

# Load system specific defaults
#OS_PROFILE="$(uname | tr '[:upper:]' '[:lower:]')"
#if [ -f "${PROFILEDIR}/${OS_PROFILE}" ]; then
#	. "${PROFILEDIR}/${OS_PROFILE}"
#fi

# Load each subdomain part specyfic environment configuration, but only
# if domainname tool is available
#if [ -n $(which domainname) ]; then
#    DOMAINPARTS=`domainname | sed 's/\./ /g' | awk '{
#      for (i = NF; i > 0; i--) {
#        for (j = i ; j <= NF; j++)
#          arr[NF - i] = arr[NF -i] "." $j
#      }
#    } END {
#      for (i = 0; i < NF; i++) print arr[i]
#    }' | sed "s/^\.//"| xargs`
#    for PART in ${DOMAINPARTS}; do
#        DOMAINPROFILE="${PROFILEDIR}/${PART}"
#        if [ -f "${DOMAINPROFILE}" ]; then
#            . "${DOMAINPROFILE}"
#        fi
#    done
#fi

# Load host specyfic environment configuration
#HOST_PROFILE="${PROFILEDIR}/$(hostname | cut -d . -f 1)"
#if [ -f "${HOST_PROFILE}" ] ; then
#    . "${HOST_PROFILE}"
#fi
