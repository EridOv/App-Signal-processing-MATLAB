function varargout = AppC1(varargin)
% APPC1 MATLAB code for AppC1.fig
%      APPC1, by itself, creates a new APPC1 or raises the existing
%      singleton*.
%
%      H = APPC1 returns the handle to a new APPC1 or the handle to
%      the existing singleton*.
%
%      APPC1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in APPC1.M with the given input arguments.
%
%      APPC1('Property','Value',...) creates a new APPC1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AppC1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AppC1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AppC1

% Last Modified by GUIDE v2.5 10-Jun-2021 09:12:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AppC1_OpeningFcn, ...
                   'gui_OutputFcn',  @AppC1_OutputFcn, ...
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


% --- Executes just before AppC1 is made visible.
function AppC1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AppC1 (see VARARGIN)

% Choose default command line output for AppC1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AppC1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AppC1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
%cargar
global fs;
global ydatos;
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile('*.wav','archivo'); % Buscamos los archivos wav disponibles, mediante el explorador...
archivo_sonido = [pathname, filename]; % Capturamos la dirección del archivo y su nombre
[s, fs] = audioread(archivo_sonido); % Leemos el archivo y lo guardamos en el arreglo s, la frecuencia de muestreo en fs
cla(handles.axes2);
ydatos=s;
cla(handles.axes1);
plot(handles.axes1,ydatos);
title(handles.axes1,filename);
set(handles.edit1,'String',fs);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
%sintesis 
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fsenal=str2double(get(handles.edit1,'String'));
fs=str2double(get(handles.edit2,'String'));
y=0;
for n=1:str2double(get(handles.edit3,'String'));
y(n)=sin(((2*pi*fsenal)/fs)*n);
end;
plot(handles.axes1,y);
stem(handles.axes2,y);



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
%Diseñar filtro
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

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



