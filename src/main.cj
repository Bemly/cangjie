package bemlyCJWeb

import soulsoft_web_http.*
import soulsoft_web_routing.*
import soulsoft_web_hosting.*
import soulsoft_extensions_injection.*
import std.collection.*
import std.env.*
import std.time.*
import std.fs.*
import std.io.*
import stdx.log.*
import stdx.logger.*
import std.convert.*
import bemlyCJWeb.model.*
import bemlyCJWeb.views.*
import bemlyCJWeb.posts.*
import bemlyCJWeb.turnstile.*

let log = SimpleLogger(getStdOut())
let postList = ArrayList<Post>()
let config = Config()
let turnstileState = TurnstileState()

func initPosts() {
    postList.add(getArchLinux400mbPost())
    postList.add(getAzureOpenaiPost())
    postList.add(getAzureOpenaiAccountPost())
    postList.add(getAzureOpenaiChatgptPost())
    postList.add(getChromeExtensionPost())
    postList.add(getCloudServerJourneyPost())
    postList.add(getFnnasBypassPost())
    postList.add(getJavaverseChatPost())
    postList.add(getKernel71rc3bbrPost())
    postList.add(getThirdPartyCookiePost())
    postList.add(getP1panelwaflongjuansblogcoPost())
    postList.add(getP21linuxPost())
    postList.add(getP30303030Post())
    postList.add(getP30issue280mqyqingPost())
    postList.add(getP35253544Post())
    postList.add(getP3b1bmanimanimationengineforexplanatorymaPost())
    postList.add(getP8markdownPost())
    postList.add(getAddAnOverviewzoomingFeatureYalterniriPost())
    postList.add(getAddHttpsToWebPagesHttpsIssue1471Post())
    postList.add(getAdvancedMarkdownreadmemdAtMasterDavidwePost())
    postList.add(getAlistOrgalistDiscussion4932Post())
    postList.add(getAllowFreeloaderToBootVistaByMaharmstonePost())
    postList.add(getAngelic47fontchinese7x77x7Post())
    postList.add(getAnsiEscapeCodesPost())
    postList.add(getApiApiPost())
    postList.add(getApiByCubikosprojectPullRequestPost())
    postList.add(getApiDifferencesBetweenApi5AndApi6Post())
    postList.add(getApiIssue168SocialsisteryibilibiliPost())
    postList.add(getApiIssue364SocialsisteryiPost())
    postList.add(getAppAppPost())
    postList.add(getAppiumBingPost())
    postList.add(getApplealcWorkingIntermittentlyIssue422Post())
    postList.add(getApplealcreadmecnmdAtMasterAcidantheraaPost())
    postList.add(getArchcraftHomePost())
    postList.add(getAsahiLinuxPost())
    postList.add(getAsdzhengvpnservicesVpnservicesPost())
    postList.add(getAvaloniauiavaloniaCXamlWPost())
    postList.add(getAvaloniauiavaloniavsVisualStudioExtensionPost())
    postList.add(getBapiIssue259SocialsisteryibilibiliPost())
    postList.add(getBasicWritingAndFormattingSyntaxGithubDocsPost())
    postList.add(getBingPost())
    postList.add(getBing2Post())
    postList.add(getBiosMarcelcordlessTheDiscordTerminalCliePost())
    postList.add(getBlogcontentpostpythonmdAtMasterFePost())
    postList.add(getBlogmdAtMasterXuweningblogPost())
    postList.add(getBonjourcraftlauncherGooglePost())
    postList.add(getBookbookmdAtMainOicoolbookPost())
    postList.add(getBrobirdclashARuleBasedTunnelInGoPost())
    postList.add(getBrx86bilibiliPicpoolBPost())
    postList.add(getBugAndroidtunvpnIssue1571Post())
    postList.add(getBugGiteaJavascriptErrorsInFirefoxIssuPost())
    postList.add(getBvibberogvjsJavascriptMediaPlayerUsingOPost())
    postList.add(getCHowCanIRemotelyEditcreateAWikiForPost())
    postList.add(getCHowCanIRemotelyEditcreateAWikiFor2Post())
    postList.add(getCantStartHyprlandEvenAsAWheelUserNeedPost())
    postList.add(getCbergitBetaPost())
    postList.add(getCfLinuxDoPost())
    postList.add(getCfipcloudflareIssue30Post())
    postList.add(getChromeDnschneidcroutonWikiPost())
    postList.add(getClashMihomoTailscaleZerotierAppPost())
    postList.add(getClashVergeRevPost())
    postList.add(getClearInstructionsForInstallingChromeOsOnPost())
    postList.add(getCliclackRustPost())
    postList.add(getCloningAWikiFailsIssue1624DesktopdePost())
    postList.add(getCloudflareWorkersOpenaiApiGfwPost())
    postList.add(getCn107360275apdfPost())
    postList.add(getCodeskyPost())
    postList.add(getCommandInStdsysunixprocessprocesscomPost())
    postList.add(getCompositorSendPreferredScaleAndTransformPost())
    postList.add(getContaboPost())
    postList.add(getCoreopsRustPost())
    postList.add(getCorsIssue26GitNewsgitNewsPost())
    postList.add(getCorsJsonpGithubPost())
    postList.add(getCratesioRustPackageRegistryPost())
    postList.add(getCreateNewPageBemlywebIssueinkWikiPost())
    postList.add(getCssEquivalentForMozElementInOtherBrPost())
    postList.add(getD1581PdfPost())
    postList.add(getDalianskyhackintoshHackintoshLongTermMainPost())
    postList.add(getDebianGnulinuxPost())
    postList.add(getDebianUbuntuIsBasedOnDebianPost())
    postList.add(getDebianUbuntuIsBasedOnDebian2Post())
    postList.add(getDeviceOrientationApiDemoByAurelioDeRosaPost())
    postList.add(getDieshotGooglePost())
    postList.add(getDimforgenalgebraLinearAlgebraLibraryForRPost())
    postList.add(getDlPractiseopensitupOpensitupPost())
    postList.add(getDmca20220809PlainCraftLauncher2mdAtMaPost())
    postList.add(getDnsAndSocksProxyFeliscatusswitchyomegaWikiPost())
    postList.add(getDnsapiAcmeshOfficialacmeshWikiPost())
    postList.add(getDockerCouldNotRetrieveMirrorlistHttpmPost())
    postList.add(getDohHttp3DohPost())
    postList.add(getDortaniaopencoreLegacyPatcherExperienceMaPost())
    postList.add(getDowngradingPackagesArchwikiPost())
    postList.add(getDownloadMencoderexeMplayermencoderTheMoPost())
    postList.add(getDuolabmeng6wangshangjisaoPost())
    postList.add(getEaglercraftEaglercraftGiteaPost())
    postList.add(getEaglercrafteaglercraft18Eaglercraftx18Post())
    postList.add(getEaglerforgePost())
    postList.add(getEaglerrinthPost())
    postList.add(getEasilyRunWindowsSoftwareOnLinuxWithBottlPost())
    postList.add(getEasybcdPost())
    postList.add(getEasytcpPost())
    postList.add(getEd25519GooglePost())
    postList.add(getEsdwimIssue340ChPost())
    postList.add(getEsmLoaderByEdemainePullRequest5447JPost())
    postList.add(getEsp32C3DevkitRust1BomPost())
    postList.add(getExtramausIsAToolThatShowsAnAdditionalMoPost())
    postList.add(getFailingConvertModelToTfjsIssue3704UPost())
    postList.add(getFaqZhCnJustarchinetarchisteamfarmWikiPost())
    postList.add(getFatemezamanianyolov8PoseTfjsPost())
    postList.add(getFedoraAsahiRemixAsahiLinuxPost())
    postList.add(getFf37LetsSweatPost())
    postList.add(getFfmpegAmfGpuopenLibrariesandsdkPost())
    postList.add(getFfmpegAndAmfHwAccelerationGpuopenLibrarPost())
    postList.add(getFfmpegGpuopenLibrariesandsdksamfPost())
    postList.add(getFluenthubdocsauthorizeAppmdAtMainFluenPost())
    postList.add(getGeckoviewAndroidWebview167MozPost())
    postList.add(getGeckoviewGeckoviewPost())
    postList.add(getGh0stzkdotfilesBspwmEnvironmentWith18ThePost())
    postList.add(getGileli121glasscodeThisPluginAllowsYouToPost())
    postList.add(getGinkihaGooglePost())
    postList.add(getGitBookPost())
    postList.add(getGitalkBingPost())
    postList.add(getGiteecomPost())
    postList.add(getGiteecom2Post())
    postList.add(getGithubPost())
    postList.add(getGithub2Post())
    postList.add(getGithub3Post())
    postList.add(getGithub4Post())
    postList.add(getGithub5Post())
    postList.add(getGithub6Post())
    postList.add(getGithub7Post())
    postList.add(getGithubActionsGithubPost())
    postList.add(getGithubApiissueIssue44IsaaxiteblogPost())
    postList.add(getGithubColatigerv2rayNodesV2rayshadowrocPost())
    postList.add(getGithubDisco0offlineinsiderenrollOfflineinPost())
    postList.add(getGithubFlightlessmangomangohudAVulkanAndPost())
    postList.add(getGithubFumiamacopymangaAppPost())
    postList.add(getGithubGithubPost())
    postList.add(getGithubGithub2Post())
    postList.add(getGithubGithub3Post())
    postList.add(getGithubGrasscuttersgrasscutterAServerSofPost())
    postList.add(getGithubMoond4rkhackbrowserdataDecryptPassPost())
    postList.add(getGithubOslookclashFreenodeClashConfigPost())
    postList.add(getGithubPagesGithubApiIssue2Post())
    postList.add(getGithubPagesIssuesApiIssue4Post())
    postList.add(getGithubPagesOauthStackOverflowPost())
    postList.add(getGithubReadmeStatsthemesreadmemdAtMasterPost())
    postList.add(getGithubRossning92win11songPost())
    postList.add(getGithubTakayamaLilyoicqQqPost())
    postList.add(getGithubTigerbeanstluoxuBotATelegramBotPost())
    postList.add(getGithubWhereSoftwareIsBuiltPost())
    postList.add(getGithubYuStevenopenitOpenitPost())
    postList.add(getGithubYujincheng08biliroamingBPost())
    postList.add(getGlyphBitmapDistributionFormatBdfSpecificPost())
    postList.add(getGoCqhttpGithubTopicsPost())
    postList.add(getGoblinSlayerGoogleSearchPost())
    postList.add(getGoldMinertodo1tutorialWriteAShellInCmdPost())
    postList.add(getGollumlibgollumapprbAtMasterGollumgollumPost())
    postList.add(getGoodLookingByRohithSreedharanPullRequesPost())
    postList.add(getGooglePost())
    postList.add(getGoogle2Post())
    postList.add(getGoogle3Post())
    postList.add(getGoogle4Post())
    postList.add(getGoogle5Post())
    postList.add(getGoogle6Post())
    postList.add(getGoogle7Post())
    postList.add(getGpuAndApuHwFeaturesAndSupportGpuopenLPost())
    postList.add(getGraphqlApiGithubPost())
    postList.add(getGuideOnHowToGetYourCookiesArvinzjcpaiPost())
    postList.add(getHackintoshlinklistmdAtMasterDalianskyhaPost())
    postList.add(getHardwareVideoAccelerationArchwikiPost())
    postList.add(getHardwareVideoAccelerationArchwiki2Post())
    postList.add(getHawtimbadgeCollectionPost())
    postList.add(getHelixBookPost())
    postList.add(getHelixBook2Post())
    postList.add(getHellogithubPost())
    postList.add(getHexoActionActionsGithubMarketplacePost())
    postList.add(getHigherMemoryUsageOnNetCoreVersionIssuPost())
    postList.add(getHomeFoxrefirewvgWikiPost())
    postList.add(getHomeShockmicrominecraftShadersWikiPost())
    postList.add(getHomeYujincheng08biliroamingWikiPost())
    postList.add(getHostkerPost())
    postList.add(getHougrsmartisanpullSmartPost())
    postList.add(getHowDoYouGetAccessToTheWikiFilesCommPost())
    postList.add(getHowIUseGithubsWikiFeatureForApiDocumenPost())
    postList.add(getHowToRunMobaxtermOnLinuxBetaMobatekPost())
    postList.add(getHttpslaunchermetamojangcomv1productsjavPost())
    postList.add(getHttpsstoragegoogleapiscomtfjsModelsdemoPost())
    postList.add(getHttpsstoragegoogleapiscomtfjsVismnistdPost())
    postList.add(getHuskydgmagiskFilesAtBc862da9DeltaPost())
    postList.add(getIdeHowCanIRestoreTheIntellijIdeaCommiPost())
    postList.add(getIllixionvscodeVibrancyContinuedEnableAcryPost())
    postList.add(getImportOpenvpnProfileIssue43LinuxdeepiPost())
    postList.add(getIndexeddbGooglePost())
    postList.add(getInfoAboutDifferentMlBackendImxieyiwaifuPost())
    postList.add(getIntelclearLinuxPost())
    postList.add(getIntroductionPngmeAnIntermediateRustProjectPost())
    postList.add(getIpcjsbilibiliHelperPost())
    postList.add(getIsomorphicGitAPureJavascriptImplementatiPost())
    postList.add(getIssueAfterUpgradingTo525SeriesDriversIPost())
    postList.add(getIwlwifiLinuxWirelessDocumentationPost())
    postList.add(getJaquadronbtexplorerAGraphicalNbtEditorFoPost())
    postList.add(getJavascriptGetRenderedHtmlWikiPageUsingPost())
    postList.add(getJavascriptHowToImportEs6ModulesInContePost())
    postList.add(getJavascriptWebAppInTvosStackOverflowPost())
    postList.add(getJenkinsGooglePost())
    postList.add(getJerryjliullamaindexLlamaindexGptIndexIPost())
    postList.add(getJsonmodelguide5BlockbenchmdAtMaiPost())
    postList.add(getJsonnetsHomeObarlikjsonnetWikiPost())
    postList.add(getKakulukiapypugjsPugjsSyntaxAdapterForDjaPost())
    postList.add(getKittinanspotifyGithubProfileShowYourSpotPost())
    postList.add(getKlzgradnaiveproxyMakeAFortuneQuietlyPost())
    postList.add(getLagrangedevlagrangev2TheV2ImplementationOPost())
    postList.add(getLanthoracandyAReliableLowLatencyAndAnPost())
    postList.add(getLaravelGooglePost())
    postList.add(getLegacyEdgePost())
    postList.add(getLibrsHomeForRustCratesLibrsPost())
    postList.add(getLibuvlibuvCrossPlatformAsynchronousIoPost())
    postList.add(getLinPost())
    postList.add(getLinuxPost())
    postList.add(getLinuxBingPost())
    postList.add(getLinuxDeepin2013LinuxPost())
    postList.add(getLinuxDeviceDriversThirdEditionLwnnetPost())
    postList.add(getLinuxStartosPost())
    postList.add(getLinuxlinuxPost())
    postList.add(getLinuxsecnoteslinuxElfMdAtMastePost())
    postList.add(getLiteloaderqqntPost())
    postList.add(getLiteloaderqqntqqntfileverifypatchQqntPaPost())
    postList.add(getLiveCd8Post())
    postList.add(getLowlightermetricsAnInfographicsGeneratorPost())
    postList.add(getMacLinuxDoPost())
    postList.add(getMacLinuxDo2Post())
    postList.add(getMaharmstonequibbleQuibbleTheCustomWindoPost())
    postList.add(getMakeZedChannelDiscoverableIssue9091Post())
    postList.add(getMappingScrollWheelIssue6667KovidgoyalPost())
    postList.add(getMarkedjsmarkedAMarkdownParserAndCompilerPost())
    postList.add(getMehvahdjukaarmapatlasesNeoforgePost())
    postList.add(getMetroUiPost())
    postList.add(getMinecraft1131710IssuPost())
    postList.add(getMinecraftCursedLegacyPost())
    postList.add(getMinecraftdeveloperguideMinecraftDeveloperChPost())
    postList.add(getMinecraftdeveloperguideMinecraftDeveloperCh2Post())
    postList.add(getMinecraftdeveloperguideMinecraftDeveloperCh3Post())
    postList.add(getModPost())
    postList.add(getMod2Post())
    postList.add(getMod3Post())
    postList.add(getMoetmoePost())
    postList.add(getMonaWhispergifgif124x124Post())
    postList.add(getMouse0w0minecraftdeveloperguideMinecraftDePost())
    postList.add(getMozillaDeveloperNetworkPost())
    postList.add(getMozillarhinoRhinoIsAnOpenSourceImplemenPost())
    postList.add(getMrs4sgoCqhttpCqhttpgolangPost())
    postList.add(getNatGooglePost())
    postList.add(getNatIssue920EhPost())
    postList.add(getNetlifyGooglePost())
    postList.add(getNicefaa6waagenshinSddmThemeAnimatedGenshiPost())
    postList.add(getNodejsWhyDoesJavascriptsParseint00000Post())
    postList.add(getNodemcuPost())
    postList.add(getNtdevlabstiny11builderScriptsToBuildATriPost())
    postList.add(getNukepayload2avaloniaVbnetTemplatesAvaloniaPost())
    postList.add(getNukepayload2nukepayload2sourcegeneratorsavalPost())
    postList.add(getOpenclawqqdocsquickstartmdAtMainConstaPost())
    postList.add(getOpencvOpencv4androidSdkPost())
    postList.add(getOpenfydecookbookPost())
    postList.add(getOpenjdknashornHttpsopenjdkorgprojectsnPost())
    postList.add(getOpenp2pCnopenp2pOpenp2pIsALightweightP2Post())
    postList.add(getOpensilverdocumentationdocumentationgeneralPost())
    postList.add(getOrgmozillageckoviewGeckoview133020241008Post())
    postList.add(getOsXPost())
    postList.add(getOvflowdClaudioWPost())
    postList.add(getPageNotFoundGithubPost())
    postList.add(getPalera1npalera1nJailbreakForA8ThroughA11Post())
    postList.add(getPciPost())
    postList.add(getPdfwordWordpdfPdfPost())
    postList.add(getPerformanceZhCnJustarchinetarchisteamfarmPost())
    postList.add(getPlayStoreSometimesNotWorkingSlowResponPost())
    postList.add(getPleaseAddSupportForEncryptionOfDuckdbDatPost())
    postList.add(getPost145Post())
    postList.add(getPost153Post())
    postList.add(getPost189Post())
    postList.add(getPost251Post())
    postList.add(getPost265Post())
    postList.add(getPost32Post())
    postList.add(getPost33Post())
    postList.add(getPost34Post())
    postList.add(getPost381Post())
    postList.add(getPost389Post())
    postList.add(getPost446Post())
    postList.add(getPost449Post())
    postList.add(getPost450Post())
    postList.add(getPost451Post())
    postList.add(getPost482Post())
    postList.add(getPost525Post())
    postList.add(getPost606Post())
    postList.add(getPost614Post())
    postList.add(getPost668Post())
    postList.add(getPost669Post())
    postList.add(getPost917Post())
    postList.add(getPostmarketosPost())
    postList.add(getPracticersRustByPracticeRustPost())
    postList.add(getPricingCalculatorPost())
    postList.add(getProbiusofficialctfQuickstart0ctfPost())
    postList.add(getProcessunixrsSourcePost())
    postList.add(getProteusGooglePost())
    postList.add(getPsaOnHyprlandWeztermWillNotStartAnymorPost())
    postList.add(getPythonPost())
    postList.add(getPython2Post())
    postList.add(getPython3Post())
    postList.add(getPythonCondaPost())
    postList.add(getPytorchWindows2915RocmrocmPost())
    postList.add(getQiaokesfntvElectronPcElectronPost())
    postList.add(getQosIssue776XtacikcptunPost())
    postList.add(getQuestionIntel1stGenArrandaleIssue13Post())
    postList.add(getRaindropCreactNativeWebviewTencentx5AndPost())
    postList.add(getReactFacetPost())
    postList.add(getRealdennispttpPttpPeerTalksToPeerBasedPost())
    postList.add(getReleaseRadeonProrenderForBlenderV3610BPost())
    postList.add(getReleaseRhino1715MozillarhinoPost())
    postList.add(getReleasesAnlostsheephackintoshColorfulB460iPost())
    postList.add(getReleasesBoyceligclashchinesepatchPost())
    postList.add(getReleasesBrobirdclashforandroidPost())
    postList.add(getReleasesFndroidclashforwindowspkgGithubPost())
    postList.add(getReleasesTdesktopX64tdesktopPost())
    postList.add(getReleasesTryashtarimageMapPost())
    postList.add(getReleasesTryashtarimageMap2Post())
    postList.add(getReleasesTryashtarimageMap3Post())
    postList.add(getRestApiGithubPost())
    postList.add(getRfcIssue1CuriositylxnfancyWPost())
    postList.add(getRhinoEs2015es6Es2016AndEs2017SupportPost())
    postList.add(getRocmEnableFindingHipAndRocmLibrariesOnPost())
    postList.add(getRunOnArchitectureActionsGithubMarketplacePost())
    postList.add(getRustForLinuxPost())
    postList.add(getRustIsItPossibleToDownloadPreviousNighPost())
    postList.add(getRustLanglibcRawBindingsToPlatformApisFPost())
    postList.add(getRustaceannetHomeOfFerrisTheCrabPost())
    postList.add(getRx5500xt5600xtPost())
    postList.add(getSagernetsingBoxTheUniversalProxyPlatformPost())
    postList.add(getScimenceeasyiconIconPost())
    postList.add(getSctocloudPost())
    postList.add(getSearchAlgorithmPuppyPost())
    postList.add(getSearchN3dsPost())
    postList.add(getSearchN3ds2Post())
    postList.add(getSearchN3ds3Post())
    postList.add(getServerListKinnaynintendoclientsWikiPost())
    postList.add(getSmartAccessVideoPrimerGpuopenLibrariesanPost())
    postList.add(getSparcTimeoutWaitingForArprarpPacketIssPost())
    postList.add(getSqlsecasrockZ490SteelLegendI710700AsrocPost())
    postList.add(getStackOverflowPost())
    postList.add(getStdRustPost())
    postList.add(getStdRust2Post())
    postList.add(getStdiostdioRustPost())
    postList.add(getSuggestionSupportsHttp3Http3IssuePost())
    postList.add(getSuggestionUseASelfSignedSslCertificatePost())
    postList.add(getSurgebilibiliAtE410d37d6cebea418994846cd9326Post())
    postList.add(getTakonoheyaPost())
    postList.add(getTediousjsnodeMssqlMicrosoftSqlServerCliePost())
    postList.add(getTerminalPython3CaptureReturnOfX1b6nPost())
    postList.add(getTfjsModelsposeDetectionsrcmovenetAtMastePost())
    postList.add(getTfjstfjsVisAtMasterTensorflowtfjsPost())
    postList.add(getTheArtOfLinearAlgebrareadmeZhCnmdAtMaPost())
    postList.add(getTheChineseBlogosphereAsASiteOfSocialEngPost())
    postList.add(getTheChineseBlogosphereAsASiteOfSocialEng2Post())
    postList.add(getTheLinuxKernelApiTheLinuxKernelDocumenPost())
    postList.add(getTheLinuxKernelDocumentationPost())
    postList.add(getTheLittleBookOfRustMacrosRustPost())
    postList.add(getThemesOhmyzshohmyzshWikiPost())
    postList.add(getTidusZhangfluentwpfFluentDesignSystemForPost())
    postList.add(getTomccsGistsPost())
    postList.add(getTtyname3LinuxManualPagePost())
    postList.add(getTwoDimensionalAnimeCollectionmdAtMainPost())
    postList.add(getTwoyireadmecnmdAtMainTwoyitwoyiPost())
    postList.add(getUbuntuPost())
    postList.add(getUbuntu2Post())
    postList.add(getUbuntuTtyPost())
    postList.add(getUbuntuWikiCommunityEditedWebsitePost())
    postList.add(getUbuntuWikiCommunityEditedWebsite2Post())
    postList.add(getUcjsCollectionsDupontjoycingfoxAtMasterPost())
    postList.add(getUnableToRegisterCoreDumpHandlerIssue4Post())
    postList.add(getUnableToRunYumUpdateOnCentos7StackOvPost())
    postList.add(getUniqueNotRffePowerApiModListingshelpPost())
    postList.add(getUnity3dPost())
    postList.add(getUpscaylupscaylUpscaylFreeAndOpenSourPost())
    postList.add(getV13DriveUploadFailedPermissionDeniedPost())
    postList.add(getV2rayareadmezhmdAtFeatv5V2rayav2rayaPost())
    postList.add(getValaGooglePost())
    postList.add(getVechkpokerSearchSmartisanTntPost())
    postList.add(getViaSiteinsanelymaccomGooglePost())
    postList.add(getVisualizePythonJavaJavascriptCCRubPost())
    postList.add(getVisualizePythonJavaJavascriptCCRub2Post())
    postList.add(getVisualizePythonJavaJavascriptCCRub3Post())
    postList.add(getVpnCdnPost())
    postList.add(getW3carticles20190116cncuckoohttpsPost())
    postList.add(getWarningForNonGkiKernel44494144Post())
    postList.add(getWaylandLinuxHyprlandPost())
    postList.add(getWebsrcshameAtMasterFfmpegwebPost())
    postList.add(getWeirdBehaviourReadingFromALinuxDeviceEvePost())
    postList.add(getWeirdBehaviourReadingFromALinuxDeviceEve2Post())
    postList.add(getWeztermFailsToStartEmitsResourceTemporarPost())
    postList.add(getWhatevergreenmanualfaqchartmdAtMasterAPost())
    postList.add(getWhyDoesMyGithubPagesServiceAlwaysShowThPost())
    postList.add(getWikisGithubPost())
    postList.add(getWkgcassvfxJavafxLibraryPost())
    postList.add(getWordpressGitDeploymentsWithWpPusherPost())
    postList.add(getWorkflowTemplatesBemlychinaSteamPricerPost())
    postList.add(getXeonReversedRoomsGitPost())
    postList.add(getXtlsrealityTheNextFuturePost())
    postList.add(getXun082createNeatDevelopedAFrontEndSPost())
    postList.add(getYadavnikhil03playIntegrityFixGuideEasiestPost())
    postList.add(getYalterniri352AddAnOvPost())
    postList.add(getYewRustPost())
    postList.add(getYisus7u7termuxDesktopXfceSetUpABeautifuPost())
    postList.add(getYujincheng08biliroamingWikiPost())
    postList.add(getYujincheng08biliroamingWiki2Post())
    postList.add(getZhuoweiboardwalkSourceCodeForBoardwalkAPost())
    postList.add(getZorinPost())
}

