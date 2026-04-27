 #!/bin/bash

 # which brew 2>&1 1>/dev/null && { echo brew is install ; echo Version is Homebrew 5.1.7-9-g2983f2e} || echo Brew is not install 

 << simplify
 if which brew  2>/dev/null 1>&2
 then 
  echo "brew is install"
  echo "brew version is $(brew --version)"
 fi

 echo -e "\n Other way of doing this \n"

 which brew  2>&1 1>/dev/null 
 if [[ $? -eq 0 ]]
 then 
  echo "brew is install"
  echo "brew version is $(brew --version)"
 fi

simplify

 if true 
 then 
   echo "Always this will execute"
 fi

 if false
 then
   echo "It won't execute"
fi

