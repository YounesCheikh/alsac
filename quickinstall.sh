#!/bin/sh

INSTALL_PATH=/usr/bin
TOOL_NAME=alsac


does_alsac_exist() {
  if [ -f $INSTALL_PATH/$TOOL_NAME ]
  then
    echo "warning: You already have a $TOOL_NAME installed on $INSTALL_PATH."
    exit 1
  fi
}

does_alsac_exist

START_DIR=`pwd`

echo "*** Cloning repository into ~/alsac ..."
git clone git://github.com/cyounes/alsac.git ~/alsac;
cd ~/alsac;
echo "installing \033[1malsac\033[0m... "
sudo cp $TOOL_NAME $INSTALL_PATH/$TOOL_NAME
sleep 1
# Go back to the user ran this script from
cd $START_DIR

# Remove the cloned folder
echo "removing cloned folder..."
rm -rf ~/alsac
sleep 1
# Print out some happy success messages
echo ""
echo ""
echo "***********************************************"
echo "*** \033[5mDone!\033[0m                                   ***"
echo "*** \033[4mSummary:\033[0m                                ***"
echo "*** \033[32mcloned\033[0m git reppository to ~/alsac      ***"
echo "*** \033[32minstalled\033[0m tool on $INSTALL_PATH              ***"
echo "*** \033[31mRemoved\033[0m cloned folder                   ***"
echo "*** \033[42m\033[30mHave a great day!\033[0m                       ***"
echo "***********************************************"
echo ""
echo ""