func initConfig() {
    config.siteKey = getVariable("TURNSTILE_SITE_KEY") ?? ""
    config.turnstileEnabled = (getVariable("TURNSTILE_ENABLE") ?? "true") != "false"
    config.maxTokens = parseIntEnv("TURNSTILE_MAX_TOKENS", 20)
    config.blockMinutes = parseIntEnv("TURNSTILE_BLOCK_MINUTES", 20)
    config.rateLimitSec = parseIntEnv("TURNSTILE_RATE_LIMIT_SEC", 30)
    turnstileState.secret = getVariable("TURNSTILE_SECRET") ?? ""
}

func parseIntEnv(key: String, default: Int64): Int64 {
    let val = getVariable(key) ?? ""
    if (val == "") { return default }
    try {
        return Int64.parse(val)
    } catch (e: Exception) {
        return default
    }
}

func checkBrowser(context: HttpContext): Bool {
    let ua = context.request.headers.get("User-Agent") ?? ""
    let isSafari = ua.contains("Safari") && !ua.contains("Chrome")
    let isChromium = ua.contains("Chrome")
    let extInstalled = context.request.cookies.get("extension_installed") ?? ""

    if (isSafari) {
        context.response.statusCode = 302
        context.response.headers.add("Location", "/safari-unsupported")
        return false
    } else if (isChromium && extInstalled != "true") {
        context.response.statusCode = 302
        context.response.headers.add("Location", "/install-extension")
        return false
    }
    return true
}

