#!/bin/bash
[ -n "$FruitShareCodes" ] && {
  FRUITSHARECODES="$FruitShareCodes"
}
[ -n "$PetShareCodes" ] && {
  PETSHARECODES="$PetShareCodes"
}
[ -n "$SuperMarketShareCodes" ] && {
  SUPERMARKET_SHARECODES="$SuperMarketShareCodes"
}
[ "$FRUITSHARECODES" == "" ] && {
FRUITSHARECODES=a75d0fdecc924811a41a36ed4dddf903@0b5bb3df3eee40f082bbbde716201c11@44d4e210da0342b3afc75a812073d52e
}
[ "$PETSHARECODES" == "" ] && {
PETSHARECODES=MTAxODc2NTEzNTAwMDAwMDAyMzMzNjQyNQ==@MTAxODcxOTI2NTAwMDAwMDAzMjg3OTc3Mw==@MTAxODc2NTEzMDAwMDAwMDAyNDcxMjYwOQ==
}
[ "$PLANT_BEAN_SHARECODES" == "" ] && {
PLANT_BEAN_SHARECODES=mxnmgswd5zuc5kwapitm2yrhqryzgy7kd77dlwi@4npkonnsy7xi2hdx54damytwifkkw4schxfwm3q@olmijoxgmjutyrocftwlo66nysznwbjxvozpbti@ggope2d22xx7xyw4rl6tjoqdky3h7wlwy7o5jii
}
[ "$SUPERMARKET_SHARECODES" == "" ] && {
SUPERMARKET_SHARECODES=sss
}
FruitShareCodes=$FRUITSHARECODES
jdJoyRewardNotify=$JD_JOY_REWARD_NOTIFY
jdSuperMarketRewardNotify=$MARKET_REWARD_NOTIFY
joyRunFlag=$JOY_RUN_FLAG
jdSuperMarketUpgrade=$SUPERMARKET_UPGRADE
jdBusinessCircleJump=$BUSINESS_CIRCLE_JUMP
SUPERMARKET_LOTTERY=$SUPERMARKET_LOTTERY
jdFruitBeanCard=$FRUIT_BEAN_CARD
