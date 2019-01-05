-- This file generated from dummyUsersAndTokens.csv with UserGenerator.scala

with row as (
  insert into enduser (username, isAdmin) values ('arampley0', false) returning id
)
insert into token (content, tokensource, userid, username)
select '14e4675b61dea08254fff4cffcacae54e35f58f3649c67751625fd6b15d44087', 'dockstore', id, 'arampley0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nhawton1', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fa122b9076293dd0b997b56479164eaed1cd8e20d8a8d69d4ed0cc157185418c', 'dockstore', id, 'nhawton1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sscudders2', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ad5ac80cc53380da31f8fb0b54f5ba70adf1b0047b8a2c5d50e5dd2547947eb2', 'dockstore', id, 'sscudders2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rwestman3', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c54aff6fbc79a21bd672cc731bcb501d4a9db2435ecd7695438d5d8fcb0d0e27', 'dockstore', id, 'rwestman3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nfarrah4', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bcfe33ca1430ef278b614bd729de2c556fee21ea73ec034c5eb0ce1733c950e2', 'dockstore', id, 'nfarrah4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('oschrei5', false) returning id
)
insert into token (content, tokensource, userid, username)
select '298ca8dbc2152175e506400130b90e9622e8d105bcfee7c27d23076d0dfde8a8', 'dockstore', id, 'oschrei5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ypierton6', false) returning id
)
insert into token (content, tokensource, userid, username)
select '26024316a834050464bbf65dfa2d1924de5447db26a17fc2203696810dcac035', 'dockstore', id, 'ypierton6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cbrook7', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2e340ec7f06cd175300e1618360c8316b7b295af8ceb6a81c1f899def77ba69f', 'dockstore', id, 'cbrook7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gbenson8', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5ed0a2e62465185a7762d452c1da4f0a85c1f40efd948f918c246be723b6bcc3', 'dockstore', id, 'gbenson8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gmacgebenay9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '32bb5238624e0a2b6be9bd12b439088b1264fc917a3febfe7f0e1b25eed0fef0', 'dockstore', id, 'gmacgebenay9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sswaffera', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0d62eda71714788d00ca872aa3c236db1d510dabc758e059355689976eb8a998', 'dockstore', id, 'sswaffera' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rmccurleyb', false) returning id
)
insert into token (content, tokensource, userid, username)
select '05579ed68340e0bd4bba82d6636849c052e946afb8179e72e497f7d6608862ab', 'dockstore', id, 'rmccurleyb' from row;

with row as (
  insert into enduser (username, isAdmin) values ('htrusslerc', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6c970bae977f130d9eec1a69948d1e16306e0bfaa8a10f3ade857068f9d657de', 'dockstore', id, 'htrusslerc' from row;

with row as (
  insert into enduser (username, isAdmin) values ('larkleyd', false) returning id
)
insert into token (content, tokensource, userid, username)
select '50d72321f5986b45f0deb75aee6352fbd9ebabea1b163edd3cf0af62d839b786', 'dockstore', id, 'larkleyd' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kpetrovykhe', false) returning id
)
insert into token (content, tokensource, userid, username)
select '843bef135a731f5fd0dccba029f3c905344ca0a5c915c1693b716916eb8e3b4c', 'dockstore', id, 'kpetrovykhe' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cbillesf', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bfd7f735240ce15788823dc28256af555227cd8004d9593e7a8896b101fa3a00', 'dockstore', id, 'cbillesf' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mwheelbandg', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fb14c452fcfb182a2673cfda2fd3297ed35b2aefffa86803a26b30f168f78c72', 'dockstore', id, 'mwheelbandg' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rbedellsh', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0c7e16fb124ecfa2f96654f4b68c1c2fa4eecb320a36e6649cea9b62eb3f7495', 'dockstore', id, 'rbedellsh' from row;

with row as (
  insert into enduser (username, isAdmin) values ('acollcotti', false) returning id
)
insert into token (content, tokensource, userid, username)
select '95902349c860e9498d7465e6af923c4a7c059a025da4bc24f075a75151354bf0', 'dockstore', id, 'acollcotti' from row;

with row as (
  insert into enduser (username, isAdmin) values ('eshuterj', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1fa3f5d04448d047236ef102959e8fa4594246ca41b310079ad87fa06825d048', 'dockstore', id, 'eshuterj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('forrahk', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0744e1c6b8e9ee85409708f79c6232f5141cef85bf7d4d5fed40e97ca384aed1', 'dockstore', id, 'forrahk' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tmonahanl', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bc1475b1bb2f23126674d50c0fc91a005cc44e944934471d43b248aed4960a1b', 'dockstore', id, 'tmonahanl' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cclashm', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b7f35a2666d14e28503edd35b0e601dedc95f923b8baec71dbbd1ab9fbdbf197', 'dockstore', id, 'cclashm' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gflaundersn', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5451531caeaec920635fa903c92ff679bfde66887ef9d84c4f959ea4cb64abd4', 'dockstore', id, 'gflaundersn' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gwinscumo', false) returning id
)
insert into token (content, tokensource, userid, username)
select '702cc3564a78f3d89bce4d27e9789d9a3489d74e4ebf93e0b40dda76e86d1279', 'dockstore', id, 'gwinscumo' from row;

with row as (
  insert into enduser (username, isAdmin) values ('smitchelhillp', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1b18799107632f4f128e3733b70e8d81674ad047a946f958c2e684a60d97c4cf', 'dockstore', id, 'smitchelhillp' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mteagueq', false) returning id
)
insert into token (content, tokensource, userid, username)
select '11c5478f5644d08bf88eaea7f91ba7821f56a6322c593e0946e63e18249c139b', 'dockstore', id, 'mteagueq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('amarshfieldr', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0d0943f2291b3ecce32f86cff738bbcfddfe4e835f777297dfd4a83652825894', 'dockstore', id, 'amarshfieldr' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hquinnettes', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bcea61d075609af14c29f726645a6fafbc7f6e19e619e688f8d4ad8e0a9c02e4', 'dockstore', id, 'hquinnettes' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bspillardt', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1ff4487d31e38d1ff1d1b823ac08ab57968af411525653098b229e0fa4ce81cc', 'dockstore', id, 'bspillardt' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jzumbuschu', false) returning id
)
insert into token (content, tokensource, userid, username)
select '44fbc0ea378ed5bf2cd8a76ee1548c9b5d9fd838e8caa9adaa64fb1b94ef57fc', 'dockstore', id, 'jzumbuschu' from row;

with row as (
  insert into enduser (username, isAdmin) values ('friggv', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'dc66aa2beb6748e49eb8dc7bd85a0137113e1344a9a69cd007ab7b7b8267d9ac', 'dockstore', id, 'friggv' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wskocroftw', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f2047e857759d351f8327f937016679f13cda6411196c651d55c61a2b41ae175', 'dockstore', id, 'wskocroftw' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gduseyx', false) returning id
)
insert into token (content, tokensource, userid, username)
select '31c152e5afccd58623a36ac572c95be8fb91c83262cab4449033c89b735c6918', 'dockstore', id, 'gduseyx' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lwillattsy', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6c02e97a545494275b07faa821a571edff07effc0df0a65d3c64d85a8cac52f6', 'dockstore', id, 'lwillattsy' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wgiacopelloz', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f5d451aa145f61ec7e7f1df3a614743d08010d5def0bcf6d4af42f73e9a33d76', 'dockstore', id, 'wgiacopelloz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sfery10', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4410bc30e84e6024417c08269546667be7404beb5409fdb7ab191a6d8dc4e46e', 'dockstore', id, 'sfery10' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nprettyjohn11', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e7ec19a15afc73954259981bb866c1728b0a7fef7db98aee794273137a5fd7aa', 'dockstore', id, 'nprettyjohn11' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cpetrillo12', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'acded5298bf03bd0edfdbccb00fefa2e5c8a850a2b06cca5a5c97f0e557b55e1', 'dockstore', id, 'cpetrillo12' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mwildber13', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4afa61c8d79679142ab34925d814f1cace3022a7b4132fea15349f69a7c72295', 'dockstore', id, 'mwildber13' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mmcbrier14', false) returning id
)
insert into token (content, tokensource, userid, username)
select '54299a6eb498f4a685324e18d6ef3b3a1d5e3a9531fc66f2f7ebdd9e0b8e1e30', 'dockstore', id, 'mmcbrier14' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lclearie15', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2a7022c25ffc48eb9369e18d5eb8f9dd4db9daf3059e449bb46f28881f918d34', 'dockstore', id, 'lclearie15' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cwhetson16', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1fefaec812370dc516b2c898861b18151b747c5776768070a43b67ec3a080cca', 'dockstore', id, 'cwhetson16' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dvelasquez17', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a863217c7ddc3f6b08bcc9531259674d01da8e64fadfb7bb41e5a924501d3020', 'dockstore', id, 'dvelasquez17' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fstruss18', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f08a36a262714c5a6f2b7698e3d666c4816cec5f8a0766234b52893268681f06', 'dockstore', id, 'fstruss18' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ahyland19', false) returning id
)
insert into token (content, tokensource, userid, username)
select '455800f0f342ab20e456f97082f47f77ccf9eb5d6ea6aabc8fd3593f8ccce52d', 'dockstore', id, 'ahyland19' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bkalaher1a', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9ee15bce80dfa5678ef4ef960d34dc9d5576132a079dbf10596ec8fda2562e26', 'dockstore', id, 'bkalaher1a' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fforshaw1b', false) returning id
)
insert into token (content, tokensource, userid, username)
select '54ab924c3291e1e16e0e803c1a0280aeaf3eb3f40dbfdabedc6e7b3bba7b38a0', 'dockstore', id, 'fforshaw1b' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hbattison1c', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4004ce70ca386f79b380ed20ae368e9cd54404bff13e87eed0130574f6de0b06', 'dockstore', id, 'hbattison1c' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gtoal1d', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f27758bc6201bcd3b4fd755f7172cba4ef5679a387d8aa11b44fb435ebbecc98', 'dockstore', id, 'gtoal1d' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rgalliver1e', false) returning id
)
insert into token (content, tokensource, userid, username)
select '57f703d8be3d97606b596dfd7189cf25e8ee6361cb908a78c7108f7602788e21', 'dockstore', id, 'rgalliver1e' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dberrington1f', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5aaa352cb540290b094cd42fc7ddc38992d6731e19e21f8a719fad2d0cc5f1b8', 'dockstore', id, 'dberrington1f' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rkew1g', false) returning id
)
insert into token (content, tokensource, userid, username)
select '02710218301c98540de2e7a3ad0c1252723d9c6a69420d953cfad3c2c468a01e', 'dockstore', id, 'rkew1g' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gmourant1h', false) returning id
)
insert into token (content, tokensource, userid, username)
select '19c94ffe77629dd69afe642df2ec5e427d3950b3018ed141844fe54c77391c39', 'dockstore', id, 'gmourant1h' from row;

with row as (
  insert into enduser (username, isAdmin) values ('amartin1i', false) returning id
)
insert into token (content, tokensource, userid, username)
select '45f4dfa2356b8deb52c57657ed2e88967b7194e984f76018ba248aea74557a64', 'dockstore', id, 'amartin1i' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sbeddie1j', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6b61b23d92f73d9f5cae9404495ed0c5a6a0a6f3451b9b8d4e2b0822fc4e0b98', 'dockstore', id, 'sbeddie1j' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cmitchley1k', false) returning id
)
insert into token (content, tokensource, userid, username)
select '99b6801e44dddc7b271169028c2decd5ac7c075a0dc0943ff99520e54ed1917c', 'dockstore', id, 'cmitchley1k' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bmorena1l', false) returning id
)
insert into token (content, tokensource, userid, username)
select '470a28dd9083d1cbee7b357f203a1f5f23dfbe9c28d8f161edc906d0fe2e1013', 'dockstore', id, 'bmorena1l' from row;

with row as (
  insert into enduser (username, isAdmin) values ('llie1m', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7afbdd7c0a1f0f83ad9c5d1a2c9c055f727369631dc4f60cd31e48355226f04a', 'dockstore', id, 'llie1m' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hwinmill1n', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fcbfb37f2708708501d261d628e3cff7677ad2f6f22b489567288d3417b27137', 'dockstore', id, 'hwinmill1n' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sdumblton1o', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd66bb24e383d010083a2175d3713a3f817a47b7fb69c9589d67a2653c35c3ad3', 'dockstore', id, 'sdumblton1o' from row;

with row as (
  insert into enduser (username, isAdmin) values ('corr1p', false) returning id
)
insert into token (content, tokensource, userid, username)
select '92a6be5ca2515372572759bc8efdaea640977500e57ea038a30348ab26131d47', 'dockstore', id, 'corr1p' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wsilburn1q', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a9c8ea031545c05b112b8039a459ad52d812081e61f3667db2d37da1521f4ddc', 'dockstore', id, 'wsilburn1q' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ibembridge1r', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a3a5ce9510457e4232f0a99b102e08e46f62039e3959d0407c44d13948a23dd0', 'dockstore', id, 'ibembridge1r' from row;

with row as (
  insert into enduser (username, isAdmin) values ('keiler1s', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2f437f34d43c42fa29d9c6bdb492fd36eb27d31925da83859e8983215d247039', 'dockstore', id, 'keiler1s' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fwhitwell1t', false) returning id
)
insert into token (content, tokensource, userid, username)
select '98aed5a8fa80eb678bba0c396cb4b167ec048e6fc1b302b879dda89d05469377', 'dockstore', id, 'fwhitwell1t' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ibromilow1u', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bff65a30564e4d11a3f6621c166a16ebcf1994924b1207ebf3bbc80e2103bea5', 'dockstore', id, 'ibromilow1u' from row;

with row as (
  insert into enduser (username, isAdmin) values ('spervew1v', false) returning id
)
insert into token (content, tokensource, userid, username)
select '251ac49d989a9661178bb8a9221f6f24d05ba7e67a95a4b731866e3e3cf638d2', 'dockstore', id, 'spervew1v' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ejeandeau1w', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd67b8e64d61f8109acc8ed21e13614aac17418810a5a2e03aadcd9073f0889de', 'dockstore', id, 'ejeandeau1w' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kring1x', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e17c30d5359516747f28f716932cb9d1b8e9d122a2326f6a5446a17eef7c43fd', 'dockstore', id, 'kring1x' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rcicetti1y', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a5bd375f51f86ac0685d92c7e95ebfff19557ba420ffa0a6ad2f5e7cebdee4df', 'dockstore', id, 'rcicetti1y' from row;

with row as (
  insert into enduser (username, isAdmin) values ('skleszinski1z', false) returning id
)
insert into token (content, tokensource, userid, username)
select '95fe37d2b70eccda936028b0616dae781a277b65072e57be24e6a99d14f57123', 'dockstore', id, 'skleszinski1z' from row;

with row as (
  insert into enduser (username, isAdmin) values ('alabusch20', false) returning id
)
insert into token (content, tokensource, userid, username)
select '277eb2fe89c6d3a7253e6ffbbc3fa57d455f767d15a7a3274d9ff47584e0aaa2', 'dockstore', id, 'alabusch20' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kmeininger21', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f2f9e1a83cbd2898b3666e99555d11080a66dafbbda6c54768f43e66bafbeb7c', 'dockstore', id, 'kmeininger21' from row;

with row as (
  insert into enduser (username, isAdmin) values ('thayley22', false) returning id
)
insert into token (content, tokensource, userid, username)
select '64d6cf5dface2f5066dc81c45ab57164c12a16d50728e2bbfc37d664eeb646b1', 'dockstore', id, 'thayley22' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ggearty23', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'abced315498311d1d9c23e86c0a01688141edd8eb360c12aca314910935d01a1', 'dockstore', id, 'ggearty23' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fmeakin24', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1c5ce1be7c3e4babcd7797d51d36dd54fc89a0ae065eb0625d7478e032444e8f', 'dockstore', id, 'fmeakin24' from row;

with row as (
  insert into enduser (username, isAdmin) values ('blant25', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e89e60a161304cc23afb2fb94f9d850e447389d962499b5f395b917ce589363a', 'dockstore', id, 'blant25' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pbrotherwood26', false) returning id
)
insert into token (content, tokensource, userid, username)
select '603550fb2a4e25b26b447b8fa80e1d28bc27bc2d1c14d9dbe1c844ffe81bb49c', 'dockstore', id, 'pbrotherwood26' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hsouthon27', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd379a2e18530c35579c682c2551cee25d5bf046d8604564150a6cae9bc7aa7eb', 'dockstore', id, 'hsouthon27' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cgoodlett28', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6e986d80dd69affd76d9ea2c48adcc14d7c338958d86d2d17ed68879c0eb2196', 'dockstore', id, 'cgoodlett28' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hstutte29', false) returning id
)
insert into token (content, tokensource, userid, username)
select '31aaa956236c33575c45e65570241b60409219f3d62da5d0249f577c1e03bad6', 'dockstore', id, 'hstutte29' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nemmanueli2a', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0c58fea044727788ff85908580219562bd100bd8572b0319df41ea91083a8c2f', 'dockstore', id, 'nemmanueli2a' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jgreder2b', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3de6d531939fe4a46aa6f34f9f23e83f434aebc2b7e61845d0e5f5d14e307973', 'dockstore', id, 'jgreder2b' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dphizaclea2c', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'daef882b93deeb6dccd30f78297287404bb12a0cb8d4fcbece0c84df5b0831ab', 'dockstore', id, 'dphizaclea2c' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mskala2d', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9bae58444f7afb591ca51e26bf20caad9f928411c83865d6fda8a6ab2e731866', 'dockstore', id, 'mskala2d' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jbrake2e', false) returning id
)
insert into token (content, tokensource, userid, username)
select '66fe55702a4140059325acfd78782d999ccf4a65bf91ce2e182ece66d7fe8a02', 'dockstore', id, 'jbrake2e' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wdauber2f', false) returning id
)
insert into token (content, tokensource, userid, username)
select '428d89b2b02d5402097bb5ab8f15b883bd45d1093746d4d9a64c12a96d886a5b', 'dockstore', id, 'wdauber2f' from row;

with row as (
  insert into enduser (username, isAdmin) values ('eaitken2g', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8ce959a153b68c37754ea10f626b79c332987d7f027ba293f007a9b110ecde70', 'dockstore', id, 'eaitken2g' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rricciardello2h', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'dc4dc3ea83f69b9ad84abfd0b99d1a10699ef23d4a647299e0f318192cfbcb67', 'dockstore', id, 'rricciardello2h' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sbonson2i', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1dba28aaa9f83d8b9c10c2d4f6109d25c365c8ca9d935b7db3bba584aae62d97', 'dockstore', id, 'sbonson2i' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kfridlington2j', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b546d47a4474814ddb3bef4cb58c2dfd9d75291ff9fdef0a19fdf8625dea345d', 'dockstore', id, 'kfridlington2j' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ebayston2k', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'cad75481418482f14c485ce47b954f2085dad90b6dbac812e96b99da89be3ebb', 'dockstore', id, 'ebayston2k' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bcortese2l', false) returning id
)
insert into token (content, tokensource, userid, username)
select '76491908bf2ead3beebe4c10699a71beda0c9432745770a82dd39ffc8d71fd1c', 'dockstore', id, 'bcortese2l' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bchillcot2m', false) returning id
)
insert into token (content, tokensource, userid, username)
select '17318a322056df5ca0abfc6f6f8a9ed6077d3470291fec806d532ae6eadafe77', 'dockstore', id, 'bchillcot2m' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wjeynes2n', false) returning id
)
insert into token (content, tokensource, userid, username)
select '32cc73a851cd377f8b6ed6d01543e04bfa8701a012e16f4099f181d9bfd7f708', 'dockstore', id, 'wjeynes2n' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ghallows2o', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0a7da2afadf18bb05935e197c8222e43fe6cbc7e6c09c36c1c574939b334fbe0', 'dockstore', id, 'ghallows2o' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kgoodburn2p', false) returning id
)
insert into token (content, tokensource, userid, username)
select '25996fa492743d05a9e1cc22059a1efaeead65e7128006a8a2929c7cbf27dcd6', 'dockstore', id, 'kgoodburn2p' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wmatula2q', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c43daf66d119dbe25018254176e62304fb819cdda1a92489a298f45dd4c7dca0', 'dockstore', id, 'wmatula2q' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rreside2r', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ed5be3167ea19d3cf47a866f5e64f61ffc8bd21a4b5ba1131a0623d54f933a17', 'dockstore', id, 'rreside2r' from row;

