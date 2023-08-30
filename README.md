# Infraestrutura de Hardware - Projeto RISC-V Pipeline 🚀

Este repositório contém os arquivos base para o projeto da disciplina Infraestrutura de Hardware (IF674) no CIn-UFPE. O objetivo do projeto é implementar instruções em um processador RISC-V usando SystemVerilog.

---

## 📝 Instruções

A tabela abaixo mostra o status das instruções implementadas até o momento:

| # | Instrução | Implementada | Testada | Funcionando |
|---|-----------|:-----------:|:-------:|:-----------:|
| 1 | `BEQ`     |     ✅     |   ✅   |     ✅     |
| 2 | `LW`      |     ✅     |   ✅   |     ✅     |
| 3 | `SW`      |     ✅     |   ✅   |     ✅     |
| 4 | `ADD`     |     ✅     |   ✅   |     ✅     |
| 5 | `AND`     |     ✅     |   ✅   |     ✅     |

Seu objetivo é implementar as instruções restantes listadas abaixo:

| # | Instrução | Implementada | Testada | Funcionando |
|---|-----------|:-----------:|:-------:|:-----------:|
| 1  | `JAL`     |      ✅     |    ✅    |      ✅      |
| 2  | `JALR`    |      ✅     |    ✅    |      ✅      |
| 3  | `BNE`     |      ✅     |    ✅    |      ✅      |
| 4  | `BLT`     |      ✅     |    ✅    |      ✅      |
| 5  | `BGE`     |      ✅     |    ✅    |      ✅      |
| 6  | `LB`      |      ✅     |    ✅    |      ✅      |
| 7  | `LH`      |      ✅     |    ✅    |      ✅      |
| 8  | `LBU`     |      ✅     |    ✅    |      ✅      |
| 9  | `SB`      |      ✅     |    ✅    |      ✅      |
| 10 | `SH`      |      ✅     |    ✅    |      ✅      |
| 11 | `SLTI`    |      ✅     |    ✅    |      ✅      |
| 12 | `ADDI`    |      ✅     |    ✅    |      ✅      |
| 13 | `SLLI`    |      ✅     |    ✅    |      ✅      |
| 14 | `SRLI`    |      ✅     |    ✅    |      ✅      |
| 15 | `SRAI`    |      ✅     |    ✅    |      ✅      |
| 16 | `SUB`     |      ✅     |    ✅    |      ✅      |
| 17 | `SLT`     |      ✅     |    ✅    |      ✅      |
| 18 | `XOR`     |      ✅     |    ✅    |      ✅      |
| 19 | `OR`      |      ✅     |    ✅    |      ✅      |
| 20 | `LUI`     |      ✅     |    ✅    |      ✅      |
| 21 | `HALT`    |      ❌     |    ❌    |      ❌      |

### Integrantes
    Giovanna de Cassia Silva
    Thyago Barbosa Soares
    Wilton Alves Sales