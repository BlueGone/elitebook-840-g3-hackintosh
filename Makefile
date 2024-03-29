DL_DIR		=	_dl
SRC_DIR		=	src
DIST_DIR	=	EFI
BUILD_TYPE	=	RELEASE
SERIAL_NUMBER	=	W00000000001

OPEN_CORE_VERSION		=	0.7.3

KEXT_AIRPORTBRCMFIXUP_VERSION	=	2.1.3
KEXT_APPLEALC_VERSION		=	1.6.3
KEXT_BRCMPATCHRAM_VERSION	=	2.6.0
KEXT_CPUFRIEND_VERSION		=	1.2.4
KEXT_INTELMAUSI_VERSION		=	1.0.7
KEXT_LILU_VERSION		=	1.5.5
KEXT_RTCMEMORYFIXUP_VERSION	=	1.0.7
KEXT_VIRTUALSMC_VERSION		=	1.2.6
KEXT_VOODOOPS2_VERSION		=	2.2.4
KEXT_WHATEVERGREEN_VERSION	=	1.5.2

OPEN_CORE_URL	=	https://github.com/acidanthera/OpenCorePkg/releases/download/$(OPEN_CORE_VERSION)/OpenCore-$(OPEN_CORE_VERSION)-$(BUILD_TYPE).zip
OPEN_CORE_ZIP	=	$(DL_DIR)/$(notdir $(OPEN_CORE_URL))
OPEN_CORE_DIR	=	$(basename $(OPEN_CORE_ZIP))
OPEN_CORE_SRCS	=	\
	$(OPEN_CORE_DIR)/X64/EFI/OC/Drivers/OpenRuntime.efi \
	$(OPEN_CORE_DIR)/X64/EFI/OC/Drivers/OpenCanopy.efi \
	$(OPEN_CORE_DIR)/X64/EFI/OC/Tools/OpenShell.efi \
	$(OPEN_CORE_DIR)/X64/EFI/OC/OpenCore.efi \
	$(OPEN_CORE_DIR)/X64/EFI/BOOT/BOOTx64.efi

OPEN_CORE_UTILITY_OCVALIDATE	=	$(OPEN_CORE_DIR)/Utilities/ocvalidate/ocvalidate
OPEN_CORE_DIST	=	$(subst $(OPEN_CORE_DIR)/X64/EFI,$(DIST_DIR),$(OPEN_CORE_SRCS))

OCBINARYDATA_URL	=	https://github.com/acidanthera/OcBinaryData/archive/master.zip
OCBINARYDATA_ZIP	=	$(DL_DIR)/OcBinaryData.zip
OCBINARYDATA_DIR	=	$(basename $(OCBINARYDATA_ZIP))
OCBINARYDATA_SRC	=	$(OCBINARYDATA_DIR)/OcBinaryData-master/Resources
OCBINARYDATA_DIST	=	$(DIST_DIR)/OC/Resources

HFS_PLUS_EFI_URL	=	https://github.com/acidanthera/OcBinaryData/blob/master/Drivers/HfsPlus.efi?raw=true
HFS_PLUS_EFI_SRC	=	$(DL_DIR)/HfsPlus.efi
HFS_PLUS_EFI_DIST	=	$(DIST_DIR)/OC/Drivers/HfsPlus.efi

DIST_KEXT_DIR		=	$(DIST_DIR)/OC/Kexts

KEXT_AIRPORTBRCMFIXUP_URL	=	https://github.com/acidanthera/AirportBrcmFixup/releases/download/$(KEXT_AIRPORTBRCMFIXUP_VERSION)/AirportBrcmFixup-$(KEXT_AIRPORTBRCMFIXUP_VERSION)-$(BUILD_TYPE).zip
KEXT_AIRPORTBRCMFIXUP_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_AIRPORTBRCMFIXUP_URL))
KEXT_AIRPORTBRCMFIXUP_DIR	=	$(basename $(KEXT_AIRPORTBRCMFIXUP_ZIP))
KEXT_AIRPORTBRCMFIXUP_SRC	=	$(KEXT_AIRPORTBRCMFIXUP_DIR)/AirportBrcmFixup.kext
KEXT_AIRPORTBRCMFIXUP_DIST	=	$(DIST_KEXT_DIR)/AirportBrcmFixup.kext

