DL_DIR		=	_dl
SRC_DIR		=	src
DIST_DIR	=	dist
BUILD_TYPE	=	RELEASE

OPEN_CORE_URL	=	https://github.com/acidanthera/OpenCorePkg/releases/download/0.6.3/OpenCore-0.6.3-$(BUILD_TYPE).zip
OPEN_CORE_ZIP	=	$(DL_DIR)/$(notdir $(OPEN_CORE_URL))
OPEN_CORE_DIR	=	$(basename $(OPEN_CORE_ZIP))
OPEN_CORE_SRCS	=	\
	$(OPEN_CORE_DIR)/X64/EFI/OC/Bootstrap/Bootstrap.efi \
	$(OPEN_CORE_DIR)/X64/EFI/OC/Drivers/OpenRuntime.efi \
	$(OPEN_CORE_DIR)/X64/EFI/OC/Drivers/OpenCanopy.efi \
	$(OPEN_CORE_DIR)/X64/EFI/OC/Tools/OpenShell.efi \
	$(OPEN_CORE_DIR)/X64/EFI/OC/OpenCore.efi
OPEN_CORE_UTILITY_OCVALIDATE	=	$(OPEN_CORE_DIR)/Utilities/ocvalidate/ocvalidate
OPEN_CORE_DIST	=	$(subst $(OPEN_CORE_DIR)/X64/EFI/OC,$(DIST_DIR),$(OPEN_CORE_SRCS))

OCBINARYDATA_URL	=	https://github.com/acidanthera/OcBinaryData/archive/master.zip
OCBINARYDATA_ZIP	=	$(DL_DIR)/OcBinaryData.zip
OCBINARYDATA_DIR	=	$(basename $(OCBINARYDATA_ZIP))
OCBINARYDATA_SRC	=	$(OCBINARYDATA_DIR)/OcBinaryData-master/Resources
OCBINARYDATA_DIST	=	$(DIST_DIR)/Resources

HFS_PLUS_EFI_URL	=	https://github.com/acidanthera/OcBinaryData/blob/master/Drivers/HfsPlus.efi?raw=true
HFS_PLUS_EFI_SRC	=	$(DL_DIR)/HfsPlus.efi
HFS_PLUS_EFI_DIST	=	$(DIST_DIR)/Drivers/HfsPlus.efi

DIST_KEXT_DIR		=	$(DIST_DIR)/Kexts

KEXT_AIRPORTBRCMFIXUP_URL	=	https://github.com/acidanthera/AirportBrcmFixup/releases/download/2.1.1/AirportBrcmFixup-2.1.1-$(BUILD_TYPE).zip
KEXT_AIRPORTBRCMFIXUP_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_AIRPORTBRCMFIXUP_URL))
KEXT_AIRPORTBRCMFIXUP_DIR	=	$(basename $(KEXT_AIRPORTBRCMFIXUP_ZIP))
KEXT_AIRPORTBRCMFIXUP_SRC	=	$(KEXT_AIRPORTBRCMFIXUP_DIR)/AirportBrcmFixup.kext
KEXT_AIRPORTBRCMFIXUP_DIST	=	$(DIST_KEXT_DIR)/AirportBrcmFixup.kext

KEXT_APPLEALC_URL	=	https://github.com/acidanthera/AppleALC/releases/download/1.5.4/AppleALC-1.5.4-$(BUILD_TYPE).zip
KEXT_APPLEALC_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_APPLEALC_URL))
KEXT_APPLEALC_DIR	=	$(basename $(KEXT_APPLEALC_ZIP))
KEXT_APPLEALC_SRC	=	$(KEXT_APPLEALC_DIR)/AppleALC.kext
KEXT_APPLEALC_DIST	=	$(DIST_KEXT_DIR)/AppleALC.kext

