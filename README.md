# 8-Ball Pool Video Game

An 8-Ball Pool game implemented in C and VHDL for the Zynq-7000 SoC.
This project demonstrates both hardware and software design through real-time graphics, embedded control, and physics-based game logic.


## Features
- Real-time ball physics and collision detection  
- VGA display and hardware rendering through custom VHDL modules  
- Audio feedback and multi-mode gameplay (8-Ball, 9-Ball, Quickfire)  
- Integrated hardware/software design using Vivado and Vitis


## How to Run
1. Open the project in **Vivado** and generate the bitstream.  
2. Export the hardware including the `.xsa` file to **Vitis**.  
3. Import the `sw/` folder into Vitis as an application project.  
4. Build and program the **Zynq-7000** board.  
5. Connect a monitor (VGA/HDMI) and enjoy the game.


##  Team
- Ryan Martin 
- Rohit Bhardwaj


## License
This project is under Simon Fraser University’s ENSC course.


<p align="center">
  <img width="1070" height="628" alt="image" src="https://github.com/user-attachments/assets/16f702e0-2555-429d-9a12-726cd8f1138d" />
</p>
<p align="center"><em>Screenshot of the 9-Ball mode running on the Zynq-7000 board.</em></p>