KEXT_APPLEALC_URL	=	https://github.com/acidanthera/AppleALC/releases/download/$(KEXT_APPLEALC_VERSION)/AppleALC-$(KEXT_APPLEALC_VERSION)-$(BUILD_TYPE).zip
KEXT_APPLEALC_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_APPLEALC_URL))
KEXT_APPLEALC_DIR	=	$(basename $(KEXT_APPLEALC_ZIP))
KEXT_APPLEALC_SRC	=	$(KEXT_APPLEALC_DIR)/AppleALC.kext
KEXT_APPLEALC_DIST	=	$(DIST_KEXT_DIR)/AppleALC.kext

KEXT_BRCMPATCHRAM_URL	=	https://github.com/acidanthera/BrcmPatchRAM/releases/download/$(KEXT_BRCMPATCHRAM_VERSION)/BrcmPatchRAM-$(KEXT_BRCMPATCHRAM_VERSION)-$(BUILD_TYPE).zip
KEXT_BRCMPATCHRAM_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_BRCMPATCHRAM_URL))
KEXT_BRCMPATCHRAM_DIR	=	$(basename $(KEXT_BRCMPATCHRAM_ZIP))
KEXT_BRCMPATCHRAM_SRCS	=	\
	$(KEXT_BRCMPATCHRAM_DIR)/BrcmBluetoothInjector.kext \
	$(KEXT_BRCMPATCHRAM_DIR)/BrcmFirmwareData.kext \
	$(KEXT_BRCMPATCHRAM_DIR)/BrcmPatchRAM3.kext
KEXT_BRCMPATCHRAM_DIST	=	$(subst $(KEXT_BRCMPATCHRAM_DIR),$(DIST_KEXT_DIR),$(KEXT_BRCMPATCHRAM_SRCS))

KEXT_CPUFRIEND_URL	=	https://github.com/acidanthera/CPUFriend/releases/download/$(KEXT_CPUFRIEND_VERSION)/CPUFriend-$(KEXT_CPUFRIEND_VERSION)-$(BUILD_TYPE).zip
KEXT_CPUFRIEND_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_CPUFRIEND_URL))
KEXT_CPUFRIEND_DIR	=	$(basename $(KEXT_CPUFRIEND_ZIP))
KEXT_CPUFRIEND_SRC	=	$(KEXT_CPUFRIEND_DIR)/CPUFriend.kext
KEXT_CPUFRIEND_DIST	=	$(DIST_KEXT_DIR)/CPUFriend.kext

KEXT_INTELMAUSI_URL	=	https://github.com/acidanthera/IntelMausi/releases/download/$(KEXT_INTELMAUSI_VERSION)/IntelMausi-$(KEXT_INTELMAUSI_VERSION)-$(BUILD_TYPE).zip
KEXT_INTELMAUSI_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_INTELMAUSI_URL))
KEXT_INTELMAUSI_DIR	=	$(basename $(KEXT_INTELMAUSI_ZIP))
KEXT_INTELMAUSI_SRC	=	$(KEXT_INTELMAUSI_DIR)/IntelMausi.kext
KEXT_INTELMAUSI_DIST	=	$(DIST_KEXT_DIR)/IntelMausi.kext

KEXT_LILU_URL	=	https://github.com/acidanthera/Lilu/releases/download/$(KEXT_LILU_VERSION)/Lilu-$(KEXT_LILU_VERSION)-$(BUILD_TYPE).zip
KEXT_LILU_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_LILU_URL))
KEXT_LILU_DIR	=	$(basename $(KEXT_LILU_ZIP))
KEXT_LILU_SRC	=	$(KEXT_LILU_DIR)/Lilu.kext
KEXT_LILU_DIST	=	$(DIST_KEXT_DIR)/Lilu.kext