with row as (
  insert into enduser (username, isAdmin) values ('akeys2s', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4a44ef54ea20c2e86a87bf08999460647777eee3f417ea70ef34caf8e8eb33f3', 'dockstore', id, 'akeys2s' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hleavens2t', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b5fde1d5fcf01462f2bed145b7c2ad3882057cf6a964db7f1a887835521c4654', 'dockstore', id, 'hleavens2t' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bmobley2u', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bf4b4abda2260f9d5b3f2992b4da7ad86515a920224057da12f184f9c0edf839', 'dockstore', id, 'bmobley2u' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gtrenaman2v', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1a42cf3387860d6091da67ed3a6e99f41bf93e24aadf74e3b30af153d4b99f37', 'dockstore', id, 'gtrenaman2v' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rswanne2w', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a3247af6462945b77452f3ae3214d9f02200f045553875b6eaa1b4b2b8f6028c', 'dockstore', id, 'rswanne2w' from row;

with row as (
  insert into enduser (username, isAdmin) values ('creignard2x', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b84d5d3560987ce8a277fbca852e03839d9602d5c5b238aaf75703b16a2321ee', 'dockstore', id, 'creignard2x' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mrablin2y', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5d44eec09ffd667daa78116e77e38673dc19e4cf0a8a8fdd2243132a5a9c4a36', 'dockstore', id, 'mrablin2y' from row;

with row as (
  insert into enduser (username, isAdmin) values ('edeluca2z', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fa4134400fb5487566e27e0ebd3496312d73f25101091ab1f036527ec1432cf4', 'dockstore', id, 'edeluca2z' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fpickston30', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3b811c3ac1dcf859109275b8cadf7093b112be8b4ddc171ed1d382bb8f8d596f', 'dockstore', id, 'fpickston30' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fcroxley31', false) returning id
)
insert into token (content, tokensource, userid, username)
select '15f2d9dca0a61423f21c915a934891e8a304c491c421ecab317535c0ba80f720', 'dockstore', id, 'fcroxley31' from row;

with row as (
  insert into enduser (username, isAdmin) values ('vdenziloe32', false) returning id
)
insert into token (content, tokensource, userid, username)
select '182011c401f67ddbf24d01fcd8fe97c3235516d9a0edaf29c93f7093eb9ac258', 'dockstore', id, 'vdenziloe32' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dromagosa33', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0d5bfaa8632b0d15cac65b1759a5a37a8f99069b0fcb4567442a4c6e04a4c033', 'dockstore', id, 'dromagosa33' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kquartermain34', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6c1488dbc033c7ab5b7a72b9f2db0b1b421687d37d6be2932838258f36f90631', 'dockstore', id, 'kquartermain34' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mpelerin35', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fd8684722a72a696128c8f55d3b62f7ec8c85e712877db878baed2fb97d26e4d', 'dockstore', id, 'mpelerin35' from row;

with row as (
  insert into enduser (username, isAdmin) values ('chulatt36', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5cb1d63f7e8c7f7de9e8ab4fcc8f3355d1d517175790aae9fc7884ed095f419e', 'dockstore', id, 'chulatt36' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jjenson37', false) returning id
)
insert into token (content, tokensource, userid, username)
select '852a87c1ab31ff0d0c7047fd81fb0d438da78fdc4380d8e11626f9a5229776d6', 'dockstore', id, 'jjenson37' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fgosalvez38', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a258f28bcb6d062f52d937069e929f808b67d5b0fd86d8295a96856fe0bd5e13', 'dockstore', id, 'fgosalvez38' from row;

with row as (
  insert into enduser (username, isAdmin) values ('htrudgian39', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6090aa2f315450e9b816c37388b3a2d1159d1e6c1f673b64cd170cbf4f1ba98b', 'dockstore', id, 'htrudgian39' from row;

with row as (
  insert into enduser (username, isAdmin) values ('smasedon3a', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c021e7fb1a9ba7cc6496c8bfcbc7f5f20495fa20e80b268e8773f44b675fabca', 'dockstore', id, 'smasedon3a' from row;

with row as (
  insert into enduser (username, isAdmin) values ('eivanenko3b', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4e5e733911a82258628b1a40433a4cce7fbf321024936afa19bfa39164e54d5b', 'dockstore', id, 'eivanenko3b' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jkulas3c', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f8c190a4ace8426382c505894e613cb24eacd381212e6d84dff021af325e93a0', 'dockstore', id, 'jkulas3c' from row;

with row as (
  insert into enduser (username, isAdmin) values ('aberni3d', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0d882a3b8d36a329ad43c40cc18c211ac5f7e17368b6408cbdd655d1e2d98bb8', 'dockstore', id, 'aberni3d' from row;

with row as (
  insert into enduser (username, isAdmin) values ('clonghurst3e', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7c1222aa4af1ec996dad04d20cdd2b4a279d183f8b3e9a4f1d75e28b509e27ec', 'dockstore', id, 'clonghurst3e' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jpickervance3f', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5a17ef7d951a73a216c86040bc65443519c585a46b4ec5d171229955b49c7c46', 'dockstore', id, 'jpickervance3f' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bblinman3g', false) returning id
)
insert into token (content, tokensource, userid, username)
select '21307a1abebb85056d90614eed028f99a6345dbe697f2f274a6e20cf691cddc7', 'dockstore', id, 'bblinman3g' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gtanfield3h', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8e07ad4c0a231cc74897f680155c66405d7a876734e1043b7d032af898fe7228', 'dockstore', id, 'gtanfield3h' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gcollerd3i', false) returning id
)
insert into token (content, tokensource, userid, username)
select '173dd0ad47f74d3878b443e8a4ed9b93d745984c03ea157fddb10fdbe199b1b8', 'dockstore', id, 'gcollerd3i' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lvarah3j', false) returning id
)
insert into token (content, tokensource, userid, username)
select '97912e7e268df230e7dbdff0c09475b295edc5dc55437c683bc0580b00b1bff3', 'dockstore', id, 'lvarah3j' from row;

with row as (
  insert into enduser (username, isAdmin) values ('smacauley3k', false) returning id
)
insert into token (content, tokensource, userid, username)
select '26387376480c2cee03f5a732d464a1a201455b46e0681f3e8b90d900ea843673', 'dockstore', id, 'smacauley3k' from row;

with row as (
  insert into enduser (username, isAdmin) values ('amara3l', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7da1f9d5b4054c9e97a24d4c51c767aac3813becb5f55d6b2d26c02ae66813e6', 'dockstore', id, 'amara3l' from row;

with row as (
  insert into enduser (username, isAdmin) values ('alevett3m', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ae321ec31e373c772d5f19c4ce2f5c3b5e5ea2901fd1365ba0e72cc87352cac2', 'dockstore', id, 'alevett3m' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gschruyer3n', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bbe2a39060f810135d59ae77314b8fcdb3348d70f2e51f5d42a21a9641cd1500', 'dockstore', id, 'gschruyer3n' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kkemmey3o', false) returning id
)
insert into token (content, tokensource, userid, username)
select '05bc92f8ecad52083070c652f1aa960af5bb541bbbf360a7531149f13ccd830c', 'dockstore', id, 'kkemmey3o' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mmaslin3p', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a5b4abea07ce9dfd35e8b941d6c9d87e2da1a6942d85ffc79fd7dbabf783b239', 'dockstore', id, 'mmaslin3p' from row;

with row as (
  insert into enduser (username, isAdmin) values ('balfonzo3q', false) returning id
)
insert into token (content, tokensource, userid, username)
select '06a3bdd376b17c0ff025074f2d0fd79dc7a731ddba13edcb75588ec6810a430b', 'dockstore', id, 'balfonzo3q' from row;

with row as (
  insert into enduser (username, isAdmin) values ('oshires3r', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3c90e97de6bb63b8d410d5bdfb2cc1ac89773792707fc986b92047127923646e', 'dockstore', id, 'oshires3r' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lbebb3s', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b1e8eb9671b4315f292acb573850cca7b37bd13da3642062289080ae3aa16461', 'dockstore', id, 'lbebb3s' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hpentycost3t', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'afec6f2f09b87fd59175a8bd1ca9483f17b74173ebe33587bb8d5276028bd8d3', 'dockstore', id, 'hpentycost3t' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ebartleman3u', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c5619ab9fb5ba03e2200c1206a4ddb9bcab917fe1e477a0f7de3e447183604d2', 'dockstore', id, 'ebartleman3u' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jkinsella3v', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b5b0c7c51043917870bea39eeae22b9773cc5d49ce2725a70b5fb6125a5697e6', 'dockstore', id, 'jkinsella3v' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gdingsdale3w', false) returning id
)
insert into token (content, tokensource, userid, username)
select '678ba110c98cd54d48a6e078e1a683732540c51c33a9d947efc2a189b6da6227', 'dockstore', id, 'gdingsdale3w' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ncicculi3x', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'da76aa7d29aec93013d240b9157b4636c7b8f8ceef0005d663e336a56599eefa', 'dockstore', id, 'ncicculi3x' from row;

with row as (
  insert into enduser (username, isAdmin) values ('eiscowitz3y', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6a16de012843fac05a1b2cbf0c532c22479b91dd03bc4fd2affb11481fa250b7', 'dockstore', id, 'eiscowitz3y' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gwinsor3z', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c7b78699b00dd12901a44934009b88109670ad363d5b129f7a273e5c154d6fc5', 'dockstore', id, 'gwinsor3z' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jlougheed40', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2026dcf81dacbf7942a8c7193c07aba431402ae6a4d1de22c50383e931d5c9cb', 'dockstore', id, 'jlougheed40' from row;

with row as (
  insert into enduser (username, isAdmin) values ('chalgarth41', false) returning id
)
insert into token (content, tokensource, userid, username)
select '30311e76e54e1a319135d9d4463d1b18f7b06503c78d442968c7e3ab3f366834', 'dockstore', id, 'chalgarth41' from row;

with row as (
  insert into enduser (username, isAdmin) values ('acalbrathe42', false) returning id
)
insert into token (content, tokensource, userid, username)
select '44aff7fb33ca25b40083031cf26d57337356f6ebb2abdb45c8e55f2639ce9d7a', 'dockstore', id, 'acalbrathe42' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ileitch43', false) returning id
)
insert into token (content, tokensource, userid, username)
select '72c2f37752ef4dfd8eab1b7aa993bde09b3b20aa06cf495bbdeb6b4e95c8fa11', 'dockstore', id, 'ileitch43' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kruslinge44', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f0ac2c191ab1219937879309fed2d807e9cadeec21b1e89ad449522bd2d8784b', 'dockstore', id, 'kruslinge44' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kmowbury45', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'de201ef5d5f6127f7259511d5bec648b47fb9d5675efbcf5d35936b3c1713839', 'dockstore', id, 'kmowbury45' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sdavydochkin46', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e584c77c651f675381b0e9c9b5b597968c10fd1ec38a67ba833fbf524e214bc2', 'dockstore', id, 'sdavydochkin46' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cirdale47', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ce60377d17089ddf00735ba616d5cb502cce2b52be13dee76ee50621abe0f6bf', 'dockstore', id, 'cirdale47' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dclibbery48', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'eb1a05abce991579a8c6b07a71ff2fb8f3c7f061972fc3b1fbf438d37f6abd3d', 'dockstore', id, 'dclibbery48' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ianthoin49', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'dc0ea6dba791755016a373c941ef5bbf26c1a91851d3895805d10ebf6e94f8e9', 'dockstore', id, 'ianthoin49' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mkubasiewicz4a', false) returning id
)
insert into token (content, tokensource, userid, username)
select '55780a6f4d168d0d543aaecbd2f9a3ed1fc0eb5aef468b81a3b95dd58745084b', 'dockstore', id, 'mkubasiewicz4a' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fingerson4b', false) returning id
)
insert into token (content, tokensource, userid, username)
select '73a5e37e8d70e6cc3f8c76a0dd309ae7ba5f1c47ba63e46501d41c1e069e9fda', 'dockstore', id, 'fingerson4b' from row;

with row as (
  insert into enduser (username, isAdmin) values ('icollingham4c', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1eb993835de4e809bfe6c473fdf8e87daa032b997bdd7b2222010421db4d7000', 'dockstore', id, 'icollingham4c' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bplayfair4d', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3460dc38145166bc047b75c474c8b265057b150b26fb617d7a16847922995655', 'dockstore', id, 'bplayfair4d' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ksander4e', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ce5c0217131fb9c55d56dd89cb0da567b6b7805499516f1c685d1874e9f55092', 'dockstore', id, 'ksander4e' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mcristofvao4f', false) returning id
)
insert into token (content, tokensource, userid, username)
select '72e7fc61303d2efa5d90d2ce5ae4b3949294153ee3c54fccc0bf464113bbe1ec', 'dockstore', id, 'mcristofvao4f' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rhunnable4g', false) returning id
)
insert into token (content, tokensource, userid, username)
select '37a19945e2154de8e403be3d87e7db26080009c88ec5a4d9293585fb598a2fbb', 'dockstore', id, 'rhunnable4g' from row;

with row as (
  insert into enduser (username, isAdmin) values ('erable4h', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ac76be20b6dcdd5c650d2f35ac9ff55aaab3478fbfa577b99711cdf677ab9db8', 'dockstore', id, 'erable4h' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ajarret4i', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4a577c28eabe0ad4e98ceb6503d1d43d7a2a858450b8a5164c31a2c0bf1d0940', 'dockstore', id, 'ajarret4i' from row;

with row as (
  insert into enduser (username, isAdmin) values ('arubinowicz4j', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c21fe47c5ead5f04109a004bba39590071296d3c697059565f8adeb26e2096f0', 'dockstore', id, 'arubinowicz4j' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rfilipyev4k', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c4c711a62ad5868e18bfd3958e1a209ff666456a8e4497c734902ad9fd02f05d', 'dockstore', id, 'rfilipyev4k' from row;

with row as (
  insert into enduser (username, isAdmin) values ('koakenfall4l', false) returning id
)
insert into token (content, tokensource, userid, username)
select '039cfefe4ecf242cb3ac1021edc4afafad1115fc023cd9c51a33f078a7fcfdd5', 'dockstore', id, 'koakenfall4l' from row;

with row as (
  insert into enduser (username, isAdmin) values ('abeeze4m', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'de33c44efaecbe2cc6d6ff65f8eb188627ada52e0dd41096c0f4536416d5e5c0', 'dockstore', id, 'abeeze4m' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rkalberer4n', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4670354b745480acf873fbe2e2552bc5630d2e0e3e605775e2e128c48c96e852', 'dockstore', id, 'rkalberer4n' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ebernardoux4o', false) returning id
)
insert into token (content, tokensource, userid, username)
select '38a5c71f82951870c11c9cd38b074a1043aec33f17403aeb529ea02e3ed38915', 'dockstore', id, 'ebernardoux4o' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pcardew4p', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a0ada6176fc323a3f35e26ff1a59c6ef1e18e938250436b630bef2158d14a147', 'dockstore', id, 'pcardew4p' from row;

with row as (
  insert into enduser (username, isAdmin) values ('chullyer4q', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a040a6adfa9e73d2b83d09220127f126ea61d6638b00b4403adfb2a2f089730e', 'dockstore', id, 'chullyer4q' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cmoysey4r', false) returning id
)
insert into token (content, tokensource, userid, username)
select '970212c50c3927ed608f222e21250aa531797b431a84b23abcfd09b82769026e', 'dockstore', id, 'cmoysey4r' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bmaystone4s', false) returning id
)
insert into token (content, tokensource, userid, username)
select '09f4cc53c5a283033c655012c88ca94155b3f219611e0ff8da9cf25a144653af', 'dockstore', id, 'bmaystone4s' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bwastling4t', false) returning id
)
insert into token (content, tokensource, userid, username)
select '449bbead393f6e4b08ce84b1ec3f40ca5d7b1d8296d5d2021a666523ff7a9c48', 'dockstore', id, 'bwastling4t' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hvalde4u', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9a166090cc56f8c6c774cbd9902b24dd7cb0b7ea3a7047b002b001fbfd7d3489', 'dockstore', id, 'hvalde4u' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jmccormack4v', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f49415b0a5e10f5bb4e1045be11c780cb1408d1739288f32274706b6bf140399', 'dockstore', id, 'jmccormack4v' from row;

with row as (
  insert into enduser (username, isAdmin) values ('agrigoryev4w', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0c8341d4ae3e3e158642c04eda1deb02006a1e444b198214955693a254f8e787', 'dockstore', id, 'agrigoryev4w' from row;

with row as (
  insert into enduser (username, isAdmin) values ('foshiels4x', false) returning id
)
insert into token (content, tokensource, userid, username)
select '965d0b73d0ef442ab0d664b040fafd1768a3b689a87e742fe0ef1b4cc7b566ac', 'dockstore', id, 'foshiels4x' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wdarnborough4y', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6b1e0367ae54971fc12c31752db5f7c35b14017241d2cdcbc55d29ac5be33774', 'dockstore', id, 'wdarnborough4y' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tlyne4z', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bd57b313e1adf84bd177a60ff3550e42d9da6bbd806716c0f1edec50168fb9c0', 'dockstore', id, 'tlyne4z' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pmckeran50', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8cfde9fb11ea89380533deb8821e85ca59b084516f9bec13dff6ab06c8e548c9', 'dockstore', id, 'pmckeran50' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fbrissard51', false) returning id
)
insert into token (content, tokensource, userid, username)
select '23c62164817d76bc01f17aa46584ad6294f15e2b11e632203bf0e54246dbb7df', 'dockstore', id, 'fbrissard51' from row;

with row as (
  insert into enduser (username, isAdmin) values ('htrundle52', false) returning id
)
insert into token (content, tokensource, userid, username)
select '85e9fb5ed29a4a351c657efeb9f2d17665022dbbf6915700747f8523d9b75f82', 'dockstore', id, 'htrundle52' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rsaye53', false) returning id
)
insert into token (content, tokensource, userid, username)
select '12423b82eda85c895c5ef3fdf65ba21a68dc4f1eda4a1050807b82f78dfe4f97', 'dockstore', id, 'rsaye53' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tbutchard54', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5dc513108548be8708ea1edd5b835fe4236d4b9015481e1c7f617f2f5efb5380', 'dockstore', id, 'tbutchard54' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dcarvilla55', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c5b5a371a0a0bdd680694d682242447b0aa363e9bef589c7344da7f2d95d1ace', 'dockstore', id, 'dcarvilla55' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cwaslin56', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2a8d655d7c44a9f9e82895e576a42b6c3fa9f6ae8621838d1fec3caddd26fcb2', 'dockstore', id, 'cwaslin56' from row;

with row as (
  insert into enduser (username, isAdmin) values ('icaghy57', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'aed1d7ac56b3035f0163e8b1921c15bbec4b27e32a533f4dc22f822de78f3165', 'dockstore', id, 'icaghy57' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bciubutaro58', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4e182be134bcd09318a4b8b093d34d2fb500ba0e559de411ef5f1b5b107aefe7', 'dockstore', id, 'bciubutaro58' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dbryant59', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b0d889887ad18c1ce142c6b0bbb3af2a80667e0721a566a25510da4f17fe5081', 'dockstore', id, 'dbryant59' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lroyste5a', false) returning id
)
insert into token (content, tokensource, userid, username)
select '271ab675ed42451ee4ef8a9f644320ba436816a292f3ac290c57f61a0ffb9da1', 'dockstore', id, 'lroyste5a' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mamies5b', false) returning id
)
insert into token (content, tokensource, userid, username)
select '310131104375e1f3b88ea8c5b913b556b768043c0eeb6f809f9bce4bc8d457cb', 'dockstore', id, 'mamies5b' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ybarroux5c', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd456b0f09d7b603cf46313e86bcdf71af47e2770339c0ba88755cd3f7d10db11', 'dockstore', id, 'ybarroux5c' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rcocke5d', false) returning id
)
insert into token (content, tokensource, userid, username)
select '37fcef043ac473c3bd5aec1b1c0d57b768717fdef832e88143300c6ac6216f83', 'dockstore', id, 'rcocke5d' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rgaskill5e', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ba9eee8cd16b865256db9a9e39be6c441550f5aee7680a0b769afe21ed2f9907', 'dockstore', id, 'rgaskill5e' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rcluely5f', false) returning id
)
insert into token (content, tokensource, userid, username)
select '036b392c0d11f2fdcff563a73dacd229afcd34a45e6a04a47480a2aebe083011', 'dockstore', id, 'rcluely5f' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ltraher5g', false) returning id
)
insert into token (content, tokensource, userid, username)
select '32e4a09d6407ea7a6cf07fb4828e6445f10674f45415322a5da2cc73416e6ede', 'dockstore', id, 'ltraher5g' from row;

with row as (
  insert into enduser (username, isAdmin) values ('molner5h', false) returning id
)
insert into token (content, tokensource, userid, username)
select '88ddff795f7bd22856703bdf3a2be02a325b9dbc202570a1b4135f8bc06e3269', 'dockstore', id, 'molner5h' from row;

with row as (
  insert into enduser (username, isAdmin) values ('acavalier5i', false) returning id
)
insert into token (content, tokensource, userid, username)
select '63614f862235486063d5a04499f0c5fc7b7026903b74deb0e3811fc25914ec78', 'dockstore', id, 'acavalier5i' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dpett5j', false) returning id
)
insert into token (content, tokensource, userid, username)
select '41718c3ad6e89b3722b96a4e9c5de8966df7a4dc6fda07031ace4ad0edff714c', 'dockstore', id, 'dpett5j' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cpimblett5k', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e64cdb295c6d51ceccd1ba4992a3ce9c35f410619b587da198aba62d4cf19c42', 'dockstore', id, 'cpimblett5k' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cmcgown5l', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6d1c23af9b79cc2ca6679b8bc545d6b951dc22bdb1e84f89fdd06e979ff07ee0', 'dockstore', id, 'cmcgown5l' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jpleavin5m', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2e2a7d04b0aa4cb33f89bf372c325ae0cdf4ab4f3b4bcd0f161e7d252507c435', 'dockstore', id, 'jpleavin5m' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hlemoir5n', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ffafca7ff9c0b3b4a2019e97364391f466130bd6ce70111da8cd595749ec8f7c', 'dockstore', id, 'hlemoir5n' from row;

with row as (
  insert into enduser (username, isAdmin) values ('slimmer5o', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2fa52b91a85c58f22e0c92c9b15f27c2632b9e7fcd14e7d68cdef10687c3751d', 'dockstore', id, 'slimmer5o' from row;

with row as (
  insert into enduser (username, isAdmin) values ('llazell5p', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a70a91074d5226305e5c6842551a33e9d73aa7c7df85c4b80a1b6e80bfe65a52', 'dockstore', id, 'llazell5p' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sbalharry5q', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2f4d61eae81fc42079839e7acc9612effe0250ad5ba0299da3bb69c4dbcd8291', 'dockstore', id, 'sbalharry5q' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rfawley5r', false) returning id
)
insert into token (content, tokensource, userid, username)
select '260b07e810ed58cbdf98cc2c6fd671c250236c43ebea8eaf6184268e8bb7847c', 'dockstore', id, 'rfawley5r' from row;

with row as (
  insert into enduser (username, isAdmin) values ('llachaize5s', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8a2259a90111534ab5a01bb842a8ce5d3f3d65c83dbfb87afbe0fe057c43c7f1', 'dockstore', id, 'llachaize5s' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kenglish5t', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a78a123e8e693e61c891d7dd5152f60ac4dbf78ef530c3d6dcf4e0044ce5e524', 'dockstore', id, 'kenglish5t' from row;

with row as (
  insert into enduser (username, isAdmin) values ('esopper5u', false) returning id
)
insert into token (content, tokensource, userid, username)
select '82d7e6a19cc6ee522a89a181a484b09da928ca560e3101f509c8c0b29b625645', 'dockstore', id, 'esopper5u' from row;

with row as (
  insert into enduser (username, isAdmin) values ('icapnerhurst5v', false) returning id
)
insert into token (content, tokensource, userid, username)
select '376846506f9cd850e882228b91344c185b0f9b42dd572b0567715620ac9a26ee', 'dockstore', id, 'icapnerhurst5v' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ckells5w', false) returning id
)
insert into token (content, tokensource, userid, username)
select '18c4cd3f1660140e62fd25baeb40bc11efc8bc3620b3e2f17c52e30ae41828ac', 'dockstore', id, 'ckells5w' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dvannuccinii5x', false) returning id
)
insert into token (content, tokensource, userid, username)
select '70ef1213b90dba9bcbc6a08f0b34da801be3ac93e0eb9824e320d3788c3b1482', 'dockstore', id, 'dvannuccinii5x' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cdaymont5y', false) returning id
)
insert into token (content, tokensource, userid, username)
select '69560ddf534344b2bad533eed6d876be5da1fb3bd84e7c82389e84909d68fe29', 'dockstore', id, 'cdaymont5y' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jfearenside5z', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e89cef6f5bbf467503a0e2b486e6463b494785ef2570e33a3e2d6d6463aaedd9', 'dockstore', id, 'jfearenside5z' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mgalletley60', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6dd4a80c6588e0b0c35e596eceb0d8dd6630deaa99cc91b72d168ad2a37e1d8a', 'dockstore', id, 'mgalletley60' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ospyby61', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9d99452bb3faf0338b334dae8f3590fd9457fa94a8637394036f5b06f2d1a9ef', 'dockstore', id, 'ospyby61' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bmcnicol62', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'be3f197d3d242d351ad91f80213c395dc3b81392c388b1213bef5c8a718766b6', 'dockstore', id, 'bmcnicol62' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cscarsbrooke63', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f5056de83ee32637f89e3efca526e09d81b036e78a4d77c77d80752fa8585cf3', 'dockstore', id, 'cscarsbrooke63' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ashanks64', false) returning id
)
insert into token (content, tokensource, userid, username)
select '44da0c9b34f4b79a3e18e3981cfd5f4ed883d6e1dd4ed534d009d9032097f1b4', 'dockstore', id, 'ashanks64' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hstork65', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1f2a31e73be0ca599039349dcea8e162a28953fefad1d52b870c24e3c7674557', 'dockstore', id, 'hstork65' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wstabler66', false) returning id
)
insert into token (content, tokensource, userid, username)
select '73819a3b68137e5bb0e4b44f420dc4d9142ccd5cbb9c0eceb45f733369b81d4f', 'dockstore', id, 'wstabler66' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kmollon67', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a0de699fc0c51f134fa8505ddb96c28f79b8ccb288bc01641bd6ee82a076c3e6', 'dockstore', id, 'kmollon67' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fswarbrigg68', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6cf298c6322b343399dc60260bebe38662d8c974602f69de6bf180dfe1c6c304', 'dockstore', id, 'fswarbrigg68' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mmuat69', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7402dc9e214f5e960a04cceff907bc64db9cd94778aea1e298bb353e0a8d77aa', 'dockstore', id, 'mmuat69' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pmactrustam6a', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9943a05f00fec93869d3322865b417b3112592c6392a6f4c4ee6941011b1eeb5', 'dockstore', id, 'pmactrustam6a' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cspinnace6b', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2e6d6c242424e9511310b90bf74ee1224d27cafc14b9dec2fb89b8f3e7d6577e', 'dockstore', id, 'cspinnace6b' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dfair6c', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b8ee8b0f22c30be7e5987576f460d4c38e6525f2ed7a157c54bc3748ce42a9e0', 'dockstore', id, 'dfair6c' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dchrippes6d', false) returning id
)
insert into token (content, tokensource, userid, username)
select '307827ff11b0d0aa0fb125546e6a5d9676156429167c66c841c63f7977f854ce', 'dockstore', id, 'dchrippes6d' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sdyne6e', false) returning id
)
insert into token (content, tokensource, userid, username)
select '625af1f8dbd4635fa7829f66d93d06e34b0aa4b8622720b9546123ca85c24334', 'dockstore', id, 'sdyne6e' from row;

with row as (
  insert into enduser (username, isAdmin) values ('esommerscales6f', false) returning id
)
insert into token (content, tokensource, userid, username)
select '340606276802a9d973227e13f22f51e62f2959c4cd5f307574e140c9e82c61c8', 'dockstore', id, 'esommerscales6f' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rsherred6g', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2730ba4342e194ff9c3416937d1566097ff31d71f613d17c873b73ff51f864f6', 'dockstore', id, 'rsherred6g' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dtitta6h', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e9ca1277b3b67a0b81cff574e1de0714a3a9304cc99400f032965803d0e6e8b4', 'dockstore', id, 'dtitta6h' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rkeer6i', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7d02301e28bb7044946558a105d0d6fa90b0c28c6108abdbc46a3c0ba8521584', 'dockstore', id, 'rkeer6i' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hflaunier6j', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'dd9d52ca3f27c6894a3ce42e66cb83f3ae77759c2f48245fa4d4c337dd180785', 'dockstore', id, 'hflaunier6j' from row;

with row as (
  insert into enduser (username, isAdmin) values ('uannwyl6k', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6a3cddeb59dbea12a6ff52344d32390b92dee1b800e192fcf83b514f08ca1c41', 'dockstore', id, 'uannwyl6k' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fkarpeev6l', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a10556f9918df17d918dff501cf3775dd23b2fb87f20f0bd20a84f8ddd183fa9', 'dockstore', id, 'fkarpeev6l' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dgherarducci6m', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0bdda0d428efb579feb48fe6e8b7d8d992bf9e6c823b3966637ebb6d5838d3ee', 'dockstore', id, 'dgherarducci6m' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rhawe6n', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'dbeec291d56c9c965ec754e7ee6a326f162d417641d07c4b75a8572ed164929c', 'dockstore', id, 'rhawe6n' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cfreire6o', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ae4a82073902cd32574beb56bb83d39a0a87e277293e272ef3050e74e6808570', 'dockstore', id, 'cfreire6o' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tcouper6p', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd4e4f1f948a6bf0a5aa736f9f35855989cae3161b68a377afe66e59e154fdf10', 'dockstore', id, 'tcouper6p' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dskerrett6q', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f3ebfe3d12f41d4c3ef4761b8ab07b19d9f584c2b7000bedd25567d95ab63ef8', 'dockstore', id, 'dskerrett6q' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mmarciek6r', false) returning id
)
insert into token (content, tokensource, userid, username)
select '011080d05a28c55480e7f3ca03d685ad6741c827832de27814986762e0b1173e', 'dockstore', id, 'mmarciek6r' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kkleewein6s', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f1676c204788bb6a4481396aa99a7f84befb53b912c89666aab09abcde40d9d4', 'dockstore', id, 'kkleewein6s' from row;

with row as (
  insert into enduser (username, isAdmin) values ('souchterlony6t', false) returning id
)
insert into token (content, tokensource, userid, username)
select '69c5adfd7e4d1f6309ceca9134dcb43a06f6fd31002d01273c6b3029941ee90d', 'dockstore', id, 'souchterlony6t' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tbatchellor6u', false) returning id
)
insert into token (content, tokensource, userid, username)
select '22b5e213d019cbbec09616ed141e1daa5c1677087273a35c74bd00e82313023a', 'dockstore', id, 'tbatchellor6u' from row;

with row as (
  insert into enduser (username, isAdmin) values ('llaye6v', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd01d9f565b80fe51d37a1ab4ea97448d86f0f561b1d0fb2e73c0a4c62fb65f8c', 'dockstore', id, 'llaye6v' from row;

with row as (
  insert into enduser (username, isAdmin) values ('myeldham6w', false) returning id
)
insert into token (content, tokensource, userid, username)
select '98ce6872f5b1345d82553b19af7e06e28df6798384ccfb4fb20a6b5d2c0cae63', 'dockstore', id, 'myeldham6w' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bwearne6x', false) returning id
)
insert into token (content, tokensource, userid, username)
select '86b9cf97b8d301f1907e234f15f8091431be1b91f098005baf72fa807a862bb5', 'dockstore', id, 'bwearne6x' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mmacek6y', false) returning id
)
insert into token (content, tokensource, userid, username)
select '14f88692bf5cdcf6b3ee5756c1257a17f324cc44f81f1b8e9ca3d5b79d45a6d3', 'dockstore', id, 'mmacek6y' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bsuttell6z', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2babcc8a94e9bfcbe3c584cbbbda72fb7144890c7607ed8db749b0a8f7c094e7', 'dockstore', id, 'bsuttell6z' from row;

with row as (
  insert into enduser (username, isAdmin) values ('amcphater70', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'cef649b5fdbb1468333a81df1d13d1e0e5ef9c50333e10280a249519946e4111', 'dockstore', id, 'amcphater70' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cnoel71', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3966a06b9192c53be89214bce022cd7a2c5cf57f8ef84692a2a8ba16cd0fafbc', 'dockstore', id, 'cnoel71' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dwittman72', false) returning id
)
insert into token (content, tokensource, userid, username)
select '54b553184337c5c206c2a5bf07b25e0a8c224c3f74fdf646f7f175f409716f41', 'dockstore', id, 'dwittman72' from row;

with row as (
  insert into enduser (username, isAdmin) values ('slandsborough73', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4362834c152a581ad0678c95152c438dee6078bd806d27717a4a92b0b4269474', 'dockstore', id, 'slandsborough73' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gleithgoe74', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5d6941876f92126e63a4bffa321495d52206e71f3ad19a7163f1407ad0cd2fdd', 'dockstore', id, 'gleithgoe74' from row;

with row as (
  insert into enduser (username, isAdmin) values ('eashforth75', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9ceaea6c59f979260083ab8a6c3e2590bbee2fc5340d814d7159efdded79de90', 'dockstore', id, 'eashforth75' from row;

with row as (
  insert into enduser (username, isAdmin) values ('asnowdon76', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b43ae49d53867a39b25420a1f3ac9d92acd8c604c0199663b87a20e40e0f770c', 'dockstore', id, 'asnowdon76' from row;

with row as (
  insert into enduser (username, isAdmin) values ('vstaniforth77', false) returning id
)
insert into token (content, tokensource, userid, username)
select '10e8a120b147f5879ec0f8812bc6f0ffaeb6b81c95cf0a00929c323da6471018', 'dockstore', id, 'vstaniforth77' from row;

with row as (
  insert into enduser (username, isAdmin) values ('zglanvill78', false) returning id
)
insert into token (content, tokensource, userid, username)
select '61162b6b4f37ddba0a193fec257295728597165829bd996892e36ecdea943535', 'dockstore', id, 'zglanvill78' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kfarquar79', false) returning id
)
insert into token (content, tokensource, userid, username)
select '94c104a2f0624114d4a3acaf10c9c1bd5f1a16bc937e67c55b89d4021a7e03f3', 'dockstore', id, 'kfarquar79' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ktollfree7a', false) returning id
)
insert into token (content, tokensource, userid, username)
select '240d90e0c5b5edea64affc03c65df729a3c0a89284079bb42d1e68f87e5eee30', 'dockstore', id, 'ktollfree7a' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gnesey7b', false) returning id
)
insert into token (content, tokensource, userid, username)
select '07b83b3b9c8c6fa8a67ba72910ba314d31f7e6a6a07780cb8eb17f2aa8d77fc0', 'dockstore', id, 'gnesey7b' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gmacfadden7c', false) returning id
)
insert into token (content, tokensource, userid, username)
select '721f87ec572211da9476daeae12ed7e999336dfa1cf2ca54b3cdf41a2b31059b', 'dockstore', id, 'gmacfadden7c' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kscarisbrick7d', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c523000f53992cb87a4ae1ec82cb876ab9ce78aad540aa6f3855a4b84bcd16df', 'dockstore', id, 'kscarisbrick7d' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gdumphreys7e', false) returning id
)
insert into token (content, tokensource, userid, username)
select '72e1beff310af5086391c7c7d5b5e27060afbf0a5c88187373bceab96f38e353', 'dockstore', id, 'gdumphreys7e' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jstollhofer7f', false) returning id
)
insert into token (content, tokensource, userid, username)
select '24bdc7e81799538614be61ab0429e0344fd468b4f96054dd0be31bc6cc664fd4', 'dockstore', id, 'jstollhofer7f' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rodee7g', false) returning id
)
insert into token (content, tokensource, userid, username)
select '519b4220d7cc89b8c6c4a54bb7e07725b11c6dbebf2cd018e501e93f388f5f7f', 'dockstore', id, 'rodee7g' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mfetter7h', false) returning id
)
insert into token (content, tokensource, userid, username)
select '23a2477c7cbd8a78e8f7cd7c8f52ff2f75d55fa7e7248d18e5459b8e36f1d3fe', 'dockstore', id, 'mfetter7h' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tboss7i', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a884e406d52fb88489f3f510f77c20b26582b1c4267cca2ba3eb9a40df7ab4fd', 'dockstore', id, 'tboss7i' from row;

with row as (
  insert into enduser (username, isAdmin) values ('coduilleain7j', false) returning id
)
insert into token (content, tokensource, userid, username)
select '56db6714dd2cc1d48d5a396398646e22ec0e9e4d4eef5f31b45ff2a373952319', 'dockstore', id, 'coduilleain7j' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fflack7k', false) returning id
)
insert into token (content, tokensource, userid, username)
select '70d86fdcc230320e98065f6d69bce043da2888c602d548db1647555d81833107', 'dockstore', id, 'fflack7k' from row;

with row as (
  insert into enduser (username, isAdmin) values ('abradwell7l', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fb3004f221f51e91e827ea0253eae0872e0149d77636232e4221554d77612fe9', 'dockstore', id, 'abradwell7l' from row;

with row as (
  insert into enduser (username, isAdmin) values ('erodder7m', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'edbd9ad7702e0440091a3269c5a7013bb4a3c7a60a3b60529435ca003088363f', 'dockstore', id, 'erodder7m' from row;

with row as (
  insert into enduser (username, isAdmin) values ('alettuce7n', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2ea0bab4260577d583f7aa6765222cdec6d79fa43a548806b9e7175f4a3fdb71', 'dockstore', id, 'alettuce7n' from row;

with row as (
  insert into enduser (username, isAdmin) values ('khyndley7o', false) returning id
)
insert into token (content, tokensource, userid, username)
select '332be5b40e0d761fdace65ca749962f3decb7b163482e9650686264de532af0f', 'dockstore', id, 'khyndley7o' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hgrand7p', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bd0bd67a79408a5e345f64aa02ad9145f6a7d14249df69e0bf63a6bb1f5fdaa5', 'dockstore', id, 'hgrand7p' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rgarric7q', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'dc8b784cb383213d76475fa1ba70c5e454238e8b598acf10890abe39f5902f36', 'dockstore', id, 'rgarric7q' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sguyton7r', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5308b7177d03814a7c95ae24be5dca17d3ca4fbe7cb045bf1a94bddde99ee2bc', 'dockstore', id, 'sguyton7r' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rfelipe7s', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'aff030905d346d66496da4abd8d52e82e8ce8d973c9e85dc0cb71c25395df187', 'dockstore', id, 'rfelipe7s' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fgiacaponi7t', false) returning id
)
insert into token (content, tokensource, userid, username)
select '99ac11851499a8b41d0258fc5373a38fad70a17420f1b036060855f0ee34c452', 'dockstore', id, 'fgiacaponi7t' from row;

with row as (
  insert into enduser (username, isAdmin) values ('catlay7u', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f6b3dd69a93b5471a6ce9740ca836eed979323577dfd2e834929d6bec6793219', 'dockstore', id, 'catlay7u' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bnoraway7v', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b5201fc92257a2a24a2a23f173c61e64f78a990dde7255b8d6ad70afaf722e49', 'dockstore', id, 'bnoraway7v' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pwilgar7w', false) returning id
)
insert into token (content, tokensource, userid, username)
select '08f4156f17bca4c8860b21893b7872ac124a04304a132fc1081fda1af26d12b2', 'dockstore', id, 'pwilgar7w' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lurvoy7x', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd864353f8b54e1faec792ba1b9b4f1a001bccc86b2a969b1b5ded46a7d83ea71', 'dockstore', id, 'lurvoy7x' from row;

with row as (
  insert into enduser (username, isAdmin) values ('omacpaden7y', false) returning id
)
insert into token (content, tokensource, userid, username)
select '66c1633cc52bb9f072dd4b4007f7c31baf3d70384a547a946835dedfde74e244', 'dockstore', id, 'omacpaden7y' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cbryns7z', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5c781c63147ba2c56d480aa9b8d3988e81a3891554045a6187fa9f9d7d8bcd5e', 'dockstore', id, 'cbryns7z' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rmurrthum80', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1d6590d62d544df0fdd9bf31eb9e819046b813724ec8af03add12517b0ef6b92', 'dockstore', id, 'rmurrthum80' from row;

with row as (
  insert into enduser (username, isAdmin) values ('emardlin81', false) returning id
)
insert into token (content, tokensource, userid, username)
select '576222362580fa0e4df595e48ec31128ff9f346519f150e06a4041a1c572be40', 'dockstore', id, 'emardlin81' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gburge82', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ff86798f005f8d3bf45745f86972e20c1781d590a4692103817aeb5b90714e5a', 'dockstore', id, 'gburge82' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kskentelbury83', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9da9d99b42f426cbd10f97e422add02c0e96563de3a9c60e4833ca6cb90ac673', 'dockstore', id, 'kskentelbury83' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ebrunsdon84', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bad477bcd43a016d560f554308a5ccdd4306046857194bca780a4a8cc6df75da', 'dockstore', id, 'ebrunsdon84' from row;

with row as (
  insert into enduser (username, isAdmin) values ('msenecaux85', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4c5e2fc095326ac4d20a7c827cb7282b4010fb04b2cdd7211cb0acaf7f2c80eb', 'dockstore', id, 'msenecaux85' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bhutcheon86', false) returning id
)
insert into token (content, tokensource, userid, username)
select '163dfe4be7246b920f40019431ef917807fe77869a5ffe0571d0876aaa17d9c5', 'dockstore', id, 'bhutcheon86' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nroft87', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a67d9d8e65eefc7999b091697a08d0a8fb934892e8425774a1d53e4278f024dd', 'dockstore', id, 'nroft87' from row;

with row as (
  insert into enduser (username, isAdmin) values ('koxborrow88', false) returning id
)
insert into token (content, tokensource, userid, username)
select '42bfe2afa281784652e183253069a65600771612075f0aebdacb1b299b19e213', 'dockstore', id, 'koxborrow88' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fhandling89', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4c9409d99580a221c17bd0e122c418cc5f1c5aa5bef1d8f6d62bf9186c5425c2', 'dockstore', id, 'fhandling89' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gpeople8a', false) returning id
)
insert into token (content, tokensource, userid, username)
select '96ca72e227093ef5fb319d97d3776bc77282e2e2447b178da7bcde6b1b833a39', 'dockstore', id, 'gpeople8a' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rthome8b', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c3e4173722c124f2784000a2eeaf1a115b6b6807087edab1d297c25dc8319edd', 'dockstore', id, 'rthome8b' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tgiffon8c', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1886571dd81e8ec6eb7d017c27a71cf0ec03cf87338478cf95f98003dbe2bd95', 'dockstore', id, 'tgiffon8c' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jlarner8d', false) returning id
)
insert into token (content, tokensource, userid, username)
select '24d283a73ad134bcfcda5ebd5ad40a8b900e5473722b792e30f5e09a28bf40ad', 'dockstore', id, 'jlarner8d' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mjaher8e', false) returning id
)
insert into token (content, tokensource, userid, username)
select '729255d04ba0dec968bc1fa9c9a70640ab6079c678ec95b7a6320b10d39fa6c9', 'dockstore', id, 'mjaher8e' from row;

with row as (
  insert into enduser (username, isAdmin) values ('egreystock8f', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8defd18f536984ec0cc3788203065bedc7a44cfa2fbd8a7f549464f0d47707cb', 'dockstore', id, 'egreystock8f' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rbennison8g', false) returning id
)
insert into token (content, tokensource, userid, username)
select '820977879dd2736d2c4e428074b650d0ce0e2a811fa3f5f2acc272f1fd6b3d8c', 'dockstore', id, 'rbennison8g' from row;

with row as (
  insert into enduser (username, isAdmin) values ('evassman8h', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0eb4a76dbf5a0f4121ce418ba1f3863f540293960c847f296ee46211d5d4154e', 'dockstore', id, 'evassman8h' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bvanyatin8i', false) returning id
)
insert into token (content, tokensource, userid, username)
select '223d20614467d1faaa3efa8a007df4d211789fa8db18edd13b0f396055e6c71f', 'dockstore', id, 'bvanyatin8i' from row;

with row as (
  insert into enduser (username, isAdmin) values ('crembaud8j', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4b888f168aebdd3d021e8f3a86687c5c93676e6185188d37a3a6e41d5df5e7a2', 'dockstore', id, 'crembaud8j' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pstevani8k', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7565a69c1fc8f0d11ca9ff06288fd2bbe9e3be4e88354d98f4ec6c7c2f73a9e4', 'dockstore', id, 'pstevani8k' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lyerrell8l', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd93ccd25b39b19d33a508f102617ec198320895b7d756fd3f360ed8d7b8da944', 'dockstore', id, 'lyerrell8l' from row;

with row as (
  insert into enduser (username, isAdmin) values ('agoudard8m', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'acc90bc53126a8a5a2c03ab0f936dbe7781233956f550d616ffd7f853f60f31a', 'dockstore', id, 'agoudard8m' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dclipsham8n', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ba8639409f3351c483f2028ff87fffcd703241f3758ca0e7eb331149084f31ea', 'dockstore', id, 'dclipsham8n' from row;

with row as (
  insert into enduser (username, isAdmin) values ('norton8o', false) returning id
)
insert into token (content, tokensource, userid, username)
select '60029cd52f71d6bb802f478093c149bca125765b709c49316c5a2153f738d8af', 'dockstore', id, 'norton8o' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mandreia8p', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b561f84e186284c6d6ff2778bd5c5fd267a21d4b85d4569d1a12d45122c4e877', 'dockstore', id, 'mandreia8p' from row;

with row as (
  insert into enduser (username, isAdmin) values ('aghelerdini8q', false) returning id
)
insert into token (content, tokensource, userid, username)
select '918a7d89fce91ff145dfa0b7c99e4de9113ee7f4dd86f9617a4e5d188b40f204', 'dockstore', id, 'aghelerdini8q' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cgriffith8r', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f8caeeadddc2eda8a0121e853339e4e4167e40fb44c07455895784e95fa39b6c', 'dockstore', id, 'cgriffith8r' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cvanhalle8s', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c784e271abd9fae535c2b5269d03eac0ac8230f4f13cd66a282ece7026b86f76', 'dockstore', id, 'cvanhalle8s' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dmurney8t', false) returning id
)
insert into token (content, tokensource, userid, username)
select '33140eea7412fd80db24e0d8ee15445897dbe26388d65be862f4771df3b385f4', 'dockstore', id, 'dmurney8t' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dburne8u', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e088890d7aad4d2e478c17a4439d132d9add32e4a18fe20e143f744f9c8aec64', 'dockstore', id, 'dburne8u' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jbrandoni8v', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7eb9a6fe15d2b53c5c96d5a591ba08e3532ba00d97046d7da5a9852620cf7ba4', 'dockstore', id, 'jbrandoni8v' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dgersam8w', false) returning id
)
insert into token (content, tokensource, userid, username)
select '588f0ad087db3d34bab183c0968787fac1da4ce501028e26a334743f999a5b12', 'dockstore', id, 'dgersam8w' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wchue8x', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'cf0b6b261862c38e00d99feff2a21a526fe91890be4ff077c537dfb183bb3002', 'dockstore', id, 'wchue8x' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wdormer8y', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'cdcc5b1ed4efef7796e7b335ecce27273251d807e9a9524023d43d9cdf20c40c', 'dockstore', id, 'wdormer8y' from row;

with row as (
  insert into enduser (username, isAdmin) values ('econnikie8z', false) returning id
)
insert into token (content, tokensource, userid, username)
select '44a2695650eca429addf811ab8f3dc04ef60b394ba48f9467db3f75536c5ea1a', 'dockstore', id, 'econnikie8z' from row;

with row as (
  insert into enduser (username, isAdmin) values ('clodge90', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5aa789736222d079a01597cb36106d08bc3bd0e35551c8ad3fbb9a0f592f7d1e', 'dockstore', id, 'clodge90' from row;

with row as (
  insert into enduser (username, isAdmin) values ('vhymor91', false) returning id
)
insert into token (content, tokensource, userid, username)
select '50ab2aea56c4bbe1faf25c3b8a26e393c909db1ecea84cb8206ff2c1779f9891', 'dockstore', id, 'vhymor91' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nhug92', false) returning id
)
insert into token (content, tokensource, userid, username)
select '624d6de9e9cd50d3d7e6bde1a8310237941cd500bd0ebdad3dd34835b7a4274a', 'dockstore', id, 'nhug92' from row;

with row as (
  insert into enduser (username, isAdmin) values ('creeve93', false) returning id
)
insert into token (content, tokensource, userid, username)
select '73f03dc2fb7eb3e3374b9bd5dbce8353acf4b101174cfa56e5396966b7eca413', 'dockstore', id, 'creeve93' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rberka94', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'efd6b114eed32131b56fcc979f70919e3f8d06a99a83246529c55b8e55cc8386', 'dockstore', id, 'rberka94' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nglasson95', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7e88a6357e050f1393fb0e99b1aa107fdd5309293015d8132953abe809bd84a9', 'dockstore', id, 'nglasson95' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mcathro96', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1ee4e8c347af580f5e1bc7b9229476c8712724a559d9e4217d848c55d4011dc9', 'dockstore', id, 'mcathro96' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bcassels97', false) returning id
)
insert into token (content, tokensource, userid, username)
select '819d79f3487fa00c52f6d9e9b9e90ed8af2949330bd7933ea50143293dd20b9d', 'dockstore', id, 'bcassels97' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cpyett98', false) returning id
)
insert into token (content, tokensource, userid, username)
select '95fe5589e36d258fde0fa09b5c7d9370802b66a43de4b1ba01884312e1737ed1', 'dockstore', id, 'cpyett98' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ibellin99', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ec86b1ce652595e28bd9dfe03a8f92b1d71e4fefdd4c0e3a0af10e2b35a63e7e', 'dockstore', id, 'ibellin99' from row;

with row as (
  insert into enduser (username, isAdmin) values ('krusling9a', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a540ab6bd5aff82d87b1bc90ea653ca65c2290d03bf51cee1e2b9a52b92d78c9', 'dockstore', id, 'krusling9a' from row;

with row as (
  insert into enduser (username, isAdmin) values ('oboscott9b', false) returning id
)
insert into token (content, tokensource, userid, username)
select '13517a64ec46e3045a0a1e2bce3cf01c8c99c5f1670e54a142f4521b59a71bae', 'dockstore', id, 'oboscott9b' from row;

with row as (
  insert into enduser (username, isAdmin) values ('imarin9c', false) returning id
)
insert into token (content, tokensource, userid, username)
select '12d0fc94729a892f9d0f82d501076a6e2a7d64d651786466b517141e4a91c197', 'dockstore', id, 'imarin9c' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dreddish9d', false) returning id
)
insert into token (content, tokensource, userid, username)
select '96e11495a2c9093d75242c0dc2d5ca4cb9a37e151cbc130542e4908268bac892', 'dockstore', id, 'dreddish9d' from row;

with row as (
  insert into enduser (username, isAdmin) values ('emadill9e', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0b69b0c9bc890bb90678bb96d81e34720be6c8aa394468d47d0f8f7e84d86273', 'dockstore', id, 'emadill9e' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ekinnard9f', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0b6d0df2067a3f5dad72736a829a33b54a41aa8f1b03ce3d6bd394e48c3e3b7d', 'dockstore', id, 'ekinnard9f' from row;

with row as (
  insert into enduser (username, isAdmin) values ('icrampton9g', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e26866959b2265beb560b9db46b6bd711b6b893306b49d7106bb6a1b54a68d02', 'dockstore', id, 'icrampton9g' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nscrivner9h', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c85d681197bbb50bb2719144a2beb79ae3d4f0587a43ab4f251d00a98402395f', 'dockstore', id, 'nscrivner9h' from row;

with row as (
  insert into enduser (username, isAdmin) values ('darcher9i', false) returning id
)
insert into token (content, tokensource, userid, username)
select '175f74c93270a9439384c9c9d72ceca0515633c2b3bd6288ea023a7d16479c84', 'dockstore', id, 'darcher9i' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fwife9j', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4bb51c58de9e19ac5c8d332b0f6759ec90ecdec028bdb7ef74ed8487a7e4d901', 'dockstore', id, 'fwife9j' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sesler9k', false) returning id
)
insert into token (content, tokensource, userid, username)
select '630b0fb932ba4eca36bb3698ce63e37fd38694d46cc6a04361ccb5817c1572df', 'dockstore', id, 'sesler9k' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lbiagini9l', false) returning id
)
insert into token (content, tokensource, userid, username)
select '915e83a5ea8b4588d1b5de2559b4b2815313dcd846287226ed32f3b631dc9490', 'dockstore', id, 'lbiagini9l' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bbulter9m', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1ff342ff01b256ab30143c4a544801cacd4dc41167a95587b4e69171805fc4bc', 'dockstore', id, 'bbulter9m' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rpershouse9n', false) returning id
)
insert into token (content, tokensource, userid, username)
select '44bfcd46973f9cf334e126aaf20d935e65faa22ce38d6f1c3aea3fc9c14d61ce', 'dockstore', id, 'rpershouse9n' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tfarfalameev9o', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'af1d9412a48f959a036f60b3d386611262fb471aa11959e9a87a8ad0e6c859dc', 'dockstore', id, 'tfarfalameev9o' from row;

with row as (
  insert into enduser (username, isAdmin) values ('abutten9p', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5adf8f9ad559c2c8a0b58f149dee0f5725afd447432d7cf51ad465abe41ec5c3', 'dockstore', id, 'abutten9p' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gdrowsfield9q', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd2d97a28432457ccdd2aa581c73b946ce9f8612c5c6ae1f92158fe8ecf6238af', 'dockstore', id, 'gdrowsfield9q' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pextil9r', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7aa589fab67512d8c4433e13dc48ced3603f4ae45d55007b1b2a89e504ae5a56', 'dockstore', id, 'pextil9r' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hlidell9s', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0799cca384455dc5b690f3aa7d0c5637da373bf67521216e370fbc5352cd01ad', 'dockstore', id, 'hlidell9s' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nsealove9t', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0ef9a40a499934154aeb4f3805dce03ea0cdd4a74af366d98c051c6125529989', 'dockstore', id, 'nsealove9t' from row;

with row as (
  insert into enduser (username, isAdmin) values ('isagg9u', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1bfb6bb296ff6f47a592adcd73057b539cc5d174114d253567ae228e9918df38', 'dockstore', id, 'isagg9u' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dfeechan9v', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9a3ee988f09f0c4c61624024f8f8a789acda46e7955ec71fa7df95822bb996eb', 'dockstore', id, 'dfeechan9v' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ccromly9w', false) returning id
)
insert into token (content, tokensource, userid, username)
select '866287035f0fd3d0095e9118207d782343deed6362407025faa0089e663e3a57', 'dockstore', id, 'ccromly9w' from row;

with row as (
  insert into enduser (username, isAdmin) values ('chillatt9x', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1711e042239e0b78fca08f3633606498b33135f29ee736808257196b1b7eee22', 'dockstore', id, 'chillatt9x' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dwhaites9y', false) returning id
)
insert into token (content, tokensource, userid, username)
select '952ce6993a5e3d1992a9fb1fd52776a553cae1bf36e97371c999f71b12d93144', 'dockstore', id, 'dwhaites9y' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rtombling9z', false) returning id
)
insert into token (content, tokensource, userid, username)
select '94a3add91bb9d5493365ca8eb79b1243d8fb7d000e55d56d1abfeed2ffc96389', 'dockstore', id, 'rtombling9z' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kstirmana0', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3769ccb6a768d744d8a476b158ae71159fee034e3b13d744c19a73a28c7575be', 'dockstore', id, 'kstirmana0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mcaprona1', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a2da8d0a5af5cda5000195dc9cc3e46549e61c5a35f12c06650e8aa013a2d8b6', 'dockstore', id, 'mcaprona1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cglavesa2', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4e54467a3a2c582e2a85c5163a5aa696b59071e5fa149d851ce5bb125583bdfb', 'dockstore', id, 'cglavesa2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('aferfullea3', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c4a5065ac73cc80623ef432ad79994c35982ec9332e8674e4f89da78800ed6e6', 'dockstore', id, 'aferfullea3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('iconahya4', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7efc0ea40362bd57cc9c4fd9b8ea6fc956280b88ca48597c7e53ede05ff77447', 'dockstore', id, 'iconahya4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ccairnsa5', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5b1d685ddea4e980217eed52944047346aecea1a6bf6c9003ecb9f2331d4c49d', 'dockstore', id, 'ccairnsa5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hguddea6', false) returning id
)
insert into token (content, tokensource, userid, username)
select '926a994e260a3a1f67a8bbb28f81ed18cf1535c038d2530f8d9d8bea79c1771b', 'dockstore', id, 'hguddea6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cfawkea7', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c854ddbb16d0e716ffce827aaea3bd3cddcbbeccaa2f4e7b978b796901dbac5e', 'dockstore', id, 'cfawkea7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hpriela8', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e05767c5289682ab1bf63d9f3e3eb269e1fb0f966aec6a27e3a2644e24480a53', 'dockstore', id, 'hpriela8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('khiggena9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '796ff0fe52b3e8b7f535459957cbfc18f173f77b68972885dfbe5b497ff1f989', 'dockstore', id, 'khiggena9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mmozziaa', false) returning id
)
insert into token (content, tokensource, userid, username)
select '30d8692692af1ccc550dd6c9340d4bdb8d012d6844df3884bb97b943317dcecf', 'dockstore', id, 'mmozziaa' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tvanschafflaerab', false) returning id
)
insert into token (content, tokensource, userid, username)
select '175ebd71799dc48352f61d36874bc3a9f1d271f7023485cbd0eff2e3337e3d0b', 'dockstore', id, 'tvanschafflaerab' from row;

with row as (
  insert into enduser (username, isAdmin) values ('csurcombeac', false) returning id
)
insert into token (content, tokensource, userid, username)
select '372fd0a5d857ff1ebd05aa4545f0f6f91b7b8bb67f016a851df44b3ee9b752fc', 'dockstore', id, 'csurcombeac' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kswaylandad', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b8f84005ba51e661bbc33c3c40ea3c2dfa497f13e41f8e12c6010f427ce02f10', 'dockstore', id, 'kswaylandad' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rwernherae', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'de9bba3fbea91abeeb3d8b94df9fc4a9908584f4751691248868e0e454a5c1f2', 'dockstore', id, 'rwernherae' from row;

with row as (
  insert into enduser (username, isAdmin) values ('adicksonaf', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2c9272562a603286432b7a80fbba886f2fc76e1fd241c29341897362b55818f5', 'dockstore', id, 'adicksonaf' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dcolquittag', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e5917ed5bc927cbbc82466d89924b8444cbc8d1b77d3a982d65cfa2f578a7dca', 'dockstore', id, 'dcolquittag' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jcromblehomeah', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3f06ccc7f3deb109f41ea373201b9fe909958b3e6cfaeddf0a20947739508c22', 'dockstore', id, 'jcromblehomeah' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jnorthillai', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a65cd6f531c1f6b52d540f885e3ff1371042a2426df2fdedd240fcdb41bf3975', 'dockstore', id, 'jnorthillai' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gchiecoaj', false) returning id
)
insert into token (content, tokensource, userid, username)
select '823ae185cb5f67fe95066fe6052af39fa07d349530e1db875d6f2cbd7f47515a', 'dockstore', id, 'gchiecoaj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rlentschak', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8841eb279a076a41ba12ff715f5505a7e559c99cfba5b216d2271449c07ea314', 'dockstore', id, 'rlentschak' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hcarsal', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4262e04aa37b03d8cf6bf6216990a7b4b87b6d24adf72bc515db6815274310bf', 'dockstore', id, 'hcarsal' from row;

with row as (
  insert into enduser (username, isAdmin) values ('khuygeam', false) returning id
)
insert into token (content, tokensource, userid, username)
select '281490d89f87dcaef35ad176deaa665a9e7e3aee4f2515859df0e03452d314f7', 'dockstore', id, 'khuygeam' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dtoselandan', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c8260ce36b5ac05c2041de4181d882c150460b1dfef110bdacf967242b41cd22', 'dockstore', id, 'dtoselandan' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bwethersao', false) returning id
)
insert into token (content, tokensource, userid, username)
select '54c4372467678171177bbcf52ee75b419379926cd1d2e97f2e12d45fd1cc05a1', 'dockstore', id, 'bwethersao' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nmcsporonap', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3a9e66c8e46e71df4dbd1b3668ba56a729e2b3180eb868f0018f2742f068e443', 'dockstore', id, 'nmcsporonap' from row;

with row as (
  insert into enduser (username, isAdmin) values ('afellgettaq', false) returning id
)
insert into token (content, tokensource, userid, username)
select '90147b466cb305a3105ee5a4f8b18f17e84f3b14805302593e74119f07f5e8af', 'dockstore', id, 'afellgettaq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pfreirear', false) returning id
)
insert into token (content, tokensource, userid, username)
select '03480ba04367106fec2b0b94f09ed3277596423e74ed7d753edb8e7b9b54ed65', 'dockstore', id, 'pfreirear' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tgerrietas', false) returning id
)
insert into token (content, tokensource, userid, username)
select '587f60df74716983c025ff1a48a8a00cbc3661829820e3cf082ec74a8187b7c0', 'dockstore', id, 'tgerrietas' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fcambridgeat', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f04b7b95cc043d3e9028f9978dfac25a0b02443775587ec5824c01ff4819ce71', 'dockstore', id, 'fcambridgeat' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mbeazleighau', false) returning id
)
insert into token (content, tokensource, userid, username)
select '09c6320e064742dc8a7c561f054038624b99bb3f4de3719dc3857ffd6e4ce6c6', 'dockstore', id, 'mbeazleighau' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nfullowayav', false) returning id
)
insert into token (content, tokensource, userid, username)
select '537f8c16e47e3a6bfec73d44ea55b049ddccb8b0da702ef124e6f66c272c12c2', 'dockstore', id, 'nfullowayav' from row;

