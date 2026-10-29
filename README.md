# Optimum Allocation and Sizing of Energy Storage Systems (ESS) using MOGWO

This repository contains the MATLAB simulation code and load flow modeling files for the research paper:

> **Optimum Allocation and Sizing of Storages with Multi-Objective Grey Wolf Optimizer**  
> *Gunnur Yesilyurt, Cenk Andic, Esra Aydin, and Belgin Turkay*  
> Department of Electrical Engineering, Istanbul Technical University (ITU)

---

## 📌 Project Overview

Integrating Renewable Energy Sources (RES) like Photovoltaics (PV) into distribution grids introduces power quality challenges, including voltage fluctuations and increased line losses. This project implements a **Multi-Objective Grey Wolf Optimizer (MOGWO)** framework integrated with **OpenDSS** via MATLAB's COM interface to solve the allocation, sizing, and daily charge/discharge scheduling problems of Energy Storage Systems (ESS) on a modified **IEEE 123-Bus Test Feeder**.

### Key Highlights
- **Two-Phase Optimization Framework**:
  1. **Phase 1 (Operational Optimization)**: Determines optimal daily charging and discharging profiles per phase/bus.
  2. **Phase 2 (Placement & Sizing)**: Finds optimal bus locations, energy capacities ($kWh$), and power ratings ($kW$) for ESS units.
- **Co-Simulation Environment**: Combines MATLAB's heuristic search capability with OpenDSS's unbalanced multiphase load flow solver.
- **Multi-Objective Pareto Optimization**: Simultaneously minimizes:
  - **Total ESS Cost** (Capital Investment + Operation & Maintenance Costs).
  - **Grid Operational Costs** (Active Power Losses + Voltage Deviation Penalties).

---

## Repository Architecture & File Analysis

The repository contains all script files, objective functions, grid data, and result plotters required to replicate the paper's findings.

```
Simulation_GWO/
├── main.m                         # Project entry point / runner
├── startTheEngine.m               # OpenDSS COM Interface initialization script
├── MOGWO1.m                       # Core Multi-Objective Grey Wolf Optimizer (Phase 1)
├── MOGWO2.m                       # Core Multi-Objective Grey Wolf Optimizer (Phase 2)
├── GWOmain1.m & GWOmain4.m        # Main execution wrappers for Phase 1 & Phase 2
├── fobj1.m & fobj2.m              # Objective evaluation wrappers
├── cost_function.m                # Economic calculation (Capital & O&M costs of ESS)
├── total_deviation.m / 2.m        # Voltage deviation metrics (Over & Under-voltages)
├── case1.m to case4.m             # Test scenario runners (Base, Base+PV, Base+PV+ESS, etc.)
├── adjustload.m, createpv.m...    # Dynamic OpenDSS grid element manipulators
├── GetNonDominatedParticles.m     # Pareto front & archive management helper
├── SelectLeader.m                 # Grid-based archive leader selection strategy
├── Bus_Number_Data.xlsx           # IEEE 123 Bus topological mapping data
├── p_req_a.xlsx - p_req_c.xlsx    # Load and PV generation demand profiles
└── plot_*.m                       # Visualization scripts for SoC, Voltage profiles, Losses
```

### Key Script Descriptions

| File Name | Functionality / Analysis |
| :--- | :--- |
| `startTheEngine.m` | Initializes the OpenDSS engine using Windows COM interface, compiles the IEEE 123-bus circuit, and sets step sizes. |
| `MOGWO1.m` / `MOGWO2.m` | Implements MOGWO dynamics including hypercube generation, non-dominated archive sorting, grid-based selection, and wolf position updates ($\alpha, \beta, \delta$). |
| `cost_function.m` | Calculates total ESS investment ($C_{cap}$) and operating ($C_{O\&M}$) costs using Capital Recovery Factor ($r_f$) with economic parameters ($I_{CBE}, I_{CBP}, B_f, B_v$). |
| `createpv.m` / `createstorage2.m` | Dynamically injects multi-phase PV generators and battery storage systems into OpenDSS at runtime. |
| `adjuststr_with_bestscore.m` | Updates active power dispatch vectors for storages based on optimal decision vectors across 24-hour time steps. |
| `total_deviation.m` | Evaluates penalty factor $P$ for phase voltages straying outside the $[0.95, 1.05]$ p.u. safe operation margin. |

---

## 📊 Study Cases Evaluated

The repository supports running 4 comparative cases:

1. **Case 1 (Base Case)**: Standard IEEE 123-bus feeder without PV or ESS.
2. **Case 2 (Base Case + PV)**: High penetration PV systems added at buses 29, 40, 51, 80, 108, and 160.
3. **Case 3 (Case 2 + Pareto Candidate ESS)**: Optimal placement & sizing of 2 ESS units (Bus 80: 1600 kWh/40 kW; Bus 108: 1410 kWh/70 kW).
4. **Case 4 (Comparative Assessment)**: Extended analysis comparing system response across all configurations.

---

## 🚀 Getting Started

### Prerequisites
- **MATLAB** (R2020a or newer recommended).
- **OpenDSS** (Official EPRI distribution installed on Windows).

### Running the Simulation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/GunnurYesilyurt/simulation_gwo.git
   ```

2. **Launch MATLAB**:
   Ensure OpenDSS is properly registered in system COM interfaces.

3. **Execute the Main Runner**:
   Open MATLAB, navigate to `Simulation_GWO` folder, and run:
   ```matlab
   main
   ```
   Or run specific scenario files (`case1.m`, `case2.m`, `case3.m`) or main optimization (`GWOmain4.m`).

---

## 📜 Citation

If you use this code or benchmark in your research, please cite our paper:

```bibtex
@inproceedings{yesilyurt2024optimum,
  title={Optimum Allocation and Sizing of Storages with Multi-Objective Grey Wolf Optimizer},
  author={Yesilyurt, Gunnur and Andic, Cenk and Aydin, Esra and Turkay, Belgin},
  booktitle={Proceedings of IEEE Conference},
  year={2024}
}
```

---

## 📄 License

This project is released under the MIT License. See `license.txt` for details.