pkg load statistics;
close all;
clear all;

% --- CONFIGURATION --- %
% Load configuration from .cfg file
originalFolder = pwd();
display("loading configuration file");
configurationFile = "./configuration.m";
run(configurationFile);
defined_input_folder = exist("input_folder", "var") == 1;

if !defined_input_folder
  input_folder = uigetdir ();
endif
cd(input_folder);
colnames_color = glob("*[0-9].bmp");
colnames_mask = glob("*[0-9]d.bmp"); 
cd(originalFolder);
addpath(strcat(pwd,"/octave_functions"));