with row as (
  insert into enduser (username, isAdmin) values ('divanikovaw', false) returning id
)
insert into token (content, tokensource, userid, username)
select '18092f6bb4a454f9fdff14321e83fda9b8a90f54ad94c3c41a9716fb5b0fcfd6', 'dockstore', id, 'divanikovaw' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cgarrattyax', false) returning id
)
insert into token (content, tokensource, userid, username)
select '596528ddac198eac2e398ede9085bb99b26487363ad2e0fda86f999b2137d468', 'dockstore', id, 'cgarrattyax' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cdomicanay', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2743f62c88b8c39bd8199d56549059128d0f6a2fb876d6591ac1a95f82b15476', 'dockstore', id, 'cdomicanay' from row;

with row as (
  insert into enduser (username, isAdmin) values ('btunnaaz', false) returning id
)
insert into token (content, tokensource, userid, username)
select '570b5e515933bd9d32d60047924c37c3b1a596919b47775068b9fa520a9b2e05', 'dockstore', id, 'btunnaaz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ngrevesb0', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e84fa1959b57e9ce7af281b14f9037e158e60e4c303f03537661a048e469345f', 'dockstore', id, 'ngrevesb0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('epaternosterb1', false) returning id
)
insert into token (content, tokensource, userid, username)
select '37184603b5b85db8367f302d3b6705a20f3f3c1ace8864a03748356e92d1ee9e', 'dockstore', id, 'epaternosterb1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ahoulaghanb2', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9a575bac071b5484279a0d354dfdd850009b508d2d05ab7b68139d345e2203a4', 'dockstore', id, 'ahoulaghanb2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sdimeob3', false) returning id
)
insert into token (content, tokensource, userid, username)
select '17333b1fb91db3cb00062d60e25cbdde050f68daab2de145461136f4aafcd852', 'dockstore', id, 'sdimeob3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sholbarrowb4', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'abd93941189febfc4c95ec5c7ed5d629d895c824c0905746acad6a6cd4e5e844', 'dockstore', id, 'sholbarrowb4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('proscampb5', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e44ac3b6c4ac94ccdbd43b468d1f0614028c0994b3913f0dc8356f05696eb179', 'dockstore', id, 'proscampb5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('adrezzerb6', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a4527b5a0d43e02275d6beb416a191c4fdadc64c3b3e97ddf99c7013bb3abc19', 'dockstore', id, 'adrezzerb6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hdrakesb7', false) returning id
)
insert into token (content, tokensource, userid, username)
select '61cbaffc1a7e235dbed6bcd11915d5bc6f42e5b51efe9c80b2bb620ab454c638', 'dockstore', id, 'hdrakesb7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gdirkinb8', false) returning id
)
insert into token (content, tokensource, userid, username)
select '72655457a0165ca4390c206e5f46c09b172b833a3eefe564c802ca860667a516', 'dockstore', id, 'gdirkinb8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mdoranb9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '43fdbd3f812f53b8b0932aefa16fd0debbd988adef44af1f989fd38cb5f74a13', 'dockstore', id, 'mdoranb9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dhalstonba', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5831f10172dd1fe9cf15a4786040c2061cd3f65cd31b591282fa8a1c9c9b8711', 'dockstore', id, 'dhalstonba' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rgrigoryovbb', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0f1cf43f717e6f6bf297fb76a1f0856855a4422b6afa8458171fa4842af5b0d0', 'dockstore', id, 'rgrigoryovbb' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sgrayshonbc', false) returning id
)
insert into token (content, tokensource, userid, username)
select '58a70150496e847a3173cbbc2c84c9be9a12cb2dbfe00bab85f8df19084057d9', 'dockstore', id, 'sgrayshonbc' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mmackillbd', false) returning id
)
insert into token (content, tokensource, userid, username)
select '640493252ac6a572a86f5ffbc6914e9b3dfb20c6725290b76f71ef4cec6e9ff8', 'dockstore', id, 'mmackillbd' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hbifieldbe', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e205cd364ca9a69086e851d61b86f0e46aa598f85be1866d65d4b31746d2d146', 'dockstore', id, 'hbifieldbe' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pharbisherbf', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1c7c860db68dfddcc1127e176167cee43b99a5ed9b3dff63123d330337342449', 'dockstore', id, 'pharbisherbf' from row;

