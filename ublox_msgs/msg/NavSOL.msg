# NAV-SOL (0x01 0x06)
# Navigation Solution Information
#
# This message combines Position, velocity and time solution in ECEF, including accuracy
# figures
#
# std_msgs/Header header
uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 6

uint32 iTOW             # GPS Millisecond time of week [ms]
int32 fTOW              # Fractional Nanoseconds remainder of rounded
                        # ms above, range -500000 .. 500000 [ns]
int16 week              # GPS week (GPS time)

uint8 gpsFix            # GPSfix Type, range 0..5
uint8 GPS_NO_FIX = 0
uint8 GPS_DEAD_RECKONING_ONLY = 1
uint8 GPS_2D_FIX = 2
uint8 GPS_3D_FIX = 3
uint8 GPS_GPS_DEAD_RECKONING_COMBINED = 4
uint8 GPS_TIME_ONLY_FIX = 6

uint8 flags             # Fix Status Flags
uint8 FLAGS_GPSFIXOK = 1      # i.e. within DOP & ACC Masks
uint8 FLAGS_DIFFSOLN = 2      # DGPS used
uint8 FLAGS_WKNSET = 4        # Week Number valid
uint8 FLAGS_TOWSET = 8        # Time of Week valid

int32 ecefX             # ECEF X coordinate [cm]
int32 ecefY             # ECEF Y coordinate [cm]
int32 ecefZ             # ECEF Z coordinate [cm]
uint32 pAcc             # 3D Position Accuracy Estimate [cm]
int32 ecefVX            # ECEF X velocity [cm/s]
int32 ecefVY            # ECEF Y velocity [cm/s]
int32 ecefVZ            # ECEF Z velocity [cm/s]
uint32 sAcc             # Speed Accuracy Estimate [cm/s]
uint16 pDOP             # Position DOP [cm]
uint8 reserved1         # Reserved
uint8 numSV             # Number of SVs used in Nav Solution
uint32 reserved2        # Reserved
