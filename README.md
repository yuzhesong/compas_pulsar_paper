# compas_pulsar_paper

0. Please refer to the paper for details: https://arxiv.org/abs/2406.11428

1. The definition of each model is in Table 1 in the paper. 

2. Directory of each model contains the P-Pdot diagram and spatial distribution for both radio and gamma-ray populations for all 10 realisations. 

3. The yaml files for COMPAS simulations are included in the directory for each model. They are compatabile with COMPAS V02.38.05. For computational purposes, each model has three separation COMPAS simulations. Each simulation is then processed through post-processing scripts individually before the final results are collated. 

4. To run a COMPAS simulation with the yaml files in this repo, please use the runSubmiy.py script, and change the 'proper.yaml' to the yaml file of a model.

5. LogNormal distribution for pulsar birth spin period is not properly implemented in COMPAS V02.38.05. It is implemented in the latest version of COMPAS and users wishing to replicate the results of these models can implement this distribution from the current dev. 