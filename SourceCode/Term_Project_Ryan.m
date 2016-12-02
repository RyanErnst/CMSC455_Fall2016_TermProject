% File: Term_Project.m
% Assignment: CMSC 455 Term Project, Fall 2016
% Authors: Ryan Ernst, Monica Koepper, Vincent Liu
% Date: 12/06/2016
% Section: 01

% This program performs polynomial fit for earth quake date 

function data = Term_Project_Ryan()
data = load('Term_Project_Workspace.mat');

T = readtable('2015.txt');
date = datetime(T.x_YYY_MM_DD);
time = datetime(T.HH_mm_SS_ss);
T1 = timetable(date, time);
disp(T1);
x = cell2mat(T1);
%disp(x);
z = size(x);

T2 = T.MAG;
a = size(T2);

T3 = T.DEPTH;

n = 17;

earthQuakes = polyfit(T3, T2, 7);
disp(earthQuakes);
%plot(earthQuakes, 'x');
%title('Magnitude vs. Depth');
end