KEXT_BRCMPATCHRAM_URL	=	https://github.com/acidanthera/BrcmPatchRAM/releases/download/2.5.5/BrcmPatchRAM-2.5.5-$(BUILD_TYPE).zip
KEXT_BRCMPATCHRAM_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_BRCMPATCHRAM_URL))
KEXT_BRCMPATCHRAM_DIR	=	$(basename $(KEXT_BRCMPATCHRAM_ZIP))
KEXT_BRCMPATCHRAM_SRCS	=	\
	$(KEXT_BRCMPATCHRAM_DIR)/BrcmBluetoothInjector.kext \
	$(KEXT_BRCMPATCHRAM_DIR)/BrcmFirmwareData.kext \
	$(KEXT_BRCMPATCHRAM_DIR)/BrcmPatchRAM3.kext
KEXT_BRCMPATCHRAM_DIST	=	$(subst $(KEXT_BRCMPATCHRAM_DIR),$(DIST_KEXT_DIR),$(KEXT_BRCMPATCHRAM_SRCS))

KEXT_CPUFRIEND_URL	=	https://github.com/acidanthera/CPUFriend/releases/download/1.2.2/CPUFriend-1.2.2-$(BUILD_TYPE).zip
KEXT_CPUFRIEND_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_CPUFRIEND_URL))
KEXT_CPUFRIEND_DIR	=	$(basename $(KEXT_CPUFRIEND_ZIP))
KEXT_CPUFRIEND_SRC	=	$(KEXT_CPUFRIEND_DIR)/CPUFriend.kext
KEXT_CPUFRIEND_DIST	=	$(DIST_KEXT_DIR)/CPUFriend.kext

KEXT_INTELMAUSI_URL	=	https://github.com/acidanthera/IntelMausi/releases/download/1.0.4/IntelMausi-1.0.4-$(BUILD_TYPE).zip
KEXT_INTELMAUSI_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_INTELMAUSI_URL))
KEXT_INTELMAUSI_DIR	=	$(basename $(KEXT_INTELMAUSI_ZIP))
KEXT_INTELMAUSI_SRC	=	$(KEXT_INTELMAUSI_DIR)/IntelMausi.kext
KEXT_INTELMAUSI_DIST	=	$(DIST_KEXT_DIR)/IntelMausi.kext

KEXT_LILU_URL	=	https://github.com/acidanthera/Lilu/releases/download/1.4.9/Lilu-1.4.9-$(BUILD_TYPE).zip
KEXT_LILU_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_LILU_URL))
KEXT_LILU_DIR	=	$(basename $(KEXT_LILU_ZIP))
KEXT_LILU_SRC	=	$(KEXT_LILU_DIR)/Lilu.kext
KEXT_LILU_DIST	=	$(DIST_KEXT_DIR)/Lilu.kext

KEXT_RTCMEMORYFIXUP_URL		=	https://github.com/acidanthera/RTCMemoryFixup/releases/download/1.0.7/RTCMemoryFixup-1.0.7-$(BUILD_TYPE).zip
KEXT_RTCMEMORYFIXUP_ZIP		=	$(DL_DIR)/$(notdir $(KEXT_RTCMEMORYFIXUP_URL))
KEXT_RTCMEMORYFIXUP_DIR		=	$(basename $(KEXT_RTCMEMORYFIXUP_ZIP))
KEXT_RTCMEMORYFIXUP_SRC		=	$(KEXT_RTCMEMORYFIXUP_DIR)/RTCMemoryFixup.kext
KEXT_RTCMEMORYFIXUP_DIST	=	$(DIST_KEXT_DIR)/RTCMemoryFixup.kext

KEXT_VIRTUALSMC_URL	=	https://github.com/acidanthera/VirtualSMC/releases/download/1.1.8/VirtualSMC-1.1.8-$(BUILD_TYPE).zip
KEXT_VIRTUALSMC_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_VIRTUALSMC_URL))
KEXT_VIRTUALSMC_DIR	=	$(basename $(KEXT_VIRTUALSMC_ZIP))
KEXT_VIRTUALSMC_SRC	=	$(KEXT_VIRTUALSMC_DIR)/Kexts/VirtualSMC.kext
KEXT_VIRTUALSMC_DIST	=	$(DIST_KEXT_DIR)/VirtualSMC.kext

