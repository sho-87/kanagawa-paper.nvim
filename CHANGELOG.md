# Changelog

## [2.0.0](https://github.com/sho-87/kanagawa-paper.nvim/compare/v1.4.0...v2.0.0) (2024-07-14)


### ⚠ BREAKING CHANGES

* **treesitter/lsp:** update to latest TS capture names
* **config:** remove check_config logic, but keep it for the future
* **overhaul:** new features and improvements
* **theme:** theme -> background; add theme option to be used when bg is not specified
* **config:** remove lesser options. + remove punct2; + special constructor for lua
* **themes:** rename themes, allow default (wave) to be set explicitly via :colo
* **overhaul:** WIP deep refactor of theme colors
* several improvements.
* **tree-sitter:** use captures as hl-group names
* use nvim_set_hl
* add theme support, rework setup routine
* require'kanagawa.colors' -> require'kanagawa'.colors

### improvement

* several improvements. ([0206f40](https://github.com/sho-87/kanagawa-paper.nvim/commit/0206f4083a50849b77f59b80948454c8a2410445))


### Features

* add barbar styling ([6ac72d3](https://github.com/sho-87/kanagawa-paper.nvim/commit/6ac72d35bfda017ff545f4c9863959618c38917b))
* add color palette to readme ([7118690](https://github.com/sho-87/kanagawa-paper.nvim/commit/7118690e5a0415407d9d0438a128365a73837282))
* add colors for popular plugins ([a769176](https://github.com/sho-87/kanagawa-paper.nvim/commit/a7691769a771355937d8c8f49e5f984d3c8dd025))
* add colours for UI and builtin highlight groups ([1e0984b](https://github.com/sho-87/kanagawa-paper.nvim/commit/1e0984b4415b146fe78194b38b6716bbb5675ec2))
* add empty highlight group ([057b732](https://github.com/sho-87/kanagawa-paper.nvim/commit/057b732a62ab200402d90a4355c4b525a86094d3))
* add extras for integration with other applications ([16e6a4b](https://github.com/sho-87/kanagawa-paper.nvim/commit/16e6a4b1e44669876c9e91e543cab93e5d7f37f6))
* add groups for the mini ecosystem ([1b719a1](https://github.com/sho-87/kanagawa-paper.nvim/commit/1b719a1d7a62a4985ac7e32132af665389032b0f))
* add highlights for noice and satellite ([36e5293](https://github.com/sho-87/kanagawa-paper.nvim/commit/36e52937df10eec3c91cec575b8f3cccfb08750c))
* add hl for new which key preset ([367be8f](https://github.com/sho-87/kanagawa-paper.nvim/commit/367be8f2d08ee00c5603cdc3f6e24beb2999bd85))
* add hl for which key default icon ([2457ccf](https://github.com/sho-87/kanagawa-paper.nvim/commit/2457ccfa4671a8a5c9136a62f8ec4206248c05d5))
* add in support for Note ([66f00dd](https://github.com/sho-87/kanagawa-paper.nvim/commit/66f00dd38fd7de738068942295c78acd9ce67ba7))
* add option to remove gutter background ([475d017](https://github.com/sho-87/kanagawa-paper.nvim/commit/475d017380a7d0d9c1ffd809d8470d771d07a45c))
* add syntax colours ([bc165b4](https://github.com/sho-87/kanagawa-paper.nvim/commit/bc165b4bb16a3fd9f7818f1ac2b2397e95b3451d))
* add wezterm extra ([0a0d567](https://github.com/sho-87/kanagawa-paper.nvim/commit/0a0d567a6ae90189e9054d904f6a00b4feb27c1f))
* advertize themes to vim as separate colorschemes ([bca5195](https://github.com/sho-87/kanagawa-paper.nvim/commit/bca5195db85c6f1b0a89eeca575eb61bfa151b41))
* Alfred theme ([b4df5ad](https://github.com/sho-87/kanagawa-paper.nvim/commit/b4df5ad19388b1709f87986aadae781ae3563f0a))
* **cmdheight:** improve MsgSeparator on cmdheight=0 ([899f2c9](https://github.com/sho-87/kanagawa-paper.nvim/commit/899f2c9311b35d9d05ca856411815a92407618fd))
* **cmp:** add Cmp highlights to be used in custom winhighlight ([acf0f5d](https://github.com/sho-87/kanagawa-paper.nvim/commit/acf0f5d61236b416c804d649cd76db8390de9ae6))
* **compile:** add compilation support ([4bd81cd](https://github.com/sho-87/kanagawa-paper.nvim/commit/4bd81cd210c7a6cd7b6ccd8f471099d2d3d181f1))
* **compile:** compile all themes at once; refactor: add golbal _CURRENT_THEME ([ffb2feb](https://github.com/sho-87/kanagawa-paper.nvim/commit/ffb2feb4ca5e117a0f0183b595f51d2e88245e36))
* **compile:** make compile opt-in instead of opt-out ([9025e02](https://github.com/sho-87/kanagawa-paper.nvim/commit/9025e022a9491bdf7f2c6485d431b03f9c1d0cc3))
* **compile:** opt-out of compilation; fix [#106](https://github.com/sho-87/kanagawa-paper.nvim/issues/106) ([faeef98](https://github.com/sho-87/kanagawa-paper.nvim/commit/faeef985abd6f32cdc2e3c2cce89469060b9c74a))
* **config:** add dimInactive config key (bool) to darken the non-current ([6b2b374](https://github.com/sho-87/kanagawa-paper.nvim/commit/6b2b37466c9702700aa47a364711222ddfabf6aa))
* **config:** choose the theme for override colors ([6d611cf](https://github.com/sho-87/kanagawa-paper.nvim/commit/6d611cfe97361843b46382367be0f699985a813e))
* **config:** remove lesser options. + remove punct2; + special constructor for lua ([f785b97](https://github.com/sho-87/kanagawa-paper.nvim/commit/f785b972320eeb14ef249db965a8924e7012a411))
* **CurSearch:** define CurSearch explicitly ([53da2e8](https://github.com/sho-87/kanagawa-paper.nvim/commit/53da2e86a691435c0f1e56d6c01a425a776f8337))
* **dap-ui:** add support for dap-ui ([70d3139](https://github.com/sho-87/kanagawa-paper.nvim/commit/70d3139aaa8e59f3304ca7860e35fd6081b6caa5))
* **dragon:** improve dragon theme (still WIP) ([f4286e1](https://github.com/sho-87/kanagawa-paper.nvim/commit/f4286e1cd5b6777518edf894b36848fc5c9f97f8))
* **editor:** highlight MsgArea depending on value of 'cmdheight' ([7cede0a](https://github.com/sho-87/kanagawa-paper.nvim/commit/7cede0a885616bf5bd609e092f8ae0cc50cc7d25))
* **extras:** add Kanagawa_light kitty theme ([04b8d49](https://github.com/sho-87/kanagawa-paper.nvim/commit/04b8d49c53996a453ddb3b5d00940f51ccc3dbbe))
* **extras:** add kanagawa.tmTheme ([7b411f9](https://github.com/sho-87/kanagawa-paper.nvim/commit/7b411f9e66c6f4f6bd9771f3e5affdc468bcbbd2))
* **extras:** improve tab foreground in kitty theme ([c8af52c](https://github.com/sho-87/kanagawa-paper.nvim/commit/c8af52c95022f80931b8c042538db6c10e0245ec))
* **global statusline:** add support for laststatus=3 ([20f3597](https://github.com/sho-87/kanagawa-paper.nvim/commit/20f3597564f8a45bc98d806bd7bc0474c485f27c))
* **highlights-plugins:** add Neogit; fix [#139](https://github.com/sho-87/kanagawa-paper.nvim/issues/139) ([89d5ec4](https://github.com/sho-87/kanagawa-paper.nvim/commit/89d5ec496d371bfda5722612d33fd61d6b858279))
* **highlights:** add FloatFooter hl ([0a24e50](https://github.com/sho-87/kanagawa-paper.nvim/commit/0a24e504a3a278849ad0aef31cd6dd24c73ca3db))
* **hl:** add cmpItemKindCopilot hl ([f20c407](https://github.com/sho-87/kanagawa-paper.nvim/commit/f20c4074cc4e9504139d95f5311089036f0ec178))
* **hlgroups:** add FloatTitle hlgroup ([d6145ea](https://github.com/sho-87/kanagawa-paper.nvim/commit/d6145eab30d77e304870f77d95d4992f22745553))
* **hlgroups:** better telescope doc/ws symbols ([582df5b](https://github.com/sho-87/kanagawa-paper.nvim/commit/582df5b4f806c93cdc94b1df8234f56a30bba48a))
* **hlgroups:** improve highlights ([50e7b43](https://github.com/sho-87/kanagawa-paper.nvim/commit/50e7b43552072696d26757aff5f6307e2ab5e3ea))
* **hlgroups:** improve nvim-cmp Variable highlight ([00b44c5](https://github.com/sho-87/kanagawa-paper.nvim/commit/00b44c5c583337d709ed6aeb4c54dd3abfef2e2a))
* **hlgroups:** remove default link filed when overriding hlgroups ([6913a25](https://github.com/sho-87/kanagawa-paper.nvim/commit/6913a25c53917e6c610a976b1258ddea7bfb8431))
* **hsl:** add color manipulation module ([fdbfaa9](https://github.com/sho-87/kanagawa-paper.nvim/commit/fdbfaa942a367e5e3b333200da4f9d16c316a963))
* **HSLuvColor:** improvements to color manipulation ([bf13f1b](https://github.com/sho-87/kanagawa-paper.nvim/commit/bf13f1bb92f80dd3774d943ef43fd80520c1098b))
* **hsluv:** switch to hsluv submodule and improve light theme ([095a2cb](https://github.com/sho-87/kanagawa-paper.nvim/commit/095a2cb37a51b7f9d8b6e4763d78e4ae19f646b5))
* **kitty:** improve kitty (dark) theme ([f3c1bb8](https://github.com/sho-87/kanagawa-paper.nvim/commit/f3c1bb8b6f67b26a2d39babf86d0807c4004c28e))
* **light_theme:** WIP first iteration of light theme ([fa1c3c4](https://github.com/sho-87/kanagawa-paper.nvim/commit/fa1c3c4b01f526bf4deff33dd223b16289967911))
* **lsp:** add typemod.function.readonly.javascript; fix [#144](https://github.com/sho-87/kanagawa-paper.nvim/issues/144) ([6e89801](https://github.com/sho-87/kanagawa-paper.nvim/commit/6e898011e90e7c62a78889c0b3dfe6df54cc5c2d))
* **luap:** regex highlights for lua patterns ([d0613a6](https://github.com/sho-87/kanagawa-paper.nvim/commit/d0613a6e6df5fa379e6e443755e292b6d89465a4))
* **markdown:** better markdown hl ([0ad738e](https://github.com/sho-87/kanagawa-paper.nvim/commit/0ad738e7cc43514d35388c1caca13990d688aa5c))
* **neogit:** define neogit highlights; fix [#63](https://github.com/sho-87/kanagawa-paper.nvim/issues/63) ([6ee9684](https://github.com/sho-87/kanagawa-paper.nvim/commit/6ee96842cbfe3b7ebf7a1c3fa9602c2a3f5fdf38))
* **notify:** add support for nvim-notify ([1c36cda](https://github.com/sho-87/kanagawa-paper.nvim/commit/1c36cda43a90baef5028957f8c8a3def0c55b460))
* **notify:** improve nvim-notify highlights ([a6f8ea1](https://github.com/sho-87/kanagawa-paper.nvim/commit/a6f8ea10900e8d891f9c93e0ed258f118010fb24))
* **overhaul:** new features and improvements ([d146b7e](https://github.com/sho-87/kanagawa-paper.nvim/commit/d146b7e32fa6049025cb808ff8f7c4718b0d4fcd))
* **palette:** add all colors ([72775d9](https://github.com/sho-87/kanagawa-paper.nvim/commit/72775d9d1c55f57ae1cd06a397923a5f35041e94))
* **palette:** add bg_shades (default scheme) ([fc2e308](https://github.com/sho-87/kanagawa-paper.nvim/commit/fc2e30820c73b0cf56bb0fb9e4a83dd8b90f9bf4))
* **plugins-Telescope:** better selection and caret highlights ([66aeaf7](https://github.com/sho-87/kanagawa-paper.nvim/commit/66aeaf7573253a847a02d56218b0d7f6cea7609e))
* **plugins:** add Aerial%KIND%Icon colors; consistent LSP kind colors for Cmp, Navic and Aerial ([23ae977](https://github.com/sho-87/kanagawa-paper.nvim/commit/23ae977e5a46dbf976d051ad2b57f5ed789871d8))
* **plugins:** add explicit background for nvim-notify ([545c9a6](https://github.com/sho-87/kanagawa-paper.nvim/commit/545c9a6e8c34680c9d376d025e9c5afeeefa7d20))
* **plugins:** add Indent blankline v3 ([d8552ee](https://github.com/sho-87/kanagawa-paper.nvim/commit/d8552ee27c777055ed38ea49277aa271214d45e9))
* **plugins:** add NeoTreeIndentMarker ([9cc07c5](https://github.com/sho-87/kanagawa-paper.nvim/commit/9cc07c5a98b2f14dc80a9f464334107cc4b6b497))
* **plugins:** add NeoTreeTabSeparator ([6059509](https://github.com/sho-87/kanagawa-paper.nvim/commit/6059509ca8467dd2068a04bb0b286887e236685e))
* **plugins:** add TreesitterContextLineNumber ([129e817](https://github.com/sho-87/kanagawa-paper.nvim/commit/129e817c65a63b6d1f328670355b6780a2d4f36a))
* **plugins:** better dashboard support ([17a084f](https://github.com/sho-87/kanagawa-paper.nvim/commit/17a084fc27d7a908fef779dea6890fe9a8d0510d))
* **plugins:** hl for NvimTree window picker ([00f4307](https://github.com/sho-87/kanagawa-paper.nvim/commit/00f4307d9eda1393cd32fc033fa720b0843eea87))
* **plugins:** improve telescope and lazy ([5ae029a](https://github.com/sho-87/kanagawa-paper.nvim/commit/5ae029a2aa291a757332897b75df27c26aa38241))
* **plugins:** initial support for NeoTree ([423370a](https://github.com/sho-87/kanagawa-paper.nvim/commit/423370ab6f94df48bcfb9090a6733b6e82b9beb0))
* **plugins:** Trouble v3 ([860e4f8](https://github.com/sho-87/kanagawa-paper.nvim/commit/860e4f80df71221d18bf2cd9ef1deb4d364274d2))
* **readme:** add screenshot ([718ea31](https://github.com/sho-87/kanagawa-paper.nvim/commit/718ea31b8b6a92b99f25c817ac150b44b45f857f))
* remove vscode extra in favor of separate extension ([61ce2ed](https://github.com/sho-87/kanagawa-paper.nvim/commit/61ce2edc34048cdcbb315850b62dd3ea822efe2b))
* **semantic_highlights:** add "injected" groups ([554a63e](https://github.com/sho-87/kanagawa-paper.nvim/commit/554a63e9649af5d1cbedcf5e81d912d4612e466b))
* **semantic_highlights:** add initial support for semantic tokens highlights ([5781565](https://github.com/sho-87/kanagawa-paper.nvim/commit/57815655d7f7bc0b78c8a5b45de38db28aabfd58))
* set default styling ([bf9acc8](https://github.com/sho-87/kanagawa-paper.nvim/commit/bf9acc88ceda3c6ff720c5451ee66193dc627957))
* **sway:** add config for Sway WM colors ([0041c7e](https://github.com/sho-87/kanagawa-paper.nvim/commit/0041c7ea4e6dd0f39562a4902d93c864b44d4120))
* **sway:** tidy up formatting ([c200345](https://github.com/sho-87/kanagawa-paper.nvim/commit/c2003451a72d95f8a0f8a6addbc04d61219f9d44))
* **tabline:** better TabLineSel background ([cff7a76](https://github.com/sho-87/kanagawa-paper.nvim/commit/cff7a762dbaf9bc6aa5f9c1350362fe49f4263c4))
* **terminal_colors:** add vim.g.terminal_colors_{0,17}. fix [#59](https://github.com/sho-87/kanagawa-paper.nvim/issues/59) ([04e868d](https://github.com/sho-87/kanagawa-paper.nvim/commit/04e868dc377fa6aef5da50d9816a43272896a863))
* **terminal:** add kanagawa dragon alacritty theme ([0e8ac7e](https://github.com/sho-87/kanagawa-paper.nvim/commit/0e8ac7ea8c4a8a4b1191b629f04c754fb356ff33))
* **terminal:** improve terminal colors, add kanagawa_dragon kitty theme ([181e322](https://github.com/sho-87/kanagawa-paper.nvim/commit/181e3223512799d7248c70fa7249ab58a33d9906))
* **themes:** add WIP Dragon Theme. Ejoy. _/º`&lt;~*~ ([dda1b8c](https://github.com/sho-87/kanagawa-paper.nvim/commit/dda1b8c13e0e7588c014064e5e8baf7f2953dd29))
* **themes:** rename themes, allow default (wave) to be set explicitly via :colo ([1928e9c](https://github.com/sho-87/kanagawa-paper.nvim/commit/1928e9cbca28d9d6342c52a24d1242af8dd3cf2d))
* **todo-comments:** better TS highlights for todo/warning/danger comments ([6668ad6](https://github.com/sho-87/kanagawa-paper.nvim/commit/6668ad6e092e03e8d3f8b3a3184e05413df02247))
* **tree-sitter:** use captures as hl-group names ([631e0aa](https://github.com/sho-87/kanagawa-paper.nvim/commit/631e0aa4012924d1874ced20f9ed5c7175a5a94c))
* **treesitter/lsp:** update to latest TS capture names ([75be2b9](https://github.com/sho-87/kanagawa-paper.nvim/commit/75be2b90c135a6cdacf05826aeb44dcf0c95df3c))
* **treesitter:** better support for markup (latex) ([497a5ea](https://github.com/sho-87/kanagawa-paper.nvim/commit/497a5eadf76bc57ab0d80d50a87ecc0e7535d72d))
* **TS:** add [@text](https://github.com/text).diff.{add,delete} groups; fix [#135](https://github.com/sho-87/kanagawa-paper.nvim/issues/135) ([a0c9e7c](https://github.com/sho-87/kanagawa-paper.nvim/commit/a0c9e7c7aab4a139196ec00e77787b0c8c3e2be4))
* **TSError:** remove TSError highlight ([3691690](https://github.com/sho-87/kanagawa-paper.nvim/commit/3691690fe529918fc365a17cec250472ec544803))
* **ts:** improve ts captures highlights ([fc414f7](https://github.com/sho-87/kanagawa-paper.nvim/commit/fc414f798f0bc0231dd8e7e01364e0524fb3c06e))
* update mode colors for lualine ([0d8ec61](https://github.com/sho-87/kanagawa-paper.nvim/commit/0d8ec61c0490ac0fef2cec544dc02606c77314f1))
* upstream updates ([d21f0f9](https://github.com/sho-87/kanagawa-paper.nvim/commit/d21f0f96e3c3a898891e110c9179765c1f9f7fb8))
* **vim.o.background:** allow setting default/light theme via background option (this overrides config). ([1b46ae8](https://github.com/sho-87/kanagawa-paper.nvim/commit/1b46ae8520667fbb46b35618d84beb6dfcf23b75))
* **winbar:** add winbar and winbarnc hl groups ([97b96c6](https://github.com/sho-87/kanagawa-paper.nvim/commit/97b96c6d740161cb624ee8eae466b1e35782540e))
* **winseparator:** use darker color ([40370df](https://github.com/sho-87/kanagawa-paper.nvim/commit/40370dfa8529e550f9588196e2e35a5bf93c6183))


### Bug Fixes

* add circles ([d144c81](https://github.com/sho-87/kanagawa-paper.nvim/commit/d144c81f3428de1941f5f67247da887014393634))
* add more consistency to member and property colors ([5e28672](https://github.com/sho-87/kanagawa-paper.nvim/commit/5e2867285a6614ada73200d6d5bb594662efc61f))
* add transparency to NC windows ([b300277](https://github.com/sho-87/kanagawa-paper.nvim/commit/b300277a077c7f97b041f82b5ea59f9cc8a95983))
* adjust default theme colors ([f877d58](https://github.com/sho-87/kanagawa-paper.nvim/commit/f877d58ba4f9413953d7ec62929abbbaa4f79acd))
* **annotations:** fix background option annotation ([a7db9f1](https://github.com/sho-87/kanagawa-paper.nvim/commit/a7db9f1794635332f2e74e85f0403953fc567efb))
* **background:** fix checking for explicit bg option ([c387dd7](https://github.com/sho-87/kanagawa-paper.nvim/commit/c387dd78834fcd821cf85e57720be2ce6da1e815))
* better colours for search highlights ([e65f728](https://github.com/sho-87/kanagawa-paper.nvim/commit/e65f728ecacae0a17f1fb55ef7ad2f3240ea3513))
* bold buffer numbers ([9720afb](https://github.com/sho-87/kanagawa-paper.nvim/commit/9720afbf6ca60c65051d0fc81ee974b86096c1be))
* bufferline buffer separators ([48b1ec2](https://github.com/sho-87/kanagawa-paper.nvim/commit/48b1ec21c5edfb99322f7dde18825f718eec219c))
* colorcolumn highlight ([07a540b](https://github.com/sho-87/kanagawa-paper.nvim/commit/07a540be01ecc91152bdbfe4785f1a02532e390d))
* **command:** call load directly ([246ac28](https://github.com/sho-87/kanagawa-paper.nvim/commit/246ac283e9cc90fa49bd4736144c1977ac0a9ee6))
* **compile-command:** trigger ColorScheme autocmd on compilation ([ef1882b](https://github.com/sho-87/kanagawa-paper.nvim/commit/ef1882b21c84b4ccb1bd55cad7a38b7362ef2d18))
* **compile:** also compile terminal colors ([10527da](https://github.com/sho-87/kanagawa-paper.nvim/commit/10527dafc57c412a75a13d45325bc1ec6d5d0970))
* **compile:** compile to own directory ([bd157a1](https://github.com/sho-87/kanagawa-paper.nvim/commit/bd157a17172b21f4292405e33583b32569962584))
* **completion-menu:** remove foreground from PmenuSel (better integration with cmp) ([c75b980](https://github.com/sho-87/kanagawa-paper.nvim/commit/c75b980bdd4ce97421071d81292f24ccdb39af6d))
* **config:** fix wrong error thrown if `theme` is set ([d12d8fd](https://github.com/sho-87/kanagawa-paper.nvim/commit/d12d8fd5202ea69ec4e80b387439a59ae042e921))
* **config:** remove unused option ([3b40289](https://github.com/sho-87/kanagawa-paper.nvim/commit/3b4028972651a156fa5b1c5daf608ba25c7e8aad))
* **dapui:** use explicit colors instead of links ([fb733c1](https://github.com/sho-87/kanagawa-paper.nvim/commit/fb733c1043a462155b52cd97efd920f1dd72d33a))
* **extras:** fix bg of dragon kitty theme ([bd27c98](https://github.com/sho-87/kanagawa-paper.nvim/commit/bd27c9835dad727f77c80f5c035f3b297b4f1e6a))
* **extras:** revert broken suckless extension ([002b624](https://github.com/sho-87/kanagawa-paper.nvim/commit/002b624d77b0a2f82005a82976a50cde637f8ad1))
* fallback to global config ([2b65679](https://github.com/sho-87/kanagawa-paper.nvim/commit/2b656796170fbf6f8be8f0c94a02f4145c1eef0f))
* fix border colours ([8ee750a](https://github.com/sho-87/kanagawa-paper.nvim/commit/8ee750a5201e1ca5db288ad12ace299dfb7f0535))
* fix bufferline close button transparency ([3848c69](https://github.com/sho-87/kanagawa-paper.nvim/commit/3848c69016af4cdb9b48b4444b67ae1c43bd14d0))
* fix bufferline tab background ([443d312](https://github.com/sho-87/kanagawa-paper.nvim/commit/443d31250e7541b40c3f1f1cbef621715d835ab9))
* fix msgarea background ([b502c37](https://github.com/sho-87/kanagawa-paper.nvim/commit/b502c3795322d5b550046ec3cdb51059d4f482f1))
* fix neotree transparency ([9218970](https://github.com/sho-87/kanagawa-paper.nvim/commit/921897017525b77e7d89a30f930860ff173ce7ab))
* fix pmenu bg color ([4dad8ed](https://github.com/sho-87/kanagawa-paper.nvim/commit/4dad8ed80d784c73ecf5b81073b196ee504d14ab))
* fix zsh ft groups ([77ec54a](https://github.com/sho-87/kanagawa-paper.nvim/commit/77ec54a2c6039a140b413a429c9b72bb1171b65b))
* flip colours ([e5f1946](https://github.com/sho-87/kanagawa-paper.nvim/commit/e5f1946dd3e07ea53e9a1951b96902c8b283bf5d))
* get bufferline transparency working properly ([43e3cf3](https://github.com/sho-87/kanagawa-paper.nvim/commit/43e3cf3d4dd0dd2d4dd639fb3fced4b54c2328e4))
* **highlights-plugins:** fix some CmpItemKind* referencing old TS highlights ([48c5517](https://github.com/sho-87/kanagawa-paper.nvim/commit/48c5517c6e5854e9fad1b9359512996cabbfe481))
* **highlights:** fix  nvimtree bg ([4357138](https://github.com/sho-87/kanagawa-paper.nvim/commit/43571385fbe0b2006c1a2d7b5172154a822fa6b3))
* **hlgroups:** fix [#14](https://github.com/sho-87/kanagawa-paper.nvim/issues/14) wrong color name reference ([48edfc7](https://github.com/sho-87/kanagawa-paper.nvim/commit/48edfc76cdeb6499d78ed4736eda19c5fb69c1ea))
* **hlgroups:** fix sign/foldcolumn transparency [#16](https://github.com/sho-87/kanagawa-paper.nvim/issues/16) ([fe85fe2](https://github.com/sho-87/kanagawa-paper.nvim/commit/fe85fe2456482ae902acac565c1b19937ef4d227))
* **hlgroups:** link NvimTreeNormal{,NC} to Normal{,NC} ([4b454c1](https://github.com/sho-87/kanagawa-paper.nvim/commit/4b454c1d261ee1ba89d60d3ab87c4ccd4e1714fe))
* **hlgroups:** remove occurrences of color palette names ([6852365](https://github.com/sho-87/kanagawa-paper.nvim/commit/68523659235d49ab407a33eb3539783ea1b1a2bf))
* **hlgroups:** remove useless bg; fix [#16](https://github.com/sho-87/kanagawa-paper.nvim/issues/16) ([e8a67ee](https://github.com/sho-87/kanagawa-paper.nvim/commit/e8a67ee2476f5d63c407eb957609e35881e0130f))
* **hlgroups:** set TSVariable fg to none ([6bc6740](https://github.com/sho-87/kanagawa-paper.nvim/commit/6bc6740d62176bbc23be49484b909ab6f899a429))
* **hlgroups:** symbol ([01e88f9](https://github.com/sho-87/kanagawa-paper.nvim/commit/01e88f9e8af12c9bca069b12b66f17435b7fd099))
* **hlgroups:** tag attribute color ([131e665](https://github.com/sho-87/kanagawa-paper.nvim/commit/131e6652390ad649d13470ec488e6ec89f577ec5))
* **hlgroups:** use vim.tbl_extend to apply config styles ([e5d940f](https://github.com/sho-87/kanagawa-paper.nvim/commit/e5d940f68872b829489b88fcd201694703c75d79)), closes [#50](https://github.com/sho-87/kanagawa-paper.nvim/issues/50)
* **hsluvcolor:** guard against 'NONE' colors ([8e9ef29](https://github.com/sho-87/kanagawa-paper.nvim/commit/8e9ef295bf4116573887e9681ec06baa1550d1bc))
* improve bufferline clarity ([3f9d612](https://github.com/sho-87/kanagawa-paper.nvim/commit/3f9d612b6c9724f76059f94668d50a7c35506c93))
* improve kitty tab contrast ([b17eeb2](https://github.com/sho-87/kanagawa-paper.nvim/commit/b17eeb214febe2b7f5776da3f6de078529dfdaa4))
* improve text readability of selected regions ([5547588](https://github.com/sho-87/kanagawa-paper.nvim/commit/5547588b6482095d095b965cbca512cb7dfc9420))
* increase contrast of inactive lualine components ([416a7f8](https://github.com/sho-87/kanagawa-paper.nvim/commit/416a7f8e3790193c76be0aee67133986c5703ecc))
* **lsp:** extend typemod.function.readonly to all languages; fix [#144](https://github.com/sho-87/kanagawa-paper.nvim/issues/144) ([963824e](https://github.com/sho-87/kanagawa-paper.nvim/commit/963824e979f33bf2b39838d9ea7a59467d34ec9b))
* **lsp:** remove lsp.type.comment hl ([09a050b](https://github.com/sho-87/kanagawa-paper.nvim/commit/09a050be9b2eaec71bd1abf593343d2f8895b27f))
* **lualine:** fix lualine integration ([1789033](https://github.com/sho-87/kanagawa-paper.nvim/commit/1789033803c32464c3eaf8c062f2d65ea236aa1d))
* **lualine:** fix lualine integration ([5173878](https://github.com/sho-87/kanagawa-paper.nvim/commit/5173878eb6bea1bc50f01e143fc08db3c022cf6a))
* **lualine:** Shall it be boatYellow2; fix [#125](https://github.com/sho-87/kanagawa-paper.nvim/issues/125) ([d8800c3](https://github.com/sho-87/kanagawa-paper.nvim/commit/d8800c36a7f3bcec953288926b00381c028ed97f))
* **lualine:** visual used to be violet; fix [#105](https://github.com/sho-87/kanagawa-paper.nvim/issues/105) ([ebc6013](https://github.com/sho-87/kanagawa-paper.nvim/commit/ebc6013af68f70b5999727d1a2e4395b29ea4735))
* make float borders transparent ([761e718](https://github.com/sho-87/kanagawa-paper.nvim/commit/761e71859f6ddc6dc061ff1d56c8faf1f4f2a81c))
* make line numbers brighter ([b15467f](https://github.com/sho-87/kanagawa-paper.nvim/commit/b15467f8f0643bbd74ba0defbccac7d85fa6386a))
* make selection colors fit the theme a bit better ([a3a3021](https://github.com/sho-87/kanagawa-paper.nvim/commit/a3a3021c144108d61f773f835c23f51a2d010c21))
* make separator bg transparent ([ee98ba2](https://github.com/sho-87/kanagawa-paper.nvim/commit/ee98ba2682dae563d8b4d818499f67ea33c815b0))
* make tabs and buffers easier to identify ([832c50f](https://github.com/sho-87/kanagawa-paper.nvim/commit/832c50f61bef540f71cb76dff88127ed6fabc0ab))
* make theme return a new table ([4a3b95c](https://github.com/sho-87/kanagawa-paper.nvim/commit/4a3b95c92e2afc3b818141b19bb3cb32d0b90076))
* make variable types in completion popup more readable ([15cb02f](https://github.com/sho-87/kanagawa-paper.nvim/commit/15cb02f3d889b0296efc294ef2be6b2f6753bd7f))
* **methods:** remove specialized method theme color ([207ebd2](https://github.com/sho-87/kanagawa-paper.nvim/commit/207ebd2c0ef953b559b5084e08b1d67bfec0da4e))
* more readable lsp mini title color ([2f8f91b](https://github.com/sho-87/kanagawa-paper.nvim/commit/2f8f91b53a69138e619cde4ecefc176cfbe44d89))
* **Normal:** set Normal hl using vim.cmd; fix [#52](https://github.com/sho-87/kanagawa-paper.nvim/issues/52) ([c0d318c](https://github.com/sho-87/kanagawa-paper.nvim/commit/c0d318c3c205e3d2e0dbe67dcd08106ebb1d0452))
* **nvimtree:** link NvimTreeNormal to Normal; fix [#103](https://github.com/sho-87/kanagawa-paper.nvim/issues/103) ([6b5df41](https://github.com/sho-87/kanagawa-paper.nvim/commit/6b5df4199b50e8324fe3141e98212bcfd99d09c6))
* **plugins:** add missing neogit highlights; fix [#139](https://github.com/sho-87/kanagawa-paper.nvim/issues/139) ([172d858](https://github.com/sho-87/kanagawa-paper.nvim/commit/172d858162c4fdeca9cb2cab56eb4b8237af5df1))
* **plugins:** NeoTreeRootName remove italic ([9d9733c](https://github.com/sho-87/kanagawa-paper.nvim/commit/9d9733ca8ec0c7f413df80fd7f55e802a9c2f8d7))
* **presets:** fix telescope preset ([fde88c7](https://github.com/sho-87/kanagawa-paper.nvim/commit/fde88c7a86d2724276be35c4366722c773e9ba08))
* **readme:** add FloatTitle to transparent floats example ([3c87bfa](https://github.com/sho-87/kanagawa-paper.nvim/commit/3c87bfacd5f51033bbeeb04f837c88f94861f6af))
* **readme:** fix typo ([d0d7ada](https://github.com/sho-87/kanagawa-paper.nvim/commit/d0d7adac9835be022d4387199ebba4a27dbd9a9f))
* remove lsp highlight color ([361f75f](https://github.com/sho-87/kanagawa-paper.nvim/commit/361f75f674348b04fbb976e6ce5da38ea6b33599))
* revert color for satellite bar bg ([68f8194](https://github.com/sho-87/kanagawa-paper.nvim/commit/68f81940300f2350fca19a968270af68e2e5cb91))
* terraform quotes ([9de2520](https://github.com/sho-87/kanagawa-paper.nvim/commit/9de252075f26797ef859ef02697bb723ba5d4713))
* **themes:** fix theme names in colors.vim ([4834f7c](https://github.com/sho-87/kanagawa-paper.nvim/commit/4834f7cf1063ce894c92c3c5db3d82f01f0d2db4))
* this tab separator is really annoying ([782c442](https://github.com/sho-87/kanagawa-paper.nvim/commit/782c44224accefd62a36ce0dfbfb3fd36aaaad9b))
* **tree-sitter:** update descriptions, add markup.link (fix [#225](https://github.com/sho-87/kanagawa-paper.nvim/issues/225)) ([8ed74ad](https://github.com/sho-87/kanagawa-paper.nvim/commit/8ed74ada47d3138385c1a3df2b257c9a1f6182d0))
* **ts:** link [@text](https://github.com/text).literal to String ([6f692e3](https://github.com/sho-87/kanagawa-paper.nvim/commit/6f692e38ef2852ac146124ff9bcd28b8d8c1b1de))
* **TS:** text.diff.{add,delete} use vcs added/removed instead of diff hl ([52ec9e6](https://github.com/sho-87/kanagawa-paper.nvim/commit/52ec9e690735f541b7b4d635605e0c0b1e045750))
* **TSVariable:** explicitly assing fg color ([a6db779](https://github.com/sho-87/kanagawa-paper.nvim/commit/a6db77965a27ca893ea693d69cc3c152c000a627))
* **TSVariable:** link TSVariable to Normal instead of clearing ([0673176](https://github.com/sho-87/kanagawa-paper.nvim/commit/067317613192a7a4f1b3455e5b69438ee504c013))
* update lualine extension for new way to get colors ([0bea8e6](https://github.com/sho-87/kanagawa-paper.nvim/commit/0bea8e6d526d63b215ab51f68797ac835dcb01af))
* use EmmyLua-style code annotations ([ed17aed](https://github.com/sho-87/kanagawa-paper.nvim/commit/ed17aed00a54d137e93674ffccb565012d6111d3))
* use regular fg text color for dimmed windows ([567f282](https://github.com/sho-87/kanagawa-paper.nvim/commit/567f282e70ca3e225f0bff82372f58d5818f94ce))


### Performance Improvements

* don't require color module where it is not needed ([aa66e79](https://github.com/sho-87/kanagawa-paper.nvim/commit/aa66e795bf01afd13d23d3a8ec746631951bfc85))
* **hlgroups:** improve borders background. ([95462e9](https://github.com/sho-87/kanagawa-paper.nvim/commit/95462e91b82542a3d602bec5a2a54a35abe29728))
* **treesitter:** better hl color for [@string](https://github.com/string).special.url ([8c60549](https://github.com/sho-87/kanagawa-paper.nvim/commit/8c60549b8588e7dc7e9084f836b0471735d10bf6))


### Reverts

* remove presets ([d3de16c](https://github.com/sho-87/kanagawa-paper.nvim/commit/d3de16cba3be97ac4598f5030220adfa6120bf6f))


### Miscellaneous Chores

* **config:** remove check_config logic, but keep it for the future ([5ff1359](https://github.com/sho-87/kanagawa-paper.nvim/commit/5ff1359ea1fa6aa30eedb2db75900b30378a3c17))


### Code Refactoring

* add theme support, rework setup routine ([7c64f63](https://github.com/sho-87/kanagawa-paper.nvim/commit/7c64f63b4fb33c20a3f851097bfeb13093149de4))
* **overhaul:** WIP deep refactor of theme colors ([ff3ce26](https://github.com/sho-87/kanagawa-paper.nvim/commit/ff3ce261c0ca4bd478f6a22d7589de52651f78cc))
* rework color table and setup function ([d1d785c](https://github.com/sho-87/kanagawa-paper.nvim/commit/d1d785c0a71f28f8f535c090f6bb22618f69dd4f))
* **theme:** theme -&gt; background; add theme option to be used when bg is not specified ([a2be0b1](https://github.com/sho-87/kanagawa-paper.nvim/commit/a2be0b1caa87250d317652fb16614dafa64e870c))
* use nvim_set_hl ([dc51a23](https://github.com/sho-87/kanagawa-paper.nvim/commit/dc51a2385068083f324b28649cb41c5a7290dfa2))

## [1.4.0](https://github.com/sho-87/kanagawa-paper.nvim/compare/v1.3.1...v1.4.0) (2024-07-14)

### Features

- add hl for new which key preset ([367be8f](https://github.com/sho-87/kanagawa-paper.nvim/commit/367be8f2d08ee00c5603cdc3f6e24beb2999bd85))
- add hl for which key default icon ([2457ccf](https://github.com/sho-87/kanagawa-paper.nvim/commit/2457ccfa4671a8a5c9136a62f8ec4206248c05d5))

### Bug Fixes

- bold buffer numbers ([9720afb](https://github.com/sho-87/kanagawa-paper.nvim/commit/9720afbf6ca60c65051d0fc81ee974b86096c1be))
