# Copyright 2024 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Starlark representation of locked requirements.

@generated by rules_python pip_parse repository rule
from @//py_support:requirements_lock.txt
"""

load("@rules_python//python/pip_install:pip_repository.bzl", "whl_library")

all_requirements = ["@py_deps_lxml//:pkg"]

all_whl_requirements = ["@py_deps_lxml//:whl"]

_packages = [("py_deps_lxml", "lxml==4.9.3     --hash=sha256:05186a0f1346ae12553d66df1cfce6f251589fea3ad3da4f3ef4e34b2d58c6a3     --hash=sha256:075b731ddd9e7f68ad24c635374211376aa05a281673ede86cbe1d1b3455279d     --hash=sha256:081d32421db5df44c41b7f08a334a090a545c54ba977e47fd7cc2deece78809a     --hash=sha256:0a3d3487f07c1d7f150894c238299934a2a074ef590b583103a45002035be120     --hash=sha256:0bfd0767c5c1de2551a120673b72e5d4b628737cb05414f03c3277bf9bed3305     --hash=sha256:0c0850c8b02c298d3c7006b23e98249515ac57430e16a166873fc47a5d549287     --hash=sha256:0e2cb47860da1f7e9a5256254b74ae331687b9672dfa780eed355c4c9c3dbd23     --hash=sha256:120fa9349a24c7043854c53cae8cec227e1f79195a7493e09e0c12e29f918e52     --hash=sha256:1247694b26342a7bf47c02e513d32225ededd18045264d40758abeb3c838a51f     --hash=sha256:141f1d1a9b663c679dc524af3ea1773e618907e96075262726c7612c02b149a4     --hash=sha256:14e019fd83b831b2e61baed40cab76222139926b1fb5ed0e79225bc0cae14584     --hash=sha256:1509dd12b773c02acd154582088820893109f6ca27ef7291b003d0e81666109f     --hash=sha256:17a753023436a18e27dd7769e798ce302963c236bc4114ceee5b25c18c52c693     --hash=sha256:1e224d5755dba2f4a9498e150c43792392ac9b5380aa1b845f98a1618c94eeef     --hash=sha256:1f447ea5429b54f9582d4b955f5f1985f278ce5cf169f72eea8afd9502973dd5     --hash=sha256:23eed6d7b1a3336ad92d8e39d4bfe09073c31bfe502f20ca5116b2a334f8ec02     --hash=sha256:25f32acefac14ef7bd53e4218fe93b804ef6f6b92ffdb4322bb6d49d94cad2bc     --hash=sha256:2c74524e179f2ad6d2a4f7caf70e2d96639c0954c943ad601a9e146c76408ed7     --hash=sha256:303bf1edce6ced16bf67a18a1cf8339d0db79577eec5d9a6d4a80f0fb10aa2da     --hash=sha256:3331bece23c9ee066e0fb3f96c61322b9e0f54d775fccefff4c38ca488de283a     --hash=sha256:3e9bdd30efde2b9ccfa9cb5768ba04fe71b018a25ea093379c857c9dad262c40     --hash=sha256:411007c0d88188d9f621b11d252cce90c4a2d1a49db6c068e3c16422f306eab8     --hash=sha256:42871176e7896d5d45138f6d28751053c711ed4d48d8e30b498da155af39aebd     --hash=sha256:46f409a2d60f634fe550f7133ed30ad5321ae2e6630f13657fb9479506b00601     --hash=sha256:48628bd53a426c9eb9bc066a923acaa0878d1e86129fd5359aee99285f4eed9c     --hash=sha256:48d6ed886b343d11493129e019da91d4039826794a3e3027321c56d9e71505be     --hash=sha256:4930be26af26ac545c3dffb662521d4e6268352866956672231887d18f0eaab2     --hash=sha256:4aec80cde9197340bc353d2768e2a75f5f60bacda2bab72ab1dc499589b3878c     --hash=sha256:4c28a9144688aef80d6ea666c809b4b0e50010a2aca784c97f5e6bf143d9f129     --hash=sha256:4d2d1edbca80b510443f51afd8496be95529db04a509bc8faee49c7b0fb6d2cc     --hash=sha256:4dd9a263e845a72eacb60d12401e37c616438ea2e5442885f65082c276dfb2b2     --hash=sha256:4f1026bc732b6a7f96369f7bfe1a4f2290fb34dce00d8644bc3036fb351a4ca1     --hash=sha256:4fb960a632a49f2f089d522f70496640fdf1218f1243889da3822e0a9f5f3ba7     --hash=sha256:50670615eaf97227d5dc60de2dc99fb134a7130d310d783314e7724bf163f75d     --hash=sha256:50baa9c1c47efcaef189f31e3d00d697c6d4afda5c3cde0302d063492ff9b477     --hash=sha256:53ace1c1fd5a74ef662f844a0413446c0629d151055340e9893da958a374f70d     --hash=sha256:5515edd2a6d1a5a70bfcdee23b42ec33425e405c5b351478ab7dc9347228f96e     --hash=sha256:56dc1f1ebccc656d1b3ed288f11e27172a01503fc016bcabdcbc0978b19352b7     --hash=sha256:578695735c5a3f51569810dfebd05dd6f888147a34f0f98d4bb27e92b76e05c2     --hash=sha256:57aba1bbdf450b726d58b2aea5fe47c7875f5afb2c4a23784ed78f19a0462574     --hash=sha256:57d6ba0ca2b0c462f339640d22882acc711de224d769edf29962b09f77129cbf     --hash=sha256:5c245b783db29c4e4fbbbfc9c5a78be496c9fea25517f90606aa1f6b2b3d5f7b     --hash=sha256:5c31c7462abdf8f2ac0577d9f05279727e698f97ecbb02f17939ea99ae8daa98     --hash=sha256:64f479d719dc9f4c813ad9bb6b28f8390360660b73b2e4beb4cb0ae7104f1c12     --hash=sha256:65299ea57d82fb91c7f019300d24050c4ddeb7c5a190e076b5f48a2b43d19c42     --hash=sha256:6689a3d7fd13dc687e9102a27e98ef33730ac4fe37795d5036d18b4d527abd35     --hash=sha256:690dafd0b187ed38583a648076865d8c229661ed20e48f2335d68e2cf7dc829d     --hash=sha256:6fc3c450eaa0b56f815c7b62f2b7fba7266c4779adcf1cece9e6deb1de7305ce     --hash=sha256:704f61ba8c1283c71b16135caf697557f5ecf3e74d9e453233e4771d68a1f42d     --hash=sha256:71c52db65e4b56b8ddc5bb89fb2e66c558ed9d1a74a45ceb7dcb20c191c3df2f     --hash=sha256:71d66ee82e7417828af6ecd7db817913cb0cf9d4e61aa0ac1fde0583d84358db     --hash=sha256:7d298a1bd60c067ea75d9f684f5f3992c9d6766fadbc0bcedd39750bf344c2f4     --hash=sha256:8b77946fd508cbf0fccd8e400a7f71d4ac0e1595812e66025bac475a8e811694     --hash=sha256:8d7e43bd40f65f7d97ad8ef5c9b1778943d02f04febef12def25f7583d19baac     --hash=sha256:8df133a2ea5e74eef5e8fc6f19b9e085f758768a16e9877a60aec455ed2609b2     --hash=sha256:8ed74706b26ad100433da4b9d807eae371efaa266ffc3e9191ea436087a9d6a7     --hash=sha256:92af161ecbdb2883c4593d5ed4815ea71b31fafd7fd05789b23100d081ecac96     --hash=sha256:97047f0d25cd4bcae81f9ec9dc290ca3e15927c192df17331b53bebe0e3ff96d     --hash=sha256:9719fe17307a9e814580af1f5c6e05ca593b12fb7e44fe62450a5384dbf61b4b     --hash=sha256:9767e79108424fb6c3edf8f81e6730666a50feb01a328f4a016464a5893f835a     --hash=sha256:9a92d3faef50658dd2c5470af249985782bf754c4e18e15afb67d3ab06233f13     --hash=sha256:9bb6ad405121241e99a86efff22d3ef469024ce22875a7ae045896ad23ba2340     --hash=sha256:9e28c51fa0ce5674be9f560c6761c1b441631901993f76700b1b30ca6c8378d6     --hash=sha256:aca086dc5f9ef98c512bac8efea4483eb84abbf926eaeedf7b91479feb092458     --hash=sha256:ae8b9c6deb1e634ba4f1930eb67ef6e6bf6a44b6eb5ad605642b2d6d5ed9ce3c     --hash=sha256:b0a545b46b526d418eb91754565ba5b63b1c0b12f9bd2f808c852d9b4b2f9b5c     --hash=sha256:b4e4bc18382088514ebde9328da057775055940a1f2e18f6ad2d78aa0f3ec5b9     --hash=sha256:b6420a005548ad52154c8ceab4a1290ff78d757f9e5cbc68f8c77089acd3c432     --hash=sha256:b86164d2cff4d3aaa1f04a14685cbc072efd0b4f99ca5708b2ad1b9b5988a991     --hash=sha256:bb3bb49c7a6ad9d981d734ef7c7193bc349ac338776a0360cc671eaee89bcf69     --hash=sha256:bef4e656f7d98aaa3486d2627e7d2df1157d7e88e7efd43a65aa5dd4714916cf     --hash=sha256:c0781a98ff5e6586926293e59480b64ddd46282953203c76ae15dbbbf302e8bb     --hash=sha256:c2006f5c8d28dee289f7020f721354362fa304acbaaf9745751ac4006650254b     --hash=sha256:c41bfca0bd3532d53d16fd34d20806d5c2b1ace22a2f2e4c0008570bf2c58833     --hash=sha256:cd47b4a0d41d2afa3e58e5bf1f62069255aa2fd6ff5ee41604418ca925911d76     --hash=sha256:cdb650fc86227eba20de1a29d4b2c1bfe139dc75a0669270033cb2ea3d391b85     --hash=sha256:cef2502e7e8a96fe5ad686d60b49e1ab03e438bd9123987994528febd569868e     --hash=sha256:d27be7405547d1f958b60837dc4c1007da90b8b23f54ba1f8b728c78fdb19d50     --hash=sha256:d37017287a7adb6ab77e1c5bee9bcf9660f90ff445042b790402a654d2ad81d8     --hash=sha256:d3ff32724f98fbbbfa9f49d82852b159e9784d6094983d9a8b7f2ddaebb063d4     --hash=sha256:d73d8ecf8ecf10a3bd007f2192725a34bd62898e8da27eb9d32a58084f93962b     --hash=sha256:dd708cf4ee4408cf46a48b108fb9427bfa00b9b85812a9262b5c668af2533ea5     --hash=sha256:e3cd95e10c2610c360154afdc2f1480aea394f4a4f1ea0a5eacce49640c9b190     --hash=sha256:e4da8ca0c0c0aea88fd46be8e44bd49716772358d648cce45fe387f7b92374a7     --hash=sha256:eadfbbbfb41b44034a4c757fd5d70baccd43296fb894dba0295606a7cf3124aa     --hash=sha256:ed667f49b11360951e201453fc3967344d0d0263aa415e1619e85ae7fd17b4e0     --hash=sha256:f3df3db1d336b9356dd3112eae5f5c2b8b377f3bc826848567f10bfddfee77e9     --hash=sha256:f6bdac493b949141b733c5345b6ba8f87a226029cbabc7e9e121a413e49441e0     --hash=sha256:fbf521479bcac1e25a663df882c46a641a9bff6b56dc8b0fafaebd2f66fb231b     --hash=sha256:fc9b106a1bf918db68619fdcd6d5ad4f972fdd19c01d19bdb6bf63f3589a9ec5     --hash=sha256:fcdd00edfd0a3001e0181eab3e63bd5c74ad3e67152c84f93f13769a40e073a7     --hash=sha256:fe4bda6bd4340caa6e5cf95e73f8fea5c4bfc55763dd42f1b50a94c1b4a2fbd4")]
_config = {"download_only": False, "enable_implicit_namespace_pkgs": False, "environment": {}, "extra_pip_args": ["--extra-index-url", "https://pypi.python.org/simple/"], "isolated": True, "pip_data_exclude": [], "python_interpreter": "python3", "python_interpreter_target": "@python3_11_x86_64-unknown-linux-gnu//:bin/python3", "quiet": True, "repo": "py_deps", "repo_prefix": "py_deps_", "timeout": 600}
_annotations = {}

def _clean_name(name):
    return name.replace("-", "_").replace(".", "_").lower()

def requirement(name):
    return "@py_deps_" + _clean_name(name) + "//:pkg"

def whl_requirement(name):
    return "@py_deps_" + _clean_name(name) + "//:whl"

def data_requirement(name):
    return "@py_deps_" + _clean_name(name) + "//:data"

def dist_info_requirement(name):
    return "@py_deps_" + _clean_name(name) + "//:dist_info"

def entry_point(pkg, script = None):
    if not script:
        script = pkg
    return "@py_deps_" + _clean_name(pkg) + "//:rules_python_wheel_entry_point_" + script

def _get_annotation(requirement):
    # This expects to parse `setuptools==58.2.0     --hash=sha256:2551203ae6955b9876741a26ab3e767bb3242dafe86a32a749ea0d78b6792f11`
    # down to `setuptools`.
    name = requirement.split(" ")[0].split("=")[0].split("[")[0]
    return _annotations.get(name)

def install_deps(**whl_library_kwargs):
    whl_config = dict(_config)
    whl_config.update(whl_library_kwargs)
    for name, requirement in _packages:
        whl_library(
            name = name,
            requirement = requirement,
            annotation = _get_annotation(requirement),
            **whl_config
        )
