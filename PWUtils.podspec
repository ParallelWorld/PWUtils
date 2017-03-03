Pod::Spec.new do |s|
  s.name         = "PWUtils"
  s.version      = "0.0.1"
  s.summary      = "工具库"
  s.description  = <<-DESC
    工具组件库
                   DESC
  s.homepage     = "https://github.com/parallelWorld/PWUtils"
  s.author       = { "Parallel World" => "654269765@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/parallelWorld/PWUtils.git", :tag => "#{s.version}" }
  s.source_files = "PWUtils/**/*.{h,m}"
  s.requires_arc = true
end

