Pod::Spec.new do |spec|
  spec.name         = "SNESGameCore"
  spec.version      = "0.1"
  spec.summary      = "Super Nintendo Entertainment System plug-in"
  spec.description  = "iOS framework that wraps Snes9x to allow playing SNES games with Delta emulator."
  spec.homepage     = "https://github.com/DomenicoGonnelli/SNESGameCore"
  spec.platform     = :ios, "14.0"
  spec.source       = { :git => "https://github.com/DomenicoGonnelli/SNESGameCore.git" }

  spec.author             = { "Domenico Gonnelli" => "domenico.gonnelli@outlook.it" }
  
  spec.source_files  = "SNESGameCore/**/*.{h,m,mm,swift}", "snes9x/*.{h,hpp}", "snes9x/apu/*.{h,hpp}"
  spec.public_header_files = "SNESGameCore/Types/SNESTypes.h", "SNESGameCore/Bridge/SNESEmulatorBridge.h"
  spec.header_mappings_dir = ""
  spec.resource_bundles = {
    "SNESGameCore" => ["SNESGameCore/**/*.deltamapping", "SNESGameCore/**/*.dgskin"]
  }
  
  spec.dependency 'GameCore'
    
  spec.xcconfig = {
    "HEADER_SEARCH_PATHS" => '"${PODS_CONFIGURATION_BUILD_DIR}"',
    "USER_HEADER_SEARCH_PATHS" => '"${PODS_CONFIGURATION_BUILD_DIR}/GameCore/Swift Compatibility Header" "$(PODS_ROOT)/Headers/Private/SNESGameCore/snes9x"',
    "OTHER_CFLAGS" => "-funsigned-char -ffast-math -finline -fno-builtin -fno-common -fomit-frame-pointer -funroll-loops -fstrict-aliasing -DHAVE_STDINT_H -DARM -DSTATIC_LIBRARY=1"
  }
  
end
