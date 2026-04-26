# LME-Source-Scaling-Relations
This repository include the developed Linear Mixed Effect models for 23 source scaling parameters from 465 different source-inversion models. The repository contains sample_code.m which can be used for getting prediction for fault length(L). Similarly, predictions can be obtained for other scaling models as well,
Description of sample_code.m:
The model (L) is a linear mixed-effects model created using MATLAB’s fitlme.
Population-level predictions (L_pop) use only fixed effects and represent the average scaling trend.
Group-level predictions (L_group) include both fixed and random effects, capturing variability due to categorical factors (e.g., FM, SVT).
The model predicts log₁₀(L) internally; results are converted back to linear scale.
The .mat file must in the same directory
For the random-effects levels for other parametrs please refer to manuscript in the document folder of the rpository.