KEXT_RTCMEMORYFIXUP_URL		=	https://github.com/acidanthera/RTCMemoryFixup/releases/download/$(KEXT_RTCMEMORYFIXUP_VERSION)/RTCMemoryFixup-$(KEXT_RTCMEMORYFIXUP_VERSION)-$(BUILD_TYPE).zip
KEXT_RTCMEMORYFIXUP_ZIP		=	$(DL_DIR)/$(notdir $(KEXT_RTCMEMORYFIXUP_URL))
KEXT_RTCMEMORYFIXUP_DIR		=	$(basename $(KEXT_RTCMEMORYFIXUP_ZIP))
KEXT_RTCMEMORYFIXUP_SRC		=	$(KEXT_RTCMEMORYFIXUP_DIR)/RTCMemoryFixup.kext
KEXT_RTCMEMORYFIXUP_DIST	=	$(DIST_KEXT_DIR)/RTCMemoryFixup.kext

KEXT_VIRTUALSMC_URL	=	https://github.com/acidanthera/VirtualSMC/releases/download/$(KEXT_VIRTUALSMC_VERSION)/VirtualSMC-$(KEXT_VIRTUALSMC_VERSION)-$(BUILD_TYPE).zip
KEXT_VIRTUALSMC_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_VIRTUALSMC_URL))
KEXT_VIRTUALSMC_DIR	=	$(basename $(KEXT_VIRTUALSMC_ZIP))
KEXT_VIRTUALSMC_SRC	=	$(KEXT_VIRTUALSMC_DIR)/Kexts/VirtualSMC.kext
KEXT_VIRTUALSMC_DIST	=	$(DIST_KEXT_DIR)/VirtualSMC.kext

KEXT_VOODOOPS2_URL	=	https://github.com/acidanthera/VoodooPS2/releases/download/$(KEXT_VOODOOPS2_VERSION)/VoodooPS2Controller-$(KEXT_VOODOOPS2_VERSION)-$(BUILD_TYPE).zip
KEXT_VOODOOPS2_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_VOODOOPS2_URL))
KEXT_VOODOOPS2_DIR	=	$(basename $(KEXT_VOODOOPS2_ZIP))
KEXT_VOODOOPS2_SRC	=	$(KEXT_VOODOOPS2_DIR)/VoodooPS2Controller.kext
KEXT_VOODOOPS2_DIST	=	$(DIST_KEXT_DIR)/VoodooPS2Controller.kext

KEXT_WHATEVERGREEN_URL	=	https://github.com/acidanthera/WhateverGreen/releases/download/$(KEXT_WHATEVERGREEN_VERSION)/WhateverGreen-$(KEXT_WHATEVERGREEN_VERSION)-$(BUILD_TYPE).zip
KEXT_WHATEVERGREEN_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_WHATEVERGREEN_URL))
KEXT_WHATEVERGREEN_DIR	=	$(basename $(KEXT_WHATEVERGREEN_ZIP))
KEXT_WHATEVERGREEN_SRC	=	$(KEXT_WHATEVERGREEN_DIR)/WhateverGreen.kext
KEXT_WHATEVERGREEN_DIST	=	$(DIST_KEXT_DIR)/WhateverGreen.kext

KEXT_CPUFRIENDDATAPROVIDER_SRC	=	$(SRC_DIR)/Kexts/CPUFriendDataProvider.kext
KEXT_CPUFRIENDDATAPROVIDER_DIST	=	$(DIST_DIR)/OC/Kexts/CPUFriendDataProvider.kext

KEXT_CTLNAAHCIPORT_URL	=	https://github.com/dortania/OpenCore-Install-Guide/raw/master/extra-files/CtlnaAHCIPort.kext.zip
KEXT_CTLNAAHCIPORT_ZIP	=	$(DL_DIR)/$(notdir $(KEXT_CTLNAAHCIPORT_URL))
KEXT_CTLNAAHCIPORT_DIR	=	$(basename $(KEXT_CTLNAAHCIPORT_ZIP))
KEXT_CTLNAAHCIPORT_SRC	=	$(KEXT_CTLNAAHCIPORT_DIR)/CtlnaAHCIPort.kext
KEXT_CTLNAAHCIPORT_DIST	=	$(DIST_KEXT_DIR)/CtlnaAHCIPort.kext

