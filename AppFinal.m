function varargout = AppFinal(varargin)
% APPFINAL MATLAB code for AppFinal.fig
%      APPFINAL, by itself, creates a new APPFINAL or raises the existing
%      singleton*.
%
%      H = APPFINAL returns the handle to a new APPFINAL or the handle to
%      the existing singleton*.
%
%      APPFINAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in APPFINAL.M with the given input arguments.
%
%      APPFINAL('Property','Value',...) creates a new APPFINAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AppFinal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AppFinal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AppFinal

% Last Modified by GUIDE v2.5 20-Jun-2021 16:20:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AppFinal_OpeningFcn, ...
                   'gui_OutputFcn',  @AppFinal_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT
%%%%%%%%%%%%Clases %%%%%%%%%%%%%%%%%%%5
%SE CARGARON LAS SEÑALES [ DE MANERA MANUAL] PARA GENERAR POSTERIORMENTE
%LOS VECTORES DE LPC DE LAS 200 SEÑALES, Y GENERAR EL VECTOR LPC PROMEDIO
%DE CADA UNA DE LAS CLASES.
%¿por qué solo 2000 datos? TOMAR TODA LA SEÑAL DE AUDIO (SERGIO 22-05-2021)
%[C1,fs]=audioread("cero1,wav");CERO(:,1)=lpc(C1,20); %SERGIO 22-05-2021
[C1, fs] = audioread("cero1.wav");CERO(:,1)=lpc(C1(1:2000),20);
[C2, fs] = audioread("cero2.wav");CERO(:,2)=lpc(C2(1:2000),20);
[C3, fs] = audioread("cero3.wav");CERO(:,3)=lpc(C3(1:2000),20);
[C4, fs] = audioread("cero4.wav");CERO(:,4)=lpc(C4(1:2000),20);
[C5, fs] = audioread("cero5.wav");CERO(:,5)=lpc(C5(1:2000),20);
[C6, fs] = audioread("cero6.wav");CERO(:,6)=lpc(C6(1:2000),20);
[C7, fs] = audioread("cero7.wav");CERO(:,7)=lpc(C7(1:2000),20);
[C8, fs] = audioread("cero8.wav");CERO(:,8)=lpc(C8(1:2000),20);
[C9, fs] = audioread("cero9.wav");CERO(:,9)=lpc(C9(1:2000),20);
[C10, fs] = audioread("cero10.wav");CERO(:,10)=lpc(C10(1:2000),20);
[C11, fs] = audioread("cero11.wav");CERO(:,11)=lpc(C11(1:2000),20);
[C12, fs] = audioread("cero12.wav");CERO(:,12)=lpc(C12(1:2000),20);
[C13, fs] = audioread("cero13.wav");CERO(:,13)=lpc(C13(1:2000),20);
[C14, fs] = audioread("cero14.wav");CERO(:,14)=lpc(C14(1:2000),20);
[C15, fs] = audioread("cero15.wav");CERO(:,15)=lpc(C15(1:2000),20);
[C16, fs] = audioread("cero16.wav");CERO(:,16)=lpc(C16(1:2000),20);
[C17, fs] = audioread("cero17.wav");CERO(:,17)=lpc(C17(1:2000),20);
[C18, fs] = audioread("cero18.wav");CERO(:,18)=lpc(C18(1:2000),20);
[C19, fs] = audioread("cero19.wav");CERO(:,19)=lpc(C19(1:2000),20);
[C20, fs] = audioread("cero20.wav");CERO(:,20)=lpc(C20(1:2000),20);
global meanCERO
meanCERO=mean(CERO,2);

