#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'vts_sqflite'
  s.version          = '0.0.1'
  s.summary          = 'SQLite plugin.'
  s.description      = <<-DESC
Accss SQLite database.
                       DESC
  s.homepage         = 'https://github.com/vts-contributor/vts-kit-flutter-sqlite/tree/develop/vts_sqflite'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Tekartik' => 'alex@tekartik.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'FMDB/SQLCipher', '~> 2.7.5'
  s.dependency 'SQLCipher', '~> 4.4.2'

  s.platform = :ios, '9.0'
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'HEADER_SEARCH_PATHS' => 'Pods/SQLCipher',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64'
  }
end