function edit3_Callback(~, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
%Reproducir 
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Reproducir 
global ydatos;
global fs;
(fs~=0)
 if(fs~=0)
   sound(ydatos,fs);
else 
    disp('no hay archivo disponible para reproducir');
end 

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
%estadisticas
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% estadisticos de la variabilidad del tono fundamental
global ff;

x1=round(ginput(1));% se obtiene el punto en la gráfica y se redondea al entero mas cercano
x2=round(ginput(1));
ff1= ff(x1:x2);

varianza= var(ff1);
desv=std(ff1);
media=mean(ff1);
set(handles.edit10,'string', media);
set(handles.edit11,'string', varianza);
set(handles.edit12,'string', desv);



% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
%segmentar 
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ydatos;
clear handles.axes1;
x1=round(ginput(1));% se obtiene el punto en la gráfica y se redondea al entero mas cercano
x2=round(ginput(1));
s1= ydatos(x1:x2);
ydatos=s1;

plot(handles.axes1, s1);
title(handles.axes1,'Segmento señal');

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
%autocorrelación
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fs;
global ydatos;

[c,lag] = autocorr(ydatos,length(ydatos)-1);
clc;

plot(handles.axes2,c);
title(handles.axes2,'Autocorrelación');
hold(handles.axes2,'on');

nt80=round(fs/80);
nt250=round(fs/250);

x=[nt80,nt80];
y=[-1,1];
plot(handles.axes2,x,y,'r');

x=[nt250,nt250];
plot(handles.axes2,x,y,'r');

x=[1,length(ydatos)];
y=[.5,.5];

plot(handles.axes2,x,y,'r');
hold(handles.axes2,'off');

global Long1;
busca=c(nt250:nt80);
Long1=length(busca);
[M,I]=max(busca);
if M>.5*c(1)&&I~=0;
    FF=fs/(I+nt250);
    set(handles.edit4,'String',FF);
else 
    disp('No hay info');
    set(handles.edit4,'String','No hay info');
end;

function edit4_Callback(hObject, eventdata, handles)
%Imprimir valor del tono
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
%Variabilidad del TonoFundamental
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ydatos;
global fs;
global ff;
clc;
nt80=round(fs/80);
nt250=round(fs/250);
seg40=fs*.04;
longy=length(ydatos);
limI=1;
N=longy-seg40;
i=1;
ff=0;

while (limI<N)
    limS=limI+seg40;
    seg=ydatos(limI:limS);
    %limI=limI+I;
    SegAuto=autocorr(seg,length(seg)-1);
    busca=SegAuto(nt250:nt80);
    longT=length(busca);
    [M,I]=max(busca);

        if M>.5*SegAuto(1)&&I~=0%lo cambie a .5 estaba en .6
            FF=fs/(I+nt250);
            more=I;%Sergio 29/3/21
        else 
            FF=0;
            I=seg40; %¿Por qué la mitad, PODRÍA SER ENTERO?
            more=I;%Sergio 29/3/21
            %I=round(seg40/2); %Así no da error de ejecución SERGIO 17/3/2021
%           disp('No hay info');
        end;
        FF
%i=i+1;%ESTO LO CAMBIO SERGIO 17/3/21
ff(i,:)=FF;
%i=i+1;%AHORA VA AQUÍ 17/3/21
limI=more+limI;%Esto es asi 29/3/21, para desplazanos correctamente
%more
for j=1:more %HACER QUE LAS GRÁFICAS COINCIDAN EN DATOS 29/3/21
    ff(j+i,:)=FF;
end
i=i+more; %Incrementar el indice del arreglo ff
end;
%ff
%stem(handles.axes2,ff);%LO CAMBIO SERGIO 17/3/21
plot(handles.axes2,ff);
set(handles.axes2,'ylim',[0 max(ff)+5]);%ESTO LO PUSO SERGIO 17/3/21


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of radiobutton1
global fir;global iir;
fir=get(handles.radiobutton1,'Value')
if fir==0;iir==0;end



% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%contents=cellstr(get(hObject,'String') %returns popupmenu1 contents as cell array
v=(get(handles.popupmenu1,'Value')); %returns selected item from popupmenu1
%set(handles.popupmenu1,'String',v)
 global df; global fs; global nCoef, global w1; global w2;global tpe;global df2;  
 global iir;global fir; global a, global b;
 
 w1=str2double(get(handles.edit5,'String'));
 w2=str2double(get(handles.edit6,'String'));
 nCoef=str2double(get(handles.edit7,'String'))
  
global c;
switch v 
    case 1
        tpe='high';c=1; %Pasa altas  
    case 2 
        tpe='low';c=2;  %pasa baja
    case 3 
        tpe= 'stop';c=3;  %supresor de banda  
    case 4 
        tpe= 'bandpass';c=4; %pasa banda 
    otherwise 
end 
if (c<3); ft=w1/(fs/2); %frecc de corte
else ft=[w1 w2]/(fs/2); end 

if fir==1 %%para filtro tipo FIR
    df=fir1(nCoef,ft,tpe); 
    df2=fir1(nCoef,ft,tpe,rectwin(nCoef+1));%filtro fir con ventana
    
end  %%Para filtro tipo IIR 
if iir==1
    [a,b]=butter(nCoef,ft,tpe)
end 

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
%%Selección de tipo de filtro 
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double
global w1; w1=str2double(get(handles.edit5,'String')); %Frec. corte inferior 


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double
global w2;w2=str2double(get(handles.edit6,'String')); %Frec de corte superior 


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%No. coeficientes 
% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double
global nCoef; nCoef=str2double(get(handles.edit7,'String')); %num de coef. 



% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Filtro FIR
% Hint: get(hObject,'Value') returns toggle state of radiobutton2



% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% BotoN: FILTRAR %%%%%%%%%%%%%%%%%%%
global signFilt; global df; global ydatos;global fir; global win;global iir; 
global df2; global a; global b;
cla(handles.axes2);


if (fir==1 & iir==0)
    if (win==1) 
        signFilt=conv(ydatos, df2);
        plot(handles.axes2,signFilt);title(handles.axes2,'Señal Filtrada'); 
    else 
        signFilt=conv(ydatos,df);
        plot(handles.axes2,signFilt);title(handles.axes2,'Señal Filtrada');end; end


if (fir==0 & iir==1 & win==0)
signFilt=conv(ydatos, a);
plot(handles.axes2,signFilt);title(handles.axes2,'Señal Filtrada');
end 

 


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%FFT %%%%%%%%%%%%%%%%%%%%
global ydatos;global fs;global P1; global win; global L;global P2;
cla(handles.axes2, 'reset');

if (win==1)
    w=hamming(length(ydatos)); %CON VENTANA DE HAMMING
    yd=ydatos.*w;
    Y=fft(yd);
    L=length(yd);
    P2 = abs(Y/L);
    P1 = P2(1:L/2+1);
    f = fs*(0:(L/2))/L;
    plot(handles.axes2,f,P1);
    title('Fast fourier transform')
else
    Y=fft(ydatos)
    L=length(ydatos);
    P2 = abs(Y/L);
    P1 = P2(1:L/2+1);
    f = fs*(0:(L/2))/L;
    plot(handles.axes2,f,P1);
    title('Fasrt fourier transform');end 
global Tff;global fTff;global pTff;
   Tff=Y;
   fTff=f;
   pTff=P2;


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%CREAR FILTRO%%%%%%%%%%%%%%%%
global df; global fs;global df2; global win; global fir, global iir; global a; global b;
if fir==1 && iir==0
     if win==1; hwabs=abs(freqz(df,1,512));hn=df;end  %%transformada de df, df: fir1 por default
     if win==0; hwabs=abs(freqz(df2,1,512)); hn=df2;end; end %%transformada de df2, df2: fir1 con ventana
if iir==1 && fir==0
     if win==0;hwabs=abs(freqz(a,b,512)); hn=a;end; end %%transformada de los coeficientes de filtro butter 


%hwdb=10*log(hwabs);%en decibibeles 
deltaf=fs/(512*2); 
esc=deltaf*(1:512);

plot(handles.axes1,esc,hwabs);title(handles.axes1,'Respuesta Filtro');
stem(handles.axes2,hn);title(handles.axes2,'Respuesta impulsiva');



% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%VENTANA 
% Hint: get(hObject,'Value') returns toggle state of radiobutton4
global win; win=get(handles.radiobutton4,'Value'); 


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%IIR
% Hint: get(hObject,'Value') returns toggle state of radiobutton5
global fir;global iir;
iir=get(handles.radiobutton5,'Value')
if iir==0; fir==0;end


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Transformada rapida de fourier Log. 
global ydatos;global fs;global win; global P1;
cla(handles.axes2, 'reset')
if (win==1)    
    w=hamming(length(ydatos)); %Con ventana
    yd=ydatos.*w;
    Y=fft(yd);%ESTA EXPRESIÓN ESTÁ MAL (SERGIO 4-6-2021)
    L=length(yd);
    P2 =10* log(abs(Y/L)); %Se obtiene logaritmo 
    P1 = P2(1:L/2+1);
    f = fs*(0:(L/2))/L;
    plot(handles.axes2,f,P1);
else   
    Y=fft(ydatos);%sin ventana 
    L=length(ydatos);
    P2 = 10*log(abs(Y/L)); %Se obtiene logaritmo 
    P1 = P2(1:L/2+1);
    f = fs*(0:(L/2))/L;
    plot(handles.axes2,f,P1);end
title('Fast fourier transform Log')


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Inversa FFT 
global ydatos;global fs;global P1;global Y; global inv; global Tff;
Y=Tff 
Y=ifft(Y)
L=length(ydatos);
P2 =(Y/L);
inv= P2;
cla(handles.axes2, 'reset');
plot(handles.axes2,P2);
title('FFT inversa');

function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%media 

function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%Varianza 



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%std


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%ESPECTROGRAMA%%%%%%%%%%%%%%%%%%%
global ydatos; global fs;
segmento=round(fs*.02)%% segmentos del 20%
traslape=segmento-round(fs*.002)
cla(handles.axes2);%ESTO ES NECESARIO PARA ACTIVAR LA axes2 (SERGIO 4-6-2021)
spectrogram(ydatos,segmento,traslape, segmento,fs,'yaxis');
%cla(handles.axes2, 'reset');%ESTO SOBRA (SERGIO 4-6-2021)
set(handles.axes2, 'Position',[39.6 3.846 94 13.538]);


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%DISEÑO FILTRO CON COEF IFFT%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global c; global w1, global w2;  global fs; global Tff; global pTff;

%%%%%%%%%%%%FILTRADO CORREGIDO DE ACUERDO CON ANTOTACIÓNES: %%%%%%%%%%%%%

%EL EJE DE LA FFT NO ESTÁ EN FRECUENCIA,HABRÍA QUE LLEVARLO
%A FRECUENCIA, ASI w1 SERÍA w1*delta, y delta=length(Tff)/fs. ADEMÁS,
%HAY QUE DEJAR PASAR EL ESPEJO EN LA SEGUIENTE FASE QUE ESTÁ AL FINAL
%DE LA SECUENCIA DE DATOS DE LA FFT, ES ESTE CASO PARA PASA BAJO. SERIA
%oo=Tff(w1-length(Tff):lenght(Tff)); O ALGO SIMILAR LUEGO DE Arreglar lo
%de los deltas; DESPUÉS CONCATENAR.

if (c==1) %pasa altas 
    L=length(Tff);%donde Tff=fft(ydatos)
    delta=L/fs;
    w1=round(w1*delta);
    z= double(zeros(w1-1,1));%% se genera un vector vertical De ceros 
    o=Tff(w1+1:L-w1); %% se corta la señal de la transformada
    mask=[z;o;z]; % se concatena el arreglo de ceros y la señal con las frecc de interes 
    maskabs = abs(mask/L);
    
    
end

if (c==2) %pasa bajas
    L=length(Tff);%donde Tff=fft(ydatos)
    delta=L/fs;
    w1=round(w1*delta)
    o=Tff(1:w1); %% se corta la señal del lado izq de la transformada
    oo=Tff(L-w1:L);%% se corta la señal del lado derecho de la transf
    z= double(zeros(L-(2*w1),1));%% se genera un vector vertical De ceros 
    mask=[o;z;oo]; % se concatena el arreglo de ceros y la señal con las frecc de interes 
    maskabs=abs(mask/L) 
end 
  

if (c==3) %supresor de banda
    L=length(Tff);%donde Tff=fft(ydatos)
    delta=L/fs;
    w1=round(w1*delta);
    w2=round(w2*delta);
    o=Tff(1:w1); %% se corta n extremo izq señal de la transformada
    o2=Tff(w2:L-w2);%% se corta parte central de la señal de la transformada
    o3=Tff(L-w1:L); % se corta el extremo derecho de la transformada 
    z= double(zeros(w2-w1,1));%% se genera un vector vertical De ceros 
    mask=[o;z;o2;z;o3]; % se concatena el arreglo de ceros y la señal con las frecc de interes 
    maskabs = abs(mask/L);
end
    
if (c==4) %pasa banda
    L=length(Tff);
    delta=L/fs;
    w1=round(w1*delta);
    w2=round(w2*delta);
    o=Tff(w1:w2); %% se corta la señal de la transformada
    oo=Tff(L-w2:L-w1);
    z= double(zeros(w1-1,1));%% se genera un vector vertical De ceros 
    z2= double(zeros((L-w2)-w2,1));%% se genera un vector vertical De ceros 
    mask=[z;o;z2;oo;z]; % se concatena el arreglo de ceros y la señal con las frecc de interes
    maskabs=abs(mask/L)
end

sign=real(ifft(mask));
sign=sign/length(sign); %Se normaliza la señal 
%% GRAFICAR 1: fft inversa de la señal filtrada
cla(handles.axes1, 'reset');
plot(handles.axes1,sign);
title(handles.axes1,'FFT inversa señal filtrada');

%% GRAFICAR 2: fft y mascara
cla(handles.axes2, 'reset');
plot(handles.axes2,pTff);% transformada de fourier 
hold on 
plot(handles.axes2,maskabs, 'r');
title(handles.axes2,'FFT y mascara');


function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%Numero de coeficientes LPC 
% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double
global coefLPC; coefLPC=str2double(get(handles.edit13,'String')); %Frec. corte inferior 

% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%LPC 
global ydatos, global coefLPC;
ap=lpc(ydatos,coefLPC)
hw=freqz(1, ap, round((length(ydatos)/2)+1))
hdb=10*log10(abs(hw))
cla(handles.axes2, 'reset');
plot(handles.axes2,hdb);
title('Coeficientes lpc');


