class Derbent < Formula
  desc "One guarded pass for all your coding agents' tool calls"
  homepage "https://github.com/tunahanaliozturk/derbent"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tunahanaliozturk/derbent/releases/download/v1.0.0/derbent-v1.0.0-darwin-arm64"
      sha256 "3b10f629156ee8d2775b1a8825096c8bbaf5401dfc09984a27c7b85c31deda18"
    end
    on_intel do
      url "https://github.com/tunahanaliozturk/derbent/releases/download/v1.0.0/derbent-v1.0.0-darwin-amd64"
      sha256 "b9492428c8b560c3a7a0bb02340dde525530aba29fc0ea8f2ed3f7f39d30011d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tunahanaliozturk/derbent/releases/download/v1.0.0/derbent-v1.0.0-linux-arm64"
      sha256 "45b450ccd5d9b89dce9243caa620a27dde820539f1c7038ccead7786fbbe48a3"
    end
    on_intel do
      url "https://github.com/tunahanaliozturk/derbent/releases/download/v1.0.0/derbent-v1.0.0-linux-amd64"
      sha256 "c7cb31e9892965a25939583acab16363c47d88fb2a40591f0052775aef93a427"
    end
  end

  def install
    # The release ships bare binaries named derbent-v<version>-<os>-<arch>.
    bin.install File.basename(stable.url) => "derbent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/derbent version")
  end
end
