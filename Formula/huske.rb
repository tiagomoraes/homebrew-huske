class Huske < Formula
  include Language::Python::Virtualenv

  desc "Always-on terminal audio recorder and local transcription app"
  homepage "https://github.com/tiagomoraes/huske"
  url "https://files.pythonhosted.org/packages/05/52/ee93d1afa8612a1a99dce00dbbd132d22b41ef2e0cfb2c7482c8f3b74eac/huske-0.14.0.tar.gz"
  sha256 "1ed2484433eec02bc6950a568cb619a751d23ea2572ac2b3ddf35a9f42e68b52"
  license "MIT"
  head "https://github.com/tiagomoraes/huske.git", branch: "develop"

  depends_on arch: :arm64
  depends_on "libsndfile"
  depends_on macos: :ventura
  depends_on "portaudio"
  depends_on "python@3.13"

  preserve_rpath

  resource "mlx-whisper" do
    url "https://files.pythonhosted.org/packages/22/b7/a35232812a2ccfffcb7614ba96a91338551a660a0e9815cee668bf5743f0/mlx_whisper-0.4.3-py3-none-any.whl"
    sha256 "6b82b6597a994643a3e5496c7bc229a672e5ca308458455bfe276e76ae024489"
  end

  resource "mlx" do
    url "https://files.pythonhosted.org/packages/c2/58/bd847d3fed65296573a4bb3399adde6934c0a718813b5636000d7d1b4063/mlx-0.32.0-cp314-cp314-macosx_26_0_arm64.whl"
    sha256 "23e83c8e74a23156696e9f9905d16a17b7d27b5a596c1bc0f720a98df1c5aadf"
  end

  resource "mlx-metal" do
    url "https://files.pythonhosted.org/packages/dc/59/65d32520175379df33f107749193aa94ea9db069167a36a1a100ff689f62/mlx_metal-0.32.0-py3-none-macosx_26_0_arm64.whl"
    sha256 "3af76a498d84804f66119800499f9d143d7dffb0878a0dd0d7c2846e58565fd7"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/b9/ee/d08226fc858044355983a6e5b94f08ff6f3969e0a2b160a4a89f0ddb3445/numpy-2.5.2-cp314-cp314-macosx_14_0_arm64.whl"
    sha256 "9e9413326d726c2545bfa65d2c0876871e8d8386e77f992c1d426e180bbd4323"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/fd/7b/122376b1fd3c62c1ed9dc80c931ace4844b3c55407b6fb2d199377c9736f/pydantic-2.13.4-py3-none-any.whl"
    sha256 "45a282cde31d808236fd7ea9d919b128653c8b38b393d1c4ab335c62924d9aba"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/ad/1f/8970b150a4b4365623ae00fc88603491f763c627311ae8031e3111356d6e/pydantic_core-2.46.4-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "23ace664830ee0bfe014a0c7bc248b1f7f25ed7ad103852c317624a1083af462"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/99/91/8acff4f5e50511b911bbccb72b8628a49c68ce14148cd9f6431094859a90/annotated_types-0.8.0-py3-none-any.whl"
    sha256 "f072f4d804ea359e4eaf198b1af7a8b0943881a87f31bb764f8bf219bb9419e0"
  end

  resource "pyobjc-framework-CoreAudio" do
    url "https://files.pythonhosted.org/packages/7e/87/7bb04033a75abecc03642bcac7c23175e8c1d7a6c14be561a18378f23046/pyobjc_framework_coreaudio-12.2.2-cp314-cp314-macosx_10_15_universal2.whl"
    sha256 "4e332b0acb976e84b3730d90f1bce8c92f1e52009a07d35ee7d3f8d494055d8a"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/13/37/486d38a173b0b8dce973a3e13c74cf402ed1b8621586b5963bc9efd49a48/pyobjc_core-12.2.2-cp314-cp314-macosx_10_15_universal2.whl"
    sha256 "2062e8ad30a310441cd022544a897553408bebeaa7820d5edba3c96fd7fd693b"
  end

  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/1f/1a/b99521999b9f54b89aad928ddff0faad507abfe33bc46599454bfa48a4b2/pyobjc_framework_cocoa-12.2.2-cp314-cp314-macosx_10_15_universal2.whl"
    sha256 "889d7bbd4ba2d4941078bfbbfb882138e51dbead27df006abfe0f2e0d49b5b2e"
  end

  resource "pyobjc-framework-CoreMedia" do
    url "https://files.pythonhosted.org/packages/74/bb/0676dabebfbf9a89ea268ca26bd978a6c0e5dcf9b2baca86709bd8228708/pyobjc_framework_coremedia-12.2.2-cp314-cp314-macosx_10_15_universal2.whl"
    sha256 "edc9d03e5230123c92d4f0413c48449a7f08fa747b9f304b2cc396239acfefe3"
  end

  resource "pyobjc-framework-ScreenCaptureKit" do
    url "https://files.pythonhosted.org/packages/b5/76/b75fbd8a62c4335784c82ed0f2347805ab44d51c2a0bd9aa08cb8fc34882/pyobjc_framework_screencapturekit-12.2.2-cp314-cp314-macosx_10_15_universal2.whl"
    sha256 "a9c410ac6d7f41daaf772e7b3e9bd5057e094e77233aea7f7e18443d7e248e61"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/bd/9c/4d95bb87eb2063d20db7b60faa3840c1b18025517ae857371c4dd55a6b3a/pyyaml-6.0.3-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "34d5fcd24b8445fadc33f9cf348c1047101756fd760b4dacb5c3e99755703310"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/82/3b/64d4899d73f91ba49a8c18a8ff3f0ea8f1c1d75481760df8c68ef5235bf5/rich-15.0.0-py3-none-any.whl"
    sha256 "33bd4ef74232fb73fe9279a257718407f169c09b78a87ad3d296f548e27de0bb"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/f4/7e/a72dd26f3b0f4f2bf1dd8923c85f7ceb43172af56d63c7383eb62b332364/pygments-2.20.0-py3-none-any.whl"
    sha256 "81a9e26dd42fd28a23a2d169d86d7ac03b46e2f8b59ed4698fb4785f946d0176"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/b3/81/4da04ced5a082363ecfa159c010d200ecbd959ae410c10c0264a38cac0f5/markdown_it_py-4.2.0-py3-none-any.whl"
    sha256 "9f7ebbcd14fe59494226453aed97c1070d83f8d24b6fc3a3bcf9a38092641c4a"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl"
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "sounddevice" do
    url "https://files.pythonhosted.org/packages/56/f9/c037c35f6d0b6bc3bc7bfb314f1d6f1f9a341328ef47cd63fc4f850a7b27/sounddevice-0.5.5-py3-none-macosx_10_6_x86_64.macosx_10_6_universal2.whl"
    sha256 "05eb9fd6c54c38d67741441c19164c0dae8ce80453af2d8c4ad2e7823d15b722"
  end

  resource "soundfile" do
    url "https://files.pythonhosted.org/packages/63/7a/dfdd6f8c748988427119f75eb860a3cedd858d1aea1fe28f39ad8559ef22/soundfile-0.14.0-py2.py3-none-macosx_11_0_arm64.whl"
    sha256 "d828d35a059626da52f1415b5faee610aeab393319cb3fc4a9aef47b619fc14c"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/b3/a9/9db617d05d7367c1ad0ab00b3aa6e6f9281edd689b4ee9ea0e5a84e89c97/cffi-2.1.1-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "661c298b4821edebead0c91edd2b00374d67ad7c5a1f7a91d4442633b79d6a72"
  end

  resource "structlog" do
    url "https://files.pythonhosted.org/packages/a9/18/489c97b834dfff9cf2fc2507cede4bcd4b11e67f84bc462acd1992496f86/structlog-26.1.0-py3-none-any.whl"
    sha256 "e081a26d6c373e6d201eca24eede26d8ffab07f88f477822e679183428d3d91e"
  end

  resource "tomli-w" do
    url "https://files.pythonhosted.org/packages/c7/18/c86eb8e0202e32dd3df50d43d7ff9854f8e0603945ff398974c1d91ac1ef/tomli_w-1.2.0-py3-none-any.whl"
    sha256 "188306098d013b691fcadc011abd66727d3c414c571bb01b1a174ba8c983cf90"
  end

  resource "setproctitle" do
    url "https://files.pythonhosted.org/packages/cd/2c/dc258600a25e1a1f04948073826bebc55e18dbd99dc65a576277a82146fa/setproctitle-1.3.7-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "b53602371a52b91c80aaf578b5ada29d311d12b8a69c0c17fbc35b76a1fd4f2e"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/43/89/9518bc0c3929bee36b3a4a8e3daddd6e03f92f9961c66d4983b837160543/typer-0.27.1-py3-none-any.whl"
    sha256 "53150287edd11baeb4e4722c8e394fcdf8181c0ae89485cba8d25c778d5edd56"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/3e/30/e900b21425a860e195f32e37657aa1f7c7f2b1bfb26f03ca209b90933c06/annotated_doc-0.0.5-py3-none-any.whl"
    sha256 "117bac03a25ede5df5440e855b32d556049ca169ead221505badf432fed4b101"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/fb/e2/79c688af8b210d232694e31e59da9f6ec747bae31c3f5946e4e9b98860d5/click-8.4.2-py3-none-any.whl"
    sha256 "e6f9f66136c816745b9d65817da91d61d957fb16e02e4dcd0552553c5a197b76"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/e0/f9/0595336914c5619e5f28a1fb793285925a8cd4b432c9da0a987836c7f822/shellingham-1.5.4-py2.py3-none-any.whl"
    sha256 "7ecfff8f2fd72616f7481040475a65b2bf8af90a56c89140852d1120324e8686"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/49/d3/b8441a820a491ddfc024b0b0cf0393375b75ea13866d9c66727e54c2fc80/typing_extensions-4.16.0-py3-none-any.whl"
    sha256 "481caa481374e813c1b176ada14e97f1f67a4539ce9cfeb3f350d78d6370c2e8"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/67/81/4add07e5172b7ac40d8ed5ff580409a7801a4fe26d529bdd915401dabfbe/typing_inspection-0.4.4-py3-none-any.whl"
    sha256 "65b8397ba37ccbce054456aaccddfc91e6e3083c92824df348d96ca832f3f147"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/de/d8/95b735e183957c1f26d94c52977f09d466d55119cbbc1558ea4975e4c216/huggingface_hub-1.27.0-py3-none-any.whl"
    sha256 "7df6827c2f956c60fbaa64646e979e566db76f619dd0a9729dfb8c5a3eb4f68d"
  end

  resource "hf-xet" do
    url "https://files.pythonhosted.org/packages/4b/69/55b8dcf636142ae660fec1869fcac14c4da2e8412e14d6eee1523be77e9f/hf_xet-1.6.0-cp38-abi3-macosx_11_0_arm64.whl"
    sha256 "f0906082d9932ae0c0057fa194041c22b4e2cdb46b2592ef3b91f020d62a081a"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/a7/8e/50f46a9c0ce8d2861a394c1347caae037ea0431d2f67d7feb151cbc4649a/filelock-3.32.3-py3-none-any.whl"
    sha256 "7f0ca4bcc0e181c60dbbd8aa9ab5b120ebb99e4e064e83636340056f833a1f09"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/fd/3c/6a2bf344106328fd04963664a60b9bb6496fc25df8e962fcdc1367285fb9/fsspec-2026.7.0-py3-none-any.whl"
    sha256 "b57ddbafedfaef7018c1ecab32aa200a9d7ca26b77965f64e48b70061249d279"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/63/34/ba1c580383c9eada3711951fef0795c80b829a078d72188184bcab9dd527/packaging-26.3-py3-none-any.whl"
    sha256 "d7193f7c8e4e93f444fde0262bf90af30e16fa0ad0ad44cb553c87339b23cd1c"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/f9/1c/01bfd571a64e7f270e6bab5e33777debe0edc56759233ce84f27dec92d14/tqdm-4.70.0-py3-none-any.whl"
    sha256 "7f585706bfddbdebf89daac705b2dfcc16890130727d3197ca62c732b4310953"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/da/35/f2287558c17e29fafc8ef3daf819bb9834061cfa43bff8014f7df7f63bdc/anyio-4.14.2-py3-none-any.whl"
    sha256 "9f505dda5ac9f0c8309b5e8bd445a8c2bf7246f3ce950121e45ea15bc41d1494"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/1e/5e/d4e9f1a599fb8e573b7b87160658329fbf28d19eac2718f51fc3def3aa5a/idna-3.18-py3-none-any.whl"
    sha256 "7f952cbe720b688055e3f87de14f5c3e5fdaa8bc3928985c4077ca689de849a2"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/0b/a7/71ac2cff56fec219ed242bb11b8efb69fcc4bec75db06fb7bfe35de520e6/certifi-2026.7.22-py3-none-any.whl"
    sha256 "62f22742b58a1a33014a2b6b706588a8d7e2a88ae7bd1a6ebe8c992928483775"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/e8/3d/1087453384dbde46a8c7f9356eead2c58be8a7bf156bca40243377c85715/more_itertools-11.1.0-py3-none-any.whl"
    sha256 "4b65538ae22f6fed0ce4874efd317463a7489796a0939fa66824dd542125a192"
  end

  resource "numba" do
    url "https://files.pythonhosted.org/packages/d7/16/345b1e4774a08247aafcfdb93d4e8d24a3646366cbe72de33053fc0de1b5/numba-0.67.0-cp314-cp314-macosx_12_0_arm64.whl"
    sha256 "f99f880ff25f418a67f9a1d00d0ddfbc63430f627b523e515085a592a7567f4b"
  end

  resource "llvmlite" do
    url "https://files.pythonhosted.org/packages/25/d1/16599b8c9f21802448059482eab48a9e74086dc56b901a677ba355565e64/llvmlite-0.49.0-cp314-cp314-macosx_12_0_arm64.whl"
    sha256 "80a84683d04516bb51da1bbeebddaf2c2f558809c93078a8f91807909ae331f8"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0c/c3/44f3fbbfa403ea2a7c779186dc20772604442dde72947e7d01069cbe98e3/pycparser-3.0-py3-none-any.whl"
    sha256 "b727414169a36b7d524c1c3e31839a521725078d7b2ff038656844266160a992"
  end

  resource "scipy" do
    url "https://files.pythonhosted.org/packages/91/02/2e636a61a525632c373cf6a9c24442a3ffb79e364d38e98b32042964ac32/scipy-1.18.0-cp314-cp314-macosx_14_0_arm64.whl"
    sha256 "f2a6af57bd9e4a75d70e4117e78a1bbee84f79ae3fbb6d0111005d6ebcc4cb8d"
  end

  resource "tiktoken" do
    url "https://files.pythonhosted.org/packages/d9/77/5ec6e6bc5b30bed6d93f7f2162d8f6b32437b3ba27cb527cfe004f6109c9/tiktoken-0.13.0-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "ca8b310bd93b3772cb1b7922d915446864860f562bdfe4825c63a0aed3fb28cd"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/87/74/0b692da2520d51fbff19c88b83d97e4c702909dd02386c585998b7e2dbed/regex-2026.7.19-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "60be8693a1dadc210bbcbc0db3e26da5f7d01d1d5a3da594e99b4fa42df404f5"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/a0/f4/c67b0b3f1b9245e8d266f0f112c500d50e5b4e83cb6f3b71b6528104182a/requests-2.34.2-py3-none-any.whl"
    sha256 "2a0d60c172f83ac6ab31e4554906c0f3b3588d37b5cb939b1c061f4907e278e0"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e9/40/095ce62fa078483cccc1fa2b36e6bc9580b85422a20ee9f925341c50e44f/charset_normalizer-3.5.1-cp314-cp314-macosx_10_15_universal2.whl"
    sha256 "c428c6c31eb5f4277d7f8eccaf767fbd548ddd5ce3c8b4f4cbbfab3d96b5904c"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7f/3e/5db95bcf282c52709639744ca2a8b149baccf648e39c8cc87553df9eae0c/urllib3-2.7.0-py3-none-any.whl"
    sha256 "9fb4c81ebbb1ce9531cce37674bbc6f1360472bc18ca9a553ede278ef7276897"
  end

  resource "torch" do
    url "https://files.pythonhosted.org/packages/36/76/6dcc7f0c07052102dd36f83cbc5800842a909c8c3fbf1a7f8a5844954de9/torch-2.13.0-cp314-cp314-macosx_14_0_arm64.whl"
    sha256 "d849b390e07d8d333ce8ecaf91b273c656c598379a19c9acf1318a883f6b391c"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/95/9c/c510029fc6ef33a6275cd2c5d3cecd6613dfd6aa401d57c54f1c18852ccf/setuptools-84.0.0-py3-none-any.whl"
    sha256 "51a52592b3b99e102b609654876bd65f19f999935166d1352678931132b0c670"
  end

  resource "networkx" do
    url "https://files.pythonhosted.org/packages/9e/c9/b2622292ea83fbb4ec318f5b9ab867d0a28ab43c5717bb85b0a5f6b3b0a4/networkx-3.6.1-py3-none-any.whl"
    sha256 "d47fbf302e7d9cbbb9e2555a0d267983d2aa476bac30e90dfbe5669bd57f3762"
  end

  resource "sympy" do
    url "https://files.pythonhosted.org/packages/a2/09/77d55d46fd61b4a135c444fc97158ef34a095e5681d0a6c10b75bf356191/sympy-1.14.0-py3-none-any.whl"
    sha256 "e091cc3e99d2141a0ba2847328f5479b05d94a6635cb96148ccb3f34671bd8f5"
  end

  resource "mpmath" do
    url "https://files.pythonhosted.org/packages/43/e3/7d92a15f894aa0c9c4b49b8ee9ac9850d6e63b03c9c32c0367a13ae62209/mpmath-1.3.0-py3-none-any.whl"
    sha256 "a0b2b9fe80bbcd81a6647ff13108738cfb482d481d826cc0e02f5b35e5c88d2c"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/62/a1/3d680cbfd5f4b8f15abc1d571870c5fc3e594bb582bc3b64ea099db13e56/jinja2-3.1.6-py3-none-any.whl"
    sha256 "85ece4451f492d0c13c5dd7c13a64681a86afae63a5f347908daf103ce6d2f67"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/b5/64/7660f8a4a8e53c924d0fa05dc3a55c9cee10bbd82b11c5afb27d44b096ce/markupsafe-3.0.3-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "c47a551199eb8eb2121d4f0f15ae0f923d31350ab9280078d1e5f12b249e0026"
  end

  resource "audioop-lts" do
    url "https://files.pythonhosted.org/packages/1b/83/ea581e364ce7b0d41456fb79d6ee0ad482beda61faf0cab20cbd4c63a541/audioop_lts-0.2.2-cp313-abi3-macosx_11_0_arm64.whl"
    sha256 "9a13dc409f2564de15dd68be65b462ba0dde01b19663720c68c1140c782d1d75"
  end

  resource "audioread" do
    url "https://files.pythonhosted.org/packages/7e/16/fbe8e1e185a45042f7cd3a282def5bb8d95bb69ab9e9ef6a5368aa17e426/audioread-3.1.0-py3-none-any.whl"
    sha256 "b30d1df6c5d3de5dcef0fb0e256f6ea17bdcf5f979408df0297d8a408e2971b4"
  end

  resource "dacite" do
    url "https://files.pythonhosted.org/packages/94/35/386550fd60316d1e37eccdda609b074113298f23cef5bddb2049823fe666/dacite-1.9.2-py3-none-any.whl"
    sha256 "053f7c3f5128ca2e9aceb66892b1a3c8936d02c686e707bee96e19deef4bc4a0"
  end

  resource "decorator" do
    url "https://files.pythonhosted.org/packages/05/7f/798705f5296a58ca505d600456748d1be48078eac8a7050d8a98bc9edb89/decorator-5.3.1-py3-none-any.whl"
    sha256 "f47fe6fdbd2edd623ecfe36875d37aba411624e2670dd395dddae1358689bb3c"
  end

  resource "joblib" do
    url "https://files.pythonhosted.org/packages/7b/91/984aca2ec129e2757d1e4e3c81c3fcda9d0f85b74670a094cc443d9ee949/joblib-1.5.3-py3-none-any.whl"
    sha256 "5fc3c5039fc5ca8c0276333a188bbd59d6b7ab37fe6632daa76bc7f9ec18e713"
  end

  resource "lazy-loader" do
    url "https://files.pythonhosted.org/packages/8a/a1/8d812e53a5da1687abb10445275d41a8b13adb781bbf7196ddbcf8d88505/lazy_loader-0.5-py3-none-any.whl"
    sha256 "ab0ea149e9c554d4ffeeb21105ac60bed7f3b4fd69b1d2360a4add51b170b005"
  end

  resource "librosa" do
    url "https://files.pythonhosted.org/packages/96/14/0b2e4cc8017796dc8f69de740708601832c1e8d5377166eedb4db0a92264/librosa-1.0.0-py3-none-any.whl"
    sha256 "5910a6c0e1b2e494b92758c1615a7acbd0515a2315e138927ba2982f2af88857"
  end

  resource "msgpack" do
    url "https://files.pythonhosted.org/packages/60/5c/15b4c7a0182f75ffa90751958ba36a9c01cafee367d49a3edc10ed140b01/msgpack-1.2.1-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "810b916696c86ef0deb3b74588480224df4c1b071136c34183e4a2a4284d7ac7"
  end

  resource "narwhals" do
    url "https://files.pythonhosted.org/packages/7e/85/a5bfaebfd305ac18b57b0854d74e37e586809061a91fda62f0bd50c8518e/narwhals-2.24.0-py3-none-any.whl"
    sha256 "42fdedf44e5b2ca7505630d45b4ac3058f38d8485cba9fe1652ca23152df7489"
  end

  resource "parakeet-mlx" do
    url "https://files.pythonhosted.org/packages/f4/54/09a3501c74f1ef54a36002534661cb89a0b2f098fcad87fe64f515a0dba7/parakeet_mlx-0.5.2-py3-none-any.whl"
    sha256 "50afb6ddb62237a6486e214482c25ef12759832fda3cd514e159938fa5970d9c"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/19/a9/c34aebedd3a4c9afe5101b1b8713710b3fec18087c8a36c35d2f909861bd/platformdirs-4.11.3-py3-none-any.whl"
    sha256 "5ed065d443751de711da036041a7a214122efc4a4de393b3f4137ba5576540e7"
  end

  resource "pooch" do
    url "https://files.pythonhosted.org/packages/2a/2d/d4bf65e47cea8ff2c794a600c4fd1273a7902f268757c531e0ee9f18aa58/pooch-1.9.0-py3-none-any.whl"
    sha256 "f265597baa9f760d25ceb29d0beb8186c243d6607b0f60b83ecf14078dbc703b"
  end

  resource "scikit-learn" do
    url "https://files.pythonhosted.org/packages/3c/a7/552a7821597c632b907f7bfe8f36f9f572777af8ef8a48353041cf8e091a/scikit_learn-1.9.0-cp314-cp314-macosx_12_0_arm64.whl"
    sha256 "24360002ae845e7866522b0a5bbf690802e7bc388cac8663502e78aa98598aa2"
  end

  resource "soxr" do
    url "https://files.pythonhosted.org/packages/03/dc/200013a74641f8774664bbcd2346c695c05c2e300ea792adcb40a293eed0/soxr-1.1.0-cp312-abi3-macosx_11_0_arm64.whl"
    sha256 "d6a7ad82b8d5f3fcc04b1d2ca055562b96af571e1d4fa7c6c61d0fb509ac43b4"
  end

  resource "standard-aifc" do
    url "https://files.pythonhosted.org/packages/c3/52/5fbb203394cc852334d1575cc020f6bcec768d2265355984dfd361968f36/standard_aifc-3.13.0-py3-none-any.whl"
    sha256 "f7ae09cc57de1224a0dd8e3eb8f73830be7c3d0bc485de4c1f82b4a7f645ac66"
  end

  resource "standard-chunk" do
    url "https://files.pythonhosted.org/packages/7a/90/a5c1084d87767d787a6caba615aa50dc587229646308d9420c960cb5e4c0/standard_chunk-3.13.0-py3-none-any.whl"
    sha256 "17880a26c285189c644bd5bd8f8ed2bdb795d216e3293e6dbe55bbd848e2982c"
  end

  resource "standard-sunau" do
    url "https://files.pythonhosted.org/packages/34/ae/e3707f6c1bc6f7aa0df600ba8075bfb8a19252140cd595335be60e25f9ee/standard_sunau-3.13.0-py3-none-any.whl"
    sha256 "53af624a9529c41062f4c2fd33837f297f3baa196b0cfceffea6555654602622"
  end

  resource "threadpoolctl" do
    url "https://files.pythonhosted.org/packages/32/d5/f9a850d79b0851d1d4ef6456097579a9005b31fea68726a4ae5f2d82ddd9/threadpoolctl-3.6.0-py3-none-any.whl"
    sha256 "43a0b8fd5a2928500110039e43a5eed8480b918967083ea48dc3ab9f13c4a7fb"
  end

  # Built-in MLX distillation backend (distill_backend = "mlx", the default
  # since 0.11.0): huske runs the LLM itself via mlx-lm, so its stack ships here.
  resource "mlx-lm" do
    url "https://files.pythonhosted.org/packages/90/02/9a67b8e4f87e3e2e5cd7b1ad79304b93c09a0db6af34bee75e6551c06c60/mlx_lm-0.31.3-py3-none-any.whl"
    sha256 "758cfddf1180053b7613db76fad3d246a331a2a905808e1164a275621fc983b8"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/10/03/8aeeb7458d22546bf64b5250ca1daeb5ff757d900e8e4a7476c6f0db843e/protobuf-7.35.1-cp310-abi3-macosx_10_9_universal2.whl"
    sha256 "24f857477359a85c0c235261b8ba905fd51b2562f4a64ca1df5473f29850cbf6"
  end

  resource "safetensors" do
    url "https://files.pythonhosted.org/packages/f5/b1/fa7c600e7dceae12e9606c7578cbc9ff1e1ed55844883ee5c92205e86226/safetensors-0.8.0-cp310-abi3-macosx_11_0_arm64.whl"
    sha256 "c80201d22cbf405b80647a60ada77bba06c8fba2da2743ba1e89cdcc39a81f25"
  end

  resource "sentencepiece" do
    url "https://files.pythonhosted.org/packages/d1/18/823954c9c90e74eba09fb96752dc37a5555df00d69866cb9406d1725dc7e/sentencepiece-0.2.2-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "79bac5a251f23a7341e28fda9ce0d5319edf45328239ce037c0682936f137906"
  end

  resource "tokenizers" do
    url "https://files.pythonhosted.org/packages/2e/47/174dca0502ef88b28f1c9e06b73ce33500eedfac7a7692108aec220464e7/tokenizers-0.22.2-cp39-abi3-macosx_11_0_arm64.whl"
    sha256 "1e418a55456beedca4621dbab65a318981467a2b188e982a23e117f115ce5001"
  end

  resource "transformers" do
    url "https://files.pythonhosted.org/packages/d8/43/81355710a4c84e9420e11a86d41a5364deb561f2ef36dfdf254a07371bbb/transformers-5.15.0-py3-none-any.whl"
    sha256 "d7f007736f67749ae9490c4f8cb5d30b452ae2d68c8675e50ba8d63ea7feb107"
  end

  def install
    venv = virtualenv_create(libexec, "python3.13")
    wheels = buildpath/"wheels"
    wheels.mkpath
    resource_map = resources.to_h { |resource| [resource.name, resource] }

    %w[setuptools].each do |name|
      resource = resource_map.delete(name)
      next if resource.nil?

      wheel = wheels/resource.downloader.basename
      cp resource.cached_download, wheel
      venv.pip_install wheel
    end

    resource_map.each_value do |resource|
      wheel = wheels/resource.downloader.basename
      cp resource.cached_download, wheel
      venv.pip_install wheel
    end

    venv.pip_install_and_link buildpath
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/huske --version")
    assert_match "doctor", shell_output("#{bin}/huske --help")
  end
end
