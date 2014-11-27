Pod::Spec.new do |s|
  s.name                = "FFmpeg-prebuild@EchoLiao"
  s.version             = "2.4.3.0"
  s.summary             = "FFmpeg static libraries compiled for iOS"
  s.homepage            = "http://ffmpeg.org"
  s.author              = { "Echo Liao" => "echoliao8@gmail.com" }
  s.requires_arc        = false
  s.platform            = :ios
  s.source              = { :http => "http://github.com/EchoLiao/FFmpeg-prebuild/raw/master/FFmpeg-iOS-release-2.4.3.0.tgz" }
  s.preserve_paths      = "include/**/*.h"
  s.vendored_libraries  = 'lib/*.a'
  s.libraries           = 'avcodec avfilter avformat avutil swresample swscale'
  s.xcconfig            = { 'HEADER_SEARCH_PATHS' => "\"${PODS_ROOT}/#{s.name}/include\"" }

  s.dependency 'faac-prebuild@EchoLiao', '1.28.1'
  s.dependency 'lame-prebuild@EchoLiao', '3.99.5.1'
  s.dependency 'x264-prebuild@EchoLiao', '20141123.2245.2'
end
