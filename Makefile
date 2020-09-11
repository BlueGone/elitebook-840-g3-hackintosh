DL_DIR		=	_dl
DIST_DIR	=	EFI

OPEN_CORE_URL	=	https://github.com/acidanthera/OpenCorePkg/releases/download/0.5.9/OpenCore-0.5.9-RELEASE.zip
OPEN_CORE_ZIP	=	$(DL_DIR)/$(notdir $(OPEN_CORE_URL))
OPEN_CORE_DIR	=	$(basename $(OPEN_CORE_ZIP))
OPEN_CORE_SRCS	=	\
	$(OPEN_CORE_DIR)/EFI/BOOT/BOOTx64.efi \
	$(OPEN_CORE_DIR)/EFI/OC/Bootstrap/Bootstrap.efi \
	$(OPEN_CORE_DIR)/EFI/OC/Drivers/OpenRuntime.efi \
	$(OPEN_CORE_DIR)/EFI/OC/Tools/OpenShell.efi \
	$(OPEN_CORE_DIR)/EFI/OC/OpenCore.efi
OPEN_CORE_DIST	=	$(subst $(OPEN_CORE_DIR)/EFI,$(DIST_DIR),$(OPEN_CORE_SRCS))

HFS_PLUS_EFI_URL	=	https://github.com/acidanthera/OcBinaryData/blob/master/Drivers/HfsPlus.efi?raw=true
HFS_PLUS_EFI_SRC	=	$(DL_DIR)/HfsPlus.efi
HFS_PLUS_EFI_DIST	=	$(DIST_DIR)/OC/Drivers/HfsPlus.efi

DIST		=	$(OPEN_CORE_DIST) $(HFS_PLUS_EFI_DIST)

.SECONDEXPANSION:

all:	$(DIST)

$(OPEN_CORE_ZIP):
	mkdir -p $(dir $@)
	curl -Lo $@ $(OPEN_CORE_URL)
$(OPEN_CORE_DIR):	$(OPEN_CORE_ZIP)
	mkdir -p $@
	unzip -d $@ -o $<
$(OPEN_CORE_SRCS):	$(OPEN_CORE_DIR)
$(OPEN_CORE_DIST):	$$(subst $(DIST_DIR),$(OPEN_CORE_DIR)/EFI,$$@)
	mkdir -p $(dir $@)
	cp $< $@

$(HFS_PLUS_EFI_SRC):
	mkdir -p $(dir $@)
	curl -Lo $@ $(HFS_PLUS_EFI_URL)
$(HFS_PLUS_EFI_DIST):	$(HFS_PLUS_EFI_SRC)
	mkdir -p $(dir $@)
	cp $< $@
