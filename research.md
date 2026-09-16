---
layout: page
title: Research
permalink: /research/
---

Ongoing and completed research projects. Code for each project is on [GitHub](https://github.com/seokyung26).

## 1. Quadruped robot for agricultural field & greenhouse sensing (2025.09 – present)
**Platform:** Unitree Go2 EDU · Jetson AGX Orin · Hesai XT-16 LiDAR + FAST-LIO2 · u-blox F9P RTK-GNSS · RealSense · 3-channel T/RH/CO₂ mast
**Funding:** NRF Master's Research Grant, *Development of Locomotion Algorithms and Autonomous Control Systems for Quadruped Robots Specialized for Korean Agricultural Terrain* (PI, 2025.09–2026.08)

- **Greenhouse microclimate mapping.** Lane-by-lane traversal of a commercial greenhouse with a multi-height sensor mast; per-lane cross-calibration, temporal correction with fixed sensors and self-heating correction; spatial T/RH/CO₂ maps that quantify the representativeness error of single fixed control sensors. *Manuscript in preparation.*
- **Ground-reaction-force-based lateral slope estimation.** 1D-ResNet regression on 64+9 proprioceptive channels over 3 surfaces × 5 slopes; MAE 1.06°, R² 0.92. *KSAM Spring 2026.*
- **M.S. thesis (2026.09–2027.02).** *LiDAR-inertial mapping of soil surface microtopography in sloping upland fields, linked with foot–ground contact response.* Each footstep is treated as a discrete penetration test (per-step auto-zeroing, peak GRF, dF/dt, sinkage, apparent stiffness) and geo-referenced onto the LiDAR DEM; validated with cone index, bulk density, water content, pin-meter roughness and UAV RTK DEM.

[GitHub: quadruped-agri-robot](https://github.com/seokyung26/quadruped-agri-robot)

## 2. Speed-dependent robotic gripper control for tomato harvesting (2024.06 – present)
**System:** myCobot 320 Pi + adaptive gripper · SingleTact CSU15-4.5N force sensor · RealSense D415 + YOLOv8 · Raspberry Pi 5 / Jetson Nano · MQTT · ROS1 MoveIt · VIS–NIR hyperspectral imaging

- Built a real-time force-sensing gripper and a sigmoid force-prediction model (R² ≥ 0.99) from gripper opening and speed; derived the stable gripping window by derivative analysis.
- Tested four loading rates (6.9–15.3 N/s) on standard and cherry tomatoes; viscoelastic contact modelling showed progressive tissue softening with speed, and hyperspectral imaging (800–850 nm) revealed a delayed-damage transition around 10.5–13.1 N/s in standard tomatoes.
- Conclusion: loading rate, not only peak force, should be a gripper control variable.

*Biosystems Engineering, under review (R2, 2026)* · KSAM 2025 (oral, award) · KSAM Fall 2024 (poster, award)
[GitHub: tomato-gripper-speed-control](https://github.com/seokyung26/tomato-gripper-speed-control)

## 3. Air-dome foundation: pull-out FEA, DIC tests and structural sensing (2025.09 – present)
**Project:** Development of a low-energy commercial vertical farm based on an air dome adapted to the Middle-East hot climate (Stage 2, PNU)

- **Abaqus/Standard 3D parametric FEA** of the X-PILE winged pile (wing angle 30–90°, wing size) in sand/sandstone with Mohr–Coulomb soil and frictional contact; mesh-convergence study; manuscript drafted.
- **Laboratory pull-out tests with DIC** (OpenCorr) to visualise soil displacement fields around model piles. *KSAE Fall 2025.*
- **Field monitoring system** for the Damyang air-house: tension load cells, inclinometers, RS-485 accelerometers and IMUs on Raspberry Pi nodes → MQTT → Node-RED / InfluxDB / Grafana on a Jetson Orin Nano.

[GitHub: airdome-foundation-monitoring](https://github.com/seokyung26/airdome-foundation-monitoring)

## 4. Inertial sensors in agriculture: review (2025)
Co-authored a review of IMU applications for agricultural machines (position estimation, navigation) and living targets (livestock behaviour, fruit-tree vibration harvesting), classifying sensor types and data-utilisation techniques. *Korean Journal of Agricultural Science 52(4), 2025.*

## 5. Image-based drought-stress phenotyping of soybean (2023, undergraduate)
RGB time-lapse imaging under controlled drought, leaf-colour standardisation (ImageJ) and a YOLOv8 instance-segmentation model (mAP 0.64) to grade drought damage; used to show that line CMJ199 is more drought-tolerant than PI416937. *PISA Day 2023.*
[GitHub: soybean-drought-phenotyping](https://github.com/seokyung26/soybean-drought-phenotyping)
