if [ "$(uname)" == "Darwin" ]
then
  export COLORTERM=truecolor
  export BASH_SILENCE_DEPRECATION_WARNING=1
  PATH="$HOME/.local/bin:$PATH"

  # Setting PATH for Python 3.14
  # The original version is saved in .profile.pysave
  PATH="/Library/Frameworks/Python.framework/Versions/3.14/bin:${PATH}"
  export PATH
fi
