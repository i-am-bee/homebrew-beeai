class ArizePhoenix < Formula
  include Language::Python::Virtualenv

  desc "AI Observability & Evaluation"
  homepage "https://docs.arize.com/phoenix"
  url "https://files.pythonhosted.org/packages/a7/d0/6befe3c390602aa9c4980b8b58f8b5ffa34c4fa1b06b4ceb4316089f4bda/arize_phoenix-8.9.0.tar.gz"
  sha256 "b6eff8337bd492f779785724acd98f62cf0743dfd2ce6f900b4b112531287798"
  license "Elastic-2.0"

  bottle do
    root_url "https://github.com/i-am-bee/homebrew-beeai/releases/download/arize-phoenix-8.9.0"
    sha256 cellar: :any,                 arm64_sequoia: "cfdf2307310656c283c433b03d5a96688e59876d7865698601694a93829d7cb6"
    sha256 cellar: :any,                 arm64_sonoma:  "0188ebcc0eec6516a95bc7632ffc40de6cf79818f30d305231c41512c883a5d0"
    sha256 cellar: :any,                 ventura:       "9a19f4d9bef3febff09c0b01eb2a3ecea7a725f04d3998388a3dcbb2a76ce7ca"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "3ffa3876a3d3c0b5972644482f9b73d7cca7d6445b2ff646b949a793ca091cc4"
  end

  depends_on "cmake" => :build
  depends_on "cython" => :build
  depends_on "llvm" => :build
  depends_on "make" => :build
  depends_on "maturin" => :build
  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "python-setuptools" => :build
  depends_on "rust" => :build

  depends_on "apache-arrow"
  depends_on "certifi"
  depends_on "cffi"
  depends_on "cryptography"
  depends_on "numpy"
  depends_on "python@3.13"
  depends_on "scipy"
  depends_on "six"

  resource "aioitertools" do
    url "https://files.pythonhosted.org/packages/06/de/38491a84ab323b47c7f86e94d2830e748780525f7a10c8600b67ead7e9ea/aioitertools-0.12.0.tar.gz"
    sha256 "c2a9055b4fbb7705f561b9d86053e8af5d10cc845d22c32008c43490b2d8dd6b"
  end

  resource "aiosqlite" do
    url "https://files.pythonhosted.org/packages/13/7d/8bca2bf9a247c2c5dfeec1d7a5f40db6518f88d314b8bca9da29670d2671/aiosqlite-0.21.0.tar.gz"
    sha256 "131bb8056daa3bc875608c631c678cda73922a2d4ba8aec373b19f18c17e7aa3"
  end

  resource "alembic" do
    url "https://files.pythonhosted.org/packages/4a/ed/901044acb892caa5604bf818d2da9ab0df94ef606c6059fdf367894ebf60/alembic-1.15.1.tar.gz"
    sha256 "e1a1c738577bca1f27e68728c910cd389b9a92152ff91d902da649c192e30c49"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a3/73/199a98fc2dae33535d6b8e8e6ec01f8c1d76c9adb096c6b7d64823038cde/anyio-4.8.0.tar.gz"
    sha256 "1d9fe889df5212298c0c0723fa20479d1b94883a2df44bd3897aa91083316f7a"
  end

  resource "arize-phoenix-client" do
    url "https://files.pythonhosted.org/packages/f9/1d/ed50c40aaae97a9a2c58f95450effe617056dd456b27d39663a8233c2083/arize_phoenix_client-1.0.3.tar.gz"
    sha256 "4fd6766641803acea58abf3e2eb36cac6753f10b00b11736a0ed7c12cf07acfb"
  end

  resource "arize-phoenix-evals" do
    url "https://files.pythonhosted.org/packages/c0/a9/7753f95d600271c7c33ad101b1e330bf211d221f3ae9828b834c86310032/arize_phoenix_evals-0.20.3.tar.gz"
    sha256 "32ba364fda62a0dd0bb4e4f1bbeab9a62d2b111f5e0c229a6449a49445892a3c"
  end

  resource "arize-phoenix-otel" do
    url "https://files.pythonhosted.org/packages/c6/80/34171b7e0aa767c95ef54f29d18d057c62bfd059626ec4b4d697e3c706ed/arize_phoenix_otel-0.8.0.tar.gz"
    sha256 "fb3213a1dcb038fe835517b597c49f164f6b3f758b73fe697d957b12b0a4556a"
  end

  resource "authlib" do
    url "https://files.pythonhosted.org/packages/36/aa/e1c199d27ea06a13f9641746a9b19f15bd75b04b40b6bd72a89156c75d10/authlib-1.5.1.tar.gz"
    sha256 "5cbc85ecb0667312c1cdc2f9095680bb735883b123fb509fde1e65b1c5df972e"
  end

  resource "cachetools" do
    url "https://files.pythonhosted.org/packages/6c/81/3747dad6b14fa2cf53fcf10548cf5aea6913e96fab41a3c198676f8948a5/cachetools-5.5.2.tar.gz"
    sha256 "1a661caa9175d26759571b2e19580f9d6393969e5dfca11fdb1f947a23e640d4"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/1c/ab/c9f1e32b7b1bf505bf26f0ef697775960db7932abeb7b516de930ba2705f/certifi-2025.1.31.tar.gz"
    sha256 "3d5da6925056f6f18f119200434a4780a94263f10d1c21d032a6f6b2baa20651"
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

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/b5/28/c5d26e5860df807241909a961a37d45e10533acef95fc368066c7dd186cd/fastapi-0.115.11.tar.gz"
    sha256 "cc81f03f688678b92600a65a5e618b93592c65005db37157147204d8924bf94f"
  end

  resource "googleapis-common-protos" do
    url "https://files.pythonhosted.org/packages/c2/92/6bb11dad062ad7cc40665d0a8986193d54f1a0032b510e84e7182df9e661/googleapis_common_protos-1.69.0.tar.gz"
    sha256 "5a46d58af72846f59009b9c4710425b9af2139555c71837081706b213b298187"
  end

  resource "graphql-core" do
    url "https://files.pythonhosted.org/packages/c4/16/7574029da84834349b60ed71614d66ca3afe46e9bf9c7b9562102acb7d4f/graphql_core-3.2.6.tar.gz"
    sha256 "c08eec22f9e40f0bd61d805907e3b3b1b9a320bc606e23dc145eebca07c8fbab"
  end

  resource "greenlet" do
    url "https://files.pythonhosted.org/packages/2f/ff/df5fede753cc10f6a5be0931204ea30c35fa2f2ea7a35b25bdaf4fe40e46/greenlet-3.1.1.tar.gz"
    sha256 "4ce3ac6cdb6adf7946475d7ef31777c26d94bccc377e070a7986bd2d5c515467"
  end

  resource "grpc-interceptor" do
    url "https://files.pythonhosted.org/packages/9f/28/57449d5567adf4c1d3e216aaca545913fbc21a915f2da6790d6734aac76e/grpc-interceptor-0.15.4.tar.gz"
    sha256 "1f45c0bcb58b6f332f37c637632247c9b02bc6af0fdceb7ba7ce8d2ebbfb0926"
  end

  resource "grpcio" do
    url "https://files.pythonhosted.org/packages/69/e1/4b21b5017c33f3600dcc32b802bb48fe44a4d36d6c066f52650c7c2690fa/grpcio-1.70.0.tar.gz"
    sha256 "8d1584a68d5922330025881e63a6c1b54cc8117291d382e4fa69339b6d914c56"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/f5/38/3af3d3633a34a3316095b39c8e8fb4853a28a536e55d347bd8d8e9a14b03/h11-0.14.0.tar.gz"
    sha256 "8f19fbbe99e72420ff35c00b27a34cb9937e902a8b810e2c88300c6f0a3b699d"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/6a/41/d7d0a89eb493922c37d343b607bc1b5da7f5be7e383740b4753ad8943e90/httpcore-1.0.7.tar.gz"
    sha256 "8551cb62a169ec7162ac7be8d4817d561f60e08eaa485234898414bb5a8a0b4c"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
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

  resource "joblib" do
    url "https://files.pythonhosted.org/packages/64/33/60135848598c076ce4b231e1b1895170f45fbcaeaa2c9d5e38b04db70c35/joblib-1.4.2.tar.gz"
    sha256 "2382c5816b2636fbd20a09e0f4e9dad4736765fdfb7dca582943b9c1366b3f0e"
  end

  resource "mako" do
    url "https://files.pythonhosted.org/packages/62/4f/ddb1965901bc388958db9f0c991255b2c469349a741ae8c9cd8a562d70a6/mako-1.3.9.tar.gz"
    sha256 "b5d65ff3462870feec922dbccf38f6efb44e5714d7b593a656be86663d8600ac"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/b2/97/5d42485e71dfc078108a86d6de8fa46db44a1a9295e89c5d6d4a06e23a62/markupsafe-3.0.2.tar.gz"
    sha256 "ee55d3edf80167e48ea11a923c7386f4669df67d7994554387f84e7d8b0a2bf0"
  end

  resource "openinference-instrumentation" do
    url "https://files.pythonhosted.org/packages/85/77/4c00ee61e20f5b9f18c7aebba03a0afef5e3a6a5fa891e5d5fc1d625212c/openinference_instrumentation-0.1.23.tar.gz"
    sha256 "18b97a7cdb4a18e7c8990ca5eeaac15dac0978f888731cb30e5997cd6a791823"
  end

  resource "openinference-semantic-conventions" do
    url "https://files.pythonhosted.org/packages/03/c6/16bad683daaf0fb36dc02c0959ce09c343b8d35b63f6784ba78e977a12ac/openinference_semantic_conventions-0.1.14.tar.gz"
    sha256 "2196272c74cce69ea79aa57ebe06c6f14f681652879767a41fe787fdc7525db1"
  end

  resource "opentelemetry-api" do
    url "https://files.pythonhosted.org/packages/2b/6d/bbbf879826b7f3c89a45252010b5796fb1f1a0d45d9dc4709db0ef9a06c8/opentelemetry_api-1.30.0.tar.gz"
    sha256 "375893400c1435bf623f7dfb3bcd44825fe6b56c34d0667c542ea8257b1a1240"
  end

  resource "opentelemetry-exporter-otlp" do
    url "https://files.pythonhosted.org/packages/a8/5f/612208105a64018bdf1eae09f2bdddb2fb1ab292bb5e5aae8a3f567ddd3f/opentelemetry_exporter_otlp-1.30.0.tar.gz"
    sha256 "da7769f95cd5be5b09dd4188ac153a33709eda652217f2d10aed6518c8e60f0d"
  end

  resource "opentelemetry-exporter-otlp-proto-common" do
    url "https://files.pythonhosted.org/packages/a2/d7/44098bf1ef89fc5810cdbda05faa2ae9322a0dbda4921cdc965dc68a9856/opentelemetry_exporter_otlp_proto_common-1.30.0.tar.gz"
    sha256 "ddbfbf797e518411857d0ca062c957080279320d6235a279f7b64ced73c13897"
  end

  resource "opentelemetry-exporter-otlp-proto-grpc" do
    url "https://files.pythonhosted.org/packages/86/3e/c7246df92c25e6ce95c349ad21597b4471b01ec9471e95d5261f1629fe92/opentelemetry_exporter_otlp_proto_grpc-1.30.0.tar.gz"
    sha256 "d0f10f0b9b9a383b7d04a144d01cb280e70362cccc613987e234183fd1f01177"
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

  resource "pandas" do
    url "https://files.pythonhosted.org/packages/9c/d6/9f8431bacc2e19dca897724cd097b1bb224a6ad5433784a44b587c7c13af/pandas-2.2.3.tar.gz"
    sha256 "4f18ba62b61d7e192368b84517265a99b4d7ee8912f8708660fb4a366cc82667"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/f7/d1/e0a911544ca9993e0f17ce6d3cc0932752356c1b0a834397f28e63479344/protobuf-5.29.3.tar.gz"
    sha256 "5da0f41edaf117bde316404bad1a486cb4ededf8e4a54891296f648e8e076620"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/2a/80/336820c1ad9286a4ded7e845b2eccfcb27851ab8ac6abece774a6ff4d3de/psutil-7.0.0.tar.gz"
    sha256 "7be9c3eba38beccb6495ea33afd982a44074b78f28c434a1f51cc07fd315c456"
  end

  resource "pyarrow" do
    url "https://files.pythonhosted.org/packages/7f/09/a9046344212690f0632b9c709f9bf18506522feb333c894d0de81d62341a/pyarrow-19.0.1.tar.gz"
    sha256 "3bf266b485df66a400f282ac0b6d1b500b9d2ae73314a153dbe97d6d5cc8a99e"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1d/b2/31537cf4b1ca988837256c910a668b553fceb8f069bedc4b1c826024b52c/pycparser-2.22.tar.gz"
    sha256 "491c8be9c040f5390f5bf44a5b07752bd07f56edf992381b05c701439eec10f6"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/b7/ae/d5220c5c52b158b1de7ca89fc5edb72f304a70a4c540c84c8844bf4008de/pydantic-2.10.6.tar.gz"
    sha256 "ca5daa827cce33de7a42be142548b0096bf05a7e7b365aebfa5f8eeec7128236"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/fc/01/f3e5ac5e7c25833db5eb555f7b7ab24cd6f8c322d3a3ad2d67a952dc0abc/pydantic_core-2.27.2.tar.gz"
    sha256 "eb026e5a4c1fee05726072337ff51d1efb6f59090b7da90d30ea58625b1ffb39"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/f3/87/f44d7c9f274c7ee665a29b885ec97089ec5dc034c7f3fafa03da9e39a09e/python_multipart-0.0.20.tar.gz"
    sha256 "8dd0cab45b8e23064ae09147625994d090fa46f5b0d1e13af944c331a7fa9d13"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/5f/57/df1c9157c8d5a05117e455d66fd7cf6dbc46974f832b1058ed4856785d8a/pytz-2025.1.tar.gz"
    sha256 "c2db42be2a2518b28e65f9207c4d05e6ff547d1efa4086469ef855e4ab70178e"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "scikit-learn" do
    url "https://files.pythonhosted.org/packages/9e/a5/4ae3b3a0755f7b35a280ac90b28817d1f380318973cff14075ab41ef50d9/scikit_learn-1.6.1.tar.gz"
    sha256 "b4fc2525eca2c69a59260f583c56a7557c6ccdf8deafdba6e060f94c1c59738e"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "sqlalchemy" do
    url "https://files.pythonhosted.org/packages/e4/08/9a90962ea72acd532bda71249a626344d855c4032603924b1b547694b837/sqlalchemy-2.0.38.tar.gz"
    sha256 "e5a4d82bdb4bf1ac1285a68eab02d253ab73355d9f0fe725a97e1e0fa689decb"
  end

  resource "sqlean-py" do
    # source dist is broken on PyPI -- the external SQLite sources are missing -- need to download and build from Git
    url "https://github.com/nalgeon/sqlean.py/archive/refs/tags/3.47.0.tar.gz"
    sha256 "d850488ba72a79ffa2c9c4651b78e2871d260c7c63f72f731011786a0a6feac2"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/44/b6/fb9a32e3c5d59b1e383c357534c63c2d3caa6f25bf3c59dd89d296ecbaec/starlette-0.46.0.tar.gz"
    sha256 "b359e4567456b28d473d0193f34c0de0ed49710d75ef183a74a5ce0499324f50"
  end

  resource "strawberry-graphql" do
    url "https://files.pythonhosted.org/packages/f6/f3/0a18ad1f102e50aeb2ae612380bfb0264068e9d8efc4dda4b86e0052c9d1/strawberry_graphql-0.253.1.tar.gz"
    sha256 "be43eac92e0896a7f1061ab293b89b060d369974e4c1444d16ad377d7a6f030d"
  end

  resource "threadpoolctl" do
    url "https://files.pythonhosted.org/packages/bd/55/b5148dcbf72f5cde221f8bfe3b6a540da7aa1842f6b491ad979a6c8b84af/threadpoolctl-3.5.0.tar.gz"
    sha256 "082433502dd922bf738de0d8bcc4fdcbf0979ff44c42bd40f5af8a282f6fa107"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/a8/4b/29b4ef32e036bb34e4ab51796dd745cdba7ed47ad142a9f4a1eb8e0c744d/tqdm-4.67.1.tar.gz"
    sha256 "f8aef9c52c08c13a65f30ea34f4e5aac3fd1a34959879d7e59e63027286627f2"
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

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/21/e6/26d09fab466b7ca9c7737474c52be4f76a40301b08362eb2dbc19dcc16c1/websockets-15.0.1.tar.gz"
    sha256 "82544de02076bafba038ce055ee6412d68da13ab47f0c60cab827346de828dee"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/c3/fc/e91cc220803d7bc4db93fb02facd8461c37364151b8494762cc88b0fbcef/wrapt-1.17.2.tar.gz"
    sha256 "41388e9d4d1522446fe79d3213196bd9e3b301a336965b9e27ca2788ebd122f3"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/3f/50/bad581df71744867e9468ebd0bcd6505de3b275e06f202c2cb016e3ff56f/zipp-3.21.0.tar.gz"
    sha256 "2c9958f6430a2040341a52eb608ed6dd93ef4392e02ffe219417c1b28b5dd1f4"
  end

  def install
    venv = virtualenv_create(libexec, "python3")

    resources.each do |r|
      r.stage do
        if r.name == "sqlean-py"
          system "make", "prepare-src"
          system "make", "download-sqlite"
          system "make", "download-sqlean"
          system "python3", *Language::Python.setup_install_args(libexec)
        else
          venv.pip_install Pathname.pwd
        end
      end
    end

    venv.pip_install_and_link buildpath
  end

  service do
    run [opt_bin/"phoenix", "serve"]
    keep_alive true
    error_log_path var/"log/phoenix.log"
    log_path var/"log/phoenix.log"
    working_dir var
    environment_variables PHOENIX_GRPC_PORT: "8336"
  end

  test do
    system bin/"phoenix", "--help"
  end
end
