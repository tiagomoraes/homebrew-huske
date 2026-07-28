class Huske < Formula
  include Language::Python::Virtualenv

  desc "Always-on terminal audio recorder and local transcription app"
  homepage "https://github.com/tiagomoraes/huske"
  url "https://files.pythonhosted.org/packages/18/9a/80deb4664e1f4f9bd2bd3cc57419244991a10b4cf524a556d55c43d8d6bd/huske-0.12.0.tar.gz"
  sha256 "996ff07b8bf1033e986e374a715eba3faed67f0ab6fe31f2b500f16d1d4f82cf"
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
    url "https://files.pythonhosted.org/packages/4c/a8/7bc999ce5d09dfac8961dcda4ed47e173fca2857492f34599b237380f20d/mlx-0.32.0-cp313-cp313-macosx_26_0_arm64.whl"
    sha256 "4192a2d02014a13a6a1030bf13dfb4e4fe05ec3ffa47678ee37da29111e25cb1"
  end

  resource "mlx-metal" do
    url "https://files.pythonhosted.org/packages/dc/59/65d32520175379df33f107749193aa94ea9db069167a36a1a100ff689f62/mlx_metal-0.32.0-py3-none-macosx_26_0_arm64.whl"
    sha256 "3af76a498d84804f66119800499f9d143d7dffb0878a0dd0d7c2846e58565fd7"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/97/12/70b5d0d7c15e1ebb8a6a84a8caa1d19e181d84fb58bb6d70aca29099dec1/numpy-2.4.6-cp313-cp313-macosx_14_0_arm64.whl"
    sha256 "043191bfa8eab18c776647b62723ac9dddece59743b13f49b2016094129c2b3f"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/fd/7b/122376b1fd3c62c1ed9dc80c931ace4844b3c55407b6fb2d199377c9736f/pydantic-2.13.4-py3-none-any.whl"
    sha256 "45a282cde31d808236fd7ea9d919b128653c8b38b393d1c4ab335c62924d9aba"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/c1/81/4fa520eaffa8bd7d1525e644cd6d39e7d60b1592bc5b516693c7340b50f1/pydantic_core-2.46.4-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "c94f0688e7b8d0a67abf40e57a7eaaecd17cc9586706a31b76c031f63df052b4"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/99/91/8acff4f5e50511b911bbccb72b8628a49c68ce14148cd9f6431094859a90/annotated_types-0.8.0-py3-none-any.whl"
    sha256 "f072f4d804ea359e4eaf198b1af7a8b0943881a87f31bb764f8bf219bb9419e0"
  end

  resource "pyobjc-framework-CoreAudio" do
    url "https://files.pythonhosted.org/packages/39/e4/71b2e3bd03f0404c89b432273d272dc5427185fd9ed828036730bfc9d057/pyobjc_framework_coreaudio-12.2.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "6fb46bc090edcaefeb70be2c179071e7a758e3375aebd3338b11773e371c3dce"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/3e/1e/b9b0ddffae66996b8779f1f7958adc9f21c13a0448cd3be8d7fe589b5b0f/pyobjc_core-12.2.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "af101222762665a4125157906cb4b23f5d5a63d3851d5e0504f72a1eaaa2cfd2"
  end

  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/cc/46/68e8e4d926a2f70fed0437047bc3f9fe08af8fe620d94d80656ebc3cfa9b/pyobjc_framework_cocoa-12.2.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "3b74a78fa7803e547b32e5e8ec1b49987b52fe318383e793bc6cd49b80efbd9f"
  end

  resource "pyobjc-framework-CoreMedia" do
    url "https://files.pythonhosted.org/packages/d6/2a/9e5beae2961c9d22ce16258f39edae69996ee0167dd4cfe4e771454086c1/pyobjc_framework_coremedia-12.2.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "45878f686ce8ea1735ce382b34ef3a5852cafe0ae2a27a49c08701f4c3ab830b"
  end

  resource "pyobjc-framework-ScreenCaptureKit" do
    url "https://files.pythonhosted.org/packages/f2/db/c65ea6d42f9873ee6a1d63d4db1db334d60536ba679382688647bd626cc0/pyobjc_framework_screencapturekit-12.2.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "d23bc1d0ac0068f328a97c1ed95d611cb2b8517c76345ddbbd21e5e8bc85a898"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/b1/16/95309993f1d3748cd644e02e38b75d50cbc0d9561d21f390a76242ce073f/pyyaml-6.0.3-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "2283a07e2c21a2aa78d9c4442724ec1eb15f5e42a723b99cb3d822d48f5f7ad1"
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
    url "https://files.pythonhosted.org/packages/84/4c/82f132cb4418ee6d953d982b19191e87e2a6372c8a4ce36e50b69d6ade4a/cffi-2.1.0-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "716ff8ec22f20b4d988b12884086bcef0fc99737043e503f7a3935a6be99b1ea"
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
    url "https://files.pythonhosted.org/packages/23/ae/afc141ca9631350d0a80b8f287aac79a76f26b6af28fd8bf92dae70dc2c5/setproctitle-1.3.7-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "3384e682b158d569e85a51cfbde2afd1ab57ecf93ea6651fe198d0ba451196ee"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/40/03/26a383c9e58c213199d1aad1c3d353cfc22d4444ec6d2c0bf8ad02523843/typer-0.27.0-py3-none-any.whl"
    sha256 "6f4b27631e47f077871b7dc30e933ec0131c1390fbe0e387ea5574b5bac9ccf1"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/1e/d3/26bf1008eb3d2daa8ef4cacc7f3bfdc11818d111f7e2d0201bc6e3b49d45/annotated_doc-0.0.4-py3-none-any.whl"
    sha256 "571ac1dc6991c450b25a9c2d84a3705e2ae7a53467b5d111c24fa8baabbed320"
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
    url "https://files.pythonhosted.org/packages/dc/9b/47798a6c91d8bdb567fe2698fe81e0c6b7cb7ef4d13da4114b41d239f65d/typing_inspection-0.4.2-py3-none-any.whl"
    sha256 "4ed1cacbdc298c220f1bd249ed5287caa16f34d44ef4e9c3d0cbad5b521545e7"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/f7/3f/21e816831c6d16f88a6c784974413fa0421ce8a5d04380c2666ed5b503e5/huggingface_hub-1.25.1-py3-none-any.whl"
    sha256 "004d4e70350517e24c68a7dbb7dc5e40b2b6aefef8f94bf7a85f6f9835102ea5"
  end

  resource "hf-xet" do
    url "https://files.pythonhosted.org/packages/60/ac/b097a86a1e4a6098f3a79382643ab09d5733d87ccc864877ad1e12b49b70/hf_xet-1.5.2-cp38-abi3-macosx_11_0_arm64.whl"
    sha256 "045f84440c55cdeb659cf1a1dd48c77bcd0d2e93632e2fea8f2c3bdee79f38ed"
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
    url "https://files.pythonhosted.org/packages/06/79/b4c714bef36bc4ec2beeae1e0c124f0223888cd8c6feb1cdc56038116920/filelock-3.32.0-py3-none-any.whl"
    sha256 "d396bea984af47333ef05e50eae7eff88c84256de6112aea0ec48a233c064fe3"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/e5/22/4222d7ddf3da30f363edaa98e329c2bce6c65497c9cb2810931c8b2c0fbc/fsspec-2026.6.0-py3-none-any.whl"
    sha256 "02e0b71817df9b2169dc30a16832045764def1191b43dcff5bb85bdee212d2a1"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/df/b2/87e62e8c3e2f4b32e5fe99e0b86d576da1312593b39f47d8ceef365e95ed/packaging-26.2-py3-none-any.whl"
    sha256 "5fc45236b9446107ff2415ce77c807cee2862cb6fac22b8a73826d0693b0980e"
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
    url "https://files.pythonhosted.org/packages/03/52/176c02d005c5c5143cde10a85bbcdcb6236d9e34c3aac089380e0506cd1d/numba-0.66.0-cp313-cp313-macosx_12_0_arm64.whl"
    sha256 "380b2556a2019ccd1e956ae77dd257eaa39403f7520768b626d44b755112785e"
  end

  resource "llvmlite" do
    url "https://files.pythonhosted.org/packages/9c/23/fe9316d14626b42c73ef0b502e724705a6ee9450afe53759c0a99c37c2d7/llvmlite-0.48.0-cp313-cp313-macosx_12_0_arm64.whl"
    sha256 "a83a99ef0c05b4ccddf9b6218ed9fe84b653a0caf7c1d9dbe148d6d16c67f518"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0c/c3/44f3fbbfa403ea2a7c779186dc20772604442dde72947e7d01069cbe98e3/pycparser-3.0-py3-none-any.whl"
    sha256 "b727414169a36b7d524c1c3e31839a521725078d7b2ff038656844266160a992"
  end

  resource "scipy" do
    url "https://files.pythonhosted.org/packages/d3/0f/10ffa0b697a572f4e0d48b92a88895d366422f019f723e7e14a84c050dac/scipy-1.18.0-cp313-cp313-macosx_14_0_arm64.whl"
    sha256 "68363b7eaacd8b5dd426df56d782cc156468ac79a127a1b87ca597d6e2e82197"
  end

  resource "tiktoken" do
    url "https://files.pythonhosted.org/packages/53/61/c68e123b6d753e3fc2751e9b18e732c9d8bf1e1926762e736eee935d931c/tiktoken-0.13.0-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "8fe806a50664e83a6ffd56cbd1e4f5dcc6cd32a3e7538f70dc38b1a271384545"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/95/47/2d0564e93d87bc48618360ddca232a2ca612bbdf53ce8465d45ca5ce14ee/regex-2026.7.19-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "40b34dd88658e4fedd2fddbf0275ac970d00614b731357f425722a3ed1983d11"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/a0/f4/c67b0b3f1b9245e8d266f0f112c500d50e5b4e83cb6f3b71b6528104182a/requests-2.34.2-py3-none-any.whl"
    sha256 "2a0d60c172f83ac6ab31e4554906c0f3b3588d37b5cb939b1c061f4907e278e0"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/b2/06/97ec2aeae780b31d742b6352218b43841a6871e2564578ca522dce4a45c3/charset_normalizer-3.4.9-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "440eede837960000d74978f0eba527be106b5b9aee0daf779d395276ed0b0614"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7f/3e/5db95bcf282c52709639744ca2a8b149baccf648e39c8cc87553df9eae0c/urllib3-2.7.0-py3-none-any.whl"
    sha256 "9fb4c81ebbb1ce9531cce37674bbc6f1360472bc18ca9a553ede278ef7276897"
  end

  resource "torch" do
    url "https://files.pythonhosted.org/packages/0d/fa/c1c10b7aff4a9a3e8956d4f0a5f468fa6db7abc3208805719076772b4833/torch-2.13.0-cp313-cp313-macosx_14_0_arm64.whl"
    sha256 "33449899ce5496c1b84b4853179d94fd102028ae1407314d9fb956bb79e70d09"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/5d/40/e1e72872c6354b306daef1703549e8e83b4d43cfea356311bf722a043752/setuptools-83.0.0-py3-none-any.whl"
    sha256 "29b23c360f22f414dc7336bb39178cc7bcbf6021ed2733cde173f09dba19abb3"
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
    url "https://files.pythonhosted.org/packages/9c/d9/5f7756922cdd676869eca1c4e3c0cd0df60ed30199ffd775e319089cb3ed/markupsafe-3.0.3-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "116bb52f642a37c115f517494ea5feb03889e04df47eeff5b130b1808ce7c219"
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
    url "https://files.pythonhosted.org/packages/b5/ba/c63c5786dfee4c3417094c4b00966e61e4a63efecee22cb7b4c0387dda83/librosa-0.11.0-py3-none-any.whl"
    sha256 "0b6415c4fd68bff4c29288abe67c6d80b587e0e1e2cfb0aad23e4559504a7fa1"
  end

  resource "msgpack" do
    url "https://files.pythonhosted.org/packages/64/71/fbcfa83a1d6a9c6091942d1cfd070962244664b87427a9a49a6897b1b219/msgpack-1.2.1-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "491cc39455ca765fad51fb451bf2915eb2cf41192ab5801ce8d67c1d614fe056"
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
    url "https://files.pythonhosted.org/packages/7d/68/d8d58938dfb1370b266a1a729e6d77a985be23689a0496498ee17b2cbf90/platformdirs-4.11.0-py3-none-any.whl"
    sha256 "360ccded2b7fce0af0ff80cc8f5942a1c5d99b0e856033acb030bfc634709e74"
  end

  resource "pooch" do
    url "https://files.pythonhosted.org/packages/2a/2d/d4bf65e47cea8ff2c794a600c4fd1273a7902f268757c531e0ee9f18aa58/pooch-1.9.0-py3-none-any.whl"
    sha256 "f265597baa9f760d25ceb29d0beb8186c243d6607b0f60b83ecf14078dbc703b"
  end

  resource "scikit-learn" do
    url "https://files.pythonhosted.org/packages/3e/04/5acd7ae280c5f93b6ac5ef6cdec14eef4c8d1cd91d85b3292989c94d96b1/scikit_learn-1.9.0-cp313-cp313-macosx_12_0_arm64.whl"
    sha256 "5b934c45c252844a91d69fda3a34cff5e7307e1db10d77cb10a3980312c74713"
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
    url "https://files.pythonhosted.org/packages/34/db/f9ea1a6844b4fa5dfe2312095cd866a1f724cd0905054ab9d5991778ba50/sentencepiece-0.2.2-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "201a8e0f55501a76e08dbf2c54bc45f4642b379271e89c667d517bfbc2191f2a"
  end

  resource "tokenizers" do
    url "https://files.pythonhosted.org/packages/2e/47/174dca0502ef88b28f1c9e06b73ce33500eedfac7a7692108aec220464e7/tokenizers-0.22.2-cp39-abi3-macosx_11_0_arm64.whl"
    sha256 "1e418a55456beedca4621dbab65a318981467a2b188e982a23e117f115ce5001"
  end

  resource "transformers" do
    url "https://files.pythonhosted.org/packages/6f/67/8d85ca2323233ae3c0365a659c4e52ee1f587b440e4bc577e7d8e4416d0f/transformers-5.14.1-py3-none-any.whl"
    sha256 "9db974c4079ede2d1a3ea7ca5a240df33f2cc26fc2b36ba64c5f2a4f43b6e725"
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
