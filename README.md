# Open Loop Dynamics of Zagi Flying Wing

## Introduction

-   **Zagi** is a radio-controlled (RC) flying wing glider introduced in
    1996 by Jerry Teisan in California.
-   Known in the RC community for:
    -   Simplicity
    -   Low cost
    -   High durability --- often referred to as "nearly indestructible"
-   **Construction:** Lightweight expanded polypropylene (EPP) foam
    covered with vinyl
-   **Flight Styles Supported:**
    -   Slope soaring (hill updraft)
    -   Thermal soaring (rising warm air)
    -   Electric-powered aerobatics
    -   Combat flying
-   **No tail surfaces:** Stability and control achieved through wing
    geometry and elevons

### Key Flying-Wing Advantages

-   High aerodynamic efficiency
-   Low drag due to no tail
-   Pitch stability from reflex airfoil
-   Compact and agile structure

> Variants include Zagi 400X, Zagi Fixx, Zagi THL -  all maintaining
> robust and efficient flying-wing principles.

![Zagi Flying Wing](Media/zagi.png)

## Airframe Breakdown

### 1. Wing Platform

-   Type: Swept flying wing (no fuselage or tail)
-   Span: Approximately 1.2 m (varies by model)
-   Planform: Tapered wing with moderate sweep
-   Material: EPP foam, laminated
-   Reinforcement: Carbon or fiberglass spar
-   Purpose:
    -   Enhances natural yaw and pitch stability
    -   Provides efficient lift distribution

### 2. Airfoil

-   Reflex or semi-reflex airfoil
-   Upward curvature near trailing edge creates positive pitching moment
-   Compensates for lack of tail
-   Examples: Zagi-specific foils, MH-series, Eppler reflex profiles
-   Allows trimmed hands-off stable flight

### 3. Control Surfaces (Elevons)

-   Two elevons on the trailing edge
-   Combined function of elevator and aileron
-   Symmetric movement provides pitch control
-   Differential movement provides roll control
-   No rudder - yaw stability through wing sweep and differential drag

### 4. Propulsion (Electric Versions)

-   Pusher motor mounted behind center section
-   Propeller behind trailing edge for improved aerodynamics
-   Battery placed in central fuselage pod

### 5. Stability and Aerodynamics

| Features | Purpose |
|:-----: | :----:|
|Reflex airfoil | Pitch stability (Positive Cm)  |
|Wing Sweep | Directional stability & yaw damping |
|Wing twist or wash out | Improve yaw stability and reduce induced drag |

>Because it's tailless, the zagi requires careful CG placement. Too far back --> unstable pitch oscillations; too forward --> sluggish response
    
## Simualtion of Zagi Flying Wing

>The physical parameters, aerodynamic coefficients and propulsive (Thrust and Motor) coefficients are extracted from "Small Unmanned Aircraft: Theory and Practice" - Randal W Beard and Timothy W McLain

| Parameters | Value |
|:-----: | :----:|
| mass(m) | 1.56 kg  |
| Ixx | 0.1147 kg-$m^2$ |
| Iyy | 0.0576 kg-$m^2$ |
| Izz | 0.1712 kg-$m^2$ |
| Ixz | 0.0015 kg-$m^2$ |
|Wing Area (S)| 0.2589 $m^2$ |
| Wing span (b) | 1.4224 $m$ |
| Mean aerodynamic chord (c) | 0.3302 $m$ |
| $S_{prop}$ | 0.0314 |
| Density ($\rho$)| 1.2682 kg-$m^3$ |
| $k_{motor}$ | 20 |
| $k_{T_p}$ | 0 |
| $k_{\Omega}$ | 0 |
| Oswald efficiency factor ($e$) | 0.9 |   

| Longitudinal Coefficients | Value |
|:-----: | :----:|
| $C_{L_0}$ | 0.09167  |
| $C_{D_0}$ | 0.01631 |
| $C_{m_0}$ | -0.02338 |
| $C_{L_\alpha}$ | 3.5016 |
| $C_{D_\alpha}$ | 0.2108 |
|$C_{m_\alpha}$| -0.5675 |
| $C_{L_q}$ | 2.8932 |
| $C_{D_q}$ | 0 |
| $C_{m_q}$ | -1.3990 |
| $C_{L_{\delta_e}}$ | 0.2724 |
| $C_{D_{\delta_e}}$ | 0.3045 |
| $C_{m_{\delta_e}}$ | -0.3245 |
| $C_{prop}$ | 1.0  |
| $M$ | 50 |
| $\alpha_0$ | 0.4712 |
| $\epsilon$ | 0.1592 |
| $C_{D_p}$ | 0.0254 |

| Lateral Coefficients | Value |
|:-----: | :----:|
| $C_{Y_0}$ | 0  |
| $C_{l_0}$ | 0 |
| $C_{n_0}$ | 0 |
| $C_{Y_\beta}$ | -0.07359 |
| $C_{l_\beta}$ | -0.02854 |
|$C_{n_\beta}$| -0.00040 |
| $C_{Y_p}$ | 0 |
| $C_{l_p}$ | -0.3209 |
| $C_{n_p}$ | -0.01297 |
| $C_{Y_r}$ | 0 |
| $C_{l_r}$ | 0.03066 |
| $C_{n_r}$ | -0.00434 |
| $C_{Y_{\delta_a}}$ | 0  |
|$C_{l_{\delta_a}}$ | -0.1682|
| $C_{n_{\delta_a}}$ | -0.00328 |