with row as (
  insert into enduser (username, isAdmin) values ('domahonybg', false) returning id
)
insert into token (content, tokensource, userid, username)
select '77660fb64ab24153267e8a40b89267340e7ed80ea51141cefad85148d8fb11ea', 'dockstore', id, 'domahonybg' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ndaymontbh', false) returning id
)
insert into token (content, tokensource, userid, username)
select '48d206acd121565f1e6abba431c76544f513ce06306629333a26d8c97afb7c05', 'dockstore', id, 'ndaymontbh' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mhouseagobi', false) returning id
)
insert into token (content, tokensource, userid, username)
select '58abeb3f9a9b4f039c3877c9d81b9cd1edb41d1066381c54bda4f52d26ea8457', 'dockstore', id, 'mhouseagobi' from row;

with row as (
  insert into enduser (username, isAdmin) values ('beshelbybj', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b28162b0dd83bfc785df67d0c83232ca39802ab192efbdc2c05f635fd65a2382', 'dockstore', id, 'beshelbybj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hbehninckbk', false) returning id
)
insert into token (content, tokensource, userid, username)
select '92b88f9437ec08ba7b357be29626906726ceff5e831805cb6442a7b863d76cd0', 'dockstore', id, 'hbehninckbk' from row;

with row as (
  insert into enduser (username, isAdmin) values ('skupiszbl', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'be7d0db3c05bc17bc922ad03c3781688a1ba6cf177fbfefd447bbbc5a6219ec1', 'dockstore', id, 'skupiszbl' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mcurlessbm', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd136df811be835d9366090fff7158047c734919d9f88e01f6d13dff78fd63272', 'dockstore', id, 'mcurlessbm' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jskamellbn', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1b91813b647eb5738ee6a80812cac309b2b2f586230e4758b7326b2c77d98069', 'dockstore', id, 'jskamellbn' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nmckinnonbo', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6be927f151b8781a86ad8f415ca7e311c63d145941213f67a9e0801004233bad', 'dockstore', id, 'nmckinnonbo' from row;

with row as (
  insert into enduser (username, isAdmin) values ('evittorebp', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a8d19b798f1c4ed4f6ef74993813c932b0579d524cadfeb5ef659e9ef30bcd12', 'dockstore', id, 'evittorebp' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ngarrodbq', false) returning id
)
insert into token (content, tokensource, userid, username)
select '808716f57b0a8ec76ff36eb09f877521b13ee584ef5ffc9d61ec5257730b2890', 'dockstore', id, 'ngarrodbq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wmccullochbr', false) returning id
)
insert into token (content, tokensource, userid, username)
select '92397f7e4cae837d366c1781286026836dabd4eb936ab9ebd93d31cfdf18bd0b', 'dockstore', id, 'wmccullochbr' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ajuleffbs', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c6db64f84ff9f3a7c125c06c3310dfd3f91f2aeed86887c289d1dec943bcbd2f', 'dockstore', id, 'ajuleffbs' from row;

with row as (
  insert into enduser (username, isAdmin) values ('csworderbt', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b73be87f3219c2a44dd754bdda4b54cb56041fd7cbcbd4bc32880dbcec54947a', 'dockstore', id, 'csworderbt' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sbalconbu', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7a8485042b23ef8ac80d14ca2f989c409af4c461b99350bcc3d66e4165ae9974', 'dockstore', id, 'sbalconbu' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cgotthardbv', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f13a6b83b8d0ed6512336d1c89294a56851ca1ad2a40e0e42006a76be96e685a', 'dockstore', id, 'cgotthardbv' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wbartelbw', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a5fd10323fd78191198e0c6769ddadc6fae0af762f08dc07f005d11c5588fd49', 'dockstore', id, 'wbartelbw' from row;

with row as (
  insert into enduser (username, isAdmin) values ('psladerbx', false) returning id
)
insert into token (content, tokensource, userid, username)
select '67a74b3276182cb6ff2c1b8a7e6a9a40c5365f2994dc4aec5e0e1a50195c0226', 'dockstore', id, 'psladerbx' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hboughby', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd5a07b0246f56060cf477ec7d371a58ff4612e18fd04ec8e636eba6b5cc38654', 'dockstore', id, 'hboughby' from row;

with row as (
  insert into enduser (username, isAdmin) values ('thamsherebz', false) returning id
)
insert into token (content, tokensource, userid, username)
select '89295e54a2071f31c4bc99ee578ca9aafd034a9d469731741763ef3db74bdf38', 'dockstore', id, 'thamsherebz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jmeldrumc0', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ab84d01eef0655069c954e04e94516e93b4a7c19152d797df8bff6b06f5d4fa0', 'dockstore', id, 'jmeldrumc0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gwallc1', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4b144ac810095ee4802b413d9fdfdcca391792f2122f639e0ca8e32ab28f7223', 'dockstore', id, 'gwallc1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cgiraldonc2', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ae2c1b7569b6ee95c6a3201dd4f6af1560f2fe7d155d09f0b9848e6f41f21f47', 'dockstore', id, 'cgiraldonc2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fleddiec3', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bac3c9d2feea868879c8afe2fe5bc2a795e33060f606b3d56756685cbb2e4894', 'dockstore', id, 'fleddiec3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bsponc4', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c2ef3119f28eaa4cd95b30e6a138540d1a7a5b8fb8dec0116d09aed26e4982d3', 'dockstore', id, 'bsponc4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kbillhamc5', false) returning id
)
insert into token (content, tokensource, userid, username)
select '194363b498adc84ae3fa55c35b0ea605f8a259665f6c3bb76c02973290b4fdbf', 'dockstore', id, 'kbillhamc5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('efrancombec6', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ef4f7a48bbce3251585b2a22d2ac8eb441c354e70e2565fc623f55f14e3b1e65', 'dockstore', id, 'efrancombec6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ablythc7', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0f106aef29722bc4b8008d84fbe3c3e815f49cfae9f7d279df9a62dc8112a68b', 'dockstore', id, 'ablythc7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dmichellec8', false) returning id
)
insert into token (content, tokensource, userid, username)
select '558a1a582f6e51f27f07b333c96650c39dd208e0f433d00d6144b2e711b80fb4', 'dockstore', id, 'dmichellec8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('aeccleshallc9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1a01478f99723a019dc9ac8531360c56763f22079dba396a904d632de0384fb1', 'dockstore', id, 'aeccleshallc9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rmourgeca', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ea5deb8565226b34a68935b280e15f4fc4799a49aaf46fd43256186ec103a663', 'dockstore', id, 'rmourgeca' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lchasmorcb', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f3bd4947f8305d249642f3fa2eb25ddecfdfd595b3dde5118fee2ecff38d58e0', 'dockstore', id, 'lchasmorcb' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jgoudycc', false) returning id
)
insert into token (content, tokensource, userid, username)
select '559c9cdcadd14955d7c317bbf0eb5f03c9a31b29e44151400e66e1d5c839c7ef', 'dockstore', id, 'jgoudycc' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cmackessockcd', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c411022bf146aea6b4a444316f55b5dd0a145dedcfd80b60bc00bf8b7d6eb2a0', 'dockstore', id, 'cmackessockcd' from row;

with row as (
  insert into enduser (username, isAdmin) values ('svoasce', false) returning id
)
insert into token (content, tokensource, userid, username)
select '630490398175acfc1ecaa2e3e7dd66abba883e1ef27d6d875c7d607df9ac69bd', 'dockstore', id, 'svoasce' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lstratleycf', false) returning id
)
insert into token (content, tokensource, userid, username)
select '434b44fceecc0117c227ad87ebcc069540560f6f3405c51e1a26890ab5c3517b', 'dockstore', id, 'lstratleycf' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cwhitwellcg', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7e4b07b9271b98cc051d8d9e09fc6cd2162bbc0310dfd9f1c56f63ca25f00b09', 'dockstore', id, 'cwhitwellcg' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fhugonneauch', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6636f735812b657a085bb431edd51625204e52d6eda32cf5d139243844cb2e6f', 'dockstore', id, 'fhugonneauch' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bhastwallci', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1cfe8c22eda9a40e5a9a5766dbe9ffca5b4eb503642a1d281cfc02f67c262380', 'dockstore', id, 'bhastwallci' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dguyecj', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b0a2c990f2df5bbecb709723bc36f02e5ed167684f01f569b5f7dbdc43fe35b2', 'dockstore', id, 'dguyecj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cclaasenck', false) returning id
)
insert into token (content, tokensource, userid, username)
select '39867643c9ee393fbb3cb73abfe0562de7107c3a1ced55dc40de7bd12063a874', 'dockstore', id, 'cclaasenck' from row;

with row as (
  insert into enduser (username, isAdmin) values ('atodcl', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'cdf6db4c70422f375b589abcf643d21cc5ac84120728477b1bf205f4045e81c6', 'dockstore', id, 'atodcl' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ivaneschicm', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f45db3cf1edb3800000f5276aacc6d172a9c82c1753af05dee0e69bfd879e950', 'dockstore', id, 'ivaneschicm' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rminettecn', false) returning id
)
insert into token (content, tokensource, userid, username)
select '891710fc03308bf1d6649203216ebcb4673eecc0ee859946d5d75c14731e7a35', 'dockstore', id, 'rminettecn' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ddelafoyco', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'aaed2869ca4bd55278a5a902ec91f76e2d1f8b34f5008d03d16663a5bd1e61d1', 'dockstore', id, 'ddelafoyco' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nbraistedcp', false) returning id
)
insert into token (content, tokensource, userid, username)
select '73d292ff9dedc40dbf9b9232d8a8ed3448bbbc8ed2784e5dfc2b7c30444fa2db', 'dockstore', id, 'nbraistedcp' from row;

with row as (
  insert into enduser (username, isAdmin) values ('imaceurcq', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9be39ec5bb3d92236a820eda0e93e19cad19b83c41af727bdab0537a589d294e', 'dockstore', id, 'imaceurcq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bbuckleycr', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e5e4ae7b283b8f2794a6d2ced02a538ffeafacf1094820c1e9a2bb73dd7e078c', 'dockstore', id, 'bbuckleycr' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rwreifordcs', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6b8377bf2366ac6460b53086984e1152dad87629ac7935ff4af774968d28afbb', 'dockstore', id, 'rwreifordcs' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cpesslerct', false) returning id
)
insert into token (content, tokensource, userid, username)
select '600b3f7a3f9a76c0db056ff8d323378dbd41d8cec876c79923334acdbe843a8c', 'dockstore', id, 'cpesslerct' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rbuttencu', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ffe365148bef983512223dbe1a4baa825035b2dfb24b59608b65490cda329cf1', 'dockstore', id, 'rbuttencu' from row;

with row as (
  insert into enduser (username, isAdmin) values ('myanyushkincv', false) returning id
)
insert into token (content, tokensource, userid, username)
select '06529ee60032eff1bdd803871d49e2a961e051f8d2805604bc6a24758dbf20cf', 'dockstore', id, 'myanyushkincv' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cbartolomacw', false) returning id
)
insert into token (content, tokensource, userid, username)
select '31e75b0195580a1f9cfe5db80574c65fe17c32731cd99260dab0c487a1c01f62', 'dockstore', id, 'cbartolomacw' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bsoamecx', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f1233cbfa618ac0847d4aa283c2ebb11bc6972985f8b7aaf99a1829362eac5df', 'dockstore', id, 'bsoamecx' from row;

with row as (
  insert into enduser (username, isAdmin) values ('yliddicoatcy', false) returning id
)
insert into token (content, tokensource, userid, username)
select '595a871cdcf6049835f8cd3df8af81e3e8e9f81fcfe7cd0223511dd80d4aa0ad', 'dockstore', id, 'yliddicoatcy' from row;

with row as (
  insert into enduser (username, isAdmin) values ('asedgercz', false) returning id
)
insert into token (content, tokensource, userid, username)
select '767281b2ef03ade78b1dab49a9258cb9c7590341a67cc122a52bfde38dc633e9', 'dockstore', id, 'asedgercz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lvasyushkhind0', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ee948fb0ba78c0d84515ab4711c8ed7de36b4b54a0c082e61f036bf13bdc6532', 'dockstore', id, 'lvasyushkhind0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jboydond1', false) returning id
)
insert into token (content, tokensource, userid, username)
select '289e6e6ae770aa0539ec5602b53dfb22fb1c4089fc3e5a865bf002cb8547ceb4', 'dockstore', id, 'jboydond1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('anorthilld2', false) returning id
)
insert into token (content, tokensource, userid, username)
select '41bca4e62894bb7e0f43aa82cb4fe5ebafd440081fe544768c38abe1d0a2c469', 'dockstore', id, 'anorthilld2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('klarventd3', false) returning id
)
insert into token (content, tokensource, userid, username)
select '833fd794912162c123d0158dab58badc51dc591477eec03ebde530bd6f5d6d17', 'dockstore', id, 'klarventd3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cfearyd4', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f102cdc56304481e385be65bc2f3541149586223061d13efb596c16227522c21', 'dockstore', id, 'cfearyd4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hcamillerid5', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f20e15ef970d66efe1d0b7a9a12ccc5ddb2c2d8338aa05c8fa8f06162486a53a', 'dockstore', id, 'hcamillerid5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cgared6', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6a1d9877422800164783fc32d6d294b04e70575cc8c26b1f75ec26639e36f479', 'dockstore', id, 'cgared6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gschistld7', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4b5a51329ba898a32ded699c3df20bafba805f1f9927bb0a16443e1ff2aded14', 'dockstore', id, 'gschistld7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rrothd8', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1723c35b2dab6651f033e3a5089664e77e19459813fbb5763ed0690c5b25b490', 'dockstore', id, 'rrothd8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hwadleyd9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4030900beeaecdb287f95a6a12a5054dada4ae8c200ae5547965b7670a194c2b', 'dockstore', id, 'hwadleyd9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rgregda', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e2355046c54781fb4279507318512f5effa28bc835785f7fbd44c7427e2f54c9', 'dockstore', id, 'rgregda' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ufranssendb', false) returning id
)
insert into token (content, tokensource, userid, username)
select '42e9eae69e10e1e675414f12a0f1a0c79cc45820a5b01b8f1a2569a53f461550', 'dockstore', id, 'ufranssendb' from row;

with row as (
  insert into enduser (username, isAdmin) values ('akilldc', false) returning id
)
insert into token (content, tokensource, userid, username)
select '12ac025ff18ee346d188b02dae359449291041857c121cbe624fb17a69d6fc01', 'dockstore', id, 'akilldc' from row;

