.class public Lcom/unity3d/services/ads/load/LoadModule;
.super Ljava/lang/Object;
.source "LoadModule.java"

# interfaces
.implements Lcom/unity3d/services/core/configuration/IInitializationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;
    }
.end annotation


# static fields
.field private static _configuration:Lcom/unity3d/services/core/configuration/Configuration;

.field private static volatile _lastStatus:Lcom/unity3d/services/core/webview/bridge/CallbackStatus;

.field private static _waitLoadStatus:Landroid/os/ConditionVariable;

.field private static instance:Lcom/unity3d/services/ads/load/LoadModule;


# instance fields
.field private _executorService:Ljava/util/concurrent/ExecutorService;

.field private _handler:Landroid/os/Handler;

.field private _loadCallback:Ljava/lang/reflect/Method;

.field private final _loadEventBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;",
            ">;"
        }
    .end annotation
.end field

.field private final _loadListeners:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 230
    sget-object v0, Lcom/unity3d/services/core/webview/bridge/CallbackStatus;->ERROR:Lcom/unity3d/services/core/webview/bridge/CallbackStatus;

    sput-object v0, Lcom/unity3d/services/ads/load/LoadModule;->_lastStatus:Lcom/unity3d/services/core/webview/bridge/CallbackStatus;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;)V
    .locals 5

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedList;

    .line 70
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadListeners:Ljava/util/LinkedHashMap;

    .line 71
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_executorService:Ljava/util/concurrent/ExecutorService;

    .line 73
    :try_start_0
    const-class v0, Lcom/unity3d/services/ads/load/LoadModule;

    const-string v1, "loadCallback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/unity3d/services/core/webview/bridge/CallbackStatus;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadCallback:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadCallback:Ljava/lang/reflect/Method;

    .line 77
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_handler:Landroid/os/Handler;

    .line 78
    sget-object v0, Lcom/unity3d/services/ads/load/LoadModule;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v0}, Lcom/unity3d/services/core/configuration/Configuration;-><init>()V

    sput-object v0, Lcom/unity3d/services/ads/load/LoadModule;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    .line 82
    :cond_0
    invoke-interface {p1, p0}, Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;->addListener(Lcom/unity3d/services/core/configuration/IInitializationListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/services/ads/load/LoadModule;Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/load/LoadModule;->runLoadRequest(Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;)V

    return-void
.end method

.method private createLoadEvent(Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lcom/unity3d/ads/UnityAdsLoadOptions;)Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;
    .locals 12

    .line 176
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v10, Lcom/unity3d/services/ads/load/LoadModule$5;

    invoke-direct {v10, p0, p1, v0}, Lcom/unity3d/services/ads/load/LoadModule$5;-><init>(Lcom/unity3d/services/ads/load/LoadModule;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v11, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;

    invoke-static {}, Lcom/unity3d/services/core/device/Device;->getElapsedRealtime()J

    move-result-wide v7

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, v10

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;-><init>(Lcom/unity3d/services/ads/load/LoadModule;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Ljava/lang/Runnable;JLcom/unity3d/ads/UnityAdsLoadOptions;)V

    .line 187
    iget-object p1, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadListeners:Ljava/util/LinkedHashMap;

    monitor-enter p1

    .line 188
    :try_start_0
    iget-object p2, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadListeners:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v0, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-object p1, p0, Lcom/unity3d/services/ads/load/LoadModule;->_handler:Landroid/os/Handler;

    sget-object p2, Lcom/unity3d/services/ads/load/LoadModule;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {p2}, Lcom/unity3d/services/core/configuration/Configuration;->getNoFillTimeout()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, v10, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v11

    :catchall_0
    move-exception p2

    .line 189
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public static getInstance()Lcom/unity3d/services/ads/load/LoadModule;
    .locals 2

    .line 37
    sget-object v0, Lcom/unity3d/services/ads/load/LoadModule;->instance:Lcom/unity3d/services/ads/load/LoadModule;

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->getInstance()Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/unity3d/services/ads/load/LoadModule;

    invoke-direct {v1, v0}, Lcom/unity3d/services/ads/load/LoadModule;-><init>(Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;)V

    sput-object v1, Lcom/unity3d/services/ads/load/LoadModule;->instance:Lcom/unity3d/services/ads/load/LoadModule;

    .line 41
    :cond_0
    sget-object v0, Lcom/unity3d/services/ads/load/LoadModule;->instance:Lcom/unity3d/services/ads/load/LoadModule;

    return-object v0
.end method

.method private declared-synchronized load(Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadCallback:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 237
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "listenerId"

    .line 238
    iget-object v2, p1, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;->listenerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "placementId"

    .line 239
    iget-object v2, p1, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "time"

    .line 240
    iget-wide v2, p1, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;->time:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "options"

    .line 241
    iget-object p1, p1, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;->loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    invoke-virtual {p1}, Lcom/unity3d/ads/UnityAdsLoadOptions;->getData()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    sget-object p1, Lcom/unity3d/services/core/webview/bridge/CallbackStatus;->ERROR:Lcom/unity3d/services/core/webview/bridge/CallbackStatus;

    sput-object p1, Lcom/unity3d/services/ads/load/LoadModule;->_lastStatus:Lcom/unity3d/services/core/webview/bridge/CallbackStatus;

    .line 244
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    sput-object p1, Lcom/unity3d/services/ads/load/LoadModule;->_waitLoadStatus:Landroid/os/ConditionVariable;

    .line 245
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object p1

    const-string v1, "webview"

    const-string v2, "load"

    iget-object v3, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadCallback:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {p1, v1, v2, v3, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    .line 246
    sget-object p1, Lcom/unity3d/services/ads/load/LoadModule;->_waitLoadStatus:Landroid/os/ConditionVariable;

    sget-object v0, Lcom/unity3d/services/ads/load/LoadModule;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v0}, Lcom/unity3d/services/core/configuration/Configuration;->getLoadTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    move-result p1

    const/4 v0, 0x0

    .line 247
    sput-object v0, Lcom/unity3d/services/ads/load/LoadModule;->_waitLoadStatus:Landroid/os/ConditionVariable;

    if-nez p1, :cond_0

    .line 249
    invoke-static {}, Lcom/unity3d/services/core/request/SDKMetrics;->getInstance()Lcom/unity3d/services/core/request/ISDKMetrics;

    move-result-object v0

    const-string v1, "native_load_callback_failed"

    invoke-interface {v0, v1}, Lcom/unity3d/services/core/request/ISDKMetrics;->sendEvent(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 251
    sget-object p1, Lcom/unity3d/services/ads/load/LoadModule;->_lastStatus:Lcom/unity3d/services/core/webview/bridge/CallbackStatus;

    sget-object v0, Lcom/unity3d/services/core/webview/bridge/CallbackStatus;->OK:Lcom/unity3d/services/core/webview/bridge/CallbackStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    monitor-exit p0

    return v4

    .line 234
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Callback for load request was not found"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static loadCallback(Lcom/unity3d/services/core/webview/bridge/CallbackStatus;)V
    .locals 1

    .line 255
    sget-object v0, Lcom/unity3d/services/ads/load/LoadModule;->_waitLoadStatus:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_0

    .line 256
    sput-object p0, Lcom/unity3d/services/ads/load/LoadModule;->_lastStatus:Lcom/unity3d/services/core/webview/bridge/CallbackStatus;

    .line 257
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method

.method private runLoadRequest(Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;)V
    .locals 2

    .line 116
    :try_start_0
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/load/LoadModule;->load(Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to send load request to WebView"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 121
    iget-object v0, p1, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;->placementId:Ljava/lang/String;

    iget-object p1, p1, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;->listenerId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/unity3d/services/ads/load/LoadModule;->sendAdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setConfiguration(Lcom/unity3d/services/core/configuration/Configuration;)V
    .locals 0

    .line 262
    sput-object p0, Lcom/unity3d/services/ads/load/LoadModule;->_configuration:Lcom/unity3d/services/core/configuration/Configuration;

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;)V
    .locals 1

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance p2, Lcom/unity3d/services/ads/load/LoadModule$1;

    invoke-direct {p2, p0, p3, p1}, Lcom/unity3d/services/ads/load/LoadModule$1;-><init>(Lcom/unity3d/services/ads/load/LoadModule;Lcom/unity3d/ads/IUnityAdsLoadListener;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 96
    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lcom/unity3d/services/ads/load/LoadModule;->createLoadEvent(Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lcom/unity3d/ads/UnityAdsLoadOptions;)Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;

    move-result-object p2

    .line 98
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getCurrentInitializationState()Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    move-result-object p3

    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->INITIALIZED_SUCCESSFULLY:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    if-ne p3, v0, :cond_1

    .line 99
    iget-object p1, p0, Lcom/unity3d/services/ads/load/LoadModule;->_executorService:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/unity3d/services/ads/load/LoadModule$2;

    invoke-direct {p3, p0, p2}, Lcom/unity3d/services/ads/load/LoadModule$2;-><init>(Lcom/unity3d/services/ads/load/LoadModule;Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getCurrentInitializationState()Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    move-result-object p3

    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->INITIALIZED_FAILED:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    if-ne p3, v0, :cond_2

    .line 106
    iget-object p2, p2, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;->listenerId:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/ads/load/LoadModule;->sendAdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object p1, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedList;

    monitor-enter p1

    .line 109
    :try_start_0
    iget-object p3, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedList;

    invoke-virtual {p3, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 110
    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onSdkInitializationFailed(Ljava/lang/String;I)V
    .locals 3

    .line 218
    iget-object p1, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedList;

    monitor-enter p1

    .line 219
    :try_start_0
    iget-object p2, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    new-array p2, p2, [Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;

    .line 220
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 222
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 225
    iget-object v2, v1, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;->placementId:Ljava/lang/String;

    iget-object v1, v1, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;->listenerId:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/unity3d/services/ads/load/LoadModule;->sendAdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 222
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onSdkInitialized()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedList;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;

    .line 201
    iget-object v2, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 202
    iget-object v2, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 203
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/unity3d/services/ads/load/LoadModule$6;

    invoke-direct {v2, p0, v1}, Lcom/unity3d/services/ads/load/LoadModule$6;-><init>(Lcom/unity3d/services/ads/load/LoadModule;[Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :catchall_0
    move-exception v1

    .line 203
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sendAdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadListeners:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadListeners:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;

    .line 154
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_handler:Landroid/os/Handler;

    iget-object v1, p2, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    iget-object p2, p2, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;->listener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    if-nez p2, :cond_1

    return-void

    .line 167
    :cond_1
    new-instance v0, Lcom/unity3d/services/ads/load/LoadModule$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/unity3d/services/ads/load/LoadModule$4;-><init>(Lcom/unity3d/services/ads/load/LoadModule;Lcom/unity3d/ads/IUnityAdsLoadListener;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 154
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public sendAdLoaded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadListeners:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadListeners:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_handler:Landroid/os/Handler;

    iget-object v1, p2, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    iget-object p2, p2, Lcom/unity3d/services/ads/load/LoadModule$LoadEventState;->listener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    if-nez p2, :cond_1

    return-void

    .line 142
    :cond_1
    new-instance v0, Lcom/unity3d/services/ads/load/LoadModule$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/unity3d/services/ads/load/LoadModule$3;-><init>(Lcom/unity3d/services/ads/load/LoadModule;Lcom/unity3d/ads/IUnityAdsLoadListener;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 129
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
