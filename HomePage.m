function varargout = HomePage(varargin)
% HOMEPAGE MATLAB code for HomePage.fig
%      HOMEPAGE, by itself, creates a new HOMEPAGE or raises the existing
%      singleton*.
%
%      H = HOMEPAGE returns the handle to a new HOMEPAGE or the handle to
%      the existing singleton*.
%
%      HOMEPAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HOMEPAGE.M with the given input arguments.
%
%      HOMEPAGE('Property','Value',...) creates a new HOMEPAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before HomePage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to HomePage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help HomePage

% Last Modified by GUIDE v2.5 06-Jun-2018 00:48:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @HomePage_OpeningFcn, ...
                   'gui_OutputFcn',  @HomePage_OutputFcn, ...
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


% --- Executes just before HomePage is made visible.
function HomePage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to HomePage (see VARARGIN)

% Choose default command line output for HomePage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes HomePage wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = HomePage_OutputFcn(hObject, eventdata, handles) 
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
 [filename pathname] = uigetfile({'*.jpg';'*.bmp'},'File Selector');
 handles.myImage = strcat(pathname, filename);
 axes(handles.axes2);
 imshow(handles.myImage)
 set(handles.edit1,'string',filename);
 set(handles.edit2,'string',image);
 % save the updated handles object
 guidata(hObject,handles);



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 [filename pathname] = uigetfile({'*.jpg';'*.bmp'},'File Selector');
 handles.myImage = strcat(pathname, filename);
 axes(handles.axes1);
 imshow(handles.myImage)
 set(handles.edit1,'string',filename);
 set(handles.edit2,'string',image);
 % save the updated handles object
 guidata(hObject,handles);



% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
contents = get(hObject,'Value')
imh = findobj(handles.axes1, 'type', 'image');
O = get(imh, 'CData');
imh = findobj(handles.axes2, 'type', 'image');
T = get(imh, 'CData');
switch contents
    
    
    case 1
        myicon =  imread('delete.png');
    msgbox('Please select a test to proceed','ERROR !!','custom',myicon); 
        
    case 2
        
            ishudef(O,T);
   
        
    case 3
        
            Mainpage(O,T);
    case 4
        
            CapDetection(O,T);
    otherwise
        
end
    

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
