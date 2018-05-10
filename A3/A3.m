
function varargout = A3(varargin)
% A3 MATLAB code for A3.fig
%      A3, by itself, creates a new A3 or raises the existing
%      singleton*.
%
%      H = A3 returns the handle to a new A3 or the handle to
%      the existing singleton*.
%
%      A3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in A3.M with the given input arguments.
%
%      A3('Property','Value',...) creates a new A3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before A3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to A3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help A3

% Last Modified by GUIDE v2.5 10-Apr-2018 15:46:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @A3_OpeningFcn, ...
                   'gui_OutputFcn',  @A3_OutputFcn, ...
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


% --- Executes just before A3 is made visible.
function A3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to A3 (see VARARGIN)

% Choose default command line output for A3
handles.output = hObject;
global x;
global counter;
counter =0;
global inputt;
global val1;
global val2;
global val3;
global val4;
global fs;
global t;
global y;
fs = 10e3;
t = 0:1/fs:0.05;
y = sin(2*pi*440*t);
% global soun = chirp(t, 110, 10, 6*110);

val1 = 0;
val2 = 0;
val3 = 0;
val4 = 0;
inputt = ones(1,3);
x=zeros(1,36);
for i=1:36
    xS=findobj(gcf,'Tag',sprintf('pushbutton%d',i));
    set(xS,'BackgroundColor',[1,1,1]);
end

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes A3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = A3_OutputFcn(hObject, eventdata, handles) 
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
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=1;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton1,'BackgroundColor',(1-x(bNum))*[1,1,1]);



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=2;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton2,'BackgroundColor',(1-x(bNum))*[1,1,1]);



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=3;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton3,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=4;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton4,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=5;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton5,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=6;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton6,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=7;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton7,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=8;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton8,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=9;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton9,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=10;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton10,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=11;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton11,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=12;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton12,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=13;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton13,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=14;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton14,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=15;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton15,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=16;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton16,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=17;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton17,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=18;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton18,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=19;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton19,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=20;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton20,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=21;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton21,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=22;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton22,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=23;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton23,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=24;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton24,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=25;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton25,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
bNum=26;
global fs;
global t;
global y;
sound(y,fs)
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton26,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=27;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton27,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=28;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton28,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=29;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton29,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=30;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton30,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=31;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton31,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=32;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton32,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=33;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton33,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=34;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton34,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=35;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton35,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global fs;
global t;
global y;
sound(y,fs)
bNum=36;
x(bNum)=xor(1,x(bNum));
set(handles.pushbutton36,'BackgroundColor',(1-x(bNum))*[1,1,1]);


% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global counter;

global inputt;
global fs;
global t;
global y;
sound(y,fs)
set(handles.uipanel3,'BackgroundColor','b')
set(handles.text2,'String','     ');
inputt=ones(1,3);
counter=0;


% --- Executes on button press in pushbutton38. login
function pushbutton38_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global counter;
global inputt;
global val1;
global val2;
global val3;
global val4;
global fs;
global t;
global y;
sound(y,fs)
% inputt = ones(1,3);
%set(handles.pushbutton38,'BackgroundColor',[0 0 0]);
% val1 = pre(x(1:9));
% val2 = pre(x(10:18));
% val3 = pre(x(19:27));
% val4 = pre(x(28:36));

if val1~=0 && val2~=0 && val3~=0 && val4~=0
  layer1 = [val1 val2 val3 val4];

  Weight1 = [-1 1 0 0; 0 -1 1 0; 0 0 -1 1];

  bb1 = [0 0 0];

  layer2 = layer1*Weight1' + bb1;

  layer3 = [activation2(layer2(1,1)), activation2(layer2(1,2)), activation2(layer2(1,3))];

  Weight3 = [1 1 1];
  bb3 = 0;

  layer4 = layer3*Weight3' + bb3;

  layer5 = activation(layer4);

  inputt(1,1) = inputt(1,2);
  inputt(1,2) = inputt(1,3);
  inputt(1,3) = layer5;


  Weight4=[1/2 1/4 1;1/2 1/4 1];
  bb4=[-0.1 -1];
  layer6=inputt*Weight4'+bb4;
  layer7=hardlim(layer6);

  Weight5 = [1 1];
  bb5 = 0;
  layer8=layer7*Weight5'+bb5;

% set(handles.text2,'String',num2str(layer8));

  if counter~=3
     if layer8==2
        set(handles.text2,'String','LAUNCH');
%         pause(10)
%         set(handles.text2,'String','  ');
     end
     if layer8==1
        set(handles.text2,'String','FAILURE');
