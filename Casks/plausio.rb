cask "plausio" do
  version "1.0.0"
  sha256 "0a6f9d9b1cec98e75ef12425a5d009aa5f79a51a7cfc00ca4a770e8c57ad3fc3"

  url "https://github.com/copa/homebrew-tap/releases/download/v#{version}/Plausio-#{version}.zip"
  name "Plausio"
  desc "Analyzes comment sections for bot networks and disinformation"
  homepage "https://plausio.app/"

  depends_on macos: ">= :sonoma"

  app "Plausio.app"

  zap trash: [
    "~/Library/Application Support/Plausio",
    "~/Library/Caches/de.copatec.plausio.direct",
    "~/Library/HTTPStorages/de.copatec.plausio.direct",
    "~/Library/Preferences/de.copatec.plausio.direct.plist",
  ]
end
