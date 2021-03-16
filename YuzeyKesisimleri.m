function varargout = YuzeyKesisimleri(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @YuzeyKesisimleri_OpeningFcn, ...
                   'gui_OutputFcn',  @YuzeyKesisimleri_OutputFcn, ...
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

function YuzeyKesisimleri_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);

function varargout = YuzeyKesisimleri_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function ax_Callback(hObject, eventdata, handles)

function ax_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ay_Callback(hObject, eventdata, handles)

function ay_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function az_Callback(hObject, eventdata, handles)

function az_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function r_Callback(hObject, eventdata, handles)

function r_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function h_Callback(hObject, eventdata, handles)

function h_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function bx_Callback(hObject, eventdata, handles)

function bx_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function bz_Callback(hObject, eventdata, handles)

function bz_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function t_Callback(hObject, eventdata, handles)

function t_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function by_Callback(hObject, eventdata, handles)

function by_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function cx_Callback(hObject, eventdata, handles)

function cx_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function cz_Callback(hObject, eventdata, handles)

function cz_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function rc_Callback(hObject, eventdata, handles)

function rc_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function cy_Callback(hObject, eventdata, handles)

function cy_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function resultX_Callback(hObject, eventdata, handles)

function resultX_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function resultY_Callback(hObject, eventdata, handles)

function resultY_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function resultZ_Callback(hObject, eventdata, handles)

function resultZ_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sketchGraphic_Callback(hObject, eventdata, handles)

r=str2double(get(handles.r,'string'));
ax=str2double(get(handles.ax,'string'));
ay=str2double(get(handles.ay,'string'));
az=str2double(get(handles.az,'string'));
h=str2double(get(handles.h,'string'));

bx=str2double(get(handles.bx,'string'));
by=str2double(get(handles.by,'string'));
bz=str2double(get(handles.bz,'string'));
t=str2double(get(handles.t,'string'));

rc=str2double(get(handles.rc,'string'));
cx=str2double(get(handles.cx,'string'));
cy=str2double(get(handles.cy,'string'));
cz=str2double(get(handles.cz,'string'));

q=linspace(0,2*pi,20);
z=linspace(az,h,20);
[q,z]=meshgrid(q,z); 
x=r*cos(q)+ax; y=r*sin(q)+ay;
surf(x,y,z)
rotate3d on;
grid on; 
hold on;

xp=linspace(0,5,20);
zp=linspace(0,3,20);
[xp,zp]=meshgrid(xp,zp); 
yp=(xp-bx).^2+by;
surf(handles.axes,xp,yp,zp)
grid on; 
view([1 1 1]);
hold on;

tc=0:pi/20:2*pi;
plot(handles.axes,rc*cos(tc)+cx,rc*sin(tc)+cy)


xlabel('x');ylabel('y'),zlabel('z');



function newtonMethod_Callback(hObject, eventdata, handles)

kmax=1000;
tol=0.00001;
x0=[1,1,1];

r=str2double(get(handles.r,'string'));
ax=str2double(get(handles.ax,'string'));
ay=str2double(get(handles.ay,'string'));
az=str2double(get(handles.az,'string'));
h=str2double(get(handles.h,'string'));

bx=str2double(get(handles.bx,'string'));
by=str2double(get(handles.by,'string'));
bz=str2double(get(handles.bz,'string'));
t=str2double(get(handles.t,'string'));

rc=str2double(get(handles.rc,'string'));
cx=str2double(get(handles.cx,'string'));
cy=str2double(get(handles.cy,'string'));
cz=str2double(get(handles.cz,'string'));

[F,J]=equations(ax,az,r,bx,by,bz,t,cx,cy,cz,rc);

x=NewtonSys(F, J, x0, tol, kmax);

set(handles.resultX,'string',x(1));
set(handles.resultY,'string',x(2));
set(handles.resultZ,'string',x(3));



function broydenMethod_Callback(hObject, eventdata, handles)

kmax=1000;
tol=0.00001;
x0=[1,1,1];

r=str2double(get(handles.r,'string'));
ax=str2double(get(handles.ax,'string'));
ay=str2double(get(handles.ay,'string'));
az=str2double(get(handles.az,'string'));
h=str2double(get(handles.h,'string'));

bx=str2double(get(handles.bx,'string'));
by=str2double(get(handles.by,'string'));
bz=str2double(get(handles.bz,'string'));
t=str2double(get(handles.t,'string'));

rc=str2double(get(handles.rc,'string'));
cx=str2double(get(handles.cx,'string'));
cy=str2double(get(handles.cy,'string'));
cz=str2double(get(handles.cz,'string'));

[F,J]=equations(ax,az,r,bx,by,bz,t,cx,cy,cz,rc);

x=broy(F, x0, tol, kmax);

set(handles.resultX,'string',x(1));
set(handles.resultY,'string',x(2));
set(handles.resultZ,'string',x(3));

function shermanMethod_Callback(hObject, eventdata, handles)

kmax=1000;
tol=0.00001;
x0=[1;1;1];

r=str2double(get(handles.r,'string'));
ax=str2double(get(handles.ax,'string'));
ay=str2double(get(handles.ay,'string'));
az=str2double(get(handles.az,'string'));
h=str2double(get(handles.h,'string'));

bx=str2double(get(handles.bx,'string'));
by=str2double(get(handles.by,'string'));
bz=str2double(get(handles.bz,'string'));
t=str2double(get(handles.t,'string'));

rc=str2double(get(handles.rc,'string'));
cx=str2double(get(handles.cx,'string'));
cy=str2double(get(handles.cy,'string'));
cz=str2double(get(handles.cz,'string'));

[F,J]=equations(ax,az,r,bx,by,bz,t,cx,cy,cz,rc);

x=shermanMorrison(F, x0, tol, kmax);

set(handles.resultX,'string',x(1));
set(handles.resultY,'string',x(2));
set(handles.resultZ,'string',x(3));


