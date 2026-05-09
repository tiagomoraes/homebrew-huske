class Huske < Formula
  include Language::Python::Virtualenv

  desc "Always-on terminal audio recorder and local transcription app"
  homepage "https://github.com/tiagomoraes/huske"
  url "https://files.pythonhosted.org/packages/9e/3b/f2fb09303f2d7389502e18a6f97a4e01cf3eae406224359a5ef989e11fa3/huske-0.5.0.tar.gz"
  sha256 "a062d1f3b9f5f2b7c1a3563ce01c9afe12063cb52a9016f8e522cbaa4f5a0d46"
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
    url "https://files.pythonhosted.org/packages/e5/87/499737bfba066b4a3bebff24a8f1c5b2dee410b209bc6668c9be692580f0/numpy-2.4.4-cp313-cp313-macosx_14_0_arm64.whl"
    sha256 "4a19d9dba1a76618dd86b164d608566f393f8ec6ac7c44f0cc879011c45e65af"
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
    url "https://files.pythonhosted.org/packages/3d/ce/45808618fefc760e2948c363e0a3402ff77690c8934609cd07b19bc5b15f/pyobjc_framework_coreaudio-12.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "3d8ef424850c8ae2146f963afaec6c4f5bf0c2e412871e68fb6ecfb209b8376f"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/f4/d2/29e5e536adc07bc3d33dd09f3f7cf844bf7b4981820dc2a91dd810f3c782/pyobjc_core-12.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "01c0cf500596f03e21c23aef9b5f326b9fb1f8f118cf0d8b66749b6cf4cbb37a"
  end

  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/ad/31/0c2e734165abb46215797bd830c4bdcb780b699854b15f2b6240515edcc6/pyobjc_framework_cocoa-12.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "5a3dcd491cacc2f5a197142b3c556d8aafa3963011110102a093349017705118"
  end

  resource "pyobjc-framework-CoreMedia" do
    url "https://files.pythonhosted.org/packages/a5/ea/aee26a475b4af8ed4152d3c50b1b8955241b8e95ae789aa9ee296953bc6a/pyobjc_framework_coremedia-12.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "98e885b7a092083fceaef0a7fc406a01ba7bcd3318fb927e59e055931c99cac8"
  end

  resource "pyobjc-framework-ScreenCaptureKit" do
    url "https://files.pythonhosted.org/packages/45/f9/ff713b8c4659f9ef1c4dbb8ca4b59c4b22d9df48471230979d620709e3b4/pyobjc_framework_screencapturekit-12.1-cp313-cp313-macosx_10_13_universal2.whl"
    sha256 "168125388fb35c6909bec93b259508156e89b9e30fec5748d4a04fd0157f0e0d"
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
    url "https://files.pythonhosted.org/packages/a0/e5/58fd1a8d7b26fc113af244f966ee3aecf03cb9293cb935daaddc1e455e18/soundfile-0.13.1-py2.py3-none-macosx_11_0_arm64.whl"
    sha256 "743f12c12c4054921e15736c6be09ac26b3b3d603aef6fd69f9dde68748f2593"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/4a/d2/a6c0296814556c68ee32009d9c2ad4f85f2707cdecfd7727951ec228005d/cffi-2.0.0-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "45d5e886156860dc35862657e1494b9bae8dfa63bf56796f2fb56e1679fc0bca"
  end

  resource "structlog" do
    url "https://files.pythonhosted.org/packages/a8/45/a132b9074aa18e799b891b91ad72133c98d8042c70f6240e4c5f9dabee2f/structlog-25.5.0-py3-none-any.whl"
    sha256 "a8453e9b9e636ec59bd9e79bbd4a72f025981b3ba0f5837aebf48f02f37a7f9f"
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
    url "https://files.pythonhosted.org/packages/ae/44/c1221527f6a71a01ec6fbad7fa78f1d50dfa02217385cf0fa3eec7087d59/click-8.3.3-py3-none-any.whl"
    sha256 "a2bf429bb3033c89fa4936ffb35d5cb471e3719e1f3c8a7c3fff0b8314305613"
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
    url "https://files.pythonhosted.org/packages/89/a5/33b49ba7bea7c41bb37f74ec0f8beea0831e052330196633fe2c77516ea6/huggingface_hub-1.14.0-py3-none-any.whl"
    sha256 "efe075535c62e130b30e836b138e13785f6f043d1f0539e0a39aa411a99e90b8"
  end

  resource "hf-xet" do
    url "https://files.pythonhosted.org/packages/9b/ff/edcc2b40162bef3ff78e14ab637e5f3b89243d6aee72f5949d3bb6a5af83/hf_xet-1.5.0-cp37-abi3-macosx_11_0_arm64.whl"
    sha256 "fd6e5a9b0fdac4ed03ed45ef79254a655b1aaab514a02202617fbf643f5fdf7a"
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
    url "https://files.pythonhosted.org/packages/81/47/dd9a212ef6e343a6857485ffe25bba537304f1913bdbed446a23f7f592e1/filelock-3.29.0-py3-none-any.whl"
    sha256 "96f5f6344709aa1572bbf631c640e4ebeeb519e08da902c39a001882f30ac258"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/d5/0c/043d5e551459da400957a1395e0febbf771446ff34291afcbe3d8be2a279/fsspec-2026.4.0-py3-none-any.whl"
    sha256 "11ef7bb35dab8a394fde6e608221d5cf3e8499401c249bebaeaad760a1a8dec2"
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
    url "https://files.pythonhosted.org/packages/16/e1/3079a9ff9b8e11b846c6ac5c8b5bfb7ff225eee721825310c91b3b50304f/tqdm-4.67.3-py3-none-any.whl"
    sha256 "ee1e4c0e59148062281c49d80b25b67771a127c85fc9676d3be5f243206826bf"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/da/42/e921fccf5015463e32a3cf6ee7f980a6ed0f395ceeaa45060b61d86486c2/anyio-4.13.0-py3-none-any.whl"
    sha256 "08b310f9e24a9594186fd75b4f73f4a4152069e3853f1ed8bfbf58369f4ad708"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/5d/13/ad7d7ca3808a898b4612b6fe93cde56b53f3034dcde235acb1f0e1df24c6/idna-3.13-py3-none-any.whl"
    sha256 "892ea0cde124a99ce773decba204c5552b69c3c67ffd5f232eb7696135bc8bb3"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/22/30/7cd8fdcdfbc5b869528b079bfb76dcdf6056b1a2097a662e5e8c04f42965/certifi-2026.4.22-py3-none-any.whl"
    sha256 "3cb2210c8f88ba2318d29b0388d1023c8492ff72ecdde4ebdaddbb13a31b1c4a"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/cb/98/6af411189d9413534c3eb691182bff1f5c6d44ed2f93f2edfe52a1bbceb8/more_itertools-11.0.2-py3-none-any.whl"
    sha256 "6e35b35f818b01f691643c6c611bc0902f2e92b46c18fffa77ae1e7c46e912e4"
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
    url "https://files.pythonhosted.org/packages/5b/58/3ce96251560107b381cbd6e8413c483bbb1228a6b919fa8652b0d4090e7f/scipy-1.17.1-cp313-cp313-macosx_14_0_arm64.whl"
    sha256 "7ff200bf9d24f2e4d5dc6ee8c3ac64d739d3a89e2326ba68aaf6c4a2b838fd7d"
  end

  resource "tiktoken" do
    url "https://files.pythonhosted.org/packages/1f/05/dcf94486d5c5c8d34496abe271ac76c5b785507c8eae71b3708f1ad9b45a/tiktoken-0.12.0-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "a01b12f69052fbe4b080a2cfb867c4de12c704b56178edf1d1d7b273561db160"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/5a/92/4712b9fe6a33d232eeb1c189484b80c6c4b8422b90e766e1195d6e758207/regex-2026.4.4-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "8fae3c6e795d7678963f2170152b0d892cf6aee9ee8afc8c45e6be38d5107fe7"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/d7/8e/7540e8a2036f79a125c1d2ebadf69ed7901608859186c856fa0388ef4197/requests-2.33.1-py3-none-any.whl"
    sha256 "4e6d1ef462f3626a1f0a0a9c42dd93c63bad33f9f1c1937509b8c5c8718ab56a"
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
    url "https://files.pythonhosted.org/packages/87/89/5ea6722763acee56b045435fb84258db7375c48165ec8be7880ab2b281c5/torch-2.11.0-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "1e6debd97ccd3205bbb37eb806a9d8219e1139d15419982c09e23ef7d4369d18"
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
