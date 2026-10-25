cask "racomi" do
  version "0.1.7"
  sha256 "6607668c82d3c294f2d69e2b00833f3ead6c8ed0acdf13d27424be55500e5436"

  url "https://github.com/knothhe/racomi/releases/download/v#{version}/racomi-#{version}-aarch64-macos.zip"
  name "racomi"
  desc "Local Agent Skill manager"
  homepage "https://github.com/knothhe/racomi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "racomi.app"

  uninstall quit: "com.knothhe.racomi"
end
