function osc_make()

  if ismac

    cd(fileparts(which('osc_make')))

    % link against static version of liblo to keep things simple..
    mex -v -I/usr/local/include -L"../osx_binaries" -llo osc_new_address.c
    mex -v -I/usr/local/include -L"../osx_binaries" -llo osc_free_address.c
    mex -v -I/usr/local/include -L"../osx_binaries" -llo osc_new_server.c
    mex -v -I/usr/local/include -L"../osx_binaries" -llo osc_free_server.c
    mex -v -I/usr/local/include -L"../osx_binaries" -llo osc_send.c
    mex -v -I/usr/local/include -L"../osx_binaries" -llo osc_recv.c

  elseif isunix
      
    mex -v -I/usr/local/include -llo osc_new_address.c
    mex -v -I/usr/local/include -llo osc_free_address.c
    mex -v -I/usr/local/include -llo osc_new_server.c
    mex -v -I/usr/local/include -llo osc_free_server.c
    mex -v -I/usr/local/include -llo osc_send.c
    mex -v -I/usr/local/include -llo osc_recv.c
    
  elseif ispc


%     mex -Iy:\matlab\win\osc\liblo-0.22 -f y:\matlab\win\gnumex\mexopts.bat y:\matlab\osc\osc_new_address.c y:\matlab\win\osc\liblo-0.22\src\.libs\*.o c:\mingw\lib\libws2_32.a
%     mex -Iy:\matlab\win\osc\liblo-0.22 -f y:\matlab\win\gnumex\mexopts.bat y:\matlab\osc\osc_free_address.c y:\matlab\win\osc\liblo-0.22\src\.libs\*.o c:\mingw\lib\libws2_32.a
%     mex -Iy:\matlab\win\osc\liblo-0.22 -f y:\matlab\win\gnumex\mexopts.bat y:\matlab\osc\osc_new_server.c y:\matlab\win\osc\liblo-0.22\src\.libs\*.o c:\mingw\lib\libws2_32.a
%     mex -Iy:\matlab\win\osc\liblo-0.22 -f y:\matlab\win\gnumex\mexopts.bat y:\matlab\osc\osc_free_server.c y:\matlab\win\osc\liblo-0.22\src\.libs\*.o c:\mingw\lib\libws2_32.a
%     mex -Iy:\matlab\win\osc\liblo-0.22 -f y:\matlab\win\gnumex\mexopts.bat y:\matlab\osc\osc_send.c y:\matlab\win\osc\liblo-0.22\src\.libs\*.o c:\mingw\lib\libws2_32.a
%     mex -Iy:\matlab\win\osc\liblo-0.22 -f y:\matlab\win\gnumex\mexopts.bat y:\matlab\osc\osc_recv.c y:\matlab\win\osc\liblo-0.22\src\.libs\*.o c:\mingw\lib\libws2_32.a
%     

    mex -v -I../../liblo -L../win_binaries -llo_static -lWs2_32 -liphlpapi osc_new_address.c
    mex -v -I../../liblo -L../win_binaries -llo_static -lWs2_32 -liphlpapi osc_free_address.c
    mex -v -I../../liblo -L../win_binaries -llo_static -lWs2_32 -liphlpapi osc_new_server.c
    mex -v -I../../liblo -L../win_binaries -llo_static -lWs2_32 -liphlpapi osc_free_server.c
    mex -v -I../../liblo -L../win_binaries -llo_static -lWs2_32 -liphlpapi osc_send.c
    mex -v -I../../liblo -L../win_binaries -llo_static -lWs2_32 -liphlpapi osc_recv.c
    
  end
