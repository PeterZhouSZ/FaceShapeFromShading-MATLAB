%% driver for face segmentation

clear all;
close all;

person = 'Oprah_Winfrey';
person = 'Hillary_Clinton';
person = 'Donald_Trump';
person = 'George_W_Bush';
person = 'Zhang_Ziyi';
person = 'Andy_Lau';
path = sprintf('/home/phg/Storage/Data/InternetRecon2/%s/crop', person);

person = 'yaoming';
path = sprintf('/home/phg/Data/InternetRecon0/%s/crop', person);

face_seg(path);