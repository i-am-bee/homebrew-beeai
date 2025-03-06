class OtelcolContrib < Formula
  desc "OpenTelemtry collector distribution containing both core and contrib components"
  homepage "https://opentelemetry.io/docs/collector/"
  url "https://github.com/open-telemetry/opentelemetry-collector-releases/archive/refs/tags/v0.120.0.tar.gz"
  sha256 "2ccf43cc580d3b5bfad325204afccd966e92a9bcefef80fb75c08a8db567c496"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/i-am-bee/homebrew-beeai/releases/download/otelcol-contrib-0.120.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "2626411d937410d43a0d57ee30c8e9a64d661548dfc81bd574c0b344e551f2a6"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "7fb237e525c59b8451ea66cdc192f04bdcd2f93a3b4c925797e6a8af2fbf2d61"
    sha256 cellar: :any_skip_relocation, ventura:       "0037b46621ef9c535b88ebeb56cf7a3280ed06f7d6b8341ff69484de46fb8759"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "102f04ea84a645bc242ca887e28f7ad2d4a473dd4b8bd9c030b4c0b058aeeea3"
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
