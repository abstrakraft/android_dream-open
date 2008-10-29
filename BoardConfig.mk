
# Dream uses HTC's bootloader, not one from source
#
TARGET_NO_BOOTLOADER := true

# Kernel/Bootloader machine name
#
TARGET_BOOTLOADER_BOARD_NAME := trout

# BOARD_USES_GENERIC_AUDIO := true

# Flash Partition size limits for build sanity checking
#
BOARD_BOOTIMAGE_MAX_SIZE := 2621440
BOARD_RECOVERYIMAGE_MAX_SIZE := 5242880
BOARD_SYSTEMIMAGE_MAX_SIZE := 70778880
BOARD_USERDATAIMAGE_MAX_SIZE := 78381056

# Erase Unit size
#
BOARD_FLASH_BLOCK_SIZE := 131072
