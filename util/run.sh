#!/bin/bash

. ./read_data.func

QDATA_DIR=`jq -r '.QDATA_DIR' ./config-util.json`
CON_DD=`jq -r '.CON_DD' ./config-util.json`
QUO_DD=`jq -r '.QUO_DD' ./config-util.json`
ATTACHPARAMETER="ipc:${QDATA_DIR}/${QUO_DD}/geth.ipc"
ABI='[{"constant":true,"inputs":[{"name":"idx","type":"uint256"}],"name":"get_record","outputs":[{"name":"retVal","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"get_num","outputs":[{"name":"num","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"record","type":"string"}],"name":"put","outputs":[{"name":"retVal","type":"string"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"get_info","outputs":[{"name":"info","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"get_customer","outputs":[{"name":"customer","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[{"name":"info","type":"string"},{"name":"customer","type":"address"}],"payable":false,"stateMutability":"nonpayable","type":"constructor"}]'
BYTE='"0x608060405234801561001057600080fd5b50604051610a46380380610a468339810180604052810190808051820192919060200180519060200190929190505050816001908051906020019061005692919061009f565b5080600260006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055505050610144565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f106100e057805160ff191683800117855561010e565b8280016001018555821561010e579182015b8281111561010d5782518255916020019190600101906100f2565b5b50905061011b919061011f565b5090565b61014191905b8082111561013d576000816000905550600101610125565b5090565b90565b6108f3806101536000396000f30060806040526004361061006d576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff16806310ea9142146100725780633e27a8e8146101185780634c21eb0714610143578063605834881461022557806367cd8361146102b5575b600080fd5b34801561007e57600080fd5b5061009d6004803603810190808035906020019092919050505061030c565b6040518080602001828103825283818151815260200191508051906020019080838360005b838110156100dd5780820151818401526020810190506100c2565b50505050905090810190601f16801561010a5780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b34801561012457600080fd5b5061012d6104a8565b6040518082815260200191505060405180910390f35b34801561014f57600080fd5b506101aa600480360381019080803590602001908201803590602001908080601f0160208091040260200160405190810160405280939291908181526020018383808284378201915050505050509192919290505050610562565b6040518080602001828103825283818151815260200191508051906020019080838360005b838110156101ea5780820151818401526020810190506101cf565b50505050905090810190601f1680156102175780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b34801561023157600080fd5b5061023a610675565b6040518080602001828103825283818151815260200191508051906020019080838360005b8381101561027a57808201518184015260208101905061025f565b50505050905090810190601f1680156102a75780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b3480156102c157600080fd5b506102ca6107f8565b604051808273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b6060600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16141580156103ac575073ed9d02e382b34818e88b88a309c7fe71e65f419d73ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff1614155b156103ee576040805190810160405280601181526020017f5065726d697373696f6e2064656e69656400000000000000000000000000000081525090506104a3565b6000828154811015156103fd57fe5b906000526020600020018054600181600116156101000203166002900480601f01602080910402602001604051908101604052809291908181526020018280546001816001161561010002031660029004801561049b5780601f106104705761010080835404028352916020019161049b565b820191906000526020600020905b81548152906001019060200180831161047e57829003601f168201915b505050505090505b919050565b6000600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff1614158015610548575073ed9d02e382b34818e88b88a309c7fe71e65f419d73ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff1614155b15610556576000905061055f565b60008054905090505b90565b6060600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff161415156105f8576040805190810160405280601181526020017f5065726d697373696f6e2064656e6965640000000000000000000000000000008152509050610670565b6000829080600181540180825580915050906001820390600052602060002001600090919290919091509080519060200190610635929190610822565b50506040805190810160405280600e81526020017f5265636f7264207772697474656e00000000000000000000000000000000000081525090505b919050565b6060600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff1614158015610715575073ed9d02e382b34818e88b88a309c7fe71e65f419d73ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff1614155b15610757576040805190810160405280601181526020017f5065726d697373696f6e2064656e69656400000000000000000000000000000081525090506107f5565b60018054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156107ed5780601f106107c2576101008083540402835291602001916107ed565b820191906000526020600020905b8154815290600101906020018083116107d057829003601f168201915b505050505090505b90565b6000600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff16905090565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f1061086357805160ff1916838001178555610891565b82800160010185558215610891579182015b82811115610890578251825591602001919060010190610875565b5b50905061089e91906108a2565b5090565b6108c491905b808211156108c05760008160009055506001016108a8565b5090565b905600a165627a7a72305820c8483bee1caf66e32186955f620152223df94fc8fed56273114ca7e1352014d00029"'

