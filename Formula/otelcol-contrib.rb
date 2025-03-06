class OtelcolContrib < Formula
  desc "OpenTelemtry collector distribution containing both core and contrib components"
  homepage "https://opentelemetry.io/docs/collector/"
  url "https://github.com/open-telemetry/opentelemetry-collector-releases/archive/refs/tags/v0.120.0.tar.gz"
  sha256 "2ccf43cc580d3b5bfad325204afccd966e92a9bcefef80fb75c08a8db567c496"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/i-am-bee/homebrew-beeai/releases/download/otelcol-contrib-0.120.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "0000000000000000000000000000000000000000000000000000000000000000"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "0000000000000000000000000000000000000000000000000000000000000000"
    sha256 cellar: :any_skip_relocation, arm64_sequioa: "0000000000000000000000000000000000000000000000000000000000000000"
    sha256 cellar: :any_skip_relocation, ventura:       "0000000000000000000000000000000000000000000000000000000000000000"
    sha256 cellar: :any_skip_relocation, sonoma:        "0000000000000000000000000000000000000000000000000000000000000000"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "0000000000000000000000000000000000000000000000000000000000000000"
  end

  depends_on "go" => :build

  def install
    ENV["DISTRIBUTIONS"] = "otelcol-contrib"
    system "make", "build"
    bin.install "distributions/otelcol-contrib/_build/otelcol-contrib" => "otelcol-contrib"
  end

  test do
    (testpath/"config.yaml").write <<~EOS
      receivers:
        otlp:
          protocols:
            http:
              endpoint: localhost:4318
            grpc:
              endpoint: localhost:4317
      exporters:
        debug:
          verbosity: detailed
      service:
        pipelines:
          traces:
            receivers: [otlp]
            exporters: [debug]
    EOS
    fork do
      system bin/"otelcol-contrib", "--config", "config.yaml"
    end
    sleep 2
    trace_payload = '{
      "resourceSpans": [{
        "resource": {},
        "scopeSpans": [{
          "scope": {},
          "spans": [{
            "traceId": "01234567890123456789012345678901",
            "spanId": "0123456789012345",
            "name": "test",
            "kind": 1,
            "startTimeUnixNano": "1700000000000000000",
            "endTimeUnixNano": "1700000001000000000"
          }]
        }]
      }]
    }'.gsub(/\s+/, "")
    # the %{...} syntax (curl syntax, not Ruby) seems to be confusing `brew style`, so we need to split it
    assert_match "200", shell_output(
      "curl -s -o /dev/null " \
      "-w '%{http" \
      "_code}' " \
      "-X POST " \
      "-H 'Content-Type: application/json' " \
      "-d '#{trace_payload}' " \
      "http://localhost:4318/v1/traces",
    )
  end
end
