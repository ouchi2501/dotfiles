export PATH=/usr/local/bin:$PATH

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi


# Added by Canopy installer on 2016-08-14
# VIRTUAL_ENV_DISABLE_PROMPT can be set to '' to make the bash prompt show that Canopy is active, otherwise 1
alias activate_canopy="source '/Users/KOHEI/Library/Enthought/Canopy_64bit/User/bin/activate'"
VIRTUAL_ENV_DISABLE_PROMPT=1 source '/Users/KOHEI/Library/Enthought/Canopy_64bit/User/bin/activate'