[U1, fs] = audioread("uno1.wav");UNO(:,1)=lpc(U1(1:2000),20);
[U2, fs] = audioread("uno2.wav");UNO(:,2)=lpc(U2(1:2000),20);
[U3, fs] = audioread("uno3.wav");UNO(:,3)=lpc(U3(1:2000),20);
[U4, fs] = audioread("uno4.wav");UNO(:,4)=lpc(U4(1:2000),20);
[U5, fs] = audioread("uno5.wav");UNO(:,5)=lpc(U5(1:2000),20);
[U6, fs] = audioread("uno6.wav");UNO(:,6)=lpc(U6(1:2000),20);
[U7, fs] = audioread("uno7.wav");UNO(:,7)=lpc(U7(1:2000),20);
[U8, fs] = audioread("uno8.wav");UNO(:,8)=lpc(U8(1:2000),20);
[U9, fs] = audioread("uno9.wav");UNO(:,9)=lpc(U9(1:2000),20);
[U10, fs] = audioread("uno10.wav");UNO(:,10)=lpc(U10(1:2000),20);
[U11, fs] = audioread("uno11.wav");UNO(:,11)=lpc(U11(1:2000),20);
[U12, fs] = audioread("uno12.wav");UNO(:,12)=lpc(U12(1:2000), 20);
[U13, fs] = audioread("uno13.wav");UNO(:,13)=lpc(U13(1:2000),20);
[U14, fs] = audioread("uno14.wav");UNO(:,14)=lpc(U14(1:2000),20);
[U15, fs] = audioread("uno15.wav");UNO(:,15)=lpc(U15(1:2000),20);
[U16, fs] = audioread("uno16.wav");UNO(:,16)=lpc(U16(1:2000),20);
[U17, fs] = audioread("uno17.wav");UNO(:,17)=lpc(U17(1:2000),20);
[U18, fs] = audioread("uno18.wav");UNO(:,18)=lpc(U18(1:2000),20);
[U19, fs] = audioread("uno19.wav");UNO(:,19)=lpc(U19(1:2000),20);
[U20, fs] = audioread("uno20.wav");UNO(:,20)=lpc(U20(1:2000),20);
global meanUNO
meanUNO=mean(UNO,2);


[D1, fs] = audioread("dos1.wav");DOS(:,1)=lpc(D1(1:2000),20);
[D2, fs] = audioread("dos2.wav");DOS(:,2)=lpc(D2(1:2000),20);
[D3, fs] = audioread("dos3.wav");DOS(:,3)=lpc(D3(1:2000),20);
[D4, fs] = audioread("dos4.wav");DOS(:,4)=lpc(D4(1:2000),20);
[D5, fs] = audioread("dos5.wav");DOS(:,5)=lpc(D5(1:2000),20);
[D6, fs] = audioread("dos6.wav");DOS(:,6)=lpc(D6(1:2000),20);
[D7, fs] = audioread("dos7.wav");DOS(:,7)=lpc(D7(1:2000),20);
[D8, fs] = audioread("dos8.wav");DOS(:,8)=lpc(D8(1:2000),20);
[D9, fs] = audioread("dos9.wav");DOS(:,9)=lpc(D9(1:2000),20);
[D10, fs] = audioread("dos10.wav");DOS(:,10)=lpc(D10(1:2000),20);
[D11, fs] = audioread("dos11.wav");DOS(:,11)=lpc(D11(1:2000),20);
[D12, fs] = audioread("dos12.wav");DOS(:,12)=lpc(D12(1:2000),20);
[D13, fs] = audioread("dos13.wav");DOS(:,13)=lpc(D13(1:2000),20);
[D14, fs] = audioread("dos14.wav");DOS(:,14)=lpc(D14(1:2000),20);
[D15, fs] = audioread("dos15.wav");DOS(:,15)=lpc(D15(1:2000),20);
[D16, fs] = audioread("dos16.wav");DOS(:,16)=lpc(D16(1:2000),20);
[D17, fs] = audioread("dos17.wav");DOS(:,17)=lpc(D17(1:2000),20);
[D18, fs] = audioread("dos18.wav");DOS(:,18)=lpc(D18(1:2000),20);
[D19, fs] = audioread("dos19.wav");DOS(:,19)=lpc(D19(1:2000),20);
[D20, fs] = audioread("dos20.wav");DOS(:,20)=lpc(D20(1:2000),20);
global meanDOS
meanDOS=mean(DOS,2);


