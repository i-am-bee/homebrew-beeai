class Beeai < Formula
  include Language::Python::Virtualenv

  desc "Command-line interface and server for the BeeAI platform"
  homepage "https://github.com/i-am-bee/beeai"
  url "https://files.pythonhosted.org/packages/47/8b/d3098fcbe56eb51a00884fd6c8dcbd43f2d2acf016dc3347d9130bc7c14e/beeai_cli-0.0.4.tar.gz"
  sha256 "924a1d550647a3ed793ebe0c271df636159bbf996877ed20b300d1df4b44d08e"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/i-am-bee/homebrew-beeai/releases/download/beeai-0.0.4"
    sha256 cellar: :any,                 arm64_sequoia: "1fd888d4f8f02176e241dcaddbb6057c1c8cf676c8cdb6507fc84141524cc32c"
    sha256 cellar: :any,                 arm64_sonoma:  "a54b939d06772252628fa25a3c6ad6898821892712d8fc458d75977fe3e67ff2"
    sha256 cellar: :any,                 ventura:       "6106cb94e4cf46499ef42089e7b50175e86ec0ddfc5f49f6662735e9bb8d420c"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "c5e93f8d4cd33c2ae1b6c4bb3016ae3221c624700a2e4f7ef2a9a00892a92ed8"
  end

  depends_on "rust" => :build

  depends_on "certifi"
  depends_on "libyaml"
  depends_on "node"
  depends_on "otelcol-contrib"
  depends_on "pygments"
  depends_on "python-setuptools"
  depends_on "python@3.13"
  depends_on "readline"
  depends_on "uv"

  resource "acp-sdk" do
    url "https://files.pythonhosted.org/packages/da/47/288f7e6807e73b48ffc2e6d85b49ff5d93fbc82196a77f8837a4b0f9a606/acp_sdk-0.0.4.tar.gz"
    sha256 "b2586a13aa9be8eaa19870a73f16c50c1eb05fff46d74d13a848b5af45267e70"
  end

  resource "aiohappyeyeballs" do
    url "https://files.pythonhosted.org/packages/a2/0c/458958007041f4b4de2d307e6b75d9e7554dad0baf26fe7a48b741aac126/aiohappyeyeballs-2.5.0.tar.gz"
    sha256 "18fde6204a76deeabc97c48bdd01d5801cfda5d6b9c8bbeb1aaaee9d648ca191"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/b3/3f/c4a667d184c69667b8f16e0704127efc5f1e60577df429382b4d95fd381e/aiohttp-3.11.13.tar.gz"
    sha256 "8ce789231404ca8fff7f693cdce398abf6d90fd5dae2b1847477196c243b1fbb"
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

  resource "backports-tarfile" do
    url "https://files.pythonhosted.org/packages/86/72/cd9b395f25e290e633655a100af28cb253e4393396264a98bd5f5951d50f/backports_tarfile-1.2.0.tar.gz"
    sha256 "d75e02c268746e1b8144c278978b6e98e85de6ad16f8e4b0844a154557eca991"
  end

  resource "beeai-sdk" do
    url "https://files.pythonhosted.org/packages/80/a0/3ea985eb5fc80b4c60eb039ea81de88462464869f3d423140483d0af0a38/beeai_sdk-0.0.11.tar.gz"
    sha256 "b93bb0f4ce51de200fda2404af3d2973ba6998525b936e9798fa562cef47c8c2"
  end

  resource "beeai-server" do
    url "https://files.pythonhosted.org/packages/f9/0a/e7c1764b66141683b20896f90c76402458e10bcafe6f00472b61e7021866/beeai_server-0.0.3.tar.gz"
    sha256 "cc387f75432bfb344327abed9e83c78ced09d7d44e9bfcdd056335f0ae207f0b"
  end

  resource "cachetools" do
    url "https://files.pythonhosted.org/packages/6c/81/3747dad6b14fa2cf53fcf10548cf5aea6913e96fab41a3c198676f8948a5/cachetools-5.5.2.tar.gz"
    sha256 "1a661caa9175d26759571b2e19580f9d6393969e5dfca11fdb1f947a23e640d4"
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

  resource "faker" do
    url "https://files.pythonhosted.org/packages/ee/6c/412b064e33d11b351ef8945e4cc0ab56aa156e107c71610c4af96bd5d72c/faker-36.2.2.tar.gz"
    sha256 "758bc63a26dc878fa0d76aa7639b8b65327927980ed0c3683b23bd8a5182f33f"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/b5/28/c5d26e5860df807241909a961a37d45e10533acef95fc368066c7dd186cd/fastapi-0.115.11.tar.gz"
    sha256 "cc81f03f688678b92600a65a5e618b93592c65005db37157147204d8924bf94f"
  end

  resource "fastapi-cli" do
    url "https://files.pythonhosted.org/packages/fe/73/82a5831fbbf8ed75905bacf5b2d9d3dfd6f04d6968b29fe6f72a5ae9ceb1/fastapi_cli-0.0.7.tar.gz"
    sha256 "02b3b65956f526412515907a0793c9094abd4bfb5457b389f645b0ea6ba3605e"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/8f/ed/0f4cec13a93c02c47ec32d81d11c0c1efbadf4a471e3f3ce7cad366cbbd3/frozenlist-1.5.0.tar.gz"
    sha256 "81d5af29e61b9c8348e876d442253723928dce6433e0e76cd925cd83f1b4b817"
  end

  resource "googleapis-common-protos" do
    url "https://files.pythonhosted.org/packages/c2/92/6bb11dad062ad7cc40665d0a8986193d54f1a0032b510e84e7182df9e661/googleapis_common_protos-1.69.0.tar.gz"
    sha256 "5a46d58af72846f59009b9c4710425b9af2139555c71837081706b213b298187"
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
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  resource "jsf" do
    url "https://files.pythonhosted.org/packages/8d/34/cf272dfe4277ce03b275bb9f5e99001b31db01b21c290fd262333c96e34a/jsf-0.11.2.tar.gz"
    sha256 "07055b363281d38ce871a9256a00587d8472802c5108721a7fe5884465104b5d"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/38/2e/03362ee4034a4c917f697890ccd4aec0800ccf9ded7f511971c75451deec/jsonschema-4.23.0.tar.gz"
    sha256 "d71497fef26351a33265337fa77ffeb82423f3ea21283cd9467bb03999266bc4"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/10/db/58f950c996c793472e336ff3655b13fbcf1e3b359dcf52dcf3ed3b52c352/jsonschema_specifications-2024.10.1.tar.gz"
    sha256 "0f38b83639958ce1152d02a7f062902c41c8fd20d558b0c34344292d417ae272"
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

  resource "opentelemetry-exporter-otlp-proto-common" do
    url "https://files.pythonhosted.org/packages/a2/d7/44098bf1ef89fc5810cdbda05faa2ae9322a0dbda4921cdc965dc68a9856/opentelemetry_exporter_otlp_proto_common-1.30.0.tar.gz"
    sha256 "ddbfbf797e518411857d0ca062c957080279320d6235a279f7b64ced73c13897"
  end

  resource "opentelemetry-exporter-otlp-proto-http" do
    url "https://files.pythonhosted.org/packages/04/f9/abb9191d536e6a2e2b7903f8053bf859a76bf784e3ca19a5749550ef19e4/opentelemetry_exporter_otlp_proto_http-1.30.0.tar.gz"
    sha256 "c3ae75d4181b1e34a60662a6814d0b94dd33b628bee5588a878bed92cee6abdc"
  end

  resource "opentelemetry-proto" do
    url "https://files.pythonhosted.org/packages/31/6e/c1ff2e3b0cd3a189a6be03fd4d63441d73d7addd9117ab5454e667b9b6c7/opentelemetry_proto-1.30.0.tar.gz"
    sha256 "afe5c9c15e8b68d7c469596e5b32e8fc085eb9febdd6fb4e20924a93a0389179"
  end

  resource "opentelemetry-sdk" do
    url "https://files.pythonhosted.org/packages/93/ee/d710062e8a862433d1be0b85920d0c653abe318878fef2d14dfe2c62ff7b/opentelemetry_sdk-1.30.0.tar.gz"
    sha256 "c9287a9e4a7614b9946e933a67168450b9ab35f08797eb9bc77d998fa480fa18"
  end

  resource "opentelemetry-semantic-conventions" do
    url "https://files.pythonhosted.org/packages/1e/c0/0f9ef4605fea7f2b83d55dd0b0d7aebe8feead247cd6facd232b30907b4f/opentelemetry_semantic_conventions-0.51b0.tar.gz"
    sha256 "3fabf47f35d1fd9aebcdca7e6802d86bd5ebc3bc3408b7e3248dde6e87a18c47"
  end

  resource "orjson" do
    url "https://files.pythonhosted.org/packages/ae/f9/5dea21763eeff8c1590076918a446ea3d6140743e0e36f58f369928ed0f4/orjson-3.10.15.tar.gz"
    sha256 "05ca7fe452a2e9d8d9d706a2984c95b9c2ebc5db417ce0b7a49b91d50642a23e"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d0/63/68dbb6eb2de9cb10ee4c9c14a0148804425e13c4fb20d61cce69f53106da/packaging-24.2.tar.gz"
    sha256 "c228a6dc5e932d346bc5739379109d49e8853dd8223571c7c5b55260edc0b97f"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/a1/e1/bd15cb8ffdcfeeb2bdc215de3c3cffca11408d829e4b8416dcfe71ba8854/prompt_toolkit-3.0.50.tar.gz"
    sha256 "544748f3860a2623ca5cd6d2795e7a14f3d0e1c3c9728359013f79877fc89bab"
  end

  resource "propcache" do
    url "https://files.pythonhosted.org/packages/92/76/f941e63d55c0293ff7829dd21e7cf1147e90a526756869a9070f287a68c9/propcache-0.3.0.tar.gz"
    sha256 "a8fd93de4e1d278046345f49e2238cdb298589325849b2645d4a94c53faeffc5"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/f7/d1/e0a911544ca9993e0f17ce6d3cc0932752356c1b0a834397f28e63479344/protobuf-5.29.3.tar.gz"
    sha256 "5da0f41edaf117bde316404bad1a486cb4ededf8e4a54891296f648e8e076620"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/2a/80/336820c1ad9286a4ded7e845b2eccfcb27851ab8ac6abece774a6ff4d3de/psutil-7.0.0.tar.gz"
    sha256 "7be9c3eba38beccb6495ea33afd982a44074b78f28c434a1f51cc07fd315c456"
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
    url "https://files.pythonhosted.org/packages/88/82/c79424d7d8c29b994fb01d277da57b0a9b09cc03c3ff875f9bd8a86b2145/pydantic_settings-2.8.1.tar.gz"
    sha256 "d5c663dfbe9db9d5e1c646b2e161da12f0d734d422ee56f567d0ea2cee4e8585"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/7c/2d/c3338d48ea6cc0feb8446d8e6937e1408088a72a39937982cc6111d17f84/pygments-2.19.1.tar.gz"
    sha256 "61c16d2a8576dc0649d9f39e089b5f02bcd27fba10d8fb4dcc28173f7a45151f"
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

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/2f/db/98b5c277be99dd18bfd91dd04e1b759cad18d1a338188c936e92f921c7e2/referencing-0.36.2.tar.gz"
    sha256 "df2e89862cd09deabbdba16944cc3f10feb6b3e6f18e902f7cc25609a34775aa"
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

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/0a/79/2ce611b18c4fd83d9e3aecb5cba93e1917c050f556db39842889fa69b79f/rpds_py-0.23.1.tar.gz"
    sha256 "7f3240dcfa14d198dba24b8b9cb3b108c06b68d45b7babd9eefc1038fdf7e707"
  end

  resource "rstr" do
    url "https://files.pythonhosted.org/packages/9f/80/d7449656d45a776b7a443ce3af4eb97c4debe416a1a80f60311c7cfd02ff/rstr-3.2.2.tar.gz"
    sha256 "c4a564d4dfb4472d931d145c43d1cf1ad78c24592142e7755b8866179eeac012"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "smart-open" do
    url "https://files.pythonhosted.org/packages/21/30/1f41c3d3b8cec82024b4b277bfd4e5b18b765ae7279eb9871fa25c503778/smart_open-7.1.0.tar.gz"
    sha256 "a4f09f84f0f6d3637c6543aca7b5487438877a21360e7368ccf1f704789752ba"
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
    url "https://files.pythonhosted.org/packages/44/b6/fb9a32e3c5d59b1e383c357534c63c2d3caa6f25bf3c59dd89d296ecbaec/starlette-0.46.0.tar.gz"
    sha256 "b359e4567456b28d473d0193f34c0de0ed49710d75ef183a74a5ce0499324f50"
  end

  resource "structlog" do
    url "https://files.pythonhosted.org/packages/25/fe/578db23e17392a8693b45a7b7dc6985370f51dd937157def8ecc7b20930d/structlog-25.1.0.tar.gz"
    sha256 "2ef2a572e0e27f09664965d31a576afe64e46ac6084ef5cec3c2b8cd6e4e3ad3"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/8b/6f/3991f0f1c7fcb2df31aef28e0594d8d54b05393a0e4e34c65e475c2a5d41/typer-0.15.2.tar.gz"
    sha256 "ab2fab47533a813c49fe1f16b1a370fd5819099c00b119e0633df65f22144ba5"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/df/db/f35a00659bc03fec321ba8bce9420de607a1d37f8342eee1863174c69557/typing_extensions-4.12.2.tar.gz"
    sha256 "1a7ead55c7e559dd4dee8856e3a88b41225abfe1ce8df57b7c13915fe121ffb8"
  end

  resource "tzdata" do
    url "https://files.pythonhosted.org/packages/43/0f/fa4723f22942480be4ca9527bbde8d43f6c3f2fe8412f00e7f5f6746bc8b/tzdata-2025.1.tar.gz"
    sha256 "24894909e88cdb28bd1636c6887801df64cb485bd593f2fd83ef29075a81d694"
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

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
    sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/21/e6/26d09fab466b7ca9c7737474c52be4f76a40301b08362eb2dbc19dcc16c1/websockets-15.0.1.tar.gz"
    sha256 "82544de02076bafba038ce055ee6412d68da13ab47f0c60cab827346de828dee"
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
    environment_variables PATH: std_service_path_env
  end

  test do
    system bin/"beeai", "--help"
  end
end
