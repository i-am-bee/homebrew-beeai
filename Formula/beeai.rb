class Beeai < Formula
  include Language::Python::Virtualenv

  desc "Command-line interface and server for the BeeAI platform"
  homepage "https://github.com/i-am-bee/bee-agent-framework"
  url "https://files.pythonhosted.org/packages/80/03/04449946ffb6d799ed48f2b75b075b2a6b70869009a8f731d94e6ac53b95/beeai_cli-0.0.2.tar.gz"
  sha256 "88b90f12807d74f92769e3d17dd09cf69f8f7bd0589abb08c219ee107c962d79"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/i-am-bee/homebrew-beeai/releases/download/beeai-0.0.2"
    sha256 cellar: :any,                 arm64_sequoia: "bc750c67be55f9d06565a9241fc6c84aa2155995ffad7939571b8886b4933c89"
    sha256 cellar: :any,                 ventura:       "6963fb277a7703971a30bce98f5ab73ded841e2a0c7a2c5606f7d3d2a1f39d71"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "6032cd4ac7baec2979b47577acc729e2bae394903dfb0d82dff98ad97f2d33ce"
  end

  depends_on "rust" => :build

  depends_on "arize-phoenix"
  depends_on "certifi"
  depends_on "libyaml"
  depends_on "pygments"
  depends_on "python-setuptools"
  depends_on "python@3.13"

  resource "agentcommunicationprotocol" do
    url "https://files.pythonhosted.org/packages/be/11/c6347a075ce13f65ab04117c9a9302d3d61de9c6154c395b347350c4234f/agentcommunicationprotocol-0.0.4.tar.gz"
    sha256 "7b41f661b4bf895330a44e256337b9169d86ccd24fc8455edb565f8de85fc5d1"
  end

  resource "aiohappyeyeballs" do
    url "https://files.pythonhosted.org/packages/08/07/508f9ebba367fc3370162e53a3cfd12f5652ad79f0e0bfdf9f9847c6f159/aiohappyeyeballs-2.4.6.tar.gz"
    sha256 "9b05052f9042985d32ecbe4b59a77ae19c006a78f1344d7fdad69d28ded3d0b0"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/37/4b/952d49c73084fb790cb5c6ead50848c8e96b4980ad806cf4d2ad341eaa03/aiohttp-3.11.12.tar.gz"
    sha256 "7603ca26d75b1b86160ce1bbe2787a0b706e592af5b2504e12caa88a217767b0"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/ba/b5/6d55e80f6d8a08ce22b982eafa278d823b541c925f11ee774b0b9c43473d/aiosignal-1.3.2.tar.gz"
    sha256 "a8c255c66fafb1e499c9351d0bf32ff2d8a0321595ebac3b93713656d2436f54"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a3/73/199a98fc2dae33535d6b8e8e6ec01f8c1d76c9adb096c6b7d64823038cde/anyio-4.8.0.tar.gz"
    sha256 "1d9fe889df5212298c0c0723fa20479d1b94883a2df44bd3897aa91083316f7a"
  end

  resource "asgiref" do
    url "https://files.pythonhosted.org/packages/29/38/b3395cc9ad1b56d2ddac9970bc8f4141312dbaec28bc7c218b0dfafd0f42/asgiref-3.8.1.tar.gz"
    sha256 "c343bd80a0bec947a9860adb4c432ffa7db769836c64238fc34bdc3fec84d590"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/49/7c/fdf464bcc51d23881d110abd74b512a42b3d5d376a55a831b44c603ae17f/attrs-25.1.0.tar.gz"
    sha256 "1c97078a80c814273a76b2a298a932eb681c87415c11dee0a6921de7f1b02c3e"
  end

  resource "beeai-server" do
    url "https://files.pythonhosted.org/packages/e8/2e/c084b4376f0a7a7dad2c4c7e6f37d3f18e800521f95611eefe24498dba4e/beeai_server-0.0.1.tar.gz"
    sha256 "0c5e6ab120d3b2b45cf717dd2a92b74be7aaf4baf8c3b1971deee58c97f3604b"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/16/b0/572805e227f01586461c80e0fd25d65a2115599cc9dad142fee4b747c357/charset_normalizer-3.4.1.tar.gz"
    sha256 "44251f18cd68a75b56585dd00dae26183e102cd5e0f9f1466e6df5da2ed64ea3"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/b9/2e/0090cbf739cee7d23781ad4b89a9894a41538e4fcf4c31dcdd705b78eb8b/click-8.1.8.tar.gz"
    sha256 "ed53c9d8990d83c2a27deae68e4ee337473f6330c040a31d4225c9574d16096a"
  end

  resource "deprecated" do
    url "https://files.pythonhosted.org/packages/98/97/06afe62762c9a8a86af0cfb7bfdab22a43ad17138b07af5b1a58442690a2/deprecated-1.2.18.tar.gz"
    sha256 "422b6f6d859da6f2ef57857761bfb392480502a64c3028ca9bbe86085d72115d"
  end

  resource "dnspython" do
    url "https://files.pythonhosted.org/packages/b5/4a/263763cb2ba3816dd94b08ad3a33d5fdae34ecb856678773cc40a3605829/dnspython-2.7.0.tar.gz"
    sha256 "ce9c432eda0dc91cf618a5cedf1a4e142651196bbcd2c80e89ed5a907e5cfaf1"
  end

  resource "email-validator" do
    url "https://files.pythonhosted.org/packages/48/ce/13508a1ec3f8bb981ae4ca79ea40384becc868bfae97fd1c942bb3a001b1/email_validator-2.2.0.tar.gz"
    sha256 "cb690f344c617a714f22e66ae771445a1ceb46821152df8e165c5f9a364582b7"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/a2/b2/5a5dc4affdb6661dea100324e19a7721d5dc524b464fe8e366c093fd7d87/fastapi-0.115.8.tar.gz"
    sha256 "0ce9111231720190473e222cdf0f07f7206ad7e53ea02beb1d2dc36e2f0741e9"
  end

  resource "fastapi-cli" do
    url "https://files.pythonhosted.org/packages/fe/73/82a5831fbbf8ed75905bacf5b2d9d3dfd6f04d6968b29fe6f72a5ae9ceb1/fastapi_cli-0.0.7.tar.gz"
    sha256 "02b3b65956f526412515907a0793c9094abd4bfb5457b389f645b0ea6ba3605e"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/8f/ed/0f4cec13a93c02c47ec32d81d11c0c1efbadf4a471e3f3ce7cad366cbbd3/frozenlist-1.5.0.tar.gz"
    sha256 "81d5af29e61b9c8348e876d442253723928dce6433e0e76cd925cd83f1b4b817"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/f5/38/3af3d3633a34a3316095b39c8e8fb4853a28a536e55d347bd8d8e9a14b03/h11-0.14.0.tar.gz"
    sha256 "8f19fbbe99e72420ff35c00b27a34cb9937e902a8b810e2c88300c6f0a3b699d"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/6a/41/d7d0a89eb493922c37d343b607bc1b5da7f5be7e383740b4753ad8943e90/httpcore-1.0.7.tar.gz"
    sha256 "8551cb62a169ec7162ac7be8d4817d561f60e08eaa485234898414bb5a8a0b4c"
  end

  resource "httptools" do
    url "https://files.pythonhosted.org/packages/a7/9a/ce5e1f7e131522e6d3426e8e7a490b3a01f39a6696602e1c4f33f9e94277/httptools-0.6.4.tar.gz"
    sha256 "4e93eee4add6493b59a5c514da98c939b244fce4a0d8879cd3f466562f4b7d5c"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "httpx-sse" do
    url "https://files.pythonhosted.org/packages/4c/60/8f4281fa9bbf3c8034fd54c0e7412e66edbab6bc74c4996bd616f8d0406e/httpx-sse-0.4.0.tar.gz"
    sha256 "1e81a3a3070ce322add1d3529ed42eb5f70817f45ed6ec915ab753f961139721"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "importlib-metadata" do
    url "https://files.pythonhosted.org/packages/cd/12/33e59336dca5be0c398a7482335911a33aa0e20776128f038019f1a95f1b/importlib_metadata-8.5.0.tar.gz"
    sha256 "71522656f0abace1d072b9e5481a48f07c138e00f079c38c8f883823f9c26bd7"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/af/92/b3130cbbf5591acf9ade8708c365f3238046ac7cb8ccba6e81abccb0ccff/jinja2-3.1.5.tar.gz"
    sha256 "8fefff8dc3034e27bb80d67c671eb8a9bc424c0ef4c0826edbff304cceff43bb"
  end

  resource "kink" do
    url "https://files.pythonhosted.org/packages/00/28/f0bec943112929c6fe324d7a43633aafe4bd9c11949618f4a67fb280cbb9/kink-0.8.1.tar.gz"
    sha256 "9310fa5860ad4df3cdd4a2b998517a718cbc83ed4975c51b8ebd60f640a9702c"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/b2/97/5d42485e71dfc078108a86d6de8fa46db44a1a9295e89c5d6d4a06e23a62/markupsafe-3.0.2.tar.gz"
    sha256 "ee55d3edf80167e48ea11a923c7386f4669df67d7994554387f84e7d8b0a2bf0"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/d6/be/504b89a5e9ca731cd47487e91c469064f8ae5af93b7259758dcfc2b9c848/multidict-6.1.0.tar.gz"
    sha256 "22ae2ebf9b0c69d206c003e2f6a914ea33f0a932d4aa16f236afc049d9958f4a"
  end

  resource "opentelemetry-api" do
    url "https://files.pythonhosted.org/packages/2b/6d/bbbf879826b7f3c89a45252010b5796fb1f1a0d45d9dc4709db0ef9a06c8/opentelemetry_api-1.30.0.tar.gz"
    sha256 "375893400c1435bf623f7dfb3bcd44825fe6b56c34d0667c542ea8257b1a1240"
  end

  resource "orjson" do
    url "https://files.pythonhosted.org/packages/ae/f9/5dea21763eeff8c1590076918a446ea3d6140743e0e36f58f369928ed0f4/orjson-3.10.15.tar.gz"
    sha256 "05ca7fe452a2e9d8d9d706a2984c95b9c2ebc5db417ce0b7a49b91d50642a23e"
  end

  resource "propcache" do
    url "https://files.pythonhosted.org/packages/20/c8/2a13f78d82211490855b2fb303b6721348d0787fdd9a12ac46d99d3acde1/propcache-0.2.1.tar.gz"
    sha256 "3f77ce728b19cb537714499928fe800c3dda29e8d9428778fc7c186da4c09a64"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/b7/ae/d5220c5c52b158b1de7ca89fc5edb72f304a70a4c540c84c8844bf4008de/pydantic-2.10.6.tar.gz"
    sha256 "ca5daa827cce33de7a42be142548b0096bf05a7e7b365aebfa5f8eeec7128236"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/fc/01/f3e5ac5e7c25833db5eb555f7b7ab24cd6f8c322d3a3ad2d67a952dc0abc/pydantic_core-2.27.2.tar.gz"
    sha256 "eb026e5a4c1fee05726072337ff51d1efb6f59090b7da90d30ea58625b1ffb39"
  end

  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/73/7b/c58a586cd7d9ac66d2ee4ba60ca2d241fa837c02bca9bea80a9a8c3d22a9/pydantic_settings-2.7.1.tar.gz"
    sha256 "10c9caad35e64bfb3c2fbf70a078c0e25cc92499782e5200747f942a065dec93"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/bc/57/e84d88dfe0aec03b7a2d4327012c1627ab5f03652216c63d49846d7a6c58/python-dotenv-1.0.1.tar.gz"
    sha256 "e324ee90a023d808f1959c46bcbc04446a10ced277783dc6ee09987c37ec10ca"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/f3/87/f44d7c9f274c7ee665a29b885ec97089ec5dc034c7f3fafa03da9e39a09e/python_multipart-0.0.20.tar.gz"
    sha256 "8dd0cab45b8e23064ae09147625994d090fa46f5b0d1e13af944c331a7fa9d13"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/ab/3a/0316b28d0761c6734d6bc14e770d85506c986c85ffb239e688eeaab2c2bc/rich-13.9.4.tar.gz"
    sha256 "439594978a49a09530cff7ebc4b5c7103ef57baf48d5ea3184f21d9a2befa098"
  end

  resource "rich-toolkit" do
    url "https://files.pythonhosted.org/packages/5b/8a/71cfbf6bf6257ea785d1f030c22468f763eea1b3e5417620f2ba9abd6dca/rich_toolkit-0.13.2.tar.gz"
    sha256 "fea92557530de7c28f121cbed572ad93d9e0ddc60c3ca643f1b831f2f56b95d3"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/71/a4/80d2a11af59fe75b48230846989e93979c892d3a20016b42bb44edb9e398/sse_starlette-2.2.1.tar.gz"
    sha256 "54470d5f19274aeed6b2d473430b08b4b379ea851d953b11d7f1c4a2c118b419"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/ff/fb/2984a686808b89a6781526129a4b51266f678b2d2b97ab2d325e56116df8/starlette-0.45.3.tar.gz"
    sha256 "2cbcba2a75806f8a41c722141486f37c28e30a0921c5f6fe4346cb0dcee1302f"
  end

  resource "structlog" do
    url "https://files.pythonhosted.org/packages/25/fe/578db23e17392a8693b45a7b7dc6985370f51dd937157def8ecc7b20930d/structlog-25.1.0.tar.gz"
    sha256 "2ef2a572e0e27f09664965d31a576afe64e46ac6084ef5cec3c2b8cd6e4e3ad3"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/cb/ce/dca7b219718afd37a0068f4f2530a727c2b74a8b6e8e0c0080a4c0de4fcd/typer-0.15.1.tar.gz"
    sha256 "a0588c0a7fa68a1978a069818657778f86abe6ff5ea6abf472f940a08bfe4f0a"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/df/db/f35a00659bc03fec321ba8bce9420de607a1d37f8342eee1863174c69557/typing_extensions-4.12.2.tar.gz"
    sha256 "1a7ead55c7e559dd4dee8856e3a88b41225abfe1ce8df57b7c13915fe121ffb8"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/aa/63/e53da845320b757bf29ef6a9062f5c669fe997973f966045cb019c3f4b66/urllib3-2.3.0.tar.gz"
    sha256 "f8c5449b3cf0861679ce7e0503c7b44b5ec981bec0d1d3795a07f1ba96f0204d"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/4b/4d/938bd85e5bf2edeec766267a5015ad969730bb91e31b44021dfe8b22df6c/uvicorn-0.34.0.tar.gz"
    sha256 "404051050cd7e905de2c9a7e61790943440b3416f49cb409f965d9dcd0fa73e9"
  end

  resource "uvloop" do
    url "https://files.pythonhosted.org/packages/af/c0/854216d09d33c543f12a44b393c402e89a920b1a0a7dc634c42de91b9cf6/uvloop-0.21.0.tar.gz"
    sha256 "3bf12b0fda68447806a7ad847bfa591613177275d35b6724b1ee573faa3704e3"
  end

  resource "watchfiles" do
    url "https://files.pythonhosted.org/packages/f5/26/c705fc77d0a9ecdb9b66f1e2976d95b81df3cae518967431e7dbf9b5e219/watchfiles-1.0.4.tar.gz"
    sha256 "6ba473efd11062d73e4f00c2b730255f9c1bdd73cd5f9fe5b5da8dbd4a717205"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/94/54/8359678c726243d19fae38ca14a334e740782336c9f19700858c4eb64a1e/websockets-14.2.tar.gz"
    sha256 "5059ed9c54945efb321f097084b4c7e52c246f2c869815876a69d1efc4ad6eb5"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/c3/fc/e91cc220803d7bc4db93fb02facd8461c37364151b8494762cc88b0fbcef/wrapt-1.17.2.tar.gz"
    sha256 "41388e9d4d1522446fe79d3213196bd9e3b301a336965b9e27ca2788ebd122f3"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/b7/9d/4b94a8e6d2b51b599516a5cb88e5bc99b4d8d4583e468057eaa29d5f0918/yarl-1.18.3.tar.gz"
    sha256 "ac1801c45cbf77b6c99242eeff4fffb5e4e73a800b5c4ad4fc0be5def634d2e1"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/3f/50/bad581df71744867e9468ebd0bcd6505de3b275e06f202c2cb016e3ff56f/zipp-3.21.0.tar.gz"
    sha256 "2c9958f6430a2040341a52eb608ed6dd93ef4392e02ffe219417c1b28b5dd1f4"
  end

  def install
    virtualenv_install_with_resources
  end

  service do
    run [opt_bin/"beeai", "serve"]
    keep_alive true
    error_log_path var/"log/beeai-server.log"
    log_path var/"log/beeai-server.log"
    working_dir var
  end

  test do
    system bin/"beeai", "--help"
  end
end