[T1, fs] = audioread("tres1.wav");TRES(:,1)=lpc(T1(1:2000),20);
[T2, fs] = audioread("tres2.wav");TRES(:,2)=lpc(T2(1:2000),20);
[T3, fs] = audioread("tres3.wav");TRES(:,3)=lpc(T3(1:2000),20);
[T4, fs] = audioread("tres4.wav");TRES(:,4)=lpc(T4(1:2000),20);
[T5, fs] = audioread("tres5.wav");TRES(:,5)=lpc(T5(1:2000),20);
[T6, fs] = audioread("tres6.wav");TRES(:,6)=lpc(T6(1:2000),20);
[T7, fs] = audioread("tres7.wav");TRES(:,7)=lpc(T7(1:2000),20);
[T8, fs] = audioread("tres8.wav");TRES(:,8)=lpc(T8(1:2000),20);
[T9, fs] = audioread("tres9.wav");TRES(:,9)=lpc(T9(1:2000),20);
[T10, fs] = audioread("tres10.wav");TRES(:,10)=lpc(T10(1:2000),20);
[T11, fs] = audioread("tres11.wav");TRES(:,11)=lpc(T11(1:2000),20);
[T12, fs] = audioread("tres12.wav");TRES(:,12)=lpc(T12(1:2000),20);
[T13, fs] = audioread("tres13.wav");TRES(:,13)=lpc(T13(1:2000),20);
[T14, fs] = audioread("tres14.wav");TRES(:,14)=lpc(T14(1:2000),20);
[T15, fs] = audioread("tres15.wav");TRES(:,15)=lpc(T15(1:2000),20);
[T16, fs] = audioread("tres16.wav");TRES(:,16)=lpc(T16(1:2000),20);
[T17, fs] = audioread("tres17.wav");TRES(:,17)=lpc(T17(1:2000),20);
[T18, fs] = audioread("tres18.wav");TRES(:,18)=lpc(T18(1:2000),20);
[T19, fs] = audioread("tres19.wav");TRES(:,19)=lpc(T19(1:2000),20);
[T20, fs] = audioread("tres20.wav");TRES(:,20)=lpc(T20(1:2000),20);
global meanTRES
meanTRES=mean(TRES,2);



[Q1, fs] = audioread("cuatro1.wav");CUATRO(:,1)=lpc(Q1(1:2000),20);
[Q2, fs] = audioread("cuatro2.wav");CUATRO(:,2)=lpc(Q2(1:2000),20);
[Q3, fs] = audioread("cuatro3.wav");CUATRO(:,3)=lpc(Q3(1:2000),20);
[Q4, fs] = audioread("cuatro4.wav");CUATRO(:,4)=lpc(Q4(1:2000),20);
[Q5, fs] = audioread("cuatro5.wav");CUATRO(:,5)=lpc(Q5(1:2000),20);
[Q6, fs] = audioread("cuatro6.wav");CUATRO(:,6)=lpc(Q6(1:2000),20);
[Q7, fs] = audioread("cuatro7.wav");CUATRO(:,7)=lpc(Q7(1:2000),20);
[Q8, fs] = audioread("cuatro8.wav");CUATRO(:,8)=lpc(Q8(1:2000),20);
[Q9, fs] = audioread("cuatro9.wav");CUATRO(:,9)=lpc(Q9(1:2000),20);
[Q10, fs] = audioread("cuatro10.wav");CUATRO(:,10)=lpc(Q10(1:2000),20);
[Q11, fs] = audioread("cuatro11.wav");CUATRO(:,11)=lpc(Q11(1:2000),20);
[Q12, fs] = audioread("cuatro12.wav");CUATRO(:,12)=lpc(Q12(1:2000),20);
[Q13, fs] = audioread("cuatro13.wav");CUATRO(:,13)=lpc(Q13(1:2000),20);
[Q14, fs] = audioread("cuatro14.wav");CUATRO(:,14)=lpc(Q14(1:2000),20);
[Q15, fs] = audioread("cuatro15.wav");CUATRO(:,15)=lpc(Q15(1:2000),20);
[Q16, fs] = audioread("cuatro16.wav");CUATRO(:,16)=lpc(Q16(1:2000),20);
[Q17, fs] = audioread("cuatro17.wav");CUATRO(:,17)=lpc(Q17(1:2000),20);
[Q18, fs] = audioread("cuatro18.wav");CUATRO(:,18)=lpc(Q18(1:2000),20);
[Q19, fs] = audioread("cuatro19.wav");CUATRO(:,19)=lpc(Q19(1:2000),20);
[Q20, fs] = audioread("cuatro20.wav");CUATRO(:,20)=lpc(Q20(1:2000),20);
global meanCUATRO
meanCUATRO=mean(CUATRO,2);



