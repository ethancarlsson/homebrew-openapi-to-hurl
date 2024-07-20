class OpenapiToHurl < Formula
  version '1.1.0'
  desc "Turn an openapi specification into hurl files"
  homepage "https://github.com/ethancarlsson/openapi-to-hurl"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/ethancarlsson/openapi-to-hurl/releases/download/v#{version}/openapi-to-hurl-#{version}-arm64.tar.gz"
        sha256 "47fce4808458a07bc47ac2ea8182e0dac5745925510c25ae3063bbc04c90ffaa"
    elsif Hardware::CPU.intel?
      url "https://github.com/ethancarlsson/openapi-to-hurl/releases/download/v#{version}/openapi-to-hurl-#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "460487218bf69737e6d7a5f82dfeb28df1718745ddc3b030aeed8850f2e9ec2a"
    end
  end

  conflicts_with "openapi-to-hurl"

  def install
    bin.install "openapi-to-hurl"
    man1.install "doc/openapi-to-hurl.1"
  end
end