%         pause(10)
%         set(handles.text2,'String','  ');
     end
     if layer8==0
        set(handles.text2,'String','COMPLETE FAILURE');
        
        set(handles.uipanel3,'BackgroundColor','r')
        counter=3;
     end
    
 end




% if counter~=3
%  if layer5==1
%     set(handles.text2,'String','LAUNCH');
%      
%     counter = 0;
%  else
%     counter=counter+1;
%     set(handles.text2,'String','FAILED');
%     
%  end
% 
%  if counter==3
%     set(handles.text2,'String','COMPLETE FAILURE');
%     set(handles.uipanel3,'BackgroundColor','r')
%     
%  end
 
 
 
 
 
 
 
 
 
 
 
  x=zeros(1,36);
  val1=0;
  val2=0;
  val3=0;
  val4=0;
  set(handles.pushbutton1,'BackgroundColor',[1,1,1])
  set(handles.pushbutton2,'BackgroundColor',[1,1,1])
  set(handles.pushbutton3,'BackgroundColor',[1,1,1])
  set(handles.pushbutton4,'BackgroundColor',[1,1,1])
  set(handles.pushbutton5,'BackgroundColor',[1,1,1])
  set(handles.pushbutton6,'BackgroundColor',[1,1,1])
  set(handles.pushbutton7,'BackgroundColor',[1,1,1])
  set(handles.pushbutton8,'BackgroundColor',[1,1,1])
  set(handles.pushbutton9,'BackgroundColor',[1,1,1])
  set(handles.pushbutton10,'BackgroundColor',[1,1,1])
  set(handles.pushbutton11,'BackgroundColor',[1,1,1])
  set(handles.pushbutton12,'BackgroundColor',[1,1,1])
  set(handles.pushbutton13,'BackgroundColor',[1,1,1])
  set(handles.pushbutton14,'BackgroundColor',[1,1,1])
  set(handles.pushbutton15,'BackgroundColor',[1,1,1])
  set(handles.pushbutton16,'BackgroundColor',[1,1,1])
  set(handles.pushbutton17,'BackgroundColor',[1,1,1])
  set(handles.pushbutton18,'BackgroundColor',[1,1,1])
  set(handles.pushbutton19,'BackgroundColor',[1,1,1])
  set(handles.pushbutton20,'BackgroundColor',[1,1,1])
  set(handles.pushbutton21,'BackgroundColor',[1,1,1])
  set(handles.pushbutton22,'BackgroundColor',[1,1,1])
  set(handles.pushbutton23,'BackgroundColor',[1,1,1])
  set(handles.pushbutton24,'BackgroundColor',[1,1,1])
  set(handles.pushbutton25,'BackgroundColor',[1,1,1])
  set(handles.pushbutton26,'BackgroundColor',[1,1,1])
  set(handles.pushbutton27,'BackgroundColor',[1,1,1])
  set(handles.pushbutton28,'BackgroundColor',[1,1,1])
  set(handles.pushbutton29,'BackgroundColor',[1,1,1])
  set(handles.pushbutton30,'BackgroundColor',[1,1,1])
  set(handles.pushbutton31,'BackgroundColor',[1,1,1])
  set(handles.pushbutton32,'BackgroundColor',[1,1,1])
  set(handles.pushbutton33,'BackgroundColor',[1,1,1])
  set(handles.pushbutton34,'BackgroundColor',[1,1,1])
  set(handles.pushbutton35,'BackgroundColor',[1,1,1])
  set(handles.pushbutton36,'BackgroundColor',[1,1,1])
  pause(5)
  set(handles.text2,'String','     ');
  set(handles.text9,'String','     ');
  set(handles.text10,'String','     ');
  set(handles.text11,'String','     ');
  set(handles.text12,'String','     ');
  
  
else
    set(handles.text2,'String','Invalid Cards ');
    pause(5)
    set(handles.text2,'String','     ');
    set(handles.text9,'String','     ');
    set(handles.text10,'String','     ');
    set(handles.text11,'String','     ');
    set(handles.text12,'String','     ');
end
  
% findobj(gcf,'Tag','pusbutton1')
%end


function value=pre(X)

        
         
         W = [1 1/11 1/11 1/11 1/11 1 1 1/11 1/11;
               1/11 1 1/11 1/11 1/11 1/11 1 1/11 1;
               1/11 1 1/11 1/11 1 1 1/11 1/11 1/11;
               1/11 1 1/11 1/11 1 1/11 1/11 1/11 1;
               1/11 1/11 1 1/11 1 1/11 1 1/11 1/11;
               1 1/11 1/11 1/11 1 1/11 1/11 1/11 1;
               1/11 1 1 1/11 1/11 1/11 1/11 1/11 1;
               1/11 1/11 1 1 1/11 1/11 1/11 1/11 1];
           
           b = [0 0 0 0 0 0 0 0];
           
           Y = X*W' +b;
           
           Z = [activation(Y(1,1)) activation(Y(1,2)) activation(Y(1,3)) activation(Y(1,4)) activation(Y(1,5)) activation(Y(1,6)) activation(Y(1,7)) activation(Y(1,8))];
           
           
           W2 = [1 2 3 4 5 6 7 8];
           
           b2 = 0;
           
           value = Z*W2'+b2;
           