[Ci1, fs] = audioread("cinco1.wav");CINCO(:,1)=lpc(Ci1(1:2000),20);
[Ci2, fs] = audioread("cinco2.wav");CINCO(:,2)=lpc(Ci2(1:2000),20);
[Ci3, fs] = audioread("cinco3.wav");CINCO(:,3)=lpc(Ci3(1:2000),20);
[Ci4, fs] = audioread("cinco4.wav");CINCO(:,4)=lpc(Ci4(1:2000),20);
[Ci5, fs] = audioread("cinco5.wav");CINCO(:,5)=lpc(Ci5(1:2000),20);
[Ci6, fs] = audioread("cinco6.wav");CINCO(:,6)=lpc(Ci6(1:2000),20);
[Ci7, fs] = audioread("cinco7.wav");CINCO(:,7)=lpc(Ci7(1:2000),20);
[Ci8, fs] = audioread("cinco8.wav");CINCO(:,8)=lpc(Ci8(1:2000),20);
[Ci9, fs] = audioread("cinco9.wav");CINCO(:,9)=lpc(Ci9(1:2000),20);
[Ci10, fs] = audioread("cinco10.wav");CINCO(:,10)=lpc(Ci10(1:2000),20);
[Ci11, fs] = audioread("cinco11.wav");CINCO(:,11)=lpc(Ci11(1:2000),20);
[Ci12, fs] = audioread("cinco12.wav");CINCO(:,12)=lpc(Ci12(1:2000),20);
[Ci13, fs] = audioread("cinco13.wav");CINCO(:,13)=lpc(Ci13(1:2000),20);
[Ci14, fs] = audioread("cinco14.wav");CINCO(:,14)=lpc(Ci14(1:2000),20);
[Ci15, fs] = audioread("cinco15.wav");CINCO(:,15)=lpc(Ci15(1:2000),20);
[Ci16, fs] = audioread("cinco16.wav");CINCO(:,16)=lpc(Ci16(1:2000),20);
[Ci17, fs] = audioread("cinco17.wav");CINCO(:,17)=lpc(Ci17(1:2000),20);
[Ci18, fs] = audioread("cinco18.wav");CINCO(:,18)=lpc(Ci18(1:2000),20);
[Ci19, fs] = audioread("cinco19.wav");CINCO(:,19)=lpc(Ci19(1:2000),20);
[Ci20, fs] = audioread("cinco20.wav");CINCO(:,20)=lpc(Ci20(1:2000),20);
global meanCINCO
meanCINCO=mean(CINCO,2);