with row as (
  insert into enduser (username, isAdmin) values ('iturfreydd', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6f2c55188ccc02a3da420d31c2b3e8b5741f2942d514476837cf39e1d60f9f1a', 'dockstore', id, 'iturfreydd' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wreihillde', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f5ef69da4c06cbda3ecc1cf30986d58e7edc256632b8a9b6abbb0a6023949e68', 'dockstore', id, 'wreihillde' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lfloydedf', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0cd87ba42c6584a609f4ec67bc7521e49a3df53b0cd0e86c1fc6802bbb4a1bba', 'dockstore', id, 'lfloydedf' from row;

with row as (
  insert into enduser (username, isAdmin) values ('heustacedg', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b32f6092b68634c0309f5526cf322320e06841593c942d1d36004cf279932418', 'dockstore', id, 'heustacedg' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wchestneydh', false) returning id
)
insert into token (content, tokensource, userid, username)
select '29a40fa6d1791173d775a314384b6cf0832a70a04addb7c14770b1086991ed05', 'dockstore', id, 'wchestneydh' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hbonairedi', false) returning id
)
insert into token (content, tokensource, userid, username)
select '895ee2fbb5f8f7cb655a8c54d6d3244ba7d666078f7da44d2ad69451fcb960d3', 'dockstore', id, 'hbonairedi' from row;

with row as (
  insert into enduser (username, isAdmin) values ('iklaffsdj', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd741428e0d6660246450437bf4080315301525fdb65270d3988d35cf9cff6b1e', 'dockstore', id, 'iklaffsdj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jpflegerdk', false) returning id
)
insert into token (content, tokensource, userid, username)
select '17e2405773c86b8d9c07a355874068d41015e565b8f22b358487c6f9db46cbf2', 'dockstore', id, 'jpflegerdk' from row;

with row as (
  insert into enduser (username, isAdmin) values ('clettendl', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f8bf6dbd7713adab1fc7220bef0461b688175c9ca89c579b7fbada829bc35aec', 'dockstore', id, 'clettendl' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ggalvindm', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fa04022bbf21c177be4cb9bcdbe8b0a4eaea804103b88d5c6a40098b2f1f76fb', 'dockstore', id, 'ggalvindm' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ifishbourndn', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fd3d0de80def90a0dff2c5c295b42f6ef9c1622f92b62c70747d6cc421ce0f32', 'dockstore', id, 'ifishbourndn' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bburkmando', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b0838448b15bc360a46709a363cf5f5a9e060d89058ccf99924257b86d931968', 'dockstore', id, 'bburkmando' from row;

with row as (
  insert into enduser (username, isAdmin) values ('aaxeldp', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ceebbed4e5d6b7fe862fd26e194201ab301a13c969d196b5a7bef8319371a19f', 'dockstore', id, 'aaxeldp' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fwhinraydq', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a350a018d535af1f24bfee7a30a9553dcc15b3860ab7b0423e5221fd6232e564', 'dockstore', id, 'fwhinraydq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tterrydr', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9eb46cee354404cc344171c1e10986d3a16bd01f3acf03ea098818401635142c', 'dockstore', id, 'tterrydr' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gearengeyds', false) returning id
)
insert into token (content, tokensource, userid, username)
select '16600b3083aed011595d15d0b42afc49128077adeecb3ebc9fcd434444ac2338', 'dockstore', id, 'gearengeyds' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tfeehelydt', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4833b649f155255517cbfd7241409393e2fc5fa81c770486f572fb4436776006', 'dockstore', id, 'tfeehelydt' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bsnaddindu', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7a171830fe7c338ef64482338a10bae7a991fd8f742d91bccb9d5bb0a083b4aa', 'dockstore', id, 'bsnaddindu' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cfinchamdv', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0a2715378c434c11478d52a4a125b31c82b7582a37c6d9d919b5bc97cf8b0c2c', 'dockstore', id, 'cfinchamdv' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ptaigdw', false) returning id
)
insert into token (content, tokensource, userid, username)
select '99d2338723bff33b0417ef2d2c8dd4ca3a04004fb3a4453ae77d8ac008c13eff', 'dockstore', id, 'ptaigdw' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bivanikhindx', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f668274310741ae46b44ad78db15762d5f32bc42291b1f325795164def675a01', 'dockstore', id, 'bivanikhindx' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bagiusdy', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6bb8362620e429337a6f09cb17a0d4b8ad962b6e85cef7b85f2f3a937378d308', 'dockstore', id, 'bagiusdy' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lcowldz', false) returning id
)
insert into token (content, tokensource, userid, username)
select '932872a859963eaf8aba4900bd791ce3e0b3b9ac9e5a3078946243bfcb4e20d3', 'dockstore', id, 'lcowldz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nhriinchenkoe0', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3396a62af6f04aadb59b28d24ef158ab3c2749f957164f4d86eb1641f98ad793', 'dockstore', id, 'nhriinchenkoe0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mbottlee1', false) returning id
)
insert into token (content, tokensource, userid, username)
select '896bb85dd764459c049df9a4e385e7e62b22612d633b308319d3bceb3288ecf0', 'dockstore', id, 'mbottlee1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jfreare2', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4cef3ece3302aa14af6ff758eac0a534f57313a1702b7d40007806fbf29a3fda', 'dockstore', id, 'jfreare2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hlonghie3', false) returning id
)
insert into token (content, tokensource, userid, username)
select '444e855573feea2646c050a0b26792715b3de423a4ffa929ea3c01567b929e74', 'dockstore', id, 'hlonghie3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kcroye4', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e34add9e96208c2a79e38463d5f1150c4efec9223662809277b22dec569e48d6', 'dockstore', id, 'kcroye4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('blongwoode5', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5b4f0ab9f2cc3363415cdf8b7d48afc0407a770b64bc333b5d54f33d544a5045', 'dockstore', id, 'blongwoode5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cbissexe6', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4995aa813fac30e356dea8176f561236c0cc80bae31308a8495a852ab0ec80a7', 'dockstore', id, 'cbissexe6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nmustone7', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b1253c8279a2110503dfb4063cd5d6b90cce5fa55eea9fc73dbb6ee13fef67f6', 'dockstore', id, 'nmustone7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kferrarie8', false) returning id
)
insert into token (content, tokensource, userid, username)
select '008f8bd485c725942734c21d5c3fd8ff07260eea0f75ceb0e3d1aa0d15267cfa', 'dockstore', id, 'kferrarie8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rsherere9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0c2b005305c15f7d5df78210018138c8a11d075bcbedb96a4a396902e1062d72', 'dockstore', id, 'rsherere9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('obleasea', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e512c7e055fbea028de6eede64605cb7021a9bb961ab3ec603226da18e3fee7a', 'dockstore', id, 'obleasea' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pgaynoreb', false) returning id
)
insert into token (content, tokensource, userid, username)
select '47a0774b096e1430d1c039c6f3e621aab536bbb8080fd7fa9f71a3abc75876d2', 'dockstore', id, 'pgaynoreb' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cgynnec', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fd74d70c83e51d50d87036abf8c823390ae06216e03a536babbbb84b4b9ed13d', 'dockstore', id, 'cgynnec' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dcousheed', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0320993455810a669bedd8cfb42affe0831924d41e72998125870c726f48c70e', 'dockstore', id, 'dcousheed' from row;

with row as (
  insert into enduser (username, isAdmin) values ('medwinee', false) returning id
)
insert into token (content, tokensource, userid, username)
select '01d37c8d83ae9803dabbd7e42fb66fa9e56b9b321c214795a2ff10f6901522c5', 'dockstore', id, 'medwinee' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mvanhalenef', false) returning id
)
insert into token (content, tokensource, userid, username)
select '63b06606244de4101c8f049bc1ac47d7e3cf130d23212cf1a775b77c26e4532e', 'dockstore', id, 'mvanhalenef' from row;

with row as (
  insert into enduser (username, isAdmin) values ('osilberschatzeg', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a03f313b8a8f77dfa62d200a204a6a5de321a9dd63fbca2febbef3bb432bbfff', 'dockstore', id, 'osilberschatzeg' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kcurnuckeeh', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fd6b5455189145e2ea94cfe01b30b9fbdfe68afd3bb87145ed7dfa30dbd1dc5a', 'dockstore', id, 'kcurnuckeeh' from row;

with row as (
  insert into enduser (username, isAdmin) values ('chuishei', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd04e8d6f89b540b2811b1cf89feb3354e9660d3b96e515e6790fa36fa3e75efe', 'dockstore', id, 'chuishei' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pglassmanej', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ce9132c00b764243123c9aeb2913798fa8b0b998daf4e2643b8fda82c49be0bf', 'dockstore', id, 'pglassmanej' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bfishbieek', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8db274aaf2e33811baae07fc7d9a72e0fc412f9f3cf591a96c0f187ff99bea0a', 'dockstore', id, 'bfishbieek' from row;

with row as (
  insert into enduser (username, isAdmin) values ('swigfallel', false) returning id
)
insert into token (content, tokensource, userid, username)
select '04740d503123e7a4545e4803c95bcc8313eabe21f35f317faa43026c2b721c64', 'dockstore', id, 'swigfallel' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rryalem', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b67dfd15ff90aee5ff89ef385f6afb23df383f0df64ba84e3db436b9d8467bff', 'dockstore', id, 'rryalem' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bmcgarvieen', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ba1f6695bc70d63e2c01dd405f593ce1bf61415c932a81134db64ed26f09c94b', 'dockstore', id, 'bmcgarvieen' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cpaddelleo', false) returning id
)
insert into token (content, tokensource, userid, username)
select '328a7ad9841c758e1417f70a02554390b6d91ee13821f9628f6cdef033f9363f', 'dockstore', id, 'cpaddelleo' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fmechicep', false) returning id
)
insert into token (content, tokensource, userid, username)
select '157006004ca7e41703706b2a07782e8d61d46d1db9aee87fd13d20d169faf0c6', 'dockstore', id, 'fmechicep' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rfawloeq', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7834b8be895549b67b444303cbb300fdaa1a012f5c3d96496e3ca3ed2ec6071e', 'dockstore', id, 'rfawloeq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jalsinaer', false) returning id
)
insert into token (content, tokensource, userid, username)
select '60d45ea323ed17d8236cc6e9bbafc657ffb535162675d35fd0a06742e53a2eae', 'dockstore', id, 'jalsinaer' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ptomczykiewiczes', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c7bbc65fbddccbeb1916545a40c3a0a00c1cec7f32367a8184f3d9ae54773a99', 'dockstore', id, 'ptomczykiewiczes' from row;

with row as (
  insert into enduser (username, isAdmin) values ('edrewset', false) returning id
)
insert into token (content, tokensource, userid, username)
select '882c5ddbb05f7dfd6f5103f0e02a0fbfb9769b72ac98ab29f586a2e7e083ee43', 'dockstore', id, 'edrewset' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hheintscheu', false) returning id
)
insert into token (content, tokensource, userid, username)
select '67771d93919d6f12c54ebad64bf7a5b77c5bcc77135ef78bebb63b72d24b8067', 'dockstore', id, 'hheintscheu' from row;

with row as (
  insert into enduser (username, isAdmin) values ('htateev', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b32748f9aa2bee1fa8d1660dbd4743ded917996fa75671657cd63ddb87600077', 'dockstore', id, 'htateev' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dcurlew', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b8534551a590ac0885cd867fdd7e96721c4e658cefe34bf4accbd1e0fffe032b', 'dockstore', id, 'dcurlew' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lbaldiex', false) returning id
)
insert into token (content, tokensource, userid, username)
select '90b3120361692e1eb1512f61ec2be79c232f629bcb021f22dbade679da9851bb', 'dockstore', id, 'lbaldiex' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rrousbyey', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e9748589599a3959e57266d0f59ac8d2fd0a5375cef2e5fbca93641716eedb42', 'dockstore', id, 'rrousbyey' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lpetegreeez', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bda4d3b4debc3f519aa350b2f46cfe3d27f0c102d8662e984d7501f28f246057', 'dockstore', id, 'lpetegreeez' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jstansbyf0', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'acda8c590c41376ab85d4de30be4743547831224f874f8d354f377cd966cb30f', 'dockstore', id, 'jstansbyf0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('vspellecyf1', false) returning id
)
insert into token (content, tokensource, userid, username)
select '35ac737c25b5f3668c895233c0cc33462d4ce3920cc4d650d050728aa60e06dd', 'dockstore', id, 'vspellecyf1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('acastelletf2', false) returning id
)
insert into token (content, tokensource, userid, username)
select '04b568d38f57df28c2bbc51a54e21df6d128f46394006e40291702c56a034e75', 'dockstore', id, 'acastelletf2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ttubridyf3', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c4e141ba79aed60fb5236de7998f549b25a1583dc4cebb23eeb04c3aab2910cb', 'dockstore', id, 'ttubridyf3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bhryniewiczf4', false) returning id
)
insert into token (content, tokensource, userid, username)
select '54ad1fc9fc21488c98538099a397ebb35a5310c01041bb40a295fa41418d9eb0', 'dockstore', id, 'bhryniewiczf4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dadief5', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bb4b35bf738b2686b2d8cb2928cb8b3b121783f1864664d0f4214224ec768f66', 'dockstore', id, 'dadief5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tstandbridgef6', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fb50beaeb7de31c483e8f4a4bbf080133d9d77ad908bfcbaca9ffe256e53a14f', 'dockstore', id, 'tstandbridgef6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rcruddasf7', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b46377ea77cfb3c384b1cb917b8acb34e1ab038a60cdde75e453a657977be10a', 'dockstore', id, 'rcruddasf7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sblackmanf8', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3e14edf226cef261805360b5ba5de657df7201019730118ae1db089bd061cb6b', 'dockstore', id, 'sblackmanf8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cbondsf9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9d981d8f42f23c6558a99ef9ac0f9d4a3a3f13ec1e3a58502ede53abdc4f4c87', 'dockstore', id, 'cbondsf9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sambroginifa', false) returning id
)
insert into token (content, tokensource, userid, username)
select '95a5d975ba5d9683d3e991626d36fb7f47fc551bba28f54e41b68a5670a93ccb', 'dockstore', id, 'sambroginifa' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wpottipharfb', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fedaa4b2c033755374183f6f2ad62e517468245c901dfe53a1afe601bc753a72', 'dockstore', id, 'wpottipharfb' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cswinnertonfc', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8a1153d00d7510872beab551b596c89fbfbd11196e9e8df42253532750ed73df', 'dockstore', id, 'cswinnertonfc' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bmenziesfd', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a75e61f98c26e536d850ed643a2c9f640bd2a9224e84b60d05b85ab840f52a78', 'dockstore', id, 'bmenziesfd' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pemminsfe', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd87c31531885c05fa351eaeb96ae018c0e3cd5b15b14464e10d234b84e552735', 'dockstore', id, 'pemminsfe' from row;

with row as (
  insert into enduser (username, isAdmin) values ('latwoodff', false) returning id
)
insert into token (content, tokensource, userid, username)
select '15e2ef828c2ad6344c551fe73117d9e68786d39e9e18fa6afbc0ebc4fb187158', 'dockstore', id, 'latwoodff' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hpaskinfg', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0f8c71e96a3e9c1a840b408212c1196cd99e65d291ab43df1fbd29bdc81d0f74', 'dockstore', id, 'hpaskinfg' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ebernuccifh', false) returning id
)
insert into token (content, tokensource, userid, username)
select '041ee5b0341ea2d43141dbd0ca0346a22b2c1078a2e3795c8bcdd4b939b2b58c', 'dockstore', id, 'ebernuccifh' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dsimonfi', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b4c407b161d729156d06f53a830f6a7323853c319c287d6dfc6f01e7a9ec64cc', 'dockstore', id, 'dsimonfi' from row;

with row as (
  insert into enduser (username, isAdmin) values ('qcarnsonfj', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f696128ac0d64d37e8142418777284f435c670f8e8b3e865559be681ce7eb099', 'dockstore', id, 'qcarnsonfj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('okarolyfk', false) returning id
)
insert into token (content, tokensource, userid, username)
select '35669b2ddcb197269159eefa657de1263d116c22b9d66d0e35971b9b04a246a4', 'dockstore', id, 'okarolyfk' from row;

with row as (
  insert into enduser (username, isAdmin) values ('crosenfl', false) returning id
)
insert into token (content, tokensource, userid, username)
select '98f4b0228ffbe0830ecfaaf54955b364aeab721cec78f1da5b52320d1b86e530', 'dockstore', id, 'crosenfl' from row;

with row as (
  insert into enduser (username, isAdmin) values ('syeldhamfm', false) returning id
)
insert into token (content, tokensource, userid, username)
select '35665036f36d689732768b0a91c2b5a72eedbf28e3f6bd5e7584375551f172f9', 'dockstore', id, 'syeldhamfm' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cjostfn', false) returning id
)
insert into token (content, tokensource, userid, username)
select '957de9f46c4135b839642168a1b2dc2e92a9d94bc9b8281cda456448edd39c53', 'dockstore', id, 'cjostfn' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sancketillfo', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c60bc7c36cbee75c9bbe1242f25c6c8f032e2e498fe8e40abf9b978faaa1f4e8', 'dockstore', id, 'sancketillfo' from row;

with row as (
  insert into enduser (username, isAdmin) values ('zdugoodfp', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4df2f93169e3903f13f90c3f542eb583143c8d6ad5b66269b5e1c98886591940', 'dockstore', id, 'zdugoodfp' from row;

with row as (
  insert into enduser (username, isAdmin) values ('twillisfq', false) returning id
)
insert into token (content, tokensource, userid, username)
select '20a3677827b443e20dd0c8ac029fbb4585061b42d856356d35bfd716e6b52299', 'dockstore', id, 'twillisfq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('vtythacottfr', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1511f1dce29f896a3129c21f66c57ccc13953009590c360f67830c1485c25897', 'dockstore', id, 'vtythacottfr' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ekornyakovfs', false) returning id
)
insert into token (content, tokensource, userid, username)
select '697465812cee2a1f1dbcb68554dd296d02b129bc9b321d620d59c5477907d3b5', 'dockstore', id, 'ekornyakovfs' from row;

with row as (
  insert into enduser (username, isAdmin) values ('eshearerft', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd95b4e928761f0da2ba20d02d9cbf881deaa268bebd57683b578bad72e086e38', 'dockstore', id, 'eshearerft' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ytolputtfu', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'eab00e204840bd707446c80bce405700dd5eba57bed26a2535341cdf17ebde3f', 'dockstore', id, 'ytolputtfu' from row;

with row as (
  insert into enduser (username, isAdmin) values ('blittfv', false) returning id
)
insert into token (content, tokensource, userid, username)
select '779f7b49fa6eff7e649038e55e50cadea384bb531fb5d33b7ef591b85a48f4fe', 'dockstore', id, 'blittfv' from row;

with row as (
  insert into enduser (username, isAdmin) values ('qmccronefw', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fd947a45f36d5abe76969e15b6bea0d1dfafa71c6ac8feba743beb30469a3633', 'dockstore', id, 'qmccronefw' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cruvelfx', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e51adc9cee44f6c23c049d48d5699ab9babb588cd47566ebb55de4d3b62d9958', 'dockstore', id, 'cruvelfx' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cwharrierfy', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9b6d11adadbcffe1b6a53ed12c3a0b7f8f832593220b13250207b852801c6103', 'dockstore', id, 'cwharrierfy' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sstormsfz', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6064d4307547701284d48d1159fff6f1310b1556460b99a329331abce0d4bd81', 'dockstore', id, 'sstormsfz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('swrankmoreg0', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8538832ed8b6638d490a04183f8bf2059ae4f44dca646fa261ababd77c6c00cc', 'dockstore', id, 'swrankmoreg0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bvasyaevg1', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fff0e8952b972484a3cdaa1cdaec41fd5cdfaaa6ffffa63acb901614f7b308e2', 'dockstore', id, 'bvasyaevg1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ltwidleg2', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8554dddbbe9960a9b127c6d7d7423baeb3609ed6c78840157158edff3efa44da', 'dockstore', id, 'ltwidleg2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tfauningg3', false) returning id
)
insert into token (content, tokensource, userid, username)
select '170f842d11c985a5680bb2fe063ac93d8977bd113a98999366d9362fc727fcf0', 'dockstore', id, 'tfauningg3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('msporleg4', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1a513d8c8f1182ffff4c071db9568583ad3d26aec2cfce2cba6d77f66efd4609', 'dockstore', id, 'msporleg4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('odibnerg5', false) returning id
)
insert into token (content, tokensource, userid, username)
select '170b84ba778061eac0123eee1af9dc4bed797bb0d6f96e08084703c7d5d3882f', 'dockstore', id, 'odibnerg5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dsedgmondg6', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7334fb60dd9db9fec3a55e87669b69f0173c1ed83a1eddf23afa7e5832fcaece', 'dockstore', id, 'dsedgmondg6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wstorrg7', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c9d5b27102fd1841dc6e385d4c00dc97a67f30fd35ed49a00f8f1eb93a31e26d', 'dockstore', id, 'wstorrg7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ccollisterg8', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b06f1e2ee15375e5233feba35cd9acdb730b0c5526e5b31a2db28fa06acfc361', 'dockstore', id, 'ccollisterg8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kranscombeg9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '52c998a1f61e82881da18d9505a39c2fcc3ec09d1e5d1d19f40f2ce2543cca49', 'dockstore', id, 'kranscombeg9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mlynockga', false) returning id
)
insert into token (content, tokensource, userid, username)
select '41ae812c0e3d88e7e9d02de0c6e69cd9622d5cc7bc0799b9e18372b86270f7ad', 'dockstore', id, 'mlynockga' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ipittetgb', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3998494d56556c1a1c745c63ff8a1bccb35c56f3855484bee1677d0d074b9f78', 'dockstore', id, 'ipittetgb' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rmariotgc', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a25db8030dd5c2fa5575793da0444cc437b970bf59116e3a877bf7a1c9fbf9df', 'dockstore', id, 'rmariotgc' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cwingategd', false) returning id
)
insert into token (content, tokensource, userid, username)
select '759a24b1ae5e3a6867642feb6ae0d8d076e7b5d1673fe840c2066e9aa254c7b8', 'dockstore', id, 'cwingategd' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ivashchenkoge', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b5b063649a048948e45c4477499e0419770f773190bdbc59486216d91414e41a', 'dockstore', id, 'ivashchenkoge' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mcatongf', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2e30e1e675daf423105996ecff8e62fc69cd6f38ea58307ea74bc54c3d0611fb', 'dockstore', id, 'mcatongf' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cbrickdalegg', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0e84563a9a7a04809ff80bfff04aa7b9d9d2e82b7b40bd59a72aba411f9fe758', 'dockstore', id, 'cbrickdalegg' from row;

with row as (
  insert into enduser (username, isAdmin) values ('abakesgh', false) returning id
)
insert into token (content, tokensource, userid, username)
select '36a651d65388d7af2825d63e03b68e95f0f6c6b338832f493fba3b9050a53773', 'dockstore', id, 'abakesgh' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fcattermolegi', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c28057c36692e81d08d9ffbf6b1950c0ee5bb4ba4f2a8adf53b38b33cfb966fd', 'dockstore', id, 'fcattermolegi' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hgreenegj', false) returning id
)
insert into token (content, tokensource, userid, username)
select '32c9b5dde111844ad99a96165e0c536240b16b94dc97f7ccc4dbddb7c1018b1f', 'dockstore', id, 'hgreenegj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dfilpigk', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'daf84b3a11ac8945b500318fc358f3c47131d0f2a6ee8b4185b3910d8edf30f6', 'dockstore', id, 'dfilpigk' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hnancarrowgl', false) returning id
)
insert into token (content, tokensource, userid, username)
select '887a515f481eb4bcb98e5cf27fd89f377a9f9e271627b2e566b15df1e7727d8e', 'dockstore', id, 'hnancarrowgl' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rfairlambgm', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'dd1ad81cd5399bd40e5d465cb6aa072a8d243d9c2c6855ea50e66dcc97fe2ce6', 'dockstore', id, 'rfairlambgm' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ogiacobinign', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1fe03ddaf1dee1667d38cc6d81b1827870891d4564ac2b3d78cc0bb6d0bc14c0', 'dockstore', id, 'ogiacobinign' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nshorthillgo', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4d4c62c808032ca6f961c609561fe27ff1edceac8b281e7f0ebfa96cb7f42ad3', 'dockstore', id, 'nshorthillgo' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bgrunnellgp', false) returning id
)
insert into token (content, tokensource, userid, username)
select '29ed0618a0172d275a2b3c630c9be852bb5b821322588ac77777fc9775a18902', 'dockstore', id, 'bgrunnellgp' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rmarvellgq', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'eed7b99fc0d2962aef9a85afa7aaf9ce3e91507d48d9c7b3bf73657debf1f1b9', 'dockstore', id, 'rmarvellgq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('eshovlingr', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b9c736b73ae324dc1d3ab2a65cd4a74b448e75fdc5f0ee1c426259e02ff907ea', 'dockstore', id, 'eshovlingr' from row;

with row as (
  insert into enduser (username, isAdmin) values ('aenriquegs', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ef71a75cce40abe67898c4ff734d8fcac58bbc339cfb4ee646fe423e3bce95f9', 'dockstore', id, 'aenriquegs' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nmacveighgt', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'eb7d2a3529e07c446bc9456347fc13ea992106df67e2a64f571e786910a19d31', 'dockstore', id, 'nmacveighgt' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bmanthroppegu', false) returning id
)
insert into token (content, tokensource, userid, username)
select '47d219cf5ccb0a7caa633c1af69dce57f53d13bc63c6e468fb0ef930c320162b', 'dockstore', id, 'bmanthroppegu' from row;

with row as (
  insert into enduser (username, isAdmin) values ('apeytogv', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ec02ad8fe9279ba5837f6a04efd488e430d08f39f2b00c18acc500aca0e91bbf', 'dockstore', id, 'apeytogv' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tmantramgw', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0c5771b0bc4e75401856949fb1cd18a1c8382d3fa9e035181e69854cbe3751ed', 'dockstore', id, 'tmantramgw' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mtoonegx', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a4b75de64c0d9663cf2ba1a08f82855e3400071a32ba295eee900248266d32ab', 'dockstore', id, 'mtoonegx' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bpickringgy', false) returning id
)
insert into token (content, tokensource, userid, username)
select '68a3b9badca259d1f7c84724fd0c501cf7ee8f5d9aaacd0b3d2d07ae4a34f37c', 'dockstore', id, 'bpickringgy' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jtreacygz', false) returning id
)
insert into token (content, tokensource, userid, username)
select '73777c9a65b12e29a23148446f74d0ac0c6ed6c355b9c88437f0154a60cb9ebd', 'dockstore', id, 'jtreacygz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wmallabarh0', false) returning id
)
insert into token (content, tokensource, userid, username)
select '08c47c2a4ea395c62f66b1b678680a5d820f2cae048f43711e7e2cbf284aee05', 'dockstore', id, 'wmallabarh0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tmonkhouseh1', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7fc16a045b393ff6e03763a1afc7288c7e666f9928248db9878c9d1985a52956', 'dockstore', id, 'tmonkhouseh1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mpiensh2', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b4c36daf6064d4f051f96a3197ee698c899c95d1c2a13a9dda1ac30af0a6fb96', 'dockstore', id, 'mpiensh2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fborrillh3', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b7b4f61f3ff2e887829ddf83bb523898c95aeb6263a2ada9ae684bbfca9b22f5', 'dockstore', id, 'fborrillh3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kwoottonh4', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6d94884ed13158ebcee5db9a6c93581a48e0ae1f26e55097ff416b2e30c26a53', 'dockstore', id, 'kwoottonh4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ilissimoreh5', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bd0c2b78d6ef19d3e373f4a52ae44c45afa1ee8c901926afcd199ca68a873f46', 'dockstore', id, 'ilissimoreh5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ldurganh6', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b55cb70ba346eefe603c2e4c9bb6352f43d2da3436951412a11c4c1df39ba337', 'dockstore', id, 'ldurganh6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gclampinh7', false) returning id
)
insert into token (content, tokensource, userid, username)
select '111c5f50d60421ff46262dac86739ce5814fcd9f793e3af9da843a3de4504d2a', 'dockstore', id, 'gclampinh7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('skilfeatherh8', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6240a63f11f49ac22307b23ae3ec9737bd1a7ccd9cbc17a0f70354f1759e4c4f', 'dockstore', id, 'skilfeatherh8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nsomerscalesh9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1932f5c327d2a057b417bfaaa8cc673432bc97ed7c94102e38e718eae7aa6150', 'dockstore', id, 'nsomerscalesh9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('glancasterha', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fbafdd2f411033c491aab956215dca2064c43f1661ded537498199590c545f01', 'dockstore', id, 'glancasterha' from row;