function v=activation(y)

     if y==3
         v=1;
     else
         v=0;
     end
     
     
function val=activation2(Y)
   
      if(Y>=1)
          val=1;
      else
          val=0;
      end
      
     
     


           
           
%            counter = 0;
%            for i=1:8
%                if Y(1,i)==3
%                     value = i;
%                     counter = counter+1;
%                end
%            end
%            
%            if counter~=1  
%                value = 0;
%            end
           

           
           
           
  


           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           





% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton46.
function pushbutton46_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton47.
function pushbutton47_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton48.
function pushbutton48_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton49.
function pushbutton49_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton50.
function pushbutton50_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton51.
function pushbutton51_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton52.
function pushbutton52_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton53.
function pushbutton53_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton54.
function pushbutton54_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton55.
function pushbutton55_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton56.
function pushbutton56_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton57.
function pushbutton57_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton58.
function pushbutton58_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton59.
function pushbutton59_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton60.
function pushbutton60_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton61.
function pushbutton61_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton62.
function pushbutton62_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton63.
function pushbutton63_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton64.
function pushbutton64_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton65.
function pushbutton65_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton66.
function pushbutton66_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton67.
function pushbutton67_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton68.
function pushbutton68_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton69.
function pushbutton69_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton70.
function pushbutton70_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton70 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton71.
function pushbutton71_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton72.
function pushbutton72_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton73.
function pushbutton73_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton74.
function pushbutton74_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton75.
function pushbutton75_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton76.
function pushbutton76_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton77.
function pushbutton77_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton78.
function pushbutton78_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton79.
function pushbutton79_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton80.
function pushbutton80_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton81.
function pushbutton81_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton82.
function pushbutton82_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton83.
function pushbutton83_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton84.
function pushbutton84_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton85.
function pushbutton85_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton85 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton86.
function pushbutton86_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton87.
function pushbutton87_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton88.
function pushbutton88_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton89.
function pushbutton89_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton90.
function pushbutton90_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton91.
function pushbutton91_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton91 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton92.
function pushbutton92_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton92 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton93.
function pushbutton93_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton93 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton94.
function pushbutton94_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton94 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton95.
function pushbutton95_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton95 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton96.
function pushbutton96_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton96 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton97.
function pushbutton97_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton97 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton98.
function pushbutton98_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton98 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton99.
function pushbutton99_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton99 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton100.
function pushbutton100_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton101.
function pushbutton101_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton102.
function pushbutton102_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton102 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton103.
function pushbutton103_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton103 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton104.
function pushbutton104_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton104 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton105.
function pushbutton105_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton105 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton106.
function pushbutton106_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton106 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton107.
function pushbutton107_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton107 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton108.
function pushbutton108_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton108 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton109.
function pushbutton109_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton109 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton110.
function pushbutton110_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton110 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton111.
function pushbutton111_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton112.
function pushbutton112_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton112 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global val1;
global x;
global fs;
global t;
global y;
sound(y,fs)
val1 = pre(x(1:9));
if val1==0
    set(handles.text9,'String','INVALID CARD');
else
    set(handles.text9,'String','VALID CARD');
end


% --- Executes on button press in pushbutton113.
function pushbutton113_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton113 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global val2;
global x;
global fs;
global t;
global y;
sound(y,fs)
val2 = pre(x(10:18));
if val2==0
    set(handles.text10,'String','INVALID CARD');
else
    set(handles.text10,'String','VALID CARD');
end

% --- Executes on button press in pushbutton114.
function pushbutton114_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton114 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global val3;
global x;
global fs;
global t;
global y;
sound(y,fs)
val3 = pre(x(19:27));
if val3==0
    set(handles.text11,'String','INVALID CARD');
else
    set(handles.text11,'String','VALID CARD');
end

% --- Executes on button press in pushbutton115.
function pushbutton115_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton115 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global val4;
global x;
global fs;
global t;
global y;
sound(y,fs);
val4 = pre(x(28:36));
 if val4==0
    set(handles.text12,'String','INVALID CARD');
 else
    set(handles.text12,'String','VALID CARD');
 end