KEXTS_DIST	=	\
	$(KEXT_AIRPORTBRCMFIXUP_DIST) \
	$(KEXT_APPLEALC_DIST) \
	$(KEXT_BRCMPATCHRAM_DIST) \
	$(KEXT_CPUFRIEND_DIST) \
	$(KEXT_INTELMAUSI_DIST) \
	$(KEXT_LILU_DIST) \
	$(KEXT_RTCMEMORYFIXUP_DIST) \
	$(KEXT_VIRTUALSMC_DIST) \
	$(KEXT_VOODOOPS2_DIST) \
	$(KEXT_WHATEVERGREEN_DIST) \
	$(KEXT_CPUFRIENDDATAPROVIDER_DIST) \
	$(KEXT_CTLNAAHCIPORT_DIST)

ACPI_SRCS	=	\
	$(SRC_DIR)/ACPI/SSDT-EC-USBX.aml \
	$(SRC_DIR)/ACPI/SSDT-PLUG.aml \
	$(SRC_DIR)/ACPI/SSDT-PNLF.aml
ACPI_DIST	=	$(ACPI_SRCS:$(SRC_DIR)/%=$(DIST_DIR)/OC/%)

CONFIG_PLIST_SRC	=	$(SRC_DIR)/config.plist
CONFIG_PLIST_DIST	=	$(DIST_DIR)/OC/config.plist

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
$(OPEN_CORE_DIST):	$$(subst $(DIST_DIR),$(OPEN_CORE_DIR)/X64/EFI,$$@)
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

$(KEXT_VOODOOPS2_ZIP):
	mkdir -p $(dir $@)
	curl -Lo $@ $(KEXT_VOODOOPS2_URL)
$(KEXT_VOODOOPS2_DIR):	$(KEXT_VOODOOPS2_ZIP)
	mkdir -p $(dir $@)
	unzip -d $@ -o $<
$(KEXT_VOODOOPS2_SRC):	$(KEXT_VOODOOPS2_DIR)
$(KEXT_VOODOOPS2_DIST):	$(KEXT_VOODOOPS2_SRC)
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

$(KEXT_CTLNAAHCIPORT_ZIP):
	mkdir -p $(dir $@)
	curl -Lo $@ $(KEXT_CTLNAAHCIPORT_URL)
$(KEXT_CTLNAAHCIPORT_DIR):	$(KEXT_CTLNAAHCIPORT_ZIP)
	mkdir -p $(dir $@)
	unzip -d $@ -o $<
$(KEXT_CTLNAAHCIPORT_SRC):	$(KEXT_CTLNAAHCIPORT_DIR)
$(KEXT_CTLNAAHCIPORT_DIST):	$(KEXT_CTLNAAHCIPORT_SRC)
	mkdir -p $(DIST_KEXT_DIR)
	cp -r $< $@

$(CONFIG_PLIST_DIST):	$(CONFIG_PLIST_SRC)
	mkdir -p $(dir $@)
	sed 's/W00000000001/'${SERIAL_NUMBER}'/g' $< > $@

$(ACPI_DIST):	$$(subst $(DIST_DIR)/OC,$(SRC_DIR),$$@)
	mkdir -p $(dir $(ACPI_DIST))
	cp -r $< $@

.PHONY:	validate
validate:	$(OPEN_CORE_UTILITY_OCVALIDATE) $(CONFIG_PLIST_SRC)
	$(OPEN_CORE_UTILITY_OCVALIDATE) $(CONFIG_PLIST_SRC)

.PHONY:	clean-dl
clean-dl:
	$(RM) -r $(DL_DIR)

.PHONY:	clean-dist
clean-dist:
	$(RM) -r $(DIST_DIR)

.PHONY:	clean
clean:	clean-dl clean-dist