[S1, fs] = audioread("seis1.wav");UNO(:,1)=lpc(S1(1:2000),20);
[S2, fs] = audioread("seis2.wav");UNO(:,2)=lpc(S2(1:2000),20);
[S3, fs] = audioread("seis3.wav");UNO(:,3)=lpc(S3(1:2000),20);
[S4, fs] = audioread("seis4.wav");UNO(:,4)=lpc(S4(1:2000),20);
[S5, fs] = audioread("seis5.wav");UNO(:,5)=lpc(S5(1:2000),20);
[S6, fs] = audioread("seis6.wav");SEIS(:,6)=lpc(S6(1:2000),20);
[S7, fs] = audioread("seis7.wav");SEIS(:,7)=lpc(S7(1:2000),20);
[S8, fs] = audioread("seis8.wav");SEIS(:,8)=lpc(S8(1:2000),20);
[S9, fs] = audioread("seis9.wav");SEIS(:,9)=lpc(S9(1:2000),20);
[S10, fs] = audioread("seis10.wav");SEIS(:,10)=lpc(S10(1:2000),20);
[S11, fs] = audioread("seis11.wav");SEIS(:,11)=lpc(S11(1:2000),20);
[S12, fs] = audioread("seis12.wav");SEIS(:,12)=lpc(S12(1:2000), 20);
[S13, fs] = audioread("seis13.wav");SEIS(:,13)=lpc(S13(1:2000),20);
[S14, fs] = audioread("seis14.wav");SEIS(:,14)=lpc(S14(1:2000),20);
[S15, fs] = audioread("seis15.wav");SEIS(:,15)=lpc(S15(1:2000),20);
[S16, fs] = audioread("seis16.wav");SEIS(:,16)=lpc(S16(1:2000),20);
[S17, fs] = audioread("seis17.wav");SEIS(:,17)=lpc(S17(1:2000),20);
[S18, fs] = audioread("seis18.wav");SEIS(:,18)=lpc(S18(1:2000),20);
[S19, fs] = audioread("seis19.wav");SEIS(:,19)=lpc(S19(1:2000),20);
[S20, fs] = audioread("seis20.wav");SEIS(:,20)=lpc(S20(1:2000),20);
global meanSEIS
meanSEIS=mean(SEIS,2);


[P1, fs] = audioread("siete1.wav");SIETE(:,1)=lpc(P1(1:2000),20);
[P2, fs] = audioread("siete2.wav");SIETE(:,2)=lpc(P2(1:2000),20);
[P3, fs] = audioread("siete3.wav");SIETE(:,3)=lpc(P3(1:2000),20);
[P4, fs] = audioread("siete4.wav");SIETE(:,4)=lpc(P4(1:2000),20);
[P5, fs] = audioread("siete5.wav");SIETE(:,5)=lpc(P5(1:2000),20);
[P6, fs] = audioread("siete6.wav");SIETE(:,6)=lpc(P6(1:2000),20);
[P7, fs] = audioread("siete7.wav");SIETE(:,7)=lpc(P7(1:2000),20);
[P8, fs] = audioread("siete8.wav");SIETE(:,8)=lpc(P8(1:2000),20);
[P9, fs] = audioread("siete9.wav");SIETE(:,9)=lpc(P9(1:2000),20);
[P10, fs] = audioread("siete10.wav");SIETE(:,10)=lpc(P10(1:2000),20);
[P11, fs] = audioread("siete11.wav");SIETE(:,11)=lpc(P11(1:2000),20);
[P12, fs] = audioread("siete12.wav");SIETE(:,12)=lpc(P12(1:2000),20);
[P13, fs] = audioread("siete13.wav");SIETE(:,13)=lpc(P13(1:2000),20);
[P14, fs] = audioread("siete14.wav");SIETE(:,14)=lpc(P14(1:2000),20);
[P15, fs] = audioread("siete15.wav");SIETE(:,15)=lpc(P15(1:2000),20);
[P16, fs] = audioread("siete16.wav");SIETE(:,16)=lpc(P16(1:2000),20);
[P17, fs] = audioread("siete17.wav");SIETE(:,17)=lpc(P17(1:2000),20);
[P18, fs] = audioread("siete18.wav");SIETE(:,18)=lpc(P18(1:2000),20);
[P19, fs] = audioread("siete19.wav");SIETE(:,19)=lpc(P19(1:2000),20);
[P20, fs] = audioread("siete20.wav");SIETE(:,20)=lpc(P20(1:2000),20);
global meanSIETE
meanSIETE=mean(SIETE,2);


