function varargout = robotArm(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @robotArm_OpeningFcn, ...
                   'gui_OutputFcn',  @robotArm_OutputFcn, ...
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

function robotArm_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);

function varargout = robotArm_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function d1_Callback(hObject, eventdata, handles)

function d1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function d2_Callback(hObject, eventdata, handles)

function d2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit3_Callback(hObject, eventdata, handles)

function edit3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function y1_Callback(hObject, eventdata, handles)

function y1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function x2_Callback(hObject, eventdata, handles)

function x2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function y2_Callback(hObject, eventdata, handles)

function y2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function xsd_Callback(hObject, eventdata, handles)

function xsd_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ysd_Callback(hObject, eventdata, handles)

function ysd_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function xdfp_Callback(hObject, eventdata, handles)

function xdfp_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ydfp_Callback(hObject, eventdata, handles)

function ydfp_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Calculate_Callback(hObject, eventdata, handles)

d1=str2double(get(handles.d1,'string'));
d2=str2double(get(handles.d2,'string'));
x1=str2double(get(handles.x1,'string'));
x2=str2double(get(handles.x2,'string'));
y1=str2double(get(handles.y1,'string'));
y2=str2double(get(handles.y2,'string'));


s1='[(';
s2=num2str(d1);
s3='*cos(x(1)))+(';
s4=num2str(d2);
s5='*cos(x(1)+x(2)))-';
s6=num2str(x1);
s7=';(';
% s2
s8=num2str(d1);
s9='*sin(x(1)))-';
s10=num2str(y1);
s11='+(';
% s4
s12='*sin(x(1)+x(2)))]';

str=strcat(s1,s2,s3,s4,s5,s6,s7,s2,s8,s9,s10,s11,s4,s12);

f1=inline(str);

s1='[(-';
s2=num2str(d2);
s3='*sin(x(1)+x(2)))-(';
s4=num2str(d1);
s5='*sin(x(1))),(';
% s4
s6='*cos(x(1)))+(';
% s2
s7='*cos(x(1)+x(2)));-';
% s2
s8='*sin(x(1)+x(2)),';
% s2
s9='*cos(x(1)+x(2))]';

str1=strcat(s1,s2,s3,s4,s5,s4,s6,s2,s7,s2,s8,s2,s9);

g1=inline(str1);

tol=0.00001;
kmax=1000;
x0=[0.1,0.1];

step=Steep_Descent(f1,g1,x0,tol,kmax);

set(handles.xsd,'string',step(1,2));
set(handles.xsd,'string',step(2,2));

dfp=DFP(f1,g1,x0,tol,kmax);

set(handles.xdfp,'string',dfp(1,2));
set(handles.xdfp,'string',dfp(2,2));
