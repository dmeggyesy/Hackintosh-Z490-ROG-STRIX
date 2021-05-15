DefinitionBlock ("", "SSDT", 2, "ACDT", "_UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            // XHC (8086_06ed)
            "XHC", Package()
            {
                "port-count", Buffer() { 0x1A, 0x00, 0x00, 0x00 },
                "ports", Package()
                {
                      "HS01", Package()
                      {
                          "name", Buffer() { "HS01" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB3 - Back - Blue - Top-Top (As USB2)" },
                      },
                      "HS02", Package()
                      {
                          "name", Buffer() { "HS02" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x02, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB3 - Back - Blue - Top-Bottom (As USB2)" },
                      },
                      "HS04", Package()
                      {
                          "name", Buffer() { "HS04" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x04, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB-C - Back (As USB2)" },
                      },
                      "HS06", Package()
                      {
                          "name", Buffer() { "HS06" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x06, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Internal USB2 Header (Both)" },
                      },
                      "HS08", Package()
                      {
                          "name", Buffer() { "HS08" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x08, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB3 - Front (As USB2)" },
                      },
                      "HS09", Package()
                      {
                          "name", Buffer() { "HS09" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x09, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB3 - Back - Blue - Bottom-Top (As USB2)" },
                      },
                      "HS10", Package()
                      {
                          "name", Buffer() { "HS10" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x0A, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB3 - Back - Blue - Bottom-Bottom (As USB2)" },
                      },
                      "HS12", Package()
                      {
                          "name", Buffer() { "HS12" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x0C, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB2 - Back - Black - Top" },
                      },
                      "HS13", Package()
                      {
                          "name", Buffer() { "HS13" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x0D, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB2 - Back - Black - Bottom (BIOS)" },
                      },
                      "HS14", Package()
                      {
                          "name", Buffer() { "HS14" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x0E, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Internal Bluetooth Controller" },
                      },
                      "SS02", Package()
                      {
                          "name", Buffer() { "SS02" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x12, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB3 - Back - Blue - Top-Bottom" },
                      },
                      "SS04", Package()
                      {
                          "name", Buffer() { "SS04" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x14, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB-C - Back (As USB3) (Switching)" },
                      },
                      "SS05", Package()
                      {
                          "name", Buffer() { "SS05" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x15, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB-C - Front (As USB3) (Direction A)" },
                      },
                      "SS08", Package()
                      {
                          "name", Buffer() { "SS08" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x18, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB3 - Front" },
                      },
                      "SS10", Package()
                      {
                          "name", Buffer() { "SS10" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x1A, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "USB3 - Back - Blue - Bottom-Bottom" },
                      },
                },
            },
        })
    }
}
