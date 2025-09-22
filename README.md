# Ultrasound Beam Simulation for Medical Imaging

This repository presents our work on ultrasound (US) beam simulation, with applications in medical imaging research. The project includes implementations in both **Python** (via the [PyMust](https://github.com/ulmangt/PyMust) library) and **MATLAB**, offering a comparative and educational resource for researchers and engineers in the field.

## Overview

Ultrasound beamforming is a key process in medical imaging. This project explores the simulation of beam patterns using ray-based modeling. The main goals are to:

- Simulate ultrasound beam propagation through different media.
- Visualize beam profiles using Python and MATLAB.
- Compare results between different implementations.

## Python Implementation

The `Python/Using_PyMust.ipynb` notebook contains:

- Setup and configuration of a simulation domain.
- Definition of physical parameters (sound speed, density, attenuation).
- Configuration of transducers and excitation.
- Visualization of beam patterns using `matplotlib`.

We use the [PyMust](https://github.com/ulmangt/PyMust) package, developed by the Ultrasound Lab at Montana State University.

## MATLAB Implementation

The MATLAB implementation replicates the same steps as in the Python notebook:

- Domain and grid setup.
- Ray tracing for beam simulation.
- Visualization of beam plots.

These scripts are located in the `matlab/` directory.

## Visualizations

Below are examples of the ultrasound beam profiles and delay configurations:

| Visualization | Description |
|---------------|-------------|
| ![Phased Array Probe](visualizations/phased%20array%20probe.png) | Phased Array Probe. |
| ![Transmit Delays](visualizations/Transmit%20Delays.png) | Time delays applied to simulate beam steering. |
| ![Transmit Delays 2](visualizations/Transmit%20Delays2.png) | Alternate configuration of transmit delays. |
| ![Focal Point](visualizations/focal%20point.png) | Focused beam at a single point in the simulation domain. |
| ![Multiple Focal Points](visualizations/multiple%20focal%20points.png) | Configuration simulating multiple beam focus regions. |
| ![MFP Delays](visualizations/MFP%20Delays.png) | Delay profile associated with multiple focal points. |
| ![Diverging Beam](visualizations/diverging.png) | Example of a diverging beam simulation. |

## Contributing
<table>
  <tr>
     <td align="center">
    <a href="https://github.com/Hazem-Raafat" target="_black">
    <img src="https://avatars.githubusercontent.com/u/100636693?v=4" width="150px;" alt="Mohammed Sayed Diab"/>
    <br />
    <sub><b>ِHazam Raafat</b></sub></a>
    </td>
    <td align="center">
    <a href="https://github.com/AbdulrahmanGhitani" target="_black">
    <img src="https://avatars.githubusercontent.com/u/114954706?v=4" width="150px;" alt="Abdulrahman Shawky"/>
    <br />
    <sub><b>Abdulrahman Shawky</b></sub></a>
    </td>
  <td align="center">
    <a href="https://github.com/Ziyad-HF" target="_black">
    <img src="https://avatars.githubusercontent.com/u/99608059?v=4" width="150px;" alt="Ziyad El Fayoumy"/>
    <br />
    <sub><b>Ziyad El Fayoumy</b></sub></a>
    </td>
<td align="center">
    <a href="https://github.com/omarnasser0" target="_black">
    <img src="https://avatars.githubusercontent.com/u/100535160?v=4" width="150px;" alt="omarnasser0"/>
    <br />
    <sub><b>Omar Abdulnasser</b></sub></a>
    </td>
    <td align="center">
    <a href="https://github.com/" target="_black">
    <img src="https://avatars.githubusercontent.com/u/96977876?v=4" width="150px;" alt="Mohammed Sayed Diab"/>
    <br />
    <sub><b>ِAhmad Kamal</b></sub></a>
    </td>
      </tr>
 </table>

