class OpenapiToHurl < Formula
  version '1.2.0'
  desc "Turn an openapi specification into hurl files"
  homepage "https://github.com/ethancarlsson/openapi-to-hurl"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/ethancarlsson/openapi-to-hurl/releases/download/v#{version}/openapi-to-hurl-#{version}-arm64.tar.gz"
        sha256 "68e05d870060e6856918e9147118abd4714ed8057f8eb4ebe60ec986c80afb89"
    elsif Hardware::CPU.intel?
      url "https://github.com/ethancarlsson/openapi-to-hurl/releases/download/v#{version}/openapi-to-hurl-#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "d7b8af8dfb17ad4cb9d3f6a6d3303ad15a43a6f640e520c7c0fb13e8b4163145"
    end
  end

  conflicts_with "openapi-to-hurl"

  def install
    bin.install "openapi-to-hurl"
    man1.install "doc/openapi-to-hurl.1"
  end
end