KEXT_VOODOOPS2CONTROLLER_URL	=	https://github.com/acidanthera/VoodooPS2/releases/download/2.1.8/VoodooPS2Controller-2.1.8-$(BUILD_TYPE).zip
KEXT_VOODOOPS2CONTROLLER_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_VOODOOPS2CONTROLLER_URL))
KEXT_VOODOOPS2CONTROLLER_DIR	=	$(basename $(KEXT_VOODOOPS2CONTROLLER_ZIP))
KEXT_VOODOOPS2CONTROLLER_SRC	=	$(KEXT_VOODOOPS2CONTROLLER_DIR)/VoodooPS2Controller.kext
KEXT_VOODOOPS2CONTROLLER_DIST	=	$(DIST_KEXT_DIR)/VoodooPS2Controller.kext

KEXT_WHATEVERGREEN_URL	=	https://github.com/acidanthera/WhateverGreen/releases/download/1.4.4/WhateverGreen-1.4.4-$(BUILD_TYPE).zip
KEXT_WHATEVERGREEN_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_WHATEVERGREEN_URL))
KEXT_WHATEVERGREEN_DIR	=	$(basename $(KEXT_WHATEVERGREEN_ZIP))
KEXT_WHATEVERGREEN_SRC	=	$(KEXT_WHATEVERGREEN_DIR)/WhateverGreen.kext
KEXT_WHATEVERGREEN_DIST	=	$(DIST_KEXT_DIR)/WhateverGreen.kext

KEXT_CPUFRIENDDATAPROVIDER_SRC	=	$(SRC_DIR)/Kexts/CPUFriendDataProvider.kext
KEXT_CPUFRIENDDATAPROVIDER_DIST	=	$(DIST_DIR)/Kexts/CPUFriendDataProvider.kext

KEXTS_DIST	=	\
	$(KEXT_AIRPORTBRCMFIXUP_DIST) \
	$(KEXT_APPLEALC_DIST) \
	$(KEXT_BRCMPATCHRAM_DIST) \
	$(KEXT_CPUFRIEND_DIST) \
	$(KEXT_INTELMAUSI_DIST) \
	$(KEXT_LILU_DIST) \
	$(KEXT_RTCMEMORYFIXUP_DIST) \
	$(KEXT_VIRTUALSMC_DIST) \
	$(KEXT_VOODOOPS2CONTROLLER_DIST) \
	$(KEXT_WHATEVERGREEN_DIST) \
	$(KEXT_CPUFRIENDDATAPROVIDER_DIST)

ACPI_SRCS	=	\
	$(SRC_DIR)/ACPI/SSDT-EC-USBX.aml \
	$(SRC_DIR)/ACPI/SSDT-PLUG.aml \
	$(SRC_DIR)/ACPI/SSDT-PNLF.aml
ACPI_DIST	=	$(ACPI_SRCS:$(SRC_DIR)/%=$(DIST_DIR)/%)	

CONFIG_PLIST_SRC	=	$(SRC_DIR)/config.plist
CONFIG_PLIST_DIST	=	$(DIST_DIR)/config.plist

DIST		=	\
	$(OPEN_CORE_DIST) \
	$(OCBINARYDATA_DIST) \
	$(HFS_PLUS_EFI_DIST) \
	$(KEXTS_DIST) \
	$(ACPI_DIST) \
	$(CONFIG_PLIST_DIST)

.SECONDEXPANSION:

all:	$(DIST)

$(OPEN_CORE_ZIP):
	mkdir -p $(dir $@)
	curl -Lo $@ $(OPEN_CORE_URL)
$(OPEN_CORE_DIR):	$(OPEN_CORE_ZIP)
	mkdir -p $@
	unzip -d $@ -o $<
$(OPEN_CORE_SRCS) $(OPEN_CORE_UTILITY_OCVALIDATE):	$(OPEN_CORE_DIR)
$(OPEN_CORE_DIST):	$$(subst $(DIST_DIR),$(OPEN_CORE_DIR)/X64/EFI/OC,$$@)
	mkdir -p $(dir $@)
	cp $< $@

$(OCBINARYDATA_ZIP):
	mkdir -p $(dir $@)
	curl -Lo $@ $(OCBINARYDATA_URL)
$(OCBINARYDATA_DIR):	$(OCBINARYDATA_ZIP)
	mkdir -p $(dir $@)
	unzip -d $@ -o $<
