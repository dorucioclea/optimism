package predeploys

import "github.com/ethereum/go-ethereum/common"

var (
	L2ToL1MessagePasser          = common.HexToAddress("0x4200000000000000000000000000000000000000")
	OVM_DeployerWhitelist        = common.HexToAddress("0x4200000000000000000000000000000000000002")
	OVM_ETH                      = common.HexToAddress("0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000")
	WETH9                        = common.HexToAddress("0x4200000000000000000000000000000000000006")
	L2CrossDomainMessenger       = common.HexToAddress("0x4200000000000000000000000000000000000007")
	L2StandardBridge             = common.HexToAddress("0x4200000000000000000000000000000000000010")
	SequencerFeeVault            = common.HexToAddress("0x4200000000000000000000000000000000000011")
	OptimismMintableTokenFactory = common.HexToAddress("0x4200000000000000000000000000000000000012")
	L1BlockNumber                = common.HexToAddress("0x4200000000000000000000000000000000000013")
	OVM_GasPriceOracle           = common.HexToAddress("0x420000000000000000000000000000000000000F")
	L1Block                      = common.HexToAddress("0x4200000000000000000000000000000000000015")
)
