#!/bin/bash

# Initialize basic vars and helpers
source blueprint-lib/init.sh

##
# Add dependencies here
##

# source blueprint-lib/docker.sh

##
# ADD BLUEPRINT CODE BELOW HERE
#
# BASE_PATH is the full path to the project root
# APP_NAME is the name of the Django app that will be modified
##

BLUEPRINT="SignUp02Blueprint"
NAME="SignUp 02"

DATA_1="{ name: '${BLUEPRINT}', human_name: '${NAME}', access_route: '${BLUEPRINT}'},"
DATA_2="import { ${BLUEPRINT}Navigator } from '..\/features\/${BLUEPRINT}\/navigator';"
DATA_3="${BLUEPRINT}: { screen: ${BLUEPRINT}Navigator },"

echo ">> remove blueprint folder"
if [ -d "$BASE_PATH/src/features/$BLUEPRINT" ]; then rm -Rf $BASE_PATH/src/features/$BLUEPRINT; fi

echo ">> remove 1" 
sed -i "s/${DATA_1}/ /g" $BASE_PATH/src/config/installed_blueprints.js

echo ">> remove 2"
sed -i "s/${DATA_2}/ /g" $BASE_PATH/src/navigator/mainNavigator.js

echo ">> remove 3"
sed -i "s/${DATA_3}/ /g" $BASE_PATH/src/navigator/mainNavigator.js

DATA_5="import { ${BLUEPRINT}Reducer } from '..\/features\/${BLUEPRINT}\/redux\/reducers'"
DATA_6="${BLUEPRINT}: ${BLUEPRINT}Reducer,"

echo ">> remove 5"
sed -i "s/${DATA_5}/ /g" $BASE_PATH/src/redux/mainReducer.js

echo ">> remove 6"
sed -i "s/${DATA_6}/ /g" $BASE_PATH/src/redux/mainReducer.js

DATA_7="import ${BLUEPRINT}Saga from '..\/features\/${BLUEPRINT}\/redux\/sagas'"
DATA_8="${BLUEPRINT}Saga,"

echo ">> remove 7"
sed -i "s/${DATA_7}/ /g" $BASE_PATH/src/redux/mainSaga.js

echo ">> remove 8"
sed -i "s/${DATA_8}/ /g" $BASE_PATH/src/redux/mainSaga.js