[O1, fs] = audioread("ocho1.wav");OCHO(:,1)=lpc(O1(1:2000),20);
[O2, fs] = audioread("ocho2.wav");OCHO(:,2)=lpc(O2(1:2000),20);
[O3, fs] = audioread("ocho3.wav");OCHO(:,3)=lpc(O3(1:2000),20);
[O4, fs] = audioread("ocho4.wav");OCHO(:,4)=lpc(O4(1:2000),20);
[O5, fs] = audioread("ocho5.wav");OCHO(:,5)=lpc(O5(1:2000),20);
[O6, fs] = audioread("ocho6.wav");OCHO(:,6)=lpc(O6(1:2000),20);
[O7, fs] = audioread("ocho7.wav");OCHO(:,7)=lpc(O7(1:2000),20);
[O8, fs] = audioread("ocho8.wav");OCHO(:,8)=lpc(O8(1:2000),20);
[O9, fs] = audioread("ocho9.wav");OCHO(:,9)=lpc(O9(1:2000),20);
[O10, fs] = audioread("ocho10.wav");OCHO(:,10)=lpc(O10(1:2000),20);
[O11, fs] = audioread("ocho11.wav");OCHO(:,11)=lpc(O11(1:2000),20);
[O12, fs] = audioread("ocho12.wav");OCHO(:,12)=lpc(O12(1:2000),20);
[O13, fs] = audioread("ocho13.wav");OCHO(:,13)=lpc(O13(1:2000),20);
[O14, fs] = audioread("ocho14.wav");OCHO(:,14)=lpc(O14(1:2000),20);
[O15, fs] = audioread("ocho15.wav");OCHO(:,15)=lpc(O15(1:2000),20);
[O16, fs] = audioread("ocho16.wav");OCHO(:,16)=lpc(O16(1:2000),20);
[O17, fs] = audioread("ocho17.wav");OCHO(:,17)=lpc(O17(1:2000),20);
[O18, fs] = audioread("ocho18.wav");OCHO(:,18)=lpc(O18(1:2000),20);
[O19, fs] = audioread("ocho19.wav");OCHO(:,19)=lpc(O19(1:2000),20);
[O20, fs] = audioread("ocho20.wav");OCHO(:,20)=lpc(O20(1:2000),20);
global meanOCHO
meanOCHO=mean(OCHO,2);



[N1, fs] = audioread("nueve1.wav");NUEVE(:,1)=lpc(N1(1:2000),20);
[N2, fs] = audioread("nueve2.wav");NUEVE(:,2)=lpc(N2(1:2000),20);
[N3, fs] = audioread("nueve3.wav");NUEVE(:,3)=lpc(N3(1:2000),20);
[N4, fs] = audioread("nueve4.wav");NUEVE(:,4)=lpc(N4(1:2000),20);
[N5, fs] = audioread("nueve5.wav");NUEVE(:,5)=lpc(N5(1:2000),20);
[N6, fs] = audioread("nueve6.wav");NUEVE(:,6)=lpc(N6(1:2000),20);
[N7, fs] = audioread("nueve7.wav");NUEVE(:,7)=lpc(N7(1:2000),20);
[N8, fs] = audioread("nueve8.wav");NUEVE(:,8)=lpc(N8(1:2000),20);
[N9, fs] = audioread("nueve9.wav");NUEVE(:,9)=lpc(N9(1:2000),20);
[N10, fs] = audioread("nueve10.wav");NUEVE(:,10)=lpc(N10(1:2000),20);
[N11, fs] = audioread("nueve11.wav");NUEVE(:,11)=lpc(N11(1:2000),20);
[N12, fs] = audioread("nueve12.wav");NUEVE(:,12)=lpc(N12(1:2000),20);
[N13, fs] = audioread("nueve13.wav");NUEVE(:,13)=lpc(N13(1:2000),20);
[N14, fs] = audioread("nueve14.wav");NUEVE(:,14)=lpc(N14(1:2000),20);
[N15, fs] = audioread("nueve15.wav");NUEVE(:,15)=lpc(N15(1:2000),20);
[N16, fs] = audioread("nueve16.wav");NUEVE(:,16)=lpc(N16(1:2000),20);
[N17, fs] = audioread("nueve17.wav");NUEVE(:,17)=lpc(N17(1:2000),20);
[N18, fs] = audioread("nueve18.wav");NUEVE(:,18)=lpc(N18(1:2000),20);
[N19, fs] = audioread("nueve19.wav");NUEVE(:,19)=lpc(N19(1:2000),20);
[N20, fs] = audioread("nueve20.wav");NUEVE(:,20)=lpc(N20(1:2000),20);
global meanNUEVE
meanNUEVE=mean(NUEVE,2);







