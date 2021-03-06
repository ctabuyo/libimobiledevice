Pod::Spec.new do |s|

 s.name = "libimobiledevice"
 s.version = "1.2.0" 
 s.summary = "A library to communicate with services of Apple iOS devices using native protocols."

s.homepage = "https://github.com/libimobiledevice/libimobiledevice" 
s.license = {:type => 'GPL', :file => 'COPYING'}

s.author = 'Christian Tabuyo' 
s.platform = :osx, '10.15' 
s.source = { :git => "https://github.com/ctabuyo/libimobiledevice", :tag => "v#{s.version}"}
s.preserve_paths = "common/*.h"
s.source_files = 'src/*.{h,c,m,cpp}', 'include/*.h', 'include/libimobiledevice/*.h', 'common/*.{h,c,m,cpp}'
s.public_header_files =  'include/libimobiledevice/*.h'
s.library = 'ssl', 'crypto'
s.dependency 'libplist'
s.dependency 'usbmuxd'
s.xcconfig = {"GCC_PREPROCESSOR_DEFINITIONS" => 'HAVE_OPENSSL HAVE_VASPRINTF HAVE_ASPRINTF HAVE_STPCPY STRIP_DEBUG_CODE', "HEADER_SEARCH_PATHS" => '"${PODS_ROOT}/libplist/include/" "${PODS_ROOT}/libimobiledevice/" "${PODS_ROOT}/usbmuxd/**" "${PODS_ROOT}/libimobiledevice/include/"'}

end