with row as (
  insert into enduser (username, isAdmin) values ('trylandshb', false) returning id
)
insert into token (content, tokensource, userid, username)
select '99d361e0cd575a24d3bb692d54c75421615f5c7a1d5b5d1a358fcb0cae95b893', 'dockstore', id, 'trylandshb' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rbozierhc', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2c6ba82b5892055d7503f28ca52b12aa35fcf49ca508560cda855faa7d1fca7d', 'dockstore', id, 'rbozierhc' from row;

with row as (
  insert into enduser (username, isAdmin) values ('eeslerhd', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'aff54e431a1e079948a92d5968e5d1853e4d650e554d8c61cc9b17828d483475', 'dockstore', id, 'eeslerhd' from row;

with row as (
  insert into enduser (username, isAdmin) values ('aschustlhe', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2c5fe823d9b8e6dd5b6ba851f4b7c601c7c743993d04fa95dd8bad0c152d438f', 'dockstore', id, 'aschustlhe' from row;

with row as (
  insert into enduser (username, isAdmin) values ('paxelbeyhf', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b8a8b1b8ebd111b26e31f12209f88ef1912584b6d598ce5afaa46d234294cd73', 'dockstore', id, 'paxelbeyhf' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dhulcoophg', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9848ba7dc898155da338f0d7d8fda582b86f62fa0149d82590c0d0d29604d491', 'dockstore', id, 'dhulcoophg' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fdupreehh', false) returning id
)
insert into token (content, tokensource, userid, username)
select '33c76dcd5925cc4bca3c03fbd3ee1b2e6bcaf9cd8522e405d6112f480b622cc1', 'dockstore', id, 'fdupreehh' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lhockeyhi', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9914653987ee6f9e73465422cf8fc1364a3f26a612be82c13668c5c78ace0f7c', 'dockstore', id, 'lhockeyhi' from row;

with row as (
  insert into enduser (username, isAdmin) values ('zdawleyhj', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5b910c6b855db234ec638f98fac0e47992d6eb25c6df55e7f5f11325c64b3b7c', 'dockstore', id, 'zdawleyhj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('arilstonhk', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bd6b42f0c7d9f61ea2ba0c8daddc3df149f10817f66d7210d8cce1a8cfd1f862', 'dockstore', id, 'arilstonhk' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ccustancehl', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2d5a8fa53a854cc1b9caef1b588f58d22b48c0d564dbf49ab75618229d82966a', 'dockstore', id, 'ccustancehl' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jbeltznerhm', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'db3d619c28af1a295f6a9d8609e1e27b73137f11781d69f02529ea647198a54b', 'dockstore', id, 'jbeltznerhm' from row;

with row as (
  insert into enduser (username, isAdmin) values ('beddishn', false) returning id
)
insert into token (content, tokensource, userid, username)
select '70a9297021d5b2bc471c4e65c52a9ab8ca99e890774a02e8517afeebf5e1bcfd', 'dockstore', id, 'beddishn' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nwestallho', false) returning id
)
insert into token (content, tokensource, userid, username)
select '680be37ad5f530cd239f64cd0a142abc7904236e730753bef787d9f9f29099bd', 'dockstore', id, 'nwestallho' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cpurcerhp', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4a2ab8f907059d7f5dbfa5c6c3da3850904d74c803a00c5247e338e09a3c8289', 'dockstore', id, 'cpurcerhp' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dredmilehq', false) returning id
)
insert into token (content, tokensource, userid, username)
select '80f0aff0880c1d9d36d7492d5dadcfdb47b66b393b9d785fb92cb18b85116e85', 'dockstore', id, 'dredmilehq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ecorroyerhr', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e20e6ebb938434ac8f2b882a4dc858e37d2347b1e3abf2244c4c25ec84887bc9', 'dockstore', id, 'ecorroyerhr' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nspelmanhs', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'aaf937e844a4c53688f091e377afb164e5884658477a6c392644943dc915bec9', 'dockstore', id, 'nspelmanhs' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bdavidoviciht', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0a695081a46522f307ed1bfec38a1a72bee78df41e15fd40bcdd8d51b281497f', 'dockstore', id, 'bdavidoviciht' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ssmyehu', false) returning id
)
insert into token (content, tokensource, userid, username)
select '22f5c2c25c856270d846e0201134ca7f340fe7c90ec03cf21592da2b2ca188e1', 'dockstore', id, 'ssmyehu' from row;

with row as (
  insert into enduser (username, isAdmin) values ('obenezhv', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8a40947ab996bf4f1dbb6e69866b8829631d37bda888dd6634a3ec52ce9cee5d', 'dockstore', id, 'obenezhv' from row;

with row as (
  insert into enduser (username, isAdmin) values ('demmerthw', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd264c9e5158b01b83e463a00360964e3ca43ff228c68b4e67bd36375dc276046', 'dockstore', id, 'demmerthw' from row;

with row as (
  insert into enduser (username, isAdmin) values ('abuddleshx', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9fdb65378b7b1bdf5f9a46a9213a4a1b83e9be9c5caf413711138e9fdfd24d79', 'dockstore', id, 'abuddleshx' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cbrachellhy', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4cd35b3e843116948e94e2d91d56918b38f898193943375474aeacb15905d7fc', 'dockstore', id, 'cbrachellhy' from row;

with row as (
  insert into enduser (username, isAdmin) values ('scottonhz', false) returning id
)
insert into token (content, tokensource, userid, username)
select '06ecd455225207208a16dadf21b2abaab762ea1e8b44019ec2cb2f4d2d2e525a', 'dockstore', id, 'scottonhz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('swoodusi0', false) returning id
)
insert into token (content, tokensource, userid, username)
select '747c307a997e767f7525e28fc571d51dda763717e0492a5b47d488dbe5940f91', 'dockstore', id, 'swoodusi0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('espelwoodi1', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f1cd3db6b7fb1b9f013ed9f6b8d9e0573bb3e31fed9dc8c826b026d894ccca83', 'dockstore', id, 'espelwoodi1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tborgi2', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f625c50ddf119d596a91511b7df714e344b42cac089e34709a02cb40021dcd38', 'dockstore', id, 'tborgi2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ebarrelli3', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e53a5fddc7131f3169b8ffd37e87059d0bbebaf2f14041786e9a2e36d8a7e65f', 'dockstore', id, 'ebarrelli3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('emcnelisi4', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b01731f698ce8e90b05c74841ea6c06f2cc5274b1ac484a3459ea38579f3f1ab', 'dockstore', id, 'emcnelisi4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jdarbeyi5', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a4072b7be640248ac76a644e8be063d8a90ff52215c7dbcf0d01fa39fb6da1c9', 'dockstore', id, 'jdarbeyi5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gfolcarellii6', false) returning id
)
insert into token (content, tokensource, userid, username)
select '081b5afb2ce069d29008ff277f4e9d80c84f33a61d62d6c66aa04d638c4c41ef', 'dockstore', id, 'gfolcarellii6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('spygotti7', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ed726ad13a302386e96ba7883092a3cc405dc64b9a4d53fa72884d6b65e12d14', 'dockstore', id, 'spygotti7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kcoenraetsi8', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4468c079f326701077c209d5df805719c1643321cf32718e65598f5c24ff82bc', 'dockstore', id, 'kcoenraetsi8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('apetrovskyi9', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e4452922c2553335e8b53dce85a29b5d619a5bb4d9e90109d5849e3ca8240bbb', 'dockstore', id, 'apetrovskyi9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dshortoia', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1ba1f7d14d0e7ba54db16e05a6b41f7dcefc51be8feb5cdcbe0309cec33f5a8f', 'dockstore', id, 'dshortoia' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bsimukovib', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c6a1aa1bc75f082eeaa5352ad1f2971905745d245f0c617741930d9063a86325', 'dockstore', id, 'bsimukovib' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jdixic', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1c0805c3696a103ece30d07fd9004f3b5ff731c21cd2bd615243cbcab5350696', 'dockstore', id, 'jdixic' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ewarriorid', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7a7bf106180825cd9e3e56596a95f5cd30098607436ec29307d7faad1b7f8258', 'dockstore', id, 'ewarriorid' from row;

with row as (
  insert into enduser (username, isAdmin) values ('amcconnelie', false) returning id
)
insert into token (content, tokensource, userid, username)
select '07ac7f4d8c8cbeeb873e4e70f37570d46cb62db01f16d0c92faf5a43af593712', 'dockstore', id, 'amcconnelie' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jyurtsevif', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a765c9ac3d9584f9faf97d66f8dd65892934d552caed5498b431446587a971ab', 'dockstore', id, 'jyurtsevif' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lbearcockig', false) returning id
)
insert into token (content, tokensource, userid, username)
select '846b5c77d29cb2117539647a718cf36b1ee5b2408133f31dbc286fa8d13529ca', 'dockstore', id, 'lbearcockig' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mhiggonetih', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6ef594a9f646ab9adcebc958988fb65e8d5280ba961cf7afa0793d8d080b50a3', 'dockstore', id, 'mhiggonetih' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hmckeaii', false) returning id
)
insert into token (content, tokensource, userid, username)
select '726ef1f31c3e5d9d84f1b95dd7fc04f0b82d3f04b854401e2236d4a8f6d0ef40', 'dockstore', id, 'hmckeaii' from row;

with row as (
  insert into enduser (username, isAdmin) values ('clivingstoneij', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'efe71c34066d960254a208948791806e956864aef31d7513220d7b9e760c612e', 'dockstore', id, 'clivingstoneij' from row;

with row as (
  insert into enduser (username, isAdmin) values ('anorvilleik', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fa28e26bcda3e73b5b488468964143750d72c5c57a0a79beaa33a33f9b88eeea', 'dockstore', id, 'anorvilleik' from row;

with row as (
  insert into enduser (username, isAdmin) values ('afawlkesil', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b3c9d601d9cc63a13393f34a4cfd4ae4f429fd388c99b438bd8f066d3e1d251e', 'dockstore', id, 'afawlkesil' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dwayonim', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5361a9e3a34d1621b39e33b8487c8e282ae347caa9968810273e011b4d50bfdb', 'dockstore', id, 'dwayonim' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jjeppin', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0a3033dd376a15b71b113f94605290696bbcf86cd935087a9b211e00ac4ee376', 'dockstore', id, 'jjeppin' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hbraitlingio', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'dcb71f85b18cf3e87ed3b39e0974412f2a1477aa377b3b3357e933f82f6f9a8d', 'dockstore', id, 'hbraitlingio' from row;

with row as (
  insert into enduser (username, isAdmin) values ('btappinip', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fe63707d8635caeb10e974d5a57727530c7bddffc1e0c7f0bae8a9c64d121705', 'dockstore', id, 'btappinip' from row;

with row as (
  insert into enduser (username, isAdmin) values ('aharfordiq', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2bf8a591558848d418d61b55080f9ede4787a75ccd941d15f3d1fac132d803f3', 'dockstore', id, 'aharfordiq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mmanesir', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'adbb89fcfe4b97bde63c023ac96aae22a709e537e4289ad02c660592f89ef372', 'dockstore', id, 'mmanesir' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ostolliis', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3b0539327d109c7506b83fccb19f4bc41c374ef0337551afebb57c5d9bda39bf', 'dockstore', id, 'ostolliis' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tsaladinoit', false) returning id
)
insert into token (content, tokensource, userid, username)
select '03ba345a0d384f043e22886e807629e892c7425e7bac58ec510acfb7bb8759ad', 'dockstore', id, 'tsaladinoit' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cfoddyiu', false) returning id
)
insert into token (content, tokensource, userid, username)
select '67e143331546eaed2a1ec5b5635d9963254bbf0eadcdd3821f121c8bb80cba62', 'dockstore', id, 'cfoddyiu' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cbourtoumieuxiv', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ed68f09fca34c0020470f0676eda4834deb0f1391368fcc30e4b1cb70ca6678c', 'dockstore', id, 'cbourtoumieuxiv' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hhinnerkiw', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bffe974e63e0b9abbbefa9c55af7bd016c704f5f796de438e73e0598bd892bd2', 'dockstore', id, 'hhinnerkiw' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cevertonix', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a507ea81230c6b92704b83ab5dafd61430f8eaac98ffaa1ce4af68d3f32f78d5', 'dockstore', id, 'cevertonix' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tmedendorpiy', false) returning id
)
insert into token (content, tokensource, userid, username)
select '33ed3594986fd9276017ab8b6a68cf433bf28d43d8d3c68d0a7e7fc92ccf496d', 'dockstore', id, 'tmedendorpiy' from row;

with row as (
  insert into enduser (username, isAdmin) values ('aviscoviiz', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f2aadef0220bf895e1b65e870274cab78d908d3d935ee9275b229294968c10e1', 'dockstore', id, 'aviscoviiz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bzannuttij0', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fa6894bfdc01cdd944171e507d7baca1727d17873e4fcdc604a042bbb600093c', 'dockstore', id, 'bzannuttij0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('palvarj1', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bc9f168a6b250960e8505954b0a0a39650786cef0c83812b1ebbfd73df8334e2', 'dockstore', id, 'palvarj1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('eaitchinsonj2', false) returning id
)
insert into token (content, tokensource, userid, username)
select '03e4173cf708363b6b791be81d7ac601ff5684f806b084684969d68449f8e96d', 'dockstore', id, 'eaitchinsonj2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('avasilevichj3', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ac80484c8fe05d927d5edba34929f3341b1618c69dcd27696bc8d811c2f49d74', 'dockstore', id, 'avasilevichj3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dfernandezj4', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'eafa3df0ea9997f5087174d8676d64b912abd50b768c10b2f1c6f231181b7ff7', 'dockstore', id, 'dfernandezj4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ftintoj5', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7d7f261755c475d50a6d631100d1c6f4d7a6e700f200305ca3565927bd96e4fe', 'dockstore', id, 'ftintoj5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('haddisonj6', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5d17c3ab0f86e452464d46bb37eb62e9f9d4e0486cb629d12be0a54b6bd11273', 'dockstore', id, 'haddisonj6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tvoiseyj7', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'dec377dca4e7c2109b1cb329bb151fbfba0d12fd4351febd2c3b7c7f11abd94d', 'dockstore', id, 'tvoiseyj7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mfindlayj8', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd855060271c09dad198e0ba2ae5d83b5cd9e5717d7c8f01c306c136411cc3bd8', 'dockstore', id, 'mfindlayj8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bterbeckj9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '76eba68873bfe9c6d62ae10a584d6fed16211254ec21ae0d6d82f8816c15dad3', 'dockstore', id, 'bterbeckj9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tsimenetja', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b62b6f0c35f7696181800a4ac2f72218017863aa4975199360a6dc5541c7cf4e', 'dockstore', id, 'tsimenetja' from row;

with row as (
  insert into enduser (username, isAdmin) values ('crushmanjb', false) returning id
)
insert into token (content, tokensource, userid, username)
select '99b08a76dec55792a193d0a58bab214a68087988fb8dc10d379b268b6fb28945', 'dockstore', id, 'crushmanjb' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rhollowsjc', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f45a33df15e991267c486199d6e4e7f52b13fe4143c29bd5228317c531588025', 'dockstore', id, 'rhollowsjc' from row;

with row as (
  insert into enduser (username, isAdmin) values ('clukejd', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8a4f63c105ea006c3de5819e3be428d816a539db583000e06d905615b7a7b5f6', 'dockstore', id, 'clukejd' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hflannerje', false) returning id
)
insert into token (content, tokensource, userid, username)
select '736f5e6a2d79013419b281f7d79758bf01328531e632833ee6586015e2665f96', 'dockstore', id, 'hflannerje' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gsaggsjf', false) returning id
)
insert into token (content, tokensource, userid, username)
select '69f45900fa66bb0f0cc086d68f9c7f8fe3629f8a3e63f38043a69564a3faa5a9', 'dockstore', id, 'gsaggsjf' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fverneyjg', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5807f64024b493e6c2a98d9880ddf0b0a5470f13335e10c7fe5e2f77a5cb1b55', 'dockstore', id, 'fverneyjg' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hdeftyjh', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ab0b935d5a61c11d341c49c0b7367f0f927881c6e7785ae619243c7ca8e27bfd', 'dockstore', id, 'hdeftyjh' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gcransonji', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fbf438262d85ee92ac53ab348db2ca71e53b57ad7509f3f86b796014f33e122c', 'dockstore', id, 'gcransonji' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hdownesjj', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3cb6da189aa6ce0f8dd524b08ce2c1f547a77ef186e3f94e5eba62189e750256', 'dockstore', id, 'hdownesjj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('atitterelljk', false) returning id
)
insert into token (content, tokensource, userid, username)
select '51e7b1ab6bc6d0a50633291591d3679894c88b5b2ce93484ea9f772467ed3e07', 'dockstore', id, 'atitterelljk' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nchaddjl', false) returning id
)
insert into token (content, tokensource, userid, username)
select '957340f105a64cd994c85c89efa4cde01cb843d17fd488f91cd8b23205c12d15', 'dockstore', id, 'nchaddjl' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rhumphriesjm', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bd62f31db1dfccdd671f636aae3d245436a1707f520d41acb87f0b8f1fa3c99e', 'dockstore', id, 'rhumphriesjm' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gchastanetjn', false) returning id
)
insert into token (content, tokensource, userid, username)
select '86cea6816f5f549a53d08344d86fc114c827ed4d8911b41c555e3ab90f8eb158', 'dockstore', id, 'gchastanetjn' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tlodfordjo', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a032531c256ae4db2a1d8649d5b97653b5b78268142bbc7daa01b8102e141a88', 'dockstore', id, 'tlodfordjo' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rgrandjp', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2f0843b68c94f97e6f978f452e3914c2770f1493a5d1a198bd44e23941c58cd0', 'dockstore', id, 'rgrandjp' from row;

with row as (
  insert into enduser (username, isAdmin) values ('whaingejq', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2e5138d9153525832ecd9af2476a8fe3f4e880aa9de985ac423a94e70380c265', 'dockstore', id, 'whaingejq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kbraimjr', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0987d7963c50ff3d87c51e57ff1ce940de150d764df162cb1d2e9e57a8ed04ef', 'dockstore', id, 'kbraimjr' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nbonehamjs', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4f9d8321716e1abafca1f0155b79906d59c76ed5c4ab2024bc7f9748264ee8bf', 'dockstore', id, 'nbonehamjs' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jtailejt', false) returning id
)
insert into token (content, tokensource, userid, username)
select '77a9524c7c7394b80c43963f54d05f37691b47e522e5f4c43f7cdfd6db855077', 'dockstore', id, 'jtailejt' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cbuckeju', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2642392d4a31ebba77190eff61820d080b521e69b751eb4393581bbca3c98068', 'dockstore', id, 'cbuckeju' from row;

with row as (
  insert into enduser (username, isAdmin) values ('swaddyjv', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e9b360664b8b58fe9d163083485c039a52599095f29aef98c3a975d900e534ce', 'dockstore', id, 'swaddyjv' from row;

with row as (
  insert into enduser (username, isAdmin) values ('atuftinjw', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f4b26a6ff78bd767833863aabdcbed5266cf47171db9500aaa1ab75a4b936f8b', 'dockstore', id, 'atuftinjw' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fpuntonjx', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'eba8b801d578c0a24e6b731399cece486574bb236ba3881b88d987c2194dad94', 'dockstore', id, 'fpuntonjx' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ckohterjy', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5986c5e47e415c812aa134384f62a2609f68fb67b25e144440612a38d6ab5d79', 'dockstore', id, 'ckohterjy' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hpfaffjz', false) returning id
)
insert into token (content, tokensource, userid, username)
select '44263c0c84043e7a53ca4fd71ecc74196eddff295d1b01720f1ef45170a432f0', 'dockstore', id, 'hpfaffjz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('zdonahok0', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ada24beb3747b1976db2e8f1c06bc63cf8ba6ad1fbc4488c9947b868fa41c210', 'dockstore', id, 'zdonahok0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dgidleyk1', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0e7e6d157adeb7690950a3befd86bb7853fbe6fc8dd79f0c36b50e4c60c62fc4', 'dockstore', id, 'dgidleyk1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gallchornek2', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8ea5defdbda978a9bc2a1093660f942dc62e67a1c79c00944d3c650d0ad7bfe0', 'dockstore', id, 'gallchornek2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bcrantonk3', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bd8f2dd7f1054cac8e944b452f78e15cc84de7081918a1e3ff0fb8661f236a58', 'dockstore', id, 'bcrantonk3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tdavidovichk4', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c48bf85ed75b0634140b12f5f123672c7d21c491f82d4c079630903a137ac5a1', 'dockstore', id, 'tdavidovichk4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gweddeburnk5', false) returning id
)
insert into token (content, tokensource, userid, username)
select '01992bccf40792c14d9c4d0bf894ceeb36334a304a9cb7e8d6a808e426ac8c07', 'dockstore', id, 'gweddeburnk5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hsedgek6', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7d90c0272258c47f55856ee0b5fc51d452d4c8c363d66d8518a700aca7675f6c', 'dockstore', id, 'hsedgek6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dkillingsworthk7', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3a6eec293f13596e5df55debd955fcc029f364f91f8017ac6ca42e7d51ce5d0d', 'dockstore', id, 'dkillingsworthk7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lbylesk8', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4a258b6e15caf5addc7e45aa0916de55fed8c7f2ae1425908593a994c9318bbc', 'dockstore', id, 'lbylesk8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cshowalterk9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '04d2e34cbf525196d103894f1230a1a172610d0d0f4c681d43082ad82a546dad', 'dockstore', id, 'cshowalterk9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lhollowka', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'da10738b182d6afed463da90532237c9613d9677278a55edb517393dd5831738', 'dockstore', id, 'lhollowka' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jmacgillkb', false) returning id
)
insert into token (content, tokensource, userid, username)
select '14e34772b75f227ec2fe0571c6cdc2196fc06a02f9307a5b20bff8b454268f2d', 'dockstore', id, 'jmacgillkb' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lwaldenkc', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'aab529f8c97013b79c02e528c339922cba45cb4d6ab63f0eb64a919615c337c7', 'dockstore', id, 'lwaldenkc' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ncatokd', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a7e8cdbb342cfc32e26f656ea6e4f0113531e25b9c3f829b92af5885882ca22e', 'dockstore', id, 'ncatokd' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lbehnekeke', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1bc9278564599c5dd82e0ef7d4550eee6f5dae91a9159208f1dff72fa25ed72b', 'dockstore', id, 'lbehnekeke' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sbuistkf', false) returning id
)
insert into token (content, tokensource, userid, username)
select '137438fa68b82fd08cc937b5cb16f0fc9214fdad70d9af9a3d192b55931664a4', 'dockstore', id, 'sbuistkf' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hpadfieldkg', false) returning id
)
insert into token (content, tokensource, userid, username)
select '61281a0b2981d37d35a28a0e283912e25cf97e29ff7863456bcd393319abe73b', 'dockstore', id, 'hpadfieldkg' from row;

with row as (
  insert into enduser (username, isAdmin) values ('srottenburykh', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bb6942d130365cfdc95cbd8a882aaebe1f29c7af7c9e321173c9b134cd3fad12', 'dockstore', id, 'srottenburykh' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kmiguetki', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1365c98b614ebca5d96ce7dc58664680e2b2ac850208974716c48cf12623bc60', 'dockstore', id, 'kmiguetki' from row;

with row as (
  insert into enduser (username, isAdmin) values ('vwrixonkj', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b46d93cbaebc5ede7e206e7a33452afb8a5c12e52a92b641b2789ff554ad4e4d', 'dockstore', id, 'vwrixonkj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dfassekk', false) returning id
)
insert into token (content, tokensource, userid, username)
select '02fd222531618678f25b54d954c6d54664096601611bcd534d0b01b7a3cae84f', 'dockstore', id, 'dfassekk' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ajouenkl', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1994e573bad95a242a134d34f32877b9ed4ccbf0074f475ac0a394416f373f84', 'dockstore', id, 'ajouenkl' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lcaddieskm', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9766d3b0bf8e6bdeceb5876c17fe67f8d8b16de5a482b2e9eb38e47996f213bb', 'dockstore', id, 'lcaddieskm' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rjeanenetkn', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f447f66149ffa507f9bf7a9263aa4a13b357dcfb8b28899f3eebc793aabc854b', 'dockstore', id, 'rjeanenetkn' from row;

with row as (
  insert into enduser (username, isAdmin) values ('vmeadmoreko', false) returning id
)
insert into token (content, tokensource, userid, username)
select '347adfeefd2870138eb5eb573aef204865785127f3534bb6d5daa6d64edb6240', 'dockstore', id, 'vmeadmoreko' from row;

with row as (
  insert into enduser (username, isAdmin) values ('slabbeykp', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7d47130761dffe7d46c9dcdd651b65b518de49015422682ebc9759c636ad9c43', 'dockstore', id, 'slabbeykp' from row;

with row as (
  insert into enduser (username, isAdmin) values ('egreatrakeskq', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1475610c91a7294476bd0e2d207194fd59d0f56234a6236c801ddfa5276bb066', 'dockstore', id, 'egreatrakeskq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tpenellakr', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'cb92e7b56edc9fec45437a113137c79217b6bc0a47c31621c02dcfe4ac616d8a', 'dockstore', id, 'tpenellakr' from row;

with row as (
  insert into enduser (username, isAdmin) values ('asharmaks', false) returning id
)
insert into token (content, tokensource, userid, username)
select '21b4644a7241233357a0716e8d141179767b1111d95fc84bc5b3066755bf98fb', 'dockstore', id, 'asharmaks' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cliaskt', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4362725b22983dfbe46bc8815a981599748c02b0b3c9eec32d354fd06a049101', 'dockstore', id, 'cliaskt' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nchowneku', false) returning id
)
insert into token (content, tokensource, userid, username)
select '534160ac07d9198ab6be13709778968a6a524dfd06e47950b8b84f530de7d10c', 'dockstore', id, 'nchowneku' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jchastagnierkv', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd44bb4ed020d453e6a49fba44967b520efb6ee255b9620e3dad6574a4620ba3b', 'dockstore', id, 'jchastagnierkv' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ktromanskw', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'db159275594568ef8d53be0848db77e6501d641ed714cb1b28072be7ff036c92', 'dockstore', id, 'ktromanskw' from row;

with row as (
  insert into enduser (username, isAdmin) values ('callredkx', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3d621f1a70ef6c56d0d15a11f6fcfca56b7b0d996d4eeb65b95d92386f79e747', 'dockstore', id, 'callredkx' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hjoberneky', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e4ebab2a83c0f583095f9f1bb9df87f1b88b9704cdad1c9648813e93e06b3730', 'dockstore', id, 'hjoberneky' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fcranstounkz', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'cdfb99e600972e24103e1b14e7f99c364dcdfd6a563ecdcc90e7a6567f424f72', 'dockstore', id, 'fcranstounkz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('apentlandl0', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bd0a5bdc92423d4d896d73215a11934f2236bbd579d6dc8b2645575271ce9041', 'dockstore', id, 'apentlandl0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cworksl1', false) returning id
)
insert into token (content, tokensource, userid, username)
select '677d7881ad2f1d0263cdb4d23ea58e5bd7a28fab605d1184c7de50d6926f0574', 'dockstore', id, 'cworksl1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rprimrosel2', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9ab3d12f0479c5e7963ce98c2ee21d4cf1c2da8135628c890fe0451b2a38dfbe', 'dockstore', id, 'rprimrosel2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('slardnarl3', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b2e42608050e83d4b36e39883a5f58a1821fb425a275be41a2b8eb8a8ca41fdb', 'dockstore', id, 'slardnarl3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lcohnl4', false) returning id
)
insert into token (content, tokensource, userid, username)
select '026547ce7ee004fd507ec1a4916b23f241d37f139ca9175fc3918c9c31b3a2d3', 'dockstore', id, 'lcohnl4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nrisbroughl5', false) returning id
)
insert into token (content, tokensource, userid, username)
select '72239c76df4b915efc7ee61a71b2b75a01a3a224b063d5fc587d382871030715', 'dockstore', id, 'nrisbroughl5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rmurnamel6', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ff5454aad7481ea977f78ab2209142dc394d4a8b46170e5228842b10104d47eb', 'dockstore', id, 'rmurnamel6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jyakunchikovl7', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7ba18a9c1b0203bd57b02971c60dc9c1aeef0e72b4d0a3fe3956bef4e6603f45', 'dockstore', id, 'jyakunchikovl7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pmaciverl8', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'de3f75730df50eb2f2de42e7d4042d22e493b2fb7a5b68c3a41ab60b7883a2b2', 'dockstore', id, 'pmaciverl8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bmarkiel9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '88d42a11be8507ebb14c85e84a73762c09e9a192dd0e84226616a129f844333b', 'dockstore', id, 'bmarkiel9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ecordela', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5f421cf7d55f9f5a803a7abee8725c426880bfb03221729df44e31c743cf0418', 'dockstore', id, 'ecordela' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gpearceylb', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5c573e74694ec578f72e077574a11e5f66bd55b6efc1d68f5ae7e8757f47fe52', 'dockstore', id, 'gpearceylb' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hbrewettlc', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c9fbfcbea2216374871ac72b011e79765ca89dd56929605aacd29978a3b264d6', 'dockstore', id, 'hbrewettlc' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sduddenld', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'edd72ea2679cf1d5239a2a339a61a8087e9817213d285fe38bdd101660fd168b', 'dockstore', id, 'sduddenld' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lrobkele', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'bc76e64844132905c8b8732702ea631df0aa3a23358866594b3f0ad5b504b940', 'dockstore', id, 'lrobkele' from row;

with row as (
  insert into enduser (username, isAdmin) values ('emeddowslf', false) returning id
)
insert into token (content, tokensource, userid, username)
select '77cdebdb42bffae8da9a633a7d2c0f6cd345650c1a5425980653dd43e1150335', 'dockstore', id, 'emeddowslf' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tchamberlainelg', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'edb282a40aacf84f58d0886936d80b98451380874b0912463e27d0b30b15d73e', 'dockstore', id, 'tchamberlainelg' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mchretienlh', false) returning id
)
insert into token (content, tokensource, userid, username)
select '577bd0acf66499862cb11b1b57ce01e0919bdf020f592f96b51d122fa751b197', 'dockstore', id, 'mchretienlh' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cmcgroutherli', false) returning id
)
insert into token (content, tokensource, userid, username)
select '190595cc5aaf525ab33bfe7e88a03fada7b2255ca741445552087dfb31ff7730', 'dockstore', id, 'cmcgroutherli' from row;

with row as (
  insert into enduser (username, isAdmin) values ('machromovlj', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9d9f83c8771fa89edd37ee506b17e668c2dff1d1e986e5c57788e8848f25b524', 'dockstore', id, 'machromovlj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('arootslk', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8eac199745dea841cf6153504ce3d913439e9f6c10877f262443150d55b2cfe2', 'dockstore', id, 'arootslk' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lbencherll', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6e538579ec9f3d1a6b24e1d6425ed3ea6783c27ef1f390d7c706c85bb9995eec', 'dockstore', id, 'lbencherll' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rsparshuttlm', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1e16f76a487bc1a94851ffb9b50856785486a39eb56770cc484bf945fb82e724', 'dockstore', id, 'rsparshuttlm' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ysnelsonln', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c193dc23ef3a5080eed0482fa773c242fd910ed38825d62d8b4b90c7cb617040', 'dockstore', id, 'ysnelsonln' from row;

with row as (
  insert into enduser (username, isAdmin) values ('vhouseleylo', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ee57d3446b3134b3c2ac55202f409d1c5e34ef88429d6a580b859b19ddd87d47', 'dockstore', id, 'vhouseleylo' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mcowthartlp', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8504e9d982838bd0bb0042008b0645846f57a8b7eda2f9b86972b3a57b7e1bb0', 'dockstore', id, 'mcowthartlp' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wfelgatelq', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4d29e56fa97d4f82f70b81234f00861d7b827e04d99e9802c3c2cc13c013eaf3', 'dockstore', id, 'wfelgatelq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gmogfordlr', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b74493228660c0fec2b22e6cd38ce1ec2a573fede4fd571b4f3c15d681711aaa', 'dockstore', id, 'gmogfordlr' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lyewenls', false) returning id
)
insert into token (content, tokensource, userid, username)
select '670312e42a80d836987f4c2b180b3dd359f2a2f85f6758b7286a19ca9a37b5eb', 'dockstore', id, 'lyewenls' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jsunleylt', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0d6d0cb7b810146fbbb8356f7b0a3181fe1dec2e806984065cc050f99976e637', 'dockstore', id, 'jsunleylt' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bseydlitzlu', false) returning id
)
insert into token (content, tokensource, userid, username)
select '15b5c8637d0312d211fd404a70737316b6810e545f55878f9066ee4a65d82612', 'dockstore', id, 'bseydlitzlu' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cabrahamofflv', false) returning id
)
insert into token (content, tokensource, userid, username)
select '789f9b56dac770ddaff8fb65c43a08a1f6c056e1ba206673175f46e51708bfff', 'dockstore', id, 'cabrahamofflv' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hpropperlw', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e5e1df245fa4fbc52fedccd4e9308fb6c7f630f178bf6adada1a2f148328919d', 'dockstore', id, 'hpropperlw' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kmeasomlx', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2e16862041d7df4543c0ff6daf5177fe2c4e921c88dfbadf22ed8cb08d1da5f7', 'dockstore', id, 'kmeasomlx' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nlantaphly', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c8c281dc9d2c98967a8f186e4f465ad964bca56958ac35b2ecb9144deb9adcc9', 'dockstore', id, 'nlantaphly' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jdillwaylz', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1f6646491492c8f03e70910ca6231bfde2258fad3d98fc3cee6b6c7f159b292f', 'dockstore', id, 'jdillwaylz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tclealm0', false) returning id
)
insert into token (content, tokensource, userid, username)
select '198771390da51dd5151469903dff4e40f62db6490609bf94a9f3d086f180854b', 'dockstore', id, 'tclealm0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('omacpheem1', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e5736faf77d4992e385418a0d592adac9f22f0155c071ab9f0fb89c31d8ec6d2', 'dockstore', id, 'omacpheem1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mflaniganm2', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e01abf30faea4f5d876b0ee14ccea4fdc9476d3a9fd72de5e11695672fe45c7b', 'dockstore', id, 'mflaniganm2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fbarefordm3', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6b4e95de1632d4f8bdbf54a088863685861e7ab9e6df3e7db596e8827ddfc35a', 'dockstore', id, 'fbarefordm3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mlillem4', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'cd12a1ee591e18549b5b3ba22f6fe3dcd3c92d0df4a68eee5981cb31f4921dac', 'dockstore', id, 'mlillem4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('moconorm5', false) returning id
)
insert into token (content, tokensource, userid, username)
select '68c3a207c6e6a9135fad8c0c38d3a372119c7e135446d4be84f97f57da41cbf3', 'dockstore', id, 'moconorm5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ostallibrassm6', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3b7ec0151d39ae4860fb8dbe403ee6d7faebfd6daa12d8b8eec315d328d47878', 'dockstore', id, 'ostallibrassm6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ifranciolim7', false) returning id
)
insert into token (content, tokensource, userid, username)
select '05dbe344f47ce5cba5137498af199ec01dd4ea51a753a0cb7a2d83acfc375927', 'dockstore', id, 'ifranciolim7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('otiemanm8', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b82618ebc516173443c9144ac7cced804e7067cad76cc4f0ea335374c6d4fc71', 'dockstore', id, 'otiemanm8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kbotlerm9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '08e816399d1b26acf615ed562b952c94dc0f30c3aaaf939a26bee07edb5355a1', 'dockstore', id, 'kbotlerm9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ekochma', false) returning id
)
insert into token (content, tokensource, userid, username)
select '25670e2b758b0e57f30f6776f4e6b8352b92cd7c77120773359514ee61319a16', 'dockstore', id, 'ekochma' from row;

with row as (
  insert into enduser (username, isAdmin) values ('loutrammb', false) returning id
)
insert into token (content, tokensource, userid, username)
select '49b42bf9e33820a74387bef687e833c186dd899b2a99107801ab1c9d4ea0ce42', 'dockstore', id, 'loutrammb' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dmattiellomc', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ec2d87c9771f61c573d747ca54c2b9f52077d445792c198a4ae17ddaee918ba5', 'dockstore', id, 'dmattiellomc' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rlawfordmd', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1f337cef60451348a3d7c721edd140c875b21bfce4af5bc03ae18ccb53fe3ce9', 'dockstore', id, 'rlawfordmd' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hnaireme', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ae70dcfef8ce6f391f930dc2b71158d874457c49d5449b1e037d23aac614700c', 'dockstore', id, 'hnaireme' from row;

with row as (
  insert into enduser (username, isAdmin) values ('boleszkiewiczmf', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'daca1cd5605d656094858826044c65615227eaf76fe5171ff518d270d712c144', 'dockstore', id, 'boleszkiewiczmf' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nwitherdonmg', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7f7b8dedca896ce423249a749897d3475d041abeb9b7ca7237979a3549f4bd02', 'dockstore', id, 'nwitherdonmg' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ebramontmh', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3fe4ad9edbea85237a0183f17ddd1dfd67ae11a3641c10ade306599b22f4723b', 'dockstore', id, 'ebramontmh' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bpieruccimi', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8c91d7f57ed0e34f4dee18d54849bbe0e2fee3af381a4a3dfb64c32927e1cf6e', 'dockstore', id, 'bpieruccimi' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jspentonmj', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'cc66486a5f7fbb1296427043c6e48d9c336389bd20fbdbd0a02bd01057a01f45', 'dockstore', id, 'jspentonmj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lmcgintymk', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4f09fcc8a7d5f6ab836ac3660fc6191b436650df9ed177df20ab340b926dbb33', 'dockstore', id, 'lmcgintymk' from row;

with row as (
  insert into enduser (username, isAdmin) values ('adelisleml', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b4ff9d1e4b3d0c74d68379a68e6084c6629f8487e772526ac7d0266f72a07ec1', 'dockstore', id, 'adelisleml' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bmaccarrollmm', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ce23e36e2f5acd6214c2ec8c06c09df39cb6934a1f5153f07a74ece2778e1284', 'dockstore', id, 'bmaccarrollmm' from row;

with row as (
  insert into enduser (username, isAdmin) values ('alaxsonmn', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8a3595ae4b94527cd946a65de5758476f4982819a67663c4db3aa5ac2e303a3e', 'dockstore', id, 'alaxsonmn' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rstubsmo', false) returning id
)
insert into token (content, tokensource, userid, username)
select '90aa2012127278f4b4ecbb8594e3305531e2e2f6e50a10ab6a615cbe54f066da', 'dockstore', id, 'rstubsmo' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bmacdavittmp', false) returning id
)
insert into token (content, tokensource, userid, username)
select '64611d5fa8631089e3e3da4e175c13bbb8f614174eced7718ec653d44ae32397', 'dockstore', id, 'bmacdavittmp' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cstennermq', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b30d3486458e020a17dc5032bce2e80aaeae53f7a8c7adad9cfa76165a969e73', 'dockstore', id, 'cstennermq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('brickesiesmr', false) returning id
)
insert into token (content, tokensource, userid, username)
select '30cc3dc48691cdc5666010558bdfcc877ee1ccfeffe8ae954e88e74cbf84fcf3', 'dockstore', id, 'brickesiesmr' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wleacockms', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c117e937a42770a0f67596bc970d8ed4a6033c024f984b571a362e94056a8257', 'dockstore', id, 'wleacockms' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mstonallmt', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6dd5c4d5ce8f00295316a61d4ad0312a56312752a9cd186e35a37393ca8ba69e', 'dockstore', id, 'mstonallmt' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kdennymu', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c92ca57cec842484c5ad3d87a76899d56a983e46caa1ecd802b672e33cdf844f', 'dockstore', id, 'kdennymu' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mmouldsmv', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3c163361d9133d7ade197944cfc7fe7139bc8179a054ca24ad17ff40dbfdf6cf', 'dockstore', id, 'mmouldsmv' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lchrystiemw', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b4c3de7571183b4cbe220ea664a4fdef6f0eeb09f203e3ac63f2d908ed6481f5', 'dockstore', id, 'lchrystiemw' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ebragancamx', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3109ed37870f731b9691e94694c619982c55fda01f65ef9aeb84f38b16524cdf', 'dockstore', id, 'ebragancamx' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pfreemantlemy', false) returning id
)
insert into token (content, tokensource, userid, username)
select '53a25ecb321b248522e4b16fd26a18daafb5475589f2ee96c8ea815281ad7599', 'dockstore', id, 'pfreemantlemy' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mwinscommz', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fdf2de304b12d690248c1d073ba4e6fc9209575da60427210d5ac7cfd89c0676', 'dockstore', id, 'mwinscommz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pfeaseyn0', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0e798beb550970fa85934d0bae7aa3a0e3e03ffda12bad31fc469c30ff9a4efe', 'dockstore', id, 'pfeaseyn0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('crockliffen1', false) returning id
)
insert into token (content, tokensource, userid, username)
select '71d4193492483d8e4fd39f0038fd97a529419f909d0905c355d6a7499bf3c69d', 'dockstore', id, 'crockliffen1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dboggishn2', false) returning id
)
insert into token (content, tokensource, userid, username)
select '65f11d7e4a0081c806ad0bb9eab6d1b646639a1068ccb45e33c2246d25631650', 'dockstore', id, 'dboggishn2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('marendsn3', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7c10a5c56a3e23310e39af3f7f39f7a14c1a1180f1e469f7102e512b1f4a9427', 'dockstore', id, 'marendsn3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('motsonn4', false) returning id
)
insert into token (content, tokensource, userid, username)
select '381dd419b190a380ebf19078ad62295ecd2d7b08c69a0afdef6c12a8b23f8a2b', 'dockstore', id, 'motsonn4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jbalsern5', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c137a0ddaab4a91d052b9b00111a3167290c4b0b0767f342c9cc590cb6c83dce', 'dockstore', id, 'jbalsern5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('snizetn6', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b0e47a678f3a1119420dea58f8c9eaf755682b1107105ceb91d0e7421cea713c', 'dockstore', id, 'snizetn6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hclailn7', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1a455ca863f237bc6f188a3eb599c7f9db654c96064b17af173152e794b01bdc', 'dockstore', id, 'hclailn7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('imckleodn8', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2720890bd93ff133d703f29a732d268d5bc97058d4b3d15f598aab9c93cc27d2', 'dockstore', id, 'imckleodn8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hbenton9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0c2b009c511d5649fe24ac544be9646a5f78eca66596a31b42624f26d75fd5b5', 'dockstore', id, 'hbenton9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('eeltonna', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3dcf1b66b4110adab39e1e83e56d1bfadb0746765e73be27becaa4c34b6fa2bb', 'dockstore', id, 'eeltonna' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wgwylltnb', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6a9baa094d37de98d3e5b2c5f9cc208292fc5006372399f42b5c1555d555a827', 'dockstore', id, 'wgwylltnb' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kkobischnc', false) returning id
)
insert into token (content, tokensource, userid, username)
select '732d99b6460a222c40f7f00809a4c0252c86fc686f7bf875e539f7371b520956', 'dockstore', id, 'kkobischnc' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wfirminnd', false) returning id
)
insert into token (content, tokensource, userid, username)
select '93ca35e473f90fd10ef9cd42efc8e1713d3881821a967f8083a883091aea3b49', 'dockstore', id, 'wfirminnd' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jgearene', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0428d916a61f2155c88c3141bfcf2ef5b16104ff28ceed0995a33b09f3e5bc8d', 'dockstore', id, 'jgearene' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jgalletynf', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f772ed8770dcb268c314803807d3a1c7e9e68906eadf6bdea0f3b718b18e3cec', 'dockstore', id, 'jgalletynf' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lnorreeng', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ffb8ac0ab6cc680e32267e337bf4be6509e6b0185aef5873e9dbf8a5f0630baf', 'dockstore', id, 'lnorreeng' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sbentzennh', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8f047a0d655859d04f2850d12a683783b9e7e953de1a699ecc49cec858ef16a6', 'dockstore', id, 'sbentzennh' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hbreeseni', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1288a64a0497bdd4e6b6f8c420c2fe9cc3167ca1d5d6eb9f02a5619cb91505d6', 'dockstore', id, 'hbreeseni' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fscraggsnj', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5c4c0bc68d5abb4699ed94e63e1ac09e08c9e4cb1f0dfc02e9bf7902a4fdf2ca', 'dockstore', id, 'fscraggsnj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kbernardnk', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ec4f0afeec3ebd44b458d14fb78822cb83a5ed975b0fd70d177600a2e5e32f8e', 'dockstore', id, 'kbernardnk' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cgayternl', false) returning id
)
insert into token (content, tokensource, userid, username)
select '58ba54ed2771193e222b338f4dbc5714c9dac68b3a995387f7594bfd55976d5d', 'dockstore', id, 'cgayternl' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gpfliegernm', false) returning id
)
insert into token (content, tokensource, userid, username)
select '42c098f1c2b640a7b77f338f9252d04345ce660e95c2c32b79dc9b6c65152644', 'dockstore', id, 'gpfliegernm' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kgoymernn', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fe8a7ab937a5f3af8914498a3a1b01758a8fe93b2fdd7b98de9ed16760cc7cef', 'dockstore', id, 'kgoymernn' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mpechacekno', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e3c797e5d9a7dddef999094efd09120fc11e2a8c23812f1e6d7422cba2eb5450', 'dockstore', id, 'mpechacekno' from row;

