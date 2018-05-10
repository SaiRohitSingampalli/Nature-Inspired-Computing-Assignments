function varargout = R3(varargin)
% R3 MATLAB code for R3.fig
%      R3, by itself, creates a new R3 or raises the existing
%      singleton*.
%
%      H = R3 returns the handle to a new R3 or the handle to
%      the existing singleton*.
%
%      R3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in R3.M with the given input arguments.
%
%      R3('Property','Value',...) creates a new R3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before R3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to R3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help R3

% Last Modified by GUIDE v2.5 29-Apr-2018 08:37:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @R3_OpeningFcn, ...
                   'gui_OutputFcn',  @R3_OutputFcn, ...
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


% --- Executes just before R3 is made visible.
function R3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to R3 (see VARARGIN)

% Choose default command line output for R3
handles.output = hObject;
global x;
global y;
global z;
global v;
global u;
u = 0;
v=0;
x = 0;
y = 0;
z = 0;
set(handles.text5,'String',num2str(x));
set(handles.text6,'String',num2str(y));
set(handles.text7,'String',num2str(z));
a = readfis('R4');
v = evalfis([x,y],a);
if v<z
    u=v;
elseif y==0
    u=0;
else
    u=z;
end
if u==120
    set(handles.text8,'String','120.');
else
    set(handles.text8,'String',num2str(u));
end
dial(u)

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes R3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = R3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global x;
global y;
global z;
global v;
global u;
sliderValue1 = get(handles.slider1,'Value');
x = sliderValue1;
set(handles.text5,'String',num2str(x));
set(handles.text6,'String',num2str(y));
set(handles.text7,'String',num2str(z));
a = readfis('R4');
v = evalfis([x,y],a);
if v<z
    u=v;
elseif y==0
    u=0;
else
    u=z;
end
if u==120
    set(handles.text8,'String','120.');
else
    set(handles.text8,'String',num2str(u));
end
dial(u)



% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global x;
global y;
global z;
global v;
global u;
sliderValue2 = get(handles.slider2,'Value');
y = sliderValue2;
set(handles.text5,'String',num2str(x));
set(handles.text6,'String',num2str(y));
set(handles.text7,'String',num2str(z));
a = readfis('R4');
v = evalfis([x,y],a);
if v<z
    u=v;
elseif y==0
    u=0;
else
    u=z;
end
if u==120
    set(handles.text8,'String','120.');
else
    set(handles.text8,'String',num2str(u));
end

dial(u)


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global x;
global y;
global z;
global v;
global u;
sliderValue3 = get(handles.slider3,'Value');
z = sliderValue3;
set(handles.text5,'String',num2str(x));
set(handles.text6,'String',num2str(y));
set(handles.text7,'String',num2str(z));
a = readfis('R4');
v = evalfis([x,y],a);
if v<z
    u=v;
elseif y==0
    u=0;
else
    u=z;
end
if u==120
    set(handles.text8,'String','120.');
else
    set(handles.text8,'String',num2str(u));
end
dial(u)


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function dial(v)
    p1 = [0,1];
    p2 = [0,pi-v*pi/180];
    
    polar(p2,p1,'-r')
    axis([-1,1,0,1])
    set(findall(gcf, 'String', '0'), 'String',' ');
    set(findall(gcf, 'String', '30'), 'String',' ');
    set(findall(gcf, 'String', '60'), 'String','120(max)');
    set(findall(gcf, 'String', '90'), 'String','90');
    set(findall(gcf, 'String', '120'), 'String','60');
    set(findall(gcf, 'String', '150'), 'String','30');
    set(findall(gcf, 'String', '180'), 'String','0');
    set(findall(gcf, 'String', '210'), 'String',' ');
    set(findall(gcf, 'String', '240'), 'String',' ');
    set(findall(gcf, 'String', '270'), 'String',' ');
    set(findall(gcf, 'String', '300'), 'String',' ');
    set(findall(gcf, 'String', '330'), 'String',' ');
    set(findall(gcf, 'String', '  0.2'), 'String',' ');
    set(findall(gcf, 'String', '  1'), 'String',' ');
    set(findall(gcf, 'String', '  0.4'), 'String',' ');
    set(findall(gcf, 'String', '  0.6'), 'String',' ');
    set(findall(gcf, 'String', '  0.8'), 'String',' ');
    
    
    
    
    
    
