# Causal Inference with Multilayer Network Data

This set of mini-lectures introduces the audience to _multilayer_ network data, how to build them, and teach them how to perform causal inference. By doing live demonstrations, participants will also learn how to use a server on the cloud for scientific computing and database management. The power of live coding within Jupyter Notebooks with a Python and Stata kernel will be demonstrated as well as the versatility of PostgreSQL for easy network construction. At the end of these mini-lectures participants will be able to: 

1. Implement state-of-the-art Econometric methods for causal inference using network data.
2. Use Jupyter Notebooks for their own research projects .
3. See the power of SQL for the construction of networks.

# Description of the lecture notes

- Lecture 1: Quick start with PostgreSQL on the cloud and the SQL language; (b) How to construct network data with SQL; (c) An introduction to the NetworkX library; (d) Network visualization tools; (e) Introduction to network statistics using the NetworkX library; (f) Multilayer network statistics and visualization tools

- Lecture 2: Presentation of the papers "On the Identification and Estimation of Endogenous Peer Effects in Multiplex Networks," by Juan Estrada, Kim Huynh, David Jacho-Chavez, and Leonardo Sanchez-Aragon, and "On the Estimation of Social Effects with Observational Network Data and Random Assignment," by Julian Chan, Juan Estrada, Kim P. Huynh, David T. Jacho-Chavez, Tom Lam and Leonardo Sanchez-Aragon.

- Lecture 3: (a) Present the Stata implementation of the endogenous linear in means model presented in Lecture 1 described in the paper "netivreg: Estimation of Peer Effects in Endogenous Social Networks," by Pablo Estrada, Juan Estrada, Kim Huynh, David Jacho-Chavez, and Leonardo Sanchez-Aragon.

# Description of the folders and files

## Folders
1. The folders ch1_intro_networks, ch2_causal_inference, ch3_netivreg contain the ```jupyter notebooks``` and png files to construct the lecture notes for each chapter (presentation). 

2. The folder data contains the dataframes that are required to successfully execute the code in the lecture notes. There are three sub-folders:
    
    - ```csv``` contains data at the article level for all peer-reviewed articles published in 4 out of the top 5 general-interest journals in economics, namely the American Economics Review (AER), Econometrica (ECA), the Journal of Political Economy (JPE), and the Quarterly Journal of Economics (QJE) for the years 2000, 2001 and 2002. It also contains the edge lists for the coauthors and alumni networks at the article level.
    
    - ```sql``` contains the csv files that can be used to construct the SQL database illustrated in presentation 4 (pres_4).
    
    - ```stata``` contains the same data as in the ```csv``` file but in dta format.
    
4. The folder sql_queries contains the queries used to create the edge lists in presentation 4 (pres_4). These queries are in SQL format and will be used during the live demonstrations of the material.

5. The folder ```muxViz-master``` contains the installation of the muxViz package used to perform multilayer network analysis. Inside this folder, the direction muxViz-master\data\Coauthors contains the required text files to import the co-authorship and alumni networks into the muxViz environment. This program requires R and Rtoools and Octave to run. The illustration of the use of this program will be limited to live demonstrations.

### Files

The text file packages.txt contains all the packages that are required to successfully run the code in the lecture notes. For facility, this repository also includes the file ```multilayer.yml``` which is a copy of the Anaconda virtual environment used to create these lecture notes. To create a copy of the environment in your local computer and activate it, run the following code

```conda
conda env create -f multilayer.yml
conda activate multilayer
```

3. The file run_muxviz.R is used to run the muxViz program in R.

# Required Software

To successfully run the Jupyter Notebooks you need to have a local installation of the following programs:

1. Python (version 3.7.6 was used)
2. R (version 4.0.3 was used)
4. Stata 16 or higher

### Notes

If you want to run the **muxViz** program these additional programs are required:

1. Rtools
2. Octave (5.2.0 was used)

If you are using Windows, you need to make Octave and Rtools binaries available in your PATH.


If you want to use the **Tikzmagic** to generate the latex figures, you require to install:

1. MikTex
2. ImageMagick
3. Ghostscript. 

The installation of these programs is purely optional, you can still run the code without them, but you will not be able to generate the figures. Also consider that after installing Ghostscript, if you are using windows, you need to make the GhostScript binaries available in your PATH. This [web page](https://dspillustrations.com/pages/pages/setting-up-anaconda.html) contains a useful step by step of how to set up Tikzmagic in Windows and Linux (you can safely ignore most of the sections and only focus on *Setting up Latex and Tikzmagic*).

⚠ The lecture notes contain code in Python, R and Stata. To be able to run R and Stata code, you need to have their functional kernels in Jupyter. Most of the steps should be completed after creating the adequate virtual enviroment. However, there are often problems with the communication of the kernels and the installation of the programs. This [web page](https://bookdown.org/arnold_c/repro-research/3-1-jupyter-notebooks.html) contains useful documentation of the process.