% --- Executes just before AppFinal is made visible.
function AppFinal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AppFinal (see VARARGIN)

% Choose default command line output for AppFinal
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AppFinal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AppFinal_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%CARGAR%%%%%%%%%%%%%%%%%%%%%
[filename, pathname] = uigetfile('*.wav','archivo'); % Buscamos los archivos wav disponibles, mediante el explorador...
archivo_sonido = [pathname, filename]; % Capturamos la dirección del archivo y su nombre
global f ;
[s, f] = audioread(archivo_sonido);
global sg; %PONER TODAS LA GLOBALES EN UN MISMO NINEL 
global original 
original=sg; %ESTO ESTA MAL 22-05-2021
original=s; %SERGIO 22-05-2021 PARA QUE SE OIGA AL REPRDUCIR
sg=s(1:2000); %sg=original %PARA TODA LA SEÑAL


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%CLASIFICAR
global sg; global meanCERO, global meanUNO, global meanDOS ,global meanTRES, global meanCUATRO, global meanCINCO
global meanSEIS,global meanSIETE, global meanOCHO,global meanNUEVE

SIGN=lpc(sg, 20);%%% obtengo los lpc de mi señal 
%%%%%%%Comparo las distancias de los lpc de mi señal con cada una de mis
%%%%%%%clases:
d0=dist(SIGN, meanCERO); MEAN(:,1)=d0;
d1=dist(SIGN, meanUNO);MEAN(:,2)=d1;
d2=dist(SIGN, meanDOS);MEAN(:,3)=d2;
d3=dist(SIGN, meanTRES);MEAN(:,4)=d3;
d4=dist(SIGN, meanCUATRO);MEAN(:,5)=d4;
d5=dist(SIGN, meanCINCO);MEAN(:,6)=d5;
d6=dist(SIGN, meanSEIS);MEAN(:,7)=d6;
d7=dist(SIGN, meanSIETE);MEAN(:,8)=d7;
d8=dist(SIGN, meanOCHO);MEAN(:,9)=d8;
d9=dist(SIGN, meanNUEVE);MEAN(:,10)=d9;
S=MEAN

[MIN, I]=min(MEAN)
if I==1; palabra="cero";end 
if I==2; palabra="uno";end
if I==3; palabra="dos";end
if I==4; palabra="tres";end
if I==5; palabra="cuatro";end
if I==6; palabra="cinco";end
if I==7; palabra="seis";end
if I==8; palabra="siete";end
if I==9; palabra="ocho";end
if I==10; palabra="nueve";end
%%% imprimo la palabra que corresponde al audio;:
set(handles.edit2,'string', palabra)

 
function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%% DONDE IMPRIMIR RESULTADO
% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%REPRODUCIR MI ARCHIVO ANALIZADO 
global original;
global f;
if(f~=0)
   sound(original,f);end 