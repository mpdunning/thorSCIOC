#!../../bin/linux-x86_64/thorSC

epicsEnvSet( "STREAM_PROTOCOL_PATH","../../thorSCApp/Db:.")

< envPaths

cd ${TOP}

dbLoadDatabase "dbd/thorSC.dbd"
thorSC_registerRecordDeviceDriver pdbbase

epicsEnvSet("N",         "02")
epicsEnvSet("P",         "ESB:THSC$(N)")
epicsEnvSet("DESC",      "XTA Drive Laser")
epicsEnvSet("PROTOFILE", "thorSC.proto")
epicsEnvSet("DELAY1",    "0.1")

drvAsynIPPortConfigure ("L0","ts-esb-01:20xx",0,0,0)

#asynSetTraceMask("L0",-1,0x9)
#asynSetTraceIOMask("L0",-1,0x2)

dbLoadRecords("db/thorSC.db","P=$(P),IOC=$(IOC),DESC=$(DESC),PROTOFILE=$(PROTOFILE),DELAY1=$(DELAY1),PORT=L0")

cd ${TOP}/iocBoot/${IOC}
iocInit()

