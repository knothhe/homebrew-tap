cask "racomi" do
  version "0.1.8"
  sha256 "a661847c51c544a5154c1114068d8e834da66bcebfb7dbf30e221a806408523f"

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