# -peer command
if [ "$1"x == "-peer"x ]; then
  
  # --num option
  if [ "$2"x == "--num"x ]; then
    # PRIVATE_CONFIG=${QDATA_DIR}/${CON_DD}/tm.ipc geth attach $ATTACHPARAMETER <<EOF | grep "Data: " | sed "s/Data: //"
    OUT=`PRIVATE_CONFIG=${QDATA_DIR}/${CON_DD}/tm.ipc geth attach $ATTACHPARAMETER <<EOF
    net.peerCount;
    exit;
EOF`
  RES=`echo $OUT  | cut -d '>' -f 2`
  echo "Current peer number is: $((RES-5))"
  
  # --add option
  elif [ "$2"x == "--add"x ]; then
    if [ $# -ne 3 ]; then
      echo 'Wrong arguments. Please check.'
      exit
    fi
    touch ${QDATA_DIR}/.addresses.dat
    OUT=`PRIVATE_CONFIG=${QDATA_DIR}/${CON_DD}/tm.ipc geth attach $ATTACHPARAMETER <<EOF
    raft.addPeer("$3");
    exit;
EOF`
    RES=`echo $OUT | cut -d '>' -f 2 | cut -d ' ' -f 2`
    if [ "$RES"x == "Error:"x ]; then
      echo 'Wrong Enode URL or it has been added to the network. Please check.'
    else
      echo "RADT ID of the new node is:$RES"
      echo "To start the new node, please run on customer: ./start_node.sh $RES"
    fi
  
  # wrong option
  else
    show_help
  fi
  
# -create command
elif [ "$1"x == "-create"x ]; then
  if [ $# -ne 4 ]; then
    echo 'Wrong arguments. Please check.'
    exit
  fi
  CUST_ID=$2
  CUST_ADDRESS=$3
  CUST_PUB_KEY=$4
  new_contract_get_addr $CUST_ID $QDATA_DIR $CON_DD $QUO_DD $CUST_ADDRESS $CUST_PUB_KEY
    
# -block command
elif [ "$1"x == "-block"x ]; then
  OUT=`PRIVATE_CONFIG=${QDATA_DIR}/${CON_DD}/tm.ipc geth attach $ATTACHPARAMETER <<EOF
  eth.blockNumber;
  exit;
EOF`
  RES=`echo $OUT  | cut -d '>' -f 2`
  echo "Current block number is:$RES"
  
# -write command
elif [ "$1"x == "-write"x ]; then
  if [ $# -lt 3 ]; then
    echo 'Blank input is not allowed.'
    exit
  fi
  CUST_NAME=$2
  WRITE_DATA=$3
  while read LINE;
  do
    CUSTOMER=`echo $LINE | cut -d " " -f 1`
    if [ "$CUSTOMER"x == "$CUST_NAME"x ]; then      
      ADDRESS=`echo $LINE | cut -d " " -f 2`
      is_permissioned $ATTACHPARAMETER $QDATA_DIR $CON_DD $ABI $ADDRESS
      if [ $? -eq 1 ]; then 
        sed -i -e "s/var mess.*/var mess = \"${WRITE_DATA//\//\\/}\";/" write_exist_contract.js
        sed -i -e "s/var contract_id.*/var contract_id = \"${ADDRESS//\//\\/}\";/" write_exist_contract.js 
        OUT=`PRIVATE_CONFIG=${QDATA_DIR}/${CON_DD}/tm.ipc geth --exec "loadScript(\"write_exist_contract.js\")" attach ipc:${QDATA_DIR}/${QUO_DD}/geth.ipc` 
        echo "Record $WRITE_DATA stored."
      fi
      exit
    fi
  done  < ${QDATA_DIR}/.addresses.dat
  echo "No $2 found. Please check."

# -read command
elif [ "$1"x == "-read"x ]; then
  
  # --cust option
  if [ "$2"x == "--cust"x ]; then
    CUST_NAME=$3
    while read LINE;
    do
      # echo $LINE
      CUSTOMER=`echo $LINE | cut -d " " -f 1`
      if [ "$CUSTOMER"x == "$CUST_NAME"x ]; then
        ADDRESS=`echo $LINE | cut -d " " -f 2`
        get_data_via_address $ATTACHPARAMETER $QDATA_DIR $CON_DD $ABI $ADDRESS
        exit
      fi
    done  < ${QDATA_DIR}/.addresses.dat
    echo "No $3 found. Please check."
    
  # --addr option
  elif [ "$2"x == "--addr"x ]; then 
    ADDRESS=$3
    get_data_via_address $ATTACHPARAMETER $QDATA_DIR $CON_DD $ABI $ADDRESS
    
  # wrong option
  else
    show_help
  fi
  
# -help command & wrong command
else
  show_help
fi
