cask "racomi" do
  version "0.1.9"
  sha256 "ecece9c9e9d4dabdba6a20ab9beb4acac919d134f990f6be13f7bbce12490db5"

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
