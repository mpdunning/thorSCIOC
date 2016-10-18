TOP=../..

include $(TOP)/configure/CONFIG

PROD_IOC = thorSC

DBD += thorSC.dbd

thorSC_DBD += base.dbd
thorSC_DBD += stream.dbd
thorSC_DBD += asyn.dbd
thorSC_DBD += asSupport.dbd
#thorSC_DBD += calcSupport.dbd
thorSC_DBD += drvAsynIPPort.dbd

thorSC_SRCS += thorSC_registerRecordDeviceDriver.cpp
thorSC_SRCS_DEFAULT += thorSCMain.cpp

thorSC_LIBS += asyn
thorSC_LIBS += autosave
thorSC_LIBS += stream
#thorSC_LIBS += calc

thorSC_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES

