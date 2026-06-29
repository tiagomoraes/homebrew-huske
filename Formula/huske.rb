class Huske < Formula
  include Language::Python::Virtualenv

  desc "Always-on terminal audio recorder and local transcription app"
  homepage "https://github.com/tiagomoraes/huske"
  url "https://files.pythonhosted.org/packages/c6/19/fc66a64538bca5cc3efe3efa56fe968aead46f67ae4fcfd5aee851ff6ef0/huske-0.9.1.tar.gz"
  sha256 "e28d464fd3aeb7da64d352938f1b65bcb5d16f8b75a90c44bdd351b6c866e9a6"
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
    url "https://files.pythonhosted.org/packages/ca/20/c6c5fb998c7834d094b2bfb9f003b5246cb270f0266da055c55546c34999/mlx-0.31.2-cp313-cp313-macosx_26_0_arm64.whl"
    sha256 "c05981684279a8935d58b0dde3ea5b02d210c3bad3319aa0e9934ec2df165752"
  end

  resource "mlx-metal" do
    url "https://files.pythonhosted.org/packages/99/82/11fd62a8d7a3e96e5c43220b17de0151e3f10101f8bb3b865f5bd9cdd074/mlx_metal-0.31.2-py3-none-macosx_26_0_arm64.whl"
    sha256 "84ffb60ee503f03eb684f5fb168d5cff31e2a16b7f27c1731eaf7662bd6e9b46"
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
    url "https://files.pythonhosted.org/packages/78/b6/6307fbef88d9b5ee7421e68d78a9f162e0da4900bc5f5793f6d3d0e34fb8/annotated_types-0.7.0-py3-none-any.whl"
    sha256 "1f02e8b43a8fbbc3f3e0d4f0f4bfc8131bcb4eebe8849b8e5c773f3a1c582a53"
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
    url "https://files.pythonhosted.org/packages/4a/d2/a6c0296814556c68ee32009d9c2ad4f85f2707cdecfd7727951ec228005d/cffi-2.0.0-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "45d5e886156860dc35862657e1494b9bae8dfa63bf56796f2fb56e1679fc0bca"
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
    url "https://files.pythonhosted.org/packages/3f/f9/2b3ff4e56e5fa7debfaf9eb135d0da96f3e9a1d5b27222223c7296336e5f/typer-0.25.1-py3-none-any.whl"
    sha256 "75caa44ed46a03fb2dab8808753ffacdbfea88495e74c85a28c5eefcf5f39c89"
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
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/dc/9b/47798a6c91d8bdb567fe2698fe81e0c6b7cb7ef4d13da4114b41d239f65d/typing_inspection-0.4.2-py3-none-any.whl"
    sha256 "4ed1cacbdc298c220f1bd249ed5287caa16f34d44ef4e9c3d0cbad5b521545e7"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/4f/85/b505a99a133d9f99d21af182af416e9baef70bdeef019983479651e494c2/huggingface_hub-1.21.0-py3-none-any.whl"
    sha256 "eadaa3678c512c82aea69e8675d90a184861e68de32f1105668628b4dce0e7cd"
  end

  resource "hf-xet" do
    url "https://files.pythonhosted.org/packages/35/94/4b2ecfbad8f8b04701a23aefb62f540b9137d058b7e1dbef16a32676f0e9/hf_xet-1.5.1-cp37-abi3-macosx_11_0_arm64.whl"
    sha256 "94e761bbd266bf4c03cee73753916062665ce8365aa40ed321f45afcb934b41e"
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
    url "https://files.pythonhosted.org/packages/13/37/a065dc3bd6e49423a6532c642ca7378d3f467b1ef44c2800c937af7f9739/filelock-3.29.4-py3-none-any.whl"
    sha256 "dac1648087d5115554850d113e7dd8c83ab2d38e3435dde2d4f163847e57b767"
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
    url "https://files.pythonhosted.org/packages/d8/8e/bb97bb0c71802080bfc8952937d174e49cfc50de5c951dd47b2496f0dcdb/tqdm-4.68.3-py3-none-any.whl"
    sha256 "39832cc2def2789a6f29df83f172db7416cea70052c0907a57801c5f2fdccb03"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/b0/7b/90df4a0a816d98d6ea26f559d87836d494a2cf1fcf063be67df50a7bcc30/anyio-4.14.1-py3-none-any.whl"
    sha256 "4e5533c5b8ff0a24f5d7a176cbe6877129cd183893f66b537f8f227d10527d72"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/1e/5e/d4e9f1a599fb8e573b7b87160658329fbf28d19eac2718f51fc3def3aa5a/idna-3.18-py3-none-any.whl"
    sha256 "7f952cbe720b688055e3f87de14f5c3e5fdaa8bc3928985c4077ca689de849a2"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/ef/2f/c5464532e965badff2f4c4c1a3a83f5697f0d7c407ed0cda44aaa99bb451/certifi-2026.6.17-py3-none-any.whl"
    sha256 "2227dcbaafe0d2f59279d1762ddddc37783ed4354594f194ffc31d20f41fc3db"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/e8/3d/1087453384dbde46a8c7f9356eead2c58be8a7bf156bca40243377c85715/more_itertools-11.1.0-py3-none-any.whl"
    sha256 "4b65538ae22f6fed0ce4874efd317463a7489796a0939fa66824dd542125a192"
  end

  resource "numba" do
    url "https://files.pythonhosted.org/packages/79/37/14a4579049c1eb673afd0de0cb4842982acd55b9ce2643e763db858bcea0/numba-0.65.1-cp313-cp313-macosx_12_0_arm64.whl"
    sha256 "1735c15c1134a5108b4d6a5c77fc0947924ea066a738dc09a52008c13df9cad3"
  end

  resource "llvmlite" do
    url "https://files.pythonhosted.org/packages/77/6f/4615353e016799f80fa52ccb270a843c413b22361fadda2589b2922fb9b0/llvmlite-0.47.0-cp313-cp313-macosx_12_0_arm64.whl"
    sha256 "a3c6a735d4e1041808434f9d440faa3d78d9b4af2ee64d05a66f351883b6ceec"
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
    url "https://files.pythonhosted.org/packages/bb/7f/cd004e13fcad23b3794a82307dfd222e6365eb7f598bd3caab148a830bff/regex-2026.6.28-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "6bf295f2c59de77d1ea7de053607ae4dc9ceb3d57bbb6c7ec51ef4acc4ccff94"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/a0/f4/c67b0b3f1b9245e8d266f0f112c500d50e5b4e83cb6f3b71b6528104182a/requests-2.34.2-py3-none-any.whl"
    sha256 "2a0d60c172f83ac6ab31e4554906c0f3b3588d37b5cb939b1c061f4907e278e0"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/c1/3b/66777e39d3ae1ddc77ee606be4ec6d8cbd4c801f65e5a1b6f2b11b8346dd/charset_normalizer-3.4.7-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "f496c9c3cc02230093d8330875c4c3cdfc3b73612a5fd921c65d39cbcef08063"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7f/3e/5db95bcf282c52709639744ca2a8b149baccf648e39c8cc87553df9eae0c/urllib3-2.7.0-py3-none-any.whl"
    sha256 "9fb4c81ebbb1ce9531cce37674bbc6f1360472bc18ca9a553ede278ef7276897"
  end

  resource "torch" do
    url "https://files.pythonhosted.org/packages/ff/4a/0300261818e1560d72cc160ac826005507e8b7ca0a35788b591436d05b4a/torch-2.12.1-cp313-cp313-macosx_14_0_arm64.whl"
    sha256 "c75e93173c700bccd6bfcc4a9d19ce242ab6dacd1f1781483027a16239b9e650"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/e1/e3/c164c88b2e5ce7b24d667b9bd83589cf4f3520d97cad01534cd3c4f55fdb/setuptools-81.0.0-py3-none-any.whl"
    sha256 "fdd925d5c5d9f62e4b74b30d6dd7828ce236fd6ed998a08d81de62ce5a6310d6"
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
    url "https://files.pythonhosted.org/packages/48/ca/36339329c4604adbcc99c899b7eb1ce1a555c499b6a6860757dc9bfed36d/narwhals-2.22.1-py3-none-any.whl"
    sha256 "60567d774edf77db53906f89d9fbd164e66e56d66d388e1e6990f17ac33cfb53"
  end

  resource "parakeet-mlx" do
    url "https://files.pythonhosted.org/packages/f4/54/09a3501c74f1ef54a36002534661cb89a0b2f098fcad87fe64f515a0dba7/parakeet_mlx-0.5.2-py3-none-any.whl"
    sha256 "50afb6ddb62237a6486e214482c25ef12759832fda3cd514e159938fa5970d9c"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/81/e6/cd9575ac904136b3cbf7aa7ee819ef86eedb7274e46f230e94ea4342e729/platformdirs-4.10.0-py3-none-any.whl"
    sha256 "fb516cdb12eb0d857d0cd85a7c57cea4d060bee4578d6cf5a14dfdf8cbf8784a"
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
