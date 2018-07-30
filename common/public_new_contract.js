var mess = "12";

web3.eth.defaultAccount = eth.accounts[0];
var abi = [{"constant":true,"inputs":[{"name":"idx","type":"uint256"}],"name":"get_record","outputs":[{"name":"retVal","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"get_num","outputs":[{"name":"num","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"record","type":"string"}],"name":"put","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"get_info","outputs":[{"name":"info","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"_info","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"_dataStore","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[{"name":"info","type":"string"}],"payable":false,"stateMutability":"nonpayable","type":"constructor"}];
var bytecode = "0x608060405234801561001057600080fd5b50604051610856380380610856833981018060405281019080805182019291905050508060019080519060200190610049929190610050565b50506100f5565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f1061009157805160ff19168380011785556100bf565b828001600101855582156100bf579182015b828111156100be5782518255916020019190600101906100a3565b5b5090506100cc91906100d0565b5090565b6100f291905b808211156100ee5760008160009055506001016100d6565b5090565b90565b610752806101046000396000f300608060405260043610610078576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff16806310ea91421461007d5780633e27a8e8146101235780634c21eb071461014e57806360583488146101b7578063d0ba06f014610247578063dbf59b6c146102d7575b600080fd5b34801561008957600080fd5b506100a86004803603810190808035906020019092919050505061037d565b6040518080602001828103825283818151815260200191508051906020019080838360005b838110156100e85780820151818401526020810190506100cd565b50505050905090810190601f1680156101155780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b34801561012f57600080fd5b50610138610438565b6040518082815260200191505060405180910390f35b34801561015a57600080fd5b506101b5600480360381019080803590602001908201803590602001908080601f0160208091040260200160405190810160405280939291908181526020018383808284378201915050505050509192919290505050610444565b005b3480156101c357600080fd5b506101cc610486565b6040518080602001828103825283818151815260200191508051906020019080838360005b8381101561020c5780820151818401526020810190506101f1565b50505050905090810190601f1680156102395780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b34801561025357600080fd5b5061025c610528565b6040518080602001828103825283818151815260200191508051906020019080838360005b8381101561029c578082015181840152602081019050610281565b50505050905090810190601f1680156102c95780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b3480156102e357600080fd5b50610302600480360381019080803590602001909291905050506105c6565b6040518080602001828103825283818151815260200191508051906020019080838360005b83811015610342578082015181840152602081019050610327565b50505050905090810190601f16801561036f5780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b606060008281548110151561038e57fe5b906000526020600020018054600181600116156101000203166002900480601f01602080910402602001604051908101604052809291908181526020018280546001816001161561010002031660029004801561042c5780601f106104015761010080835404028352916020019161042c565b820191906000526020600020905b81548152906001019060200180831161040f57829003601f168201915b50505050509050919050565b60008080549050905090565b6000819080600181540180825580915050906001820390600052602060002001600090919290919091509080519060200190610481929190610681565b505050565b606060018054600181600116156101000203166002900480601f01602080910402602001604051908101604052809291908181526020018280546001816001161561010002031660029004801561051e5780601f106104f35761010080835404028352916020019161051e565b820191906000526020600020905b81548152906001019060200180831161050157829003601f168201915b5050505050905090565b60018054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156105be5780601f10610593576101008083540402835291602001916105be565b820191906000526020600020905b8154815290600101906020018083116105a157829003601f168201915b505050505081565b6000818154811015156105d557fe5b906000526020600020016000915090508054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156106795780601f1061064e57610100808354040283529160200191610679565b820191906000526020600020905b81548152906001019060200180831161065c57829003601f168201915b505050505081565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f106106c257805160ff19168380011785556106f0565b828001600101855582156106f0579182015b828111156106ef5782518255916020019190600101906106d4565b5b5090506106fd9190610701565b5090565b61072391905b8082111561071f576000816000905550600101610707565b5090565b905600a165627a7a723058206bfe0fa9f0241b8b2917fbef5d6afc787538cc38ad51f842e5806479d72be0f60029";

var simpleContract = web3.eth.contract(abi);
var simple = simpleContract.new(mess, {from:web3.eth.accounts[0], data: bytecode, gas: '4700000'}, function(e, contract) {
	if (e) {
		console.log("err creating contract", e);
	} else {
		if (!contract.address) {
			console.log("Contract transaction send: TransactionHash: " + contract.transactionHash + " waiting to be mined...");
		} else {
			console.log("Contract mined! Address: " + contract.address);
			console.log(contract);
		}
	}
});