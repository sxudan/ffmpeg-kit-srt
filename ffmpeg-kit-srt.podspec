Pod::Spec.new do |spec|
  spec.name         = "ffmpeg-kit-srt"
  spec.version      = "1.0.2"
  spec.summary      = "FFmpeg Kit iOS Https Shared Framework"
  spec.description  = "Includes FFmpeg with gmp and gnutls libraries enabled."
  spec.author           = { 'sxudan' => 'sudosuwal@gmail.com' }
  spec.homepage     = "https://github.com/sxudan/ffmpeg-kit-srt"
  spec.license      = { :type => "LGPL-3.0", :file => "ffmpegkit.xcframework/ios-arm64_arm64e/ffmpegkit.framework/LICENSE" }
  spec.platforms    = { :ios => "12.1" }
  spec.requires_arc = true

  spec.source = { :git => "https://github.com/sxudan/ffmpeg-kit-srt-6.0-ios-xcframework.git", :tag => "1.0.0" }

  spec.libraries = [
    "z",
    "bz2",
    "c++",
    "iconv"
  ]
	
spec.ios.preserve_paths = 'ffmpegkit.xcframework', 'libavcodec.xcframework', 'libavdevice.xcframework', 'libavfilter.xcframework', 'libavformat.xcframework', 'libavutil.xcframework', 'libswresample.xcframework', 'libswscale.xcframework'
  
  spec.frameworks = [
    "AudioToolbox",
    "AVFoundation",
    "CoreMedia",
    "VideoToolbox"
  ]

  spec.vendored_frameworks = [

"ffmpegkit.xcframework",
    "libavcodec.xcframework",
    "libavdevice.xcframework",
    "libavfilter.xcframework",
    "libavformat.xcframework",
    "libavutil.xcframework",
    "libswresample.xcframework",
    "libswscale.xcframework"
]

  # Add any additional dependencies if needed
end