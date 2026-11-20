cask "tastytrade" do
  arch arm: "arm64", intel: "x64"

  version "0.77.0"
  sha256 arm:   "43f032600517bcb2688dbbe3454b7715136aae405c4b80590de58a2548b9a092",
         intel: "45632fad929904f4bf03d189238e5ad774b484042e3b47deed0681ba44ca1849"

  url "https://download.tastytrade.com/desktop-2.0/tastytrade-mac-#{arch}-#{version}.dmg"
  name "tastytrade"
  desc "Desktop trading platform"
  homepage "https://tastytrade.com/desktop-platform/"

  livecheck do
    url "https://download.tastytrade.com/desktop-2.0/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "tastytrade 2.0.app"

  zap trash: [
    "~/Library/Application Support/tastytrade",
    "~/Library/Application Support/tastyworks",
    "~/Library/Caches/tastytrade",
    "~/Library/Logs/tastytrade",
    "~/Library/Preferences/com.tastytrade.my.plist",
    "~/Library/Saved Application State/com.tastytrade.desktop.savedState",
  ]
end