main(args: Array<String>): Int64 {
    initPosts()
    initConfig()

    let builder = WebHost.createBuilder(args)
    builder.services.addRouting()
    let host = builder.build()
    host.useRouting()

    // 首页
    host.mapGet("/") { context =>
        context.response.headers.cacheControl = ["no-store"]
        let cookieVal = context.request.cookies.get("cj_token") ?? ""
        if (!config.turnstileEnabled || turnstileState.isTokenValid(cookieVal)) {
            if (checkBrowser(context)) {
                context.response.write(renderHome(postList))
            }
        } else {
            context.response.write(renderTurnstilePage(config))
        }
    }

    // 文章页
    host.mapGet("/post/{slug}") { context =>
        context.response.headers.cacheControl = ["no-store"]
        let cookieVal = context.request.cookies.get("cj_token") ?? ""
        if (!config.turnstileEnabled || turnstileState.isTokenValid(cookieVal)) {
            if (checkBrowser(context)) {
                let slug = context.request.routeValues.get("slug") ?? ""
                var found = false
                for (post in postList) {
                    if (post.slug == slug) {
                        context.response.write(renderPost(post))
                        found = true
                        break
                    }
                }
                if (!found) {
                    context.response.write(render404())
                }
            }
        } else {
            context.response.write(renderTurnstilePage(config))
        }
    }

    // Turnstile 验证
    host.mapPost("/verify-turnstile") { context =>
        var buf = Array<UInt8>(4096, repeat: 0)
        var len = context.request.body.read(buf)
        var rawBody = String.fromUtf8(buf.slice(0, len))
        var tokenStr = turnstileState.extractToken(rawBody)

        if (turnstileState.verify(tokenStr, log, context.request.remoteAddr, config)) {
            var opts = CookieOptions(
                httpOnly: true,
                secure: true,
                sameSite: CookieSameSiteMode.Lax,
                maxAge: Duration.day
            )
            context.response.cookies.append("cj_token", tokenStr, opts)
            context.response.write("ok")
        } else {
            context.response.statusCode = 403
            context.response.write("forbidden")
        }
    }

    // 安装扩展页
    host.mapGet("/install-extension") { context =>
        context.response.write(renderInstallExtension())
    }

    // 下载扩展
    host.mapGet("/chrome-extension.zip") { context =>
        context.response.headers.cacheControl = ["no-store"]
        let cookieVal = context.request.cookies.get("cj_token") ?? ""
        if (!config.turnstileEnabled || turnstileState.isTokenValid(cookieVal)) {
            context.response.headers.add("Content-Type", "application/zip")
            context.response.headers.add("Content-Disposition", "attachment; filename=\"chrome-extension.zip\"")
            try {
                var file = File("chrome-extension.zip", Read)
                var bytes = readToEnd(file)
                file.close()
                context.response.write(bytes)
            } catch (e: Exception) {
                context.response.statusCode = 404
                context.response.write("File not found")
            }
        } else {
            context.response.write(renderTurnstilePage(config))
        }
    }

    // Safari 不支持页
    host.mapGet("/safari-unsupported") { context =>
        context.response.write(renderSafariUnsupported())
    }

    host.run("http://127.0.0.1:996")
    return 0
}
