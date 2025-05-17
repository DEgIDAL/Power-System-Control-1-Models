# Power Systems Control - EE G4004

These course materials contain Simulink models developed for the graduate course **Power Systems Control EE G4004** at City College of New York (CCNY), instructed by [Panagiotis (Panos) Moutis](https://panay1ot1s.com/).

## Description

This course explores the fundamentals of power systems control and modeling, with the following key components:

- **PI & PID Controller Design** - Explores proportional, integral, and derivative control systems for power applications
- **Wind Power Generation Models** - Simulations for wind turbine control and vector control systems
- **Hydro Power Systems** - Models with and without surge tank configurations
- **Thermal Generation** - Gas and steam turbine power generation models
- **Renewable Integration** - PV string modeling and integration with conventional generation
- **Combined Cycle Analysis** - Complex system modeling for combined cycle power plants

## Simulink Models (MATLAB R2024_b)

This repository contains the following Simulink models:

1. **P_I_D_PI_PID_Controllers** - Directory with controller design examples
2. **Combined_cycle.slx** - Combined cycle power plant modeling and simulation
3. **DFIG.slx** - Doubly-Fed Induction Generator model for wind applications
4. **DFIG_Wind_Vector_Control.slx** - Vector control implementation for DFIG wind systems
5. **Gas_Turbine.slx** - Gas turbine generation model with controls
6. **Hydro_With_and_Without_Surge_Tank.slx** - Hydro power plant models comparing surge tank configurations
7. **PV_string_model.slx** - Photovoltaic string modeling for solar generation
8. **Steam_Turbine.slx** - Steam turbine simulation with associated controls
9. **Wind.slx** - Basic wind generation model
10. **Wind_Cp_Calculation.m** - MATLAB script for calculating wind power coefficient

## Prerequisites

- MATLAB R2024_b or newer
- Simulink
- Power Systems Toolbox
- Control Systems Toolbox
- Optimization Toolbox (recommended)

## Usage

1. Clone this repository
2. Open the desired .slx files in MATLAB R2024_b
3. Each model can be run independently to observe system behavior
4. Modify parameters to explore different control strategies and system responses

## Learning Objectives

Students will learn to:
- Design and implement controllers for various power system applications
- Model conventional and renewable power generation systems
- Analyze system stability and dynamic response
- Optimize control parameters for improved performance
- Integrate different generation sources in a power system

## Related Courses

This course builds upon concepts from **Energy Economics in Electricity Markets EE G3304**, which covers:
- Electricity market stakeholders
- Market functions and operations
- Policy frameworks
- Mathematical models for cost-effective energy systems



Copyright (c) 2025 [CUNY City College]

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
