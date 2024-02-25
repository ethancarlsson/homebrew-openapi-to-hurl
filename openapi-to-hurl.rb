class OpenapiToHurl < Formula
  version 'v1.0.0'
  desc "Turn an openapi specification into hurl files"
  homepage "https://github.com/ethancarlsson/openapi-to-hurl"

  if OS.mac?
    url "https://github.com/ethancarlsson/openapi-to-hurl/releases/download/#{version}/openapi-to-hurl-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "adea9bbfa36f7c6fe8364aba3aae0f6286d97b983ea8e84c695ae014a85d8b74"
  end

  conflicts_with "openapi-to-hurl"

  def install
    bin.install "openapi-to-hurl"
    man1.install "doc/openapi-to-hurl.1"
  end
end