with row as (
  insert into enduser (username, isAdmin) values ('satheisnp', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fc446c69bf7e95e6f77850bc61691d7848e2249062c602d9187787214416a348', 'dockstore', id, 'satheisnp' from row;

with row as (
  insert into enduser (username, isAdmin) values ('akentonnq', false) returning id
)
insert into token (content, tokensource, userid, username)
select '11ce344390888736353fff6b9171a63e5ced79aa6a74db7b748b3ec8dfd1c650', 'dockstore', id, 'akentonnq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hdavisnr', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b654591beb06ad3ec9085f8cee67a4c3488473f8831f0dab2ccc49d610f8ed95', 'dockstore', id, 'hdavisnr' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ngatherellns', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'aceb5ef82aed3ec2b2dfaaffef38e82a95a7f0fdcc93821e2af97872b8929228', 'dockstore', id, 'ngatherellns' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pkirkbrightnt', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6b5726224c0a86542c3545b5a9db2e8d328ef89c7b8d0137617734c04bce5b7b', 'dockstore', id, 'pkirkbrightnt' from row;

with row as (
  insert into enduser (username, isAdmin) values ('chowseleenu', false) returning id
)
insert into token (content, tokensource, userid, username)
select '968a4f777de85373e645b4342298e00d4b6d8c9c1a06071eda4c3e5542ef512e', 'dockstore', id, 'chowseleenu' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hcuerdanv', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'eb575c70e6688a6c360ef9217c4d3a8130971dd8d8c974bcb2e3119f1fa4c6c6', 'dockstore', id, 'hcuerdanv' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ckeepenw', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1938c0bd67635d4d77cab8457065b068018eddf55d434a52efb6fdf435e8c1c7', 'dockstore', id, 'ckeepenw' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jcarrodusnx', false) returning id
)
insert into token (content, tokensource, userid, username)
select '864ee50d6cb1d54ae1c15303ab1c65bf0a4e60bf24c1be98fa7cf04a4ffc7ae0', 'dockstore', id, 'jcarrodusnx' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bafonsony', false) returning id
)
insert into token (content, tokensource, userid, username)
select '09557b239a706c467bb083edef1d26b90fdc3a3978253afa56b457f374165e49', 'dockstore', id, 'bafonsony' from row;

with row as (
  insert into enduser (username, isAdmin) values ('abrannigannz', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3621ed03a07fcfd9fcfd09ff2f94b2ba5d952ea5573319bc26d02bbaa7da1915', 'dockstore', id, 'abrannigannz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bsnozzwello0', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5d30e3401152df8105c90c9de4778d310e7b562c5e619d5556bf35cbf2150722', 'dockstore', id, 'bsnozzwello0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('snoirelo1', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4d8a9cbc37d711a4593311703e9f7580d53b6a43b20a5e6509b1b43513db14bf', 'dockstore', id, 'snoirelo1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rrenekeo2', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'eb2fb5f5b02165f4f32f2663b7369791185ddb10275c62fe5b02b4137bf2d9a1', 'dockstore', id, 'rrenekeo2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jorwino3', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'eb349038b01300452ffa6ea38dc87d25edcba39b0b8932543025c2ce7ddf9a15', 'dockstore', id, 'jorwino3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fgartsydeo4', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b3379aa6019c3d9f0782ca2c44672fdc95edbf339da1cb3ab0324f06dea7c285', 'dockstore', id, 'fgartsydeo4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('frothero5', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7ec2ced5411ab78efbc92bcf40cc091d65a14134ffb0ca9061323630827fca25', 'dockstore', id, 'frothero5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mdursleyo6', false) returning id
)
insert into token (content, tokensource, userid, username)
select '864ef55225bf6de09dbac43d5c8dc41f1a62acb3ce91396331251b0af2b618d6', 'dockstore', id, 'mdursleyo6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dsnalomo7', false) returning id
)
insert into token (content, tokensource, userid, username)
select '507688ee70f076b122f9bc3f5f1400a881ee06355a4657b06813fc3d1a9fdbbc', 'dockstore', id, 'dsnalomo7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('clinacreo8', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c9f671a4789f859417cae314da8d8a9cffe3444babb1a6db526f92a065708249', 'dockstore', id, 'clinacreo8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mgadsbyo9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '9b066209a573d6b259127531c0eaa2b6cee79cb9bcfaea67162d1072aefa60cd', 'dockstore', id, 'mgadsbyo9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cbatchanoa', false) returning id
)
insert into token (content, tokensource, userid, username)
select '01b086e7398d13bcf36af515e4214ec116ff12b3dc70202774ea81562957a464', 'dockstore', id, 'cbatchanoa' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jbuggsob', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4dd871a1fcac1809698674ba25853c2657d735d127376e6806e108ea537dd3c1', 'dockstore', id, 'jbuggsob' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mbrannioc', false) returning id
)
insert into token (content, tokensource, userid, username)
select '862ded1762588b63451b172ff827a94ae0c878d4679de818f7f13d5a0141680f', 'dockstore', id, 'mbrannioc' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hhousegood', false) returning id
)
insert into token (content, tokensource, userid, username)
select '043a8d64015ed29509f08f623f720dbce451a49469691a1a6a8cb3d3b0652893', 'dockstore', id, 'hhousegood' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lgethynoe', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6acf3bdd190fbe863cbe5be8e04e6299f783d42e85b9955c9b05e0d95a1c5852', 'dockstore', id, 'lgethynoe' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hsevenof', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4884049399ee3ae91622482f199a72c4451762e7f92ec06007bfbd48c2426dce', 'dockstore', id, 'hsevenof' from row;

