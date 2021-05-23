.class public final Lcom/unity3d/services/ads/UnityAdsImplementation;
.super Ljava/lang/Object;
.source "UnityAdsImplementation.java"


# static fields
.field static _showExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/ads/UnityAdsImplementation;->_showExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-static {p0, p1, p2}, Lcom/unity3d/services/ads/UnityAdsImplementation;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    return-void
.end method

.method public static addListener(Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 0

    .line 128
    invoke-static {p0}, Lcom/unity3d/ads/properties/AdsProperties;->addListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    return-void
.end method

.method public static getDebugMode()Z
    .locals 1

    .line 324
    invoke-static {}, Lcom/unity3d/services/UnityServices;->getDebugMode()Z

    move-result v0

    return v0
.end method

.method public static getDefaultPlacement()Ljava/lang/String;
    .locals 1

    .line 328
    invoke-static {}, Lcom/unity3d/services/ads/placement/Placement;->getDefaultPlacement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getListener()Lcom/unity3d/ads/IUnityAdsListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-static {}, Lcom/unity3d/ads/properties/AdsProperties;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    return-object v0
.end method

.method public static getPlacementState()Lcom/unity3d/ads/UnityAds$PlacementState;
    .locals 1

    .line 183
    invoke-static {}, Lcom/unity3d/services/ads/UnityAdsImplementation;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/ads/UnityAdsImplementation;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/unity3d/services/ads/placement/Placement;->getPlacementState()Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    return-object v0

    .line 186
    :cond_0
    sget-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

    return-object v0
.end method

.method public static getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;
    .locals 1

    .line 197
    invoke-static {}, Lcom/unity3d/services/ads/UnityAdsImplementation;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/ads/UnityAdsImplementation;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 198
    invoke-static {p0}, Lcom/unity3d/services/ads/placement/Placement;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object p0

    return-object p0

    .line 200
    :cond_0
    sget-object p0, Lcom/unity3d/ads/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

    return-object p0
.end method

.method public static getToken()Ljava/lang/String;
    .locals 1

    .line 336
    invoke-static {}, Lcom/unity3d/services/ads/token/TokenStorage;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 155
    invoke-static {}, Lcom/unity3d/services/UnityServices;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 2

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unity Ads show failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 292
    invoke-static {p2}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 294
    new-instance v0, Lcom/unity3d/services/ads/UnityAdsImplementation$3;

    invoke-direct {v0, p1, p2, p0}, Lcom/unity3d/services/ads/UnityAdsImplementation$3;-><init>(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, p1, p2, v0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;Z)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 59
    invoke-static/range {v0 .. v5}, Lcom/unity3d/services/ads/UnityAdsImplementation;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;ZZLcom/unity3d/ads/IUnityAdsInitializationListener;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;ZZLcom/unity3d/ads/IUnityAdsInitializationListener;)V
    .locals 6

    .line 72
    invoke-static {}, Lcom/unity3d/services/core/log/DeviceLog;->entered()V

    .line 74
    invoke-static {p2}, Lcom/unity3d/services/ads/UnityAdsImplementation;->addListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 76
    new-instance v2, Lcom/unity3d/services/ads/UnityAdsImplementation$1;

    invoke-direct {v2, p2}, Lcom/unity3d/services/ads/UnityAdsImplementation$1;-><init>(Lcom/unity3d/ads/IUnityAdsListener;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/unity3d/services/UnityServices;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/services/IUnityServicesListener;ZZLcom/unity3d/ads/IUnityAdsInitializationListener;)V

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .line 98
    invoke-static {}, Lcom/unity3d/services/UnityServices;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static isReady()Z
    .locals 1

    .line 164
    invoke-static {}, Lcom/unity3d/services/ads/UnityAdsImplementation;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/ads/UnityAdsImplementation;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/ads/placement/Placement;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isReady(Ljava/lang/String;)Z
    .locals 1

    .line 174
    invoke-static {}, Lcom/unity3d/services/ads/UnityAdsImplementation;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/ads/UnityAdsImplementation;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/unity3d/services/ads/placement/Placement;->isReady(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupported()Z
    .locals 1

    .line 146
    invoke-static {}, Lcom/unity3d/services/UnityServices;->isSupported()Z

    move-result v0

    return v0
.end method

.method public static load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;)V
    .locals 1

    .line 332
    invoke-static {}, Lcom/unity3d/services/ads/load/LoadModule;->getInstance()Lcom/unity3d/services/ads/load/LoadModule;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/unity3d/services/ads/load/LoadModule;->load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;)V

    return-void
.end method

.method public static removeListener(Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 0

    .line 137
    invoke-static {p0}, Lcom/unity3d/ads/properties/AdsProperties;->removeListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    .line 315
    invoke-static {p0}, Lcom/unity3d/services/UnityServices;->setDebugMode(Z)V

    return-void
.end method

.method public static setListener(Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-static {p0}, Lcom/unity3d/ads/properties/AdsProperties;->setListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    return-void
.end method

.method public static show(Landroid/app/Activity;)V
    .locals 2

    .line 210
    invoke-static {}, Lcom/unity3d/services/ads/placement/Placement;->getDefaultPlacement()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/unity3d/services/ads/placement/Placement;->getDefaultPlacement()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->show(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_0
    sget-object p0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v0, ""

    const-string v1, "Unity Ads default placement is not initialized"

    invoke-static {v0, p0, v1}, Lcom/unity3d/services/ads/UnityAdsImplementation;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 224
    new-instance v0, Lcom/unity3d/ads/UnityAdsShowOptions;

    invoke-direct {v0}, Lcom/unity3d/ads/UnityAdsShowOptions;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;)V

    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;)V
    .locals 2

    if-nez p0, :cond_0

    .line 236
    sget-object p0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string p2, "Activity must not be null"

    invoke-static {p1, p0, p2}, Lcom/unity3d/services/ads/UnityAdsImplementation;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    return-void

    .line 240
    :cond_0
    invoke-static {p1}, Lcom/unity3d/services/ads/UnityAdsImplementation;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unity Ads opening new ad unit for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 242
    invoke-static {p0}, Lcom/unity3d/services/core/properties/ClientProperties;->setActivity(Landroid/app/Activity;)V

    .line 243
    sget-object v0, Lcom/unity3d/services/ads/UnityAdsImplementation;->_showExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unity3d/services/ads/UnityAdsImplementation$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/unity3d/services/ads/UnityAdsImplementation$2;-><init>(Landroid/app/Activity;Lcom/unity3d/ads/UnityAdsShowOptions;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 280
    :cond_1
    invoke-static {}, Lcom/unity3d/services/ads/UnityAdsImplementation;->isSupported()Z

    move-result p0

    if-nez p0, :cond_2

    .line 281
    sget-object p0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string p2, "Unity Ads is not supported for this device"

    invoke-static {p1, p0, p2}, Lcom/unity3d/services/ads/UnityAdsImplementation;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_2
    invoke-static {}, Lcom/unity3d/services/ads/UnityAdsImplementation;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_3

    .line 283
    sget-object p0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string p2, "Unity Ads is not initialized"

    invoke-static {p1, p0, p2}, Lcom/unity3d/services/ads/UnityAdsImplementation;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_3
    sget-object p0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Placement \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is not ready"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/unity3d/services/ads/UnityAdsImplementation;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