$(OCBINARYDATA_SRC):	$(OCBINARYDATA_DIR)
$(OCBINARYDATA_DIST):	$(OCBINARYDATA_SRC)
	mkdir -p $(DIST_KEXT_DIR)
	cp -r $< $@

$(HFS_PLUS_EFI_SRC):
	mkdir -p $(dir $@)
	curl -Lo $@ $(HFS_PLUS_EFI_URL)
$(HFS_PLUS_EFI_DIST):	$(HFS_PLUS_EFI_SRC)
	mkdir -p $(dir $@)
	cp $< $@

$(KEXT_AIRPORTBRCMFIXUP_ZIP):
	mkdir -p $(dir $@)
	curl -Lo $@ $(KEXT_AIRPORTBRCMFIXUP_URL)
$(KEXT_AIRPORTBRCMFIXUP_DIR):	$(KEXT_AIRPORTBRCMFIXUP_ZIP)
	mkdir -p $(dir $@)
	unzip -d $@ -o $<
$(KEXT_AIRPORTBRCMFIXUP_SRC):	$(KEXT_AIRPORTBRCMFIXUP_DIR)
$(KEXT_AIRPORTBRCMFIXUP_DIST):	$(KEXT_AIRPORTBRCMFIXUP_SRC)
	mkdir -p $(DIST_KEXT_DIR)
	cp -r $< $@

$(KEXT_APPLEALC_ZIP):
	mkdir -p $(dir $@)
	curl -Lo $@ $(KEXT_APPLEALC_URL)
$(KEXT_APPLEALC_DIR):	$(KEXT_APPLEALC_ZIP)
	mkdir -p $(dir $@)
	unzip -d $@ -o $<
$(KEXT_APPLEALC_SRC):	$(KEXT_APPLEALC_DIR)
$(KEXT_APPLEALC_DIST):	$(KEXT_APPLEALC_SRC)
	mkdir -p $(DIST_KEXT_DIR)
	cp -r $< $@

$(KEXT_BRCMPATCHRAM_ZIP):
	mkdir -p $(dir $@)
	curl -Lo $@ $(KEXT_BRCMPATCHRAM_URL)
$(KEXT_BRCMPATCHRAM_DIR):	$(KEXT_BRCMPATCHRAM_ZIP)
	mkdir -p $@
	unzip -d $@ -o $<
$(KEXT_BRCMPATCHRAM_SRCS):	$(KEXT_BRCMPATCHRAM_DIR)
$(KEXT_BRCMPATCHRAM_DIST):	$$(subst $(DIST_KEXT_DIR),$(KEXT_BRCMPATCHRAM_DIR),$$@)
	mkdir -p $(DIST_KEXT_DIR)
	cp -r $< $@

$(KEXT_CPUFRIEND_ZIP):
	mkdir -p $(dir $@)
	curl -Lo $@ $(KEXT_CPUFRIEND_URL)
$(KEXT_CPUFRIEND_DIR):	$(KEXT_CPUFRIEND_ZIP)
	mkdir -p $(dir $@)
	unzip -d $@ -o $<
$(KEXT_CPUFRIEND_SRC):	$(KEXT_CPUFRIEND_DIR)
$(KEXT_CPUFRIEND_DIST):	$(KEXT_CPUFRIEND_SRC)
	mkdir -p $(DIST_KEXT_DIR)
	cp -r $< $@

$(KEXT_INTELMAUSI_ZIP):
	mkdir -p $(dir $@)
	curl -Lo $@ $(KEXT_INTELMAUSI_URL)
$(KEXT_INTELMAUSI_DIR):	$(KEXT_INTELMAUSI_ZIP)
	mkdir -p $(dir $@)
	unzip -d $@ -o $<
$(KEXT_INTELMAUSI_SRC):	$(KEXT_INTELMAUSI_DIR)
$(KEXT_INTELMAUSI_DIST):	$(KEXT_INTELMAUSI_SRC)
	mkdir -p $(DIST_KEXT_DIR)
	cp -r $< $@

$(KEXT_LILU_ZIP):
	mkdir -p $(dir $@)
	curl -Lo $@ $(KEXT_LILU_URL)