with row as (
  insert into enduser (username, isAdmin) values ('treadieog', false) returning id
)
insert into token (content, tokensource, userid, username)
select '268ad05965d167c3c316ff3abd6bc8794ecfe657b2a62ece16208723acf76821', 'dockstore', id, 'treadieog' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tbittanyoh', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fb6a78d121c5e08ff310cf0a6875fd11daf1e3baa3820ed7d780457ce01647f6', 'dockstore', id, 'tbittanyoh' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sladymanoi', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'cfbc486c507bab4ab6de008bb37bfe22bef21c718dec74e467dfbbc82258074d', 'dockstore', id, 'sladymanoi' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gocahsedyoj', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a63ded14fe48f30b961ba5f073e1ea1574fa213e01eab8bb12a95aacbfcecc09', 'dockstore', id, 'gocahsedyoj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bgaskerok', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4fbc198f624cdb833eefa8df49cb8cb9e00de868d9adc77a1781d98eec136c46', 'dockstore', id, 'bgaskerok' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gmangeneyol', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0f96fb06f035a8d83dae58ccb506ca2bb12a3374441825d77ead3284c8a9067c', 'dockstore', id, 'gmangeneyol' from row;

with row as (
  insert into enduser (username, isAdmin) values ('vscottiniom', false) returning id
)
insert into token (content, tokensource, userid, username)
select '88efa95be1ebd606fdaaea9e2f2edaa8057243ff97ad1c8ee0927d9f4cb01b2e', 'dockstore', id, 'vscottiniom' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dchasteneyon', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8a7e57395a47f586965f5eaa447ce78c93f809f735c32f943de75bb6eb4f6a15', 'dockstore', id, 'dchasteneyon' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gcundoo', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fae9d59b86f1659da47e60ae0d89e11fc5a92e56afc83d9e70c741396568409f', 'dockstore', id, 'gcundoo' from row;

with row as (
  insert into enduser (username, isAdmin) values ('slainop', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e83891d91e61a1c8f07bf23071126b5ffbcc8b9bc3fe3ac6de1df8a8405c9ada', 'dockstore', id, 'slainop' from row;

with row as (
  insert into enduser (username, isAdmin) values ('vhenrysoq', false) returning id
)
insert into token (content, tokensource, userid, username)
select '002d03b0b6ace99fa27949eb40302d2fa5a644d4db1f6db349319fc24248bbfb', 'dockstore', id, 'vhenrysoq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lfergusonor', false) returning id
)
insert into token (content, tokensource, userid, username)
select '75b152a3cc7414394bd373dc3e3e490714d5f9e16e1a1ef562d12b0c282dcac6', 'dockstore', id, 'lfergusonor' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hfairbourneos', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'eaeb9b50979a8562071d261b53e270c30c6270d30792b8834a5866033d18e7c6', 'dockstore', id, 'hfairbourneos' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tkeetsot', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e42d78258ec14cdb494efd401e3f42ed5a7f298a1e273e4b5a84c2e6e1329962', 'dockstore', id, 'tkeetsot' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fdarkerou', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fb0a8aa0d34ba37713752a8d015b9f235e480cf39146ce8a32a9e988908d5ac4', 'dockstore', id, 'fdarkerou' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lfarlambov', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a78be86d5940b86a60f7eed3ded815c8e491dd232a2372e92594ae070918e3d0', 'dockstore', id, 'lfarlambov' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fdonaherow', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7316bfef19532543b19f9a12cbe4129850acdf131be7d4b48afe60a5660f574c', 'dockstore', id, 'fdonaherow' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rhickenox', false) returning id
)
insert into token (content, tokensource, userid, username)
select '61478d4207b8859419f4d2d38cc03c9782e7bbc043ad6882ae7ef1879dc009a1', 'dockstore', id, 'rhickenox' from row;

with row as (
  insert into enduser (username, isAdmin) values ('overduinoy', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5df91e4640724d78f6371845e80a8972b62a66dbc3de719f098302da490cff89', 'dockstore', id, 'overduinoy' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cshakesbyeoz', false) returning id
)
insert into token (content, tokensource, userid, username)
select '792dc3dedd0282b071efc80c1e904a6595581fe1a93d64781564ea998c173fa3', 'dockstore', id, 'cshakesbyeoz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bbrokp0', false) returning id
)
insert into token (content, tokensource, userid, username)
select '59587befe644019b4f05dd0c8cf8721fcd6fafec8175edbaaa5150bf71ee5e60', 'dockstore', id, 'bbrokp0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dmckagp1', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6910ffd7384bb6fa048354a94748d1a0627a079ec080782dcc6573830a39bcc1', 'dockstore', id, 'dmckagp1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dharbinsonp2', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f39a041ace6938fb0535c7d66f45a9d0d5586d648423eeedab5f1847fe47b043', 'dockstore', id, 'dharbinsonp2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mmuggletonp3', false) returning id
)
insert into token (content, tokensource, userid, username)
select '94cd6543bf0d090ddaa88e0146c1665b887d6a90395cbd8120e1d73d92870dc7', 'dockstore', id, 'mmuggletonp3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tmingayep4', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c5bd7bb3413e00f0520ea069d6f929a719061104ba309b28374acc751e9d44f3', 'dockstore', id, 'tmingayep4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rrobersonp5', false) returning id
)
insert into token (content, tokensource, userid, username)
select '01b21bebf16d3dad509a05dece10dc147de9fb471ed3930dc52510e79b1e3558', 'dockstore', id, 'rrobersonp5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kgoldsterp6', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'dc47c2e92025e3cce757272b8e1d7ddfa69d2185570f6af2962d72c9b2c53a96', 'dockstore', id, 'kgoldsterp6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('omarrettp7', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'edabb18ec5359a49c262bfbc3d6d56455045487ebd45bafe1fa0ee38d8634aa4', 'dockstore', id, 'omarrettp7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ymatijevicp8', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ac1f720d752a64d3ad655ae6b731e2ed8fea82822ff001889016d6aca381a191', 'dockstore', id, 'ymatijevicp8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('aspadollinip9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0e53f87403be17e2b74e483361e97c3b294897f2ffd404b5795633a60e81ec61', 'dockstore', id, 'aspadollinip9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sstledgerpa', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fb0af7455f079a3960ba1334335dec0a8d1167f34de2874643a409688189ac92', 'dockstore', id, 'sstledgerpa' from row;

with row as (
  insert into enduser (username, isAdmin) values ('sdowlepb', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6d2b9de376a006956062378751f02c15569b40956039b6ee80f69fd72311a06a', 'dockstore', id, 'sdowlepb' from row;

with row as (
  insert into enduser (username, isAdmin) values ('arayburnpc', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'beabfd3cb2657da0b59651bb6ba919232630cbfdf35e48aa34160ae2a2bd4167', 'dockstore', id, 'arayburnpc' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bbygreavespd', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7ab68cd6af2490dbe5c2787eb8a918154a7d0f89faf8307b73e4db7e0c0e3450', 'dockstore', id, 'bbygreavespd' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bhandmorepe', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd373e8d80a1463cb624947b1d14b4d0315651ea3e24d6f88bdea8545675fe828', 'dockstore', id, 'bhandmorepe' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tpetranekpf', false) returning id
)
insert into token (content, tokensource, userid, username)
select '090414816ae9d70bae33dacccebb9c72117cae66906aa8fa844b2a7420ae6f77', 'dockstore', id, 'tpetranekpf' from row;

with row as (
  insert into enduser (username, isAdmin) values ('crabatpg', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'eceeadb120dec0b85ce629b5ff2192a7c2b1284d5051910018ad25b1f82f0c31', 'dockstore', id, 'crabatpg' from row;

with row as (
  insert into enduser (username, isAdmin) values ('shawfordph', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f5efcfc30d2a0aac70110855d1e5bbcf1a5fdc62c1b23a1dd9185399f9e3716d', 'dockstore', id, 'shawfordph' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cchrippespi', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b28690fc35ae186a507dead5e34c3e3697a7d19f1ead191803b2ef7339dc9707', 'dockstore', id, 'cchrippespi' from row;

with row as (
  insert into enduser (username, isAdmin) values ('knizetpj', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5e9658cdf4a3ee10e8ee9ec04776b47025b095e9ff6bcaad50ceb14317d527bd', 'dockstore', id, 'knizetpj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cambrogiopk', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0383fdba26609cf37be39ebf6375737453205590fb02ddd7efe37bb8b97ba9af', 'dockstore', id, 'cambrogiopk' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tmcquiepl', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a7efe588a3a9e21122c364032a882158a4abac5496d51d116d72e5823e36b98f', 'dockstore', id, 'tmcquiepl' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cblazypm', false) returning id
)
insert into token (content, tokensource, userid, username)
select '57a6d41913bfa0123110ee5068bb4768c5c3d5a1c836d92f387f60e18a6b0bf0', 'dockstore', id, 'cblazypm' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tposthillpn', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1b96929f3f5bb5a8f938e6f79d0ddeca97bb8c555e71181d057bb2787a09f3e3', 'dockstore', id, 'tposthillpn' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bpechanpo', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c3b910b693d446f95ae8536f44796990a6fbd63a805d0ee4f4a7b0bc8d05f3ae', 'dockstore', id, 'bpechanpo' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kabaroughpp', false) returning id
)
insert into token (content, tokensource, userid, username)
select '07331abf685bddacb4b52df3cd5f2d455580f6b6063521e9751de7ce7b391cdc', 'dockstore', id, 'kabaroughpp' from row;

with row as (
  insert into enduser (username, isAdmin) values ('shannabusspq', false) returning id
)
insert into token (content, tokensource, userid, username)
select '06a841907baa2675d42849e1eea76bdcce02d1300a5f1b7710ab5a9cd33d77f7', 'dockstore', id, 'shannabusspq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('thoutbypr', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5150b06a4759feaaef95f5aba99769e2483a45a5cd539f277c8ad8ec83289fb1', 'dockstore', id, 'thoutbypr' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dmewburnps', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b9814ae46f7f4478d8e9c851e7adb8ec9338dafb30b7e7f3f56c80208b192be3', 'dockstore', id, 'dmewburnps' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lpaolozzipt', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3d6291f1f41f92ed8182d61ca5a19bc4bc55e2462713cd6d75de57e0fcf2c11f', 'dockstore', id, 'lpaolozzipt' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mrooksbypu', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd0068b30c36cafa4aef94c8014d5d3be7e09a046e3363ad86377dc917dd0431c', 'dockstore', id, 'mrooksbypu' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cbiskupiakpv', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fb04668212c1b8cdadd44a20923b2a3a1bccb8a05bcdf92709458409e0e339cc', 'dockstore', id, 'cbiskupiakpv' from row;

with row as (
  insert into enduser (username, isAdmin) values ('clebondpw', false) returning id
)
insert into token (content, tokensource, userid, username)
select '92fd725a51c070997b81ae802f729ba0c25bf0b904a2bb9999ef36dcea080d3c', 'dockstore', id, 'clebondpw' from row;

with row as (
  insert into enduser (username, isAdmin) values ('tumberspx', false) returning id
)
insert into token (content, tokensource, userid, username)
select '53e62be7c000b6b4cf964b307eb56615549a4f2f8e1d91795898116489073424', 'dockstore', id, 'tumberspx' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fdennypy', false) returning id
)
insert into token (content, tokensource, userid, username)
select '693a29cb99faee5161df32baaea95005334556f29066e95dacb6ce385fc46704', 'dockstore', id, 'fdennypy' from row;

with row as (
  insert into enduser (username, isAdmin) values ('demmottpz', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'dcad635e4b610bb50de085163e53666fbed527538f78bf6ca99b229e52f01000', 'dockstore', id, 'demmottpz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('astanmanq0', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0a164e3fc6c7110ce5adba9e3d440710a626d79c7cf64feac9524b93143fc245', 'dockstore', id, 'astanmanq0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('asteddallq1', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7b42b538a7b7db51f046e48d12a311914b74695f38af365dcebb2e372a8b7d72', 'dockstore', id, 'asteddallq1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fbaynardq2', false) returning id
)
insert into token (content, tokensource, userid, username)
select '30134bb8940b661646119d746b7573326104c0b413a3f5aa44d03ae189fe7478', 'dockstore', id, 'fbaynardq2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jgobournq3', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6b015d426bdefd8db215aa230315ac6be89a1ee21c4fb4b687947b5fe1a015eb', 'dockstore', id, 'jgobournq3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ndemetzq4', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8b8ceb1660cfed8d25d4933d6c61e70bd8841dd713bb5a18dfdf6ac12ff03f43', 'dockstore', id, 'ndemetzq4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pcordetq5', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e3a7ac738a62119422a0c8c63bb3c2dab9cdb1ef54e401b4ef7c8f3d21854df5', 'dockstore', id, 'pcordetq5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('benricq6', false) returning id
)
insert into token (content, tokensource, userid, username)
select '93fd555c3b68443c5192ec6fc7b5a41320ffc90d39e13787bf4582fcbd9665e2', 'dockstore', id, 'benricq6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ibarczynskiq7', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4fe23ab97bae67ee31237da885645512dba31a76a8e09acfa4bfc286cf9edc00', 'dockstore', id, 'ibarczynskiq7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wsherrq8', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1bea354d596e6a136eab9605906490dc691aec418cf7e117bd15d8570c6a718b', 'dockstore', id, 'wsherrq8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ckleinq9', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'efcf2f821b17c797ea12ac9ab301c0957f71c6cfc590e4cadb4152c1d2d8b87a', 'dockstore', id, 'ckleinq9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wnatonqa', false) returning id
)
insert into token (content, tokensource, userid, username)
select '73b916d5fbb94adb7fb16a76b5abc257a2cccd8ce63d451b0c55a300b1efebe7', 'dockstore', id, 'wnatonqa' from row;

with row as (
  insert into enduser (username, isAdmin) values ('smorrittqb', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fc09b6a1c913824ae52dcfde0f8a044ba9a97c3e5bb1280d56076066b0cf415e', 'dockstore', id, 'smorrittqb' from row;

with row as (
  insert into enduser (username, isAdmin) values ('fclaremontqc', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6dc630ef21201d097f5a18469f0cea92c8968e72529870154b3f2adae67cda02', 'dockstore', id, 'fclaremontqc' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ndomninqd', false) returning id
)
insert into token (content, tokensource, userid, username)
select '069808032f34a7ffb89ef76a6ed6b3555f4bb120005e6c8fe07ba8ddcb533c29', 'dockstore', id, 'ndomninqd' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pgianoliniqe', false) returning id
)
insert into token (content, tokensource, userid, username)
select '669db5f11b9dc8e4364d413557177123c120a1991d976f6fa6d2b1ac3182876d', 'dockstore', id, 'pgianoliniqe' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kbosseqf', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b00c7e6c1de5c9507efbee6adf3bbf0954e41082e82cbea27df22cef1b64f7db', 'dockstore', id, 'kbosseqf' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pgrabehamqg', false) returning id
)
insert into token (content, tokensource, userid, username)
select '439ed7b8820a8622e2655479b4c999f5e88b1c4336004631a5e1fad92ce00151', 'dockstore', id, 'pgrabehamqg' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jalfordqh', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'ca1e912729a71382fe1c682014f6f75f40e9cf50f8c582034867735cea5f3a1c', 'dockstore', id, 'jalfordqh' from row;

with row as (
  insert into enduser (username, isAdmin) values ('djuneqi', false) returning id
)
insert into token (content, tokensource, userid, username)
select '775ce3e85f0a785eed6837b82bfd143e06f5c40562b5a0e21ec8b7a35a38475c', 'dockstore', id, 'djuneqi' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mcoronadoqj', false) returning id
)
insert into token (content, tokensource, userid, username)
select '7a002d0c2d25e131d638329980df91cde5dffe3acf7b545a93ad3a582578121d', 'dockstore', id, 'mcoronadoqj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mmacgilpatrickqk', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'f34b66518249a54abe2501093b40ad35afe1dddc9ac9489c0db04ceeb7b99665', 'dockstore', id, 'mmacgilpatrickqk' from row;

with row as (
  insert into enduser (username, isAdmin) values ('krimourql', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4586ded5a4709fe87df149fef2e4d8329231165327a17b3645fdb29f1be974b5', 'dockstore', id, 'krimourql' from row;

with row as (
  insert into enduser (username, isAdmin) values ('gmealandqm', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6a18c75e3108cfd13583fa7b1e50940c37faebe9dbb8f8ae3c842668c0842936', 'dockstore', id, 'gmealandqm' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kvieyraqn', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0e6c939dd6a993e3c4c0aca9450c7f2810fa1f7d7520a1bdb6609aab7e8ae751', 'dockstore', id, 'kvieyraqn' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dstaversqo', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b040a9851a88a550184a717a6c8bfd5943166781c80a2247a69ca0af5a7a5976', 'dockstore', id, 'dstaversqo' from row;

with row as (
  insert into enduser (username, isAdmin) values ('zgrigorescuqp', false) returning id
)
insert into token (content, tokensource, userid, username)
select '70bce228a18bd659b3c1d398a5f3b02e56868561a6518b31368c8028efea6411', 'dockstore', id, 'zgrigorescuqp' from row;

with row as (
  insert into enduser (username, isAdmin) values ('htrimqq', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'cbff710a36d0e63c718fedef7b3aea357e1cbd8699f37d95055d1d7a599a06b4', 'dockstore', id, 'htrimqq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('ddismanqr', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5880b825693649ffb14dda1ade2a800f355ede33b8e8eccdcaa4ecd047265435', 'dockstore', id, 'ddismanqr' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rkerrodqs', false) returning id
)
insert into token (content, tokensource, userid, username)
select '861f2b6b2f4b2ca18246901c0242dcf25c985672a18077c65ee81a4c9afcf80e', 'dockstore', id, 'rkerrodqs' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cleportqt', false) returning id
)
insert into token (content, tokensource, userid, username)
select '78e8887dc8b933a6bf09be3958737288a1865d2079b9de2117d3e925290bba0a', 'dockstore', id, 'cleportqt' from row;

with row as (
  insert into enduser (username, isAdmin) values ('iescoffreyqu', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5fe87ae09bc4ee1fb6c38eb30452ca896dd927d8f4df26a6d7d5652a6829ba38', 'dockstore', id, 'iescoffreyqu' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kalyokhinqv', false) returning id
)
insert into token (content, tokensource, userid, username)
select '3632d9cabe341d250f25112f28df55a45773bd777f7d0bed00c1bd42a6dafce5', 'dockstore', id, 'kalyokhinqv' from row;

with row as (
  insert into enduser (username, isAdmin) values ('emaydwayqw', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e5b3bc98e25d6d1c3c5cdefe8a1673de3f149772b2d012971fcbfe70115d711e', 'dockstore', id, 'emaydwayqw' from row;

with row as (
  insert into enduser (username, isAdmin) values ('mfolkertsqx', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fbe93f9b9549f9d0a925ae00370bbfcf335cb9bbaaea51f8a40d3b5da3ec51a3', 'dockstore', id, 'mfolkertsqx' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dastleyqy', false) returning id
)
insert into token (content, tokensource, userid, username)
select '368cd4f42bb4826f02486ce7b0d22b100e7d626fa3e398e9dc0b5cdf50b6a955', 'dockstore', id, 'dastleyqy' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jbedderqz', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e75f4f8ea1274c00804495624ef63d02b6588a27aa83c91ac1d458898cac1f2b', 'dockstore', id, 'jbedderqz' from row;

with row as (
  insert into enduser (username, isAdmin) values ('vginnallyr0', false) returning id
)
insert into token (content, tokensource, userid, username)
select '834af6d15241eb3b07019586b2bae20348e669a86f04da9ad73d145e1d95bae0', 'dockstore', id, 'vginnallyr0' from row;

with row as (
  insert into enduser (username, isAdmin) values ('athompsettr1', false) returning id
)
insert into token (content, tokensource, userid, username)
select '88c45c8054b23154292c5bc4048c1e1b79507c3c078d7afcf25aeb636f2eef8a', 'dockstore', id, 'athompsettr1' from row;

with row as (
  insert into enduser (username, isAdmin) values ('isieghartr2', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b407ebefee9d1ae7811347ccbc328939d7045967c08c85a9868ae292ddddc6e5', 'dockstore', id, 'isieghartr2' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wbullentr3', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1275e44277bdf7c5bafefe9f129883d4b523728c39d1ec577976fa0e3a6f023c', 'dockstore', id, 'wbullentr3' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kcluderayr4', false) returning id
)
insert into token (content, tokensource, userid, username)
select '4341167bf5108c50aa44d5c3462b18ffb0b40316e5d61bdf05a66655160c2734', 'dockstore', id, 'kcluderayr4' from row;

with row as (
  insert into enduser (username, isAdmin) values ('bbleasr5', false) returning id
)
insert into token (content, tokensource, userid, username)
select '25be42331ba87f595244496af974f63be8539af6e18ce6436b1d9d691ff53836', 'dockstore', id, 'bbleasr5' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kwoolfittr6', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0e947e34e06d1f03cd421c25d109b5f965c6f0f62750590ce3676f56f0beea0f', 'dockstore', id, 'kwoolfittr6' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hbuchettr7', false) returning id
)
insert into token (content, tokensource, userid, username)
select '5ed47fc29e92476afa146e2a96fe9bd9204126808b11e847569d91484c95139c', 'dockstore', id, 'hbuchettr7' from row;

with row as (
  insert into enduser (username, isAdmin) values ('otattersdillr8', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a0e4cde50ac4bba8fc9716def58290330503ddb19ef6f9a2ee2af313f1e680d9', 'dockstore', id, 'otattersdillr8' from row;

with row as (
  insert into enduser (username, isAdmin) values ('awaggattr9', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0a21fa4a94b496c64df6fa1bf7a91fde859daf57346916cf337c744bccede9aa', 'dockstore', id, 'awaggattr9' from row;

with row as (
  insert into enduser (username, isAdmin) values ('nchristonra', false) returning id
)
insert into token (content, tokensource, userid, username)
select '54481b9bbbc20fa1048655745bdbd1574ba32c6d31940546287fc361624af233', 'dockstore', id, 'nchristonra' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rechallierrb', false) returning id
)
insert into token (content, tokensource, userid, username)
select '1c6478e9e74247a0c35e6ab948d9d988a128e4f3714bc2a9c82f4361afb6eff0', 'dockstore', id, 'rechallierrb' from row;

with row as (
  insert into enduser (username, isAdmin) values ('satthowerc', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a750ff8b45a2be47a1318af7b97748372a7b8d044fc7d9ffb90c3057f8e0bf25', 'dockstore', id, 'satthowerc' from row;

with row as (
  insert into enduser (username, isAdmin) values ('apaulichrd', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'c7631c3b61f173b71dedd0fdaaf08e3cc72f9727f3876c4ea119c442186287a1', 'dockstore', id, 'apaulichrd' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kwoodbridgere', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'fa9684be5b2e3e51f80cc2ab55c5f13dd6d6f6b80a060c0e13429f060faa56cf', 'dockstore', id, 'kwoodbridgere' from row;

with row as (
  insert into enduser (username, isAdmin) values ('jrecklessrf', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'a034e02add0a5bcb0a5b9c6e4349c33901ba10a4c06406f8f98a68c93ae2f5bc', 'dockstore', id, 'jrecklessrf' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pdrainrg', false) returning id
)
insert into token (content, tokensource, userid, username)
select '0d8d4e4ba19b84a99494f91eb541c966c2306017c7af91a1f1b4f462e7fa132f', 'dockstore', id, 'pdrainrg' from row;

with row as (
  insert into enduser (username, isAdmin) values ('lolivetorh', false) returning id
)
insert into token (content, tokensource, userid, username)
select '34a5c8db0d0594ba5370589e36b66da562f4e0775520d34cf17a6907e6f85080', 'dockstore', id, 'lolivetorh' from row;

with row as (
  insert into enduser (username, isAdmin) values ('khartingtonri', false) returning id
)
insert into token (content, tokensource, userid, username)
select '2be7616e8d96607c515ba210431fb968a360f8b620d1344b04fe23dec188780b', 'dockstore', id, 'khartingtonri' from row;

with row as (
  insert into enduser (username, isAdmin) values ('pheinorj', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e8e9a84c0c18ed0da5337a916ad169fa5113e7c37043d9c089f8dad37560bb22', 'dockstore', id, 'pheinorj' from row;

with row as (
  insert into enduser (username, isAdmin) values ('cenderwickrk', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b4d7ee9288dcceb26529da40955966327d380fdd6a20b2291cd5d2ef0ccaae94', 'dockstore', id, 'cenderwickrk' from row;

with row as (
  insert into enduser (username, isAdmin) values ('hkorneichukrl', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e3687d55fde2fa0269b4f63b756ad58af1ccd512dac7c2308e6366993c08862b', 'dockstore', id, 'hkorneichukrl' from row;

with row as (
  insert into enduser (username, isAdmin) values ('rmangamrm', false) returning id
)
insert into token (content, tokensource, userid, username)
select '8fb8994fbd2b4abec3c3034f827606d5b3346c61b28faf8581474e53912bc0ae', 'dockstore', id, 'rmangamrm' from row;

with row as (
  insert into enduser (username, isAdmin) values ('msacherrn', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'd39141ab0fa9e3d4a570c20d203a948357840dc918213bb73e9821fb55ee2614', 'dockstore', id, 'msacherrn' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wharfletero', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'b908a780143074c72e60cf554dd2a691f380d079e65627721b159279fd655539', 'dockstore', id, 'wharfletero' from row;

with row as (
  insert into enduser (username, isAdmin) values ('wscneiderrp', false) returning id
)
insert into token (content, tokensource, userid, username)
select 'e1d2211f7a9443405987b462aad41a01c3284c993c51fe20ed45a0c8a75fab56', 'dockstore', id, 'wscneiderrp' from row;

with row as (
  insert into enduser (username, isAdmin) values ('dcalverdrq', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6720103583f07f7c06c6eaed89351fb97fdf6df6eac6dcb39a1e7b9ff57d9cf3', 'dockstore', id, 'dcalverdrq' from row;

with row as (
  insert into enduser (username, isAdmin) values ('kknucklesrr', false) returning id
)
insert into token (content, tokensource, userid, username)
select '6feff25d5867f02c6b5aa7d85a075e0a8463425140f700ab6998d49ea0026f08', 'dockstore', id, 'kknucklesrr' from row;
