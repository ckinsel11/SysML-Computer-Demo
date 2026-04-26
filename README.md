# MBSE SysML 2.0 Example Project

## Description

This repository provides an example project demonstrating the use of SysML version 2.0 for Model-Based Systems Engineering (MBSE). It illustrates key concepts and modeling patterns in SysML v2.0 through a comprehensive computer system example, including hardware components, requirements derivation, data models, architectures, interfaces, processes, and profiles.

## Project Structure

- **Computer Example/**: Example model of a personal computer system
  - **Hardware Catalogs/**: Library of hardware components by vendor (Cases, CPU, CPU Cooler, GPU, Memory, Motherboard, Power Supply, Storage)
  - **Hardware Definitions/**: Typical definitions for hardware components (Case, Computer, CPU Cooler, CPU, Memory, Motherboard, Power Supply, Storage, Video Card)
  - **Requirements/**: Example requirements and derivation for a personal computer system

- **Data Model/**: Logical data model definitions

- **Generic Three Layer Architecture/**: Generic Architecture and Approach using terms such as System, Subsystem, Component, where
 - there isn't any specific detail

- **Hardware Interface Library/**: Library of hardware specific interfaces (Cable Connectors, CPU sockets etc.)

- **Interface Standards/**: Library of standard communication type interfaces (HDMI, ETH, USB, etc.)

- **Processes/**: Typical Systems Engineering Process definitions and are specifically used/referenced and executed in this project.

- **Profile/**: SysML Profile. Place to set up and define broad use metadata.

- **Template Files/**: Template for requirements flow down

- **Unit Library/**: Library containing an expanded set of units usually from base SI profile.

## Getting Started

1. Clone or download this repository.
2. Use a SysML v2.0 compliant modeling tool or IDE to open and view the `.sysml` files. 
3. Explore the models starting from the Computer Example folder to understand the system architecture and requirements.

## Requirements

- Knowledge of SysML v2.0 specification
- A SysML v2.0 compliant modeling tool or IDE 

## Contributing

Contributions are welcome. Please submit issues or pull requests for improvements to the example models.

## License

This project is provided as an example under the MIT License.