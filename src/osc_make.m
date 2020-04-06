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

    % compile commands to build the osc library DLLs

    % requires gnumex to be configured (with config file in mexopts.bat)
    % requires libws2_32.a from mingw
    % requires liblo to be compiled with the pthreads code commented out

    cd y:\matlab\win\osc\

    mex -Iy:\matlab\win\osc\liblo-0.22 -f y:\matlab\win\gnumex\mexopts.bat y:\matlab\osc\osc_new_address.c y:\matlab\win\osc\liblo-0.22\src\.libs\*.o c:\mingw\lib\libws2_32.a
    mex -Iy:\matlab\win\osc\liblo-0.22 -f y:\matlab\win\gnumex\mexopts.bat y:\matlab\osc\osc_free_address.c y:\matlab\win\osc\liblo-0.22\src\.libs\*.o c:\mingw\lib\libws2_32.a
    mex -Iy:\matlab\win\osc\liblo-0.22 -f y:\matlab\win\gnumex\mexopts.bat y:\matlab\osc\osc_new_server.c y:\matlab\win\osc\liblo-0.22\src\.libs\*.o c:\mingw\lib\libws2_32.a
    mex -Iy:\matlab\win\osc\liblo-0.22 -f y:\matlab\win\gnumex\mexopts.bat y:\matlab\osc\osc_free_server.c y:\matlab\win\osc\liblo-0.22\src\.libs\*.o c:\mingw\lib\libws2_32.a
    mex -Iy:\matlab\win\osc\liblo-0.22 -f y:\matlab\win\gnumex\mexopts.bat y:\matlab\osc\osc_send.c y:\matlab\win\osc\liblo-0.22\src\.libs\*.o c:\mingw\lib\libws2_32.a
    mex -Iy:\matlab\win\osc\liblo-0.22 -f y:\matlab\win\gnumex\mexopts.bat y:\matlab\osc\osc_recv.c y:\matlab\win\osc\liblo-0.22\src\.libs\*.o c:\mingw\lib\libws2_32.a
    
    cd ..\..\osc
    
  end
