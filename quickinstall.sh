#!/bin/sh

INSTALL_PATH=/usr/bin
TOOL_NAME=csound


does_csound_exist() {
  if [ -f $INSTALL_PATH/$TOOL_NAME ]
  then
    echo "warning: You already have a $TOOL_NAME installed on $INSTALL_PATH."
    exit 1
  fi
}

does_csound_exist

START_DIR=pwd

echo "*** Cloning repository into ~/csound ..."
git clone git://github.com/cyounes/csound.git ~/csound;
cd ~/csound;
echo "installing \033[1mcsound\033[0m... "
sudo cp $TOOL_NAME $INSTALL_PATH/$TOOL_NAME
sleep 1
# Go back to the user ran this script from
cd $START_DIR

# Remove the cloned folder
echo "removing cloned folder..."
rm -rf ~/csound
sleep 1
# Print out some happy success messages
echo ""
echo ""
echo "***********************************************"
echo "*** \033[5mDone!\033[0m                                   ***"
echo "*** \033[4mSummary:\033[0m                                ***"
echo "*** \033[32mcloned\033[0m git reppository to ~/csound      ***"
echo "*** \033[32minstalled\033[0m tool on $INSTALL_PATH              ***"
echo "*** \033[31mRemoved\033[0m cloned folder                   ***"
echo "*** \033[42m\033[30mHave a great day!\033[0m                       ***"
echo "***********************************************"
echo ""
echo ""
