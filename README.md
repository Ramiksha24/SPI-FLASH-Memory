# SPI Flash Controller – W25Q128JV (Verilog, FPGA)

A complete **SPI Master Controller** for the **W25Q128JV SPI NOR Flash Memory**, implemented in **Verilog HDL** and verified on FPGA hardware using **Vivado ILA & VIO**.

This project supports **JEDEC ID read, data read, page program, and sector erase**, strictly following the timing and command requirements of the W25Q128JV datasheet.

---

## 📌 Features

- SPI Master (Mode 0: CPOL = 0, CPHA = 0)
- Configurable SPI clock frequency
- Full flash command support:
  - Read JEDEC ID
  - Read Data
  - Page Program
  - 4KB Sector Erase
- Automatic Write Enable handling
- Status register polling (BUSY bit)
- Timeout protection to prevent infinite loops
- FSM-based architecture
- Hardware verified using Vivado ILA and VIO

---

## 🏗️ Block Diagram

The controller consists of:
- SPI clock generator
- MOSI/MISO shift registers
- Central FSM for command sequencing
- Busy polling and timeout logic

[Block Diagram](Images/Block Diagram.png)

---

## 🔌 Supported SPI Flash Commands

| Operation | Command | Hex |
|---------|--------|-----|
| Release Power-Down | Release PD | `0xAB` |
| Read JEDEC ID | JEDEC ID | `0x9F` |
| Read Data | Read | `0x03` |
| Write Enable | WREN | `0x06` |
| Page Program | Program | `0x02` |
| Sector Erase (4KB) | Erase | `0x20` |
| Read Status Register | RDSR | `0x05` |

---

## ⚙️ Module Interface

### System Signals
| Signal | Direction | Description |
|------|----------|------------|
| `clk` | Input | System clock |
| `rst_n` | Input | Active-low reset |

### Command Interface
| Signal | Direction | Description |
|------|----------|------------|
| `cmd_read_id` | Input | Read JEDEC ID |
| `cmd_read` | Input | Read data |
| `cmd_program` | Input | Page program |
| `cmd_erase_sector` | Input | Sector erase |

### Data Interface
| Signal | Direction | Description |
|------|----------|------------|
| `address[23:0]` | Input | Flash address |
| `write_data[7:0]` | Input | Data to program |
| `read_data[7:0]` | Output | Data read |
| `jedec_id[23:0]` | Output | Manufacturer + Device ID |

### Status Signals
| Signal | Direction | Description |
|------|----------|------------|
| `busy` | Output | Controller busy |
| `done` | Output | Operation completed |
| `error` | Output | Timeout or error |

### SPI Interface
| Signal | Direction | Description |
|------|----------|------------|
| `spi_cs_n` | Output | Chip Select (Active Low) |
| `spi_sck` | Output | SPI Clock |
| `spi_mosi` | Output | Master Out |
| `spi_miso` | Input | Master In |

---


##🚀 Future Improvements

Multi-byte burst read/write

FIFO-based data buffering

AXI / Wishbone interface

DMA-based flash access

Interrupt-driven completion signaling
