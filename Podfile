#!/usr/bin/ruby

use_frameworks!
platform :ios, "11.0"
inhibit_all_warnings!

target 'the-example-app.swift' do
  pod 'Contentful', '~> 1.0.1'
  pod 'Firebase/Core'
  pod 'markymark', :git => 'https://github.com/loudmouth/Marky-Mark.git', :branch => 'bugfix/ImageRule-regex'
  pod 'AlamofireImage', '~> 3.3'
  pod 'DeepLinkKit'

  target 'the-example-app.swiftTests' do
    inherit! :search_paths
    pod 'Nimble'
    pod 'KIF'
  end
end