$(KEXT_LILU_DIR):	$(KEXT_LILU_ZIP)
	mkdir -p $(dir $@)
	unzip -d $@ -o $<
$(KEXT_LILU_SRC):	$(KEXT_LILU_DIR)
$(KEXT_LILU_DIST):	$(KEXT_LILU_SRC)
	mkdir -p $(DIST_KEXT_DIR)
	cp -r $< $@

$(KEXT_RTCMEMORYFIXUP_ZIP):
	mkdir -p $(dir $@)
	curl -Lo $@ $(KEXT_RTCMEMORYFIXUP_URL)
$(KEXT_RTCMEMORYFIXUP_DIR):	$(KEXT_RTCMEMORYFIXUP_ZIP)
	mkdir -p $(dir $@)
	unzip -d $@ -o $<
$(KEXT_RTCMEMORYFIXUP_SRC):	$(KEXT_RTCMEMORYFIXUP_DIR)
$(KEXT_RTCMEMORYFIXUP_DIST):	$(KEXT_RTCMEMORYFIXUP_SRC)
	mkdir -p $(DIST_KEXT_DIR)
	cp -r $< $@

$(KEXT_VIRTUALSMC_ZIP):
	mkdir -p $(dir $@)
	curl -Lo $@ $(KEXT_VIRTUALSMC_URL)
$(KEXT_VIRTUALSMC_DIR):	$(KEXT_VIRTUALSMC_ZIP)
	mkdir -p $@
	unzip -d $@ -o $<
$(KEXT_VIRTUALSMC_SRC):	$(KEXT_VIRTUALSMC_DIR)
$(KEXT_VIRTUALSMC_DIST):	$(KEXT_VIRTUALSMC_SRC)
	mkdir -p $(DIST_KEXT_DIR)
	cp -r $< $@

$(KEXT_VOODOOPS2CONTROLLER_ZIP):
	mkdir -p $(dir $@)
	curl -Lo $@ $(KEXT_VOODOOPS2CONTROLLER_URL)
$(KEXT_VOODOOPS2CONTROLLER_DIR):	$(KEXT_VOODOOPS2CONTROLLER_ZIP)
	mkdir -p $(dir $@)
	unzip -d $@ -o $<
$(KEXT_VOODOOPS2CONTROLLER_SRC):	$(KEXT_VOODOOPS2CONTROLLER_DIR)
$(KEXT_VOODOOPS2CONTROLLER_DIST):	$(KEXT_VOODOOPS2CONTROLLER_SRC)
	mkdir -p $(DIST_KEXT_DIR)
	cp -r $< $@

$(KEXT_WHATEVERGREEN_ZIP):
	mkdir -p $(dir $@)
	curl -Lo $@ $(KEXT_WHATEVERGREEN_URL)
$(KEXT_WHATEVERGREEN_DIR):	$(KEXT_WHATEVERGREEN_ZIP)
	mkdir -p $(dir $@)
	unzip -d $@ -o $<
$(KEXT_WHATEVERGREEN_SRC):	$(KEXT_WHATEVERGREEN_DIR)
$(KEXT_WHATEVERGREEN_DIST):	$(KEXT_WHATEVERGREEN_SRC)
	mkdir -p $(DIST_KEXT_DIR)
	cp -r $< $@

$(KEXT_CPUFRIENDDATAPROVIDER_DIST):	$(KEXT_CPUFRIENDDATAPROVIDER_SRC)
	mkdir -p $(DIST_KEXT_DIR)
	cp -r $< $@

$(CONFIG_PLIST_DIST):	$(CONFIG_PLIST_SRC)
	mkdir -p $(dir $@)
	cp -r $< $@

$(ACPI_DIST):	$$(subst $(DIST_DIR),$(SRC_DIR),$$@)
	mkdir -p $(dir $(ACPI_DIST))
	cp -r $< $@

.PHONY:	validate
validate:	$(OPEN_CORE_UTILITY_OCVALIDATE) $(CONFIG_PLIST_SRC)
	$(OPEN_CORE_UTILITY_OCVALIDATE) $(CONFIG_PLIST_SRC)
