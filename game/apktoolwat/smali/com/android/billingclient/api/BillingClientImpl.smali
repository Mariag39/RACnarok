.class Lcom/android/billingclient/api/BillingClientImpl;
.super Lcom/android/billingclient/api/BillingClient;
.source "com.android.billingclient:billing@@3.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingClientImpl$zzb;,
        Lcom/android/billingclient/api/BillingClientImpl$zza;
    }
.end annotation


# instance fields
.field private zza:I

.field private final zzb:Ljava/lang/String;

.field private final zzc:Landroid/os/Handler;

.field private zzd:Lcom/android/billingclient/api/zzd;

.field private zze:Landroid/content/Context;

.field private zzf:Landroid/content/Context;

.field private zzg:Lcom/google/android/gms/internal/play_billing/zzc;

.field private zzh:Lcom/android/billingclient/api/BillingClientImpl$zza;

.field private zzi:Z

.field private zzj:Z

.field private zzk:I

.field private zzl:Z

.field private zzm:Z

.field private zzn:Z

.field private zzo:Z

.field private zzp:Z

.field private zzq:Z

.field private zzr:Z

.field private zzs:Z

.field private zzt:Ljava/util/concurrent/ExecutorService;

.field private zzu:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;ZLjava/lang/String;)V
    .locals 6

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/android/billingclient/api/zzah;

    invoke-direct {v3}, Lcom/android/billingclient/api/zzah;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Landroid/content/Context;ZLcom/android/billingclient/api/PurchasesUpdatedListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLcom/android/billingclient/api/PurchasesUpdatedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    const/4 p5, 0x0

    .line 8
    iput p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:I

    .line 9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Landroid/os/Handler;

    .line 10
    iput p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzk:I

    const/4 p5, 0x0

    .line 11
    iput-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzu:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1, p3, p2}, Lcom/android/billingclient/api/BillingClientImpl;->initialize(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 15
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:I

    .line 17
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Landroid/os/Handler;

    .line 18
    iput v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzk:I

    .line 19
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZLandroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->zzb()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move v2, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Landroid/content/Context;ZLcom/android/billingclient/api/PurchasesUpdatedListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Z)V
    .locals 2

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/android/billingclient/api/zzd;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/billingclient/api/zzd;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Lcom/android/billingclient/api/zzd;

    .line 28
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Landroid/content/Context;

    .line 29
    iput-boolean p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzs:Z

    return-void
.end method

.method private launchBillingFlowCpp(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)I
    .locals 0

    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    return p1
.end method

.method private launchPriceChangeConfirmationFlow(Landroid/app/Activity;Lcom/android/billingclient/api/PriceChangeFlowParams;J)V
    .locals 1

    .line 111
    new-instance v0, Lcom/android/billingclient/api/zzah;

    invoke-direct {v0, p3, p4}, Lcom/android/billingclient/api/zzah;-><init>(J)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/billingclient/api/BillingClient;->launchPriceChangeConfirmationFlow(Landroid/app/Activity;Lcom/android/billingclient/api/PriceChangeFlowParams;Lcom/android/billingclient/api/PriceChangeConfirmationListener;)V

    return-void
.end method

.method private startConnection(J)V
    .locals 1

    .line 90
    new-instance v0, Lcom/android/billingclient/api/zzah;

    invoke-direct {v0, p1, p2}, Lcom/android/billingclient/api/zzah;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method static synthetic zza(Lcom/android/billingclient/api/BillingClientImpl;I)I
    .locals 0

    .line 589
    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:I

    return p1
.end method

.method static synthetic zza(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zza()Landroid/os/Bundle;
    .locals 1

    .line 587
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->zzc()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Lcom/android/billingclient/api/zzd;

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzd;->zzb()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1
.end method

.method static synthetic zza(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;
    .locals 0

    .line 582
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzd(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzc;)Lcom/google/android/gms/internal/play_billing/zzc;
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/google/android/gms/internal/play_billing/zzc;

    return-object p1
.end method

.method private static zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 273
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "offer_id_token"

    .line 274
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method static synthetic zza(Lcom/android/billingclient/api/BillingClientImpl;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    const-wide/16 p2, 0x7530

    .line 601
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    long-to-double p2, p2

    const-wide v0, 0x3fee666666666666L    # 0.95

    mul-double/2addr p2, v0

    double-to-long p2, p2

    .line 419
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzt:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 420
    sget v0, Lcom/google/android/gms/internal/play_billing/zza;->zza:I

    new-instance v1, Lcom/android/billingclient/api/zzq;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzq;-><init>(Lcom/android/billingclient/api/BillingClientImpl;)V

    .line 421
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzt:Ljava/util/concurrent/ExecutorService;

    .line 422
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzt:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Landroid/os/Handler;

    new-instance v1, Lcom/android/billingclient/api/zzt;

    invoke-direct {v1, p0, p1, p4}, Lcom/android/billingclient/api/zzt;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1

    :catch_0
    move-exception p1

    .line 425
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1c

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Async task throws exception "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BillingClient"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic zza(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 0

    .line 584
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method

.method static synthetic zza(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Runnable;)V
    .locals 0

    .line 583
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "BillingClient"

    .line 551
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string v1, "Consuming purchase with token: "

    .line 552
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-boolean v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzn:Z

    if-eqz v1, :cond_1

    .line 554
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/google/android/gms/internal/play_billing/zzc;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 555
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzn:Z

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:Ljava/lang/String;

    .line 556
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Lcom/android/billingclient/api/ConsumeParams;ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 557
    invoke-interface {v1, v2, v3, v7, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "RESPONSE_CODE"

    .line 558
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 559
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move v3, v1

    goto :goto_1

    .line 561
    :cond_1
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/google/android/gms/internal/play_billing/zzc;

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 562
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 563
    invoke-interface {p1, v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string v0, ""

    move v3, p1

    move-object p1, v0

    .line 565
    :goto_1
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 566
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 567
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    .line 568
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v5

    if-nez v3, :cond_2

    .line 570
    new-instance p1, Lcom/android/billingclient/api/zzu;

    invoke-direct {p1, p0, p2, v5, v7}, Lcom/android/billingclient/api/zzu;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/lang/Runnable;)V

    return-void

    .line 571
    :cond_2
    new-instance p1, Lcom/android/billingclient/api/zzx;

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/zzx;-><init>(Lcom/android/billingclient/api/BillingClientImpl;ILcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 574
    new-instance v0, Lcom/android/billingclient/api/zzw;

    invoke-direct {v0, p0, p1, p2, v7}, Lcom/android/billingclient/api/zzw;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Exception;Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/lang/Runnable;)V
    .locals 1

    .line 547
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic zza(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0

    .line 590
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzj:Z

    return p1
.end method

.method static synthetic zzb(Lcom/android/billingclient/api/BillingClientImpl;I)I
    .locals 0

    .line 592
    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzk:I

    return p1
.end method

.method static synthetic zzb(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)Lcom/android/billingclient/api/BillingClientImpl$zzb;
    .locals 0

    .line 585
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Ljava/lang/String;)Lcom/android/billingclient/api/BillingClientImpl$zzb;

    move-result-object p0

    return-object p0
.end method

.method private final zzb(Ljava/lang/String;)Lcom/android/billingclient/api/BillingClientImpl$zzb;
    .locals 14

    .line 360
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Querying purchase history, item type: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    iget-boolean v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzn:Z

    iget-boolean v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzs:Z

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:Ljava/lang/String;

    .line 364
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zza(ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    move-object v9, v3

    .line 365
    :cond_1
    iget-boolean v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzl:Z

    if-nez v4, :cond_2

    const-string p1, "getPurchaseHistory is not supported on current device"

    .line 366
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance p1, Lcom/android/billingclient/api/BillingClientImpl$zzb;

    sget-object v0, Lcom/android/billingclient/api/zzak;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v0, v3}, Lcom/android/billingclient/api/BillingClientImpl$zzb;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1

    .line 368
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/google/android/gms/internal/play_billing/zzc;

    const/4 v6, 0x6

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 369
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v8, p1

    move-object v10, v2

    .line 370
    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, "getPurchaseHistory()"

    .line 376
    invoke-static {v4, v1, v5}, Lcom/android/billingclient/api/zzam;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v5

    .line 377
    sget-object v6, Lcom/android/billingclient/api/zzak;->zzn:Lcom/android/billingclient/api/BillingResult;

    if-eq v5, v6, :cond_3

    .line 378
    new-instance p1, Lcom/android/billingclient/api/BillingClientImpl$zzb;

    invoke-direct {p1, v5, v3}, Lcom/android/billingclient/api/BillingClientImpl$zzb;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1

    :cond_3
    const-string v5, "INAPP_PURCHASE_ITEM_LIST"

    .line 380
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "INAPP_PURCHASE_DATA_LIST"

    .line 382
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "INAPP_DATA_SIGNATURE_LIST"

    .line 384
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    .line 385
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 386
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 387
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 388
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "Purchase record found for sku : "

    .line 389
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_4
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :try_start_1
    new-instance v11, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-direct {v11, v9, v10}, Lcom/android/billingclient/api/PurchaseHistoryRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 395
    invoke-virtual {v11}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "BUG: empty/null token!"

    .line 396
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_5
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 393
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Got an exception trying to decode the purchase: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance p1, Lcom/android/billingclient/api/BillingClientImpl$zzb;

    sget-object v0, Lcom/android/billingclient/api/zzak;->zzl:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v0, v3}, Lcom/android/billingclient/api/BillingClientImpl$zzb;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1

    :cond_6
    const-string v5, "INAPP_CONTINUATION_TOKEN"

    .line 399
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "Continuation token: "

    .line 400
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_3
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 402
    new-instance p1, Lcom/android/billingclient/api/BillingClientImpl$zzb;

    sget-object v1, Lcom/android/billingclient/api/zzak;->zzn:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v1, v0}, Lcom/android/billingclient/api/BillingClientImpl$zzb;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1

    :catch_1
    move-exception p1

    .line 373
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Got exception trying to get purchase history: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; try to reconnect"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance p1, Lcom/android/billingclient/api/BillingClientImpl$zzb;

    sget-object v0, Lcom/android/billingclient/api/zzak;->zzo:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v0, v3}, Lcom/android/billingclient/api/BillingClientImpl$zzb;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1
.end method

.method static synthetic zzb(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzc;
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/google/android/gms/internal/play_billing/zzc;

    return-object p0
.end method

.method private static zzb()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.android.billingclient.ktx.BuildConfig"

    .line 21
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "VERSION_NAME"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "3.0.1"

    return-object v0
.end method

.method static synthetic zzb(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0

    .line 591
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Z

    return p1
.end method

.method private static zzc()Landroid/os/Bundle;
    .locals 3

    .line 440
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "vr"

    const/4 v2, 0x1

    .line 441
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private final zzc(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .locals 3

    .line 429
    new-instance v0, Lcom/android/billingclient/api/zzv;

    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/zzv;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)V

    const-wide/16 v1, 0x1388

    const/4 p1, 0x0

    .line 430
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 431
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 432
    invoke-interface {p1, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 434
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzn:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    .line 435
    :cond_0
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzi:Lcom/android/billingclient/api/BillingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "BillingClient"

    const-string v0, "Exception while checking if billing is supported; try to reconnect"

    .line 438
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzo:Lcom/android/billingclient/api/BillingResult;

    return-object p1
.end method

.method static synthetic zzc(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;
    .locals 0

    .line 586
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzc(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0

    .line 593
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzr:Z

    return p1
.end method

.method static synthetic zzd(Lcom/android/billingclient/api/BillingClientImpl;)I
    .locals 0

    .line 594
    iget p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzk:I

    return p0
.end method

.method private final zzd()Lcom/android/billingclient/api/BillingResult;
    .locals 2

    .line 576
    iget v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    sget-object v0, Lcom/android/billingclient/api/zzak;->zzl:Lcom/android/billingclient/api/BillingResult;

    return-object v0

    .line 577
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/billingclient/api/zzak;->zzo:Lcom/android/billingclient/api/BillingResult;

    return-object v0
.end method

.method private final zzd(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;
    .locals 14

    .line 504
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Querying owned items, item type: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 507
    iget-boolean v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzn:Z

    iget-boolean v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzs:Z

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:Ljava/lang/String;

    .line 508
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zza(ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    move-object v9, v3

    .line 509
    :cond_1
    :try_start_0
    iget-boolean v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzn:Z

    if-eqz v4, :cond_2

    .line 510
    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/google/android/gms/internal/play_billing/zzc;

    const/16 v6, 0x9

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 511
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v8, p1

    move-object v10, v2

    .line 512
    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_1

    .line 513
    :cond_2
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/google/android/gms/internal/play_billing/zzc;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 514
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 515
    invoke-interface {v4, v5, v6, p1, v9}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const-string v5, "getPurchase()"

    .line 520
    invoke-static {v4, v1, v5}, Lcom/android/billingclient/api/zzam;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v5

    .line 521
    sget-object v6, Lcom/android/billingclient/api/zzak;->zzn:Lcom/android/billingclient/api/BillingResult;

    if-eq v5, v6, :cond_3

    .line 522
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    invoke-direct {p1, v5, v3}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1

    :cond_3
    const-string v5, "INAPP_PURCHASE_ITEM_LIST"

    .line 524
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "INAPP_PURCHASE_DATA_LIST"

    .line 526
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "INAPP_DATA_SIGNATURE_LIST"

    .line 528
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    .line 529
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 530
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 531
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 532
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "Sku is owned: "

    .line 533
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_4
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :try_start_1
    new-instance v11, Lcom/android/billingclient/api/Purchase;

    invoke-direct {v11, v9, v10}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 539
    invoke-virtual {v11}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "BUG: empty/null token!"

    .line 540
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_5
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 537
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Got an exception trying to decode the purchase: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v0, Lcom/android/billingclient/api/zzak;->zzl:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v0, v3}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1

    :cond_6
    const-string v5, "INAPP_CONTINUATION_TOKEN"

    .line 543
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "Continuation token: "

    .line 544
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_4
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 546
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v1, Lcom/android/billingclient/api/zzak;->zzn:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v1, v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1

    :catch_1
    move-exception p1

    .line 518
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Got exception trying to get purchases: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; try to reconnect"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v0, Lcom/android/billingclient/api/zzak;->zzo:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v0, v3}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1
.end method

.method static synthetic zzd(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0

    .line 595
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzq:Z

    return p1
.end method

.method static synthetic zze(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingResult;
    .locals 0

    .line 602
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzd()Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0

    .line 596
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzp:Z

    return p1
.end method

.method static synthetic zzf(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0

    .line 597
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzo:Z

    return p1
.end method

.method static synthetic zzg(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0

    .line 598
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzn:Z

    return p1
.end method

.method static synthetic zzh(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0

    .line 599
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:Z

    return p1
.end method

.method static synthetic zzi(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .locals 0

    .line 600
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzl:Z

    return p1
.end method


# virtual methods
.method public acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 3

    .line 403
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzo:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 406
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid purchase token."

    .line 407
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzk:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 410
    :cond_1
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzn:Z

    if-nez v0, :cond_2

    .line 411
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzb:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 413
    :cond_2
    new-instance v0, Lcom/android/billingclient/api/zzm;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/billingclient/api/zzm;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    const-wide/16 v1, 0x7530

    new-instance p1, Lcom/android/billingclient/api/zzr;

    invoke-direct {p1, p0, p2}, Lcom/android/billingclient/api/zzr;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 414
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_3

    .line 416
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzd()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    :cond_3
    return-void
.end method

.method public consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 4

    .line 338
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    sget-object v0, Lcom/android/billingclient/api/zzak;->zzo:Lcom/android/billingclient/api/BillingResult;

    .line 340
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    .line 341
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void

    .line 343
    :cond_0
    new-instance v0, Lcom/android/billingclient/api/zzj;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/billingclient/api/zzj;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    const-wide/16 v1, 0x7530

    new-instance v3, Lcom/android/billingclient/api/zzi;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/billingclient/api/zzi;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V

    .line 344
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_1

    .line 347
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzd()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public endConnection()V
    .locals 5

    const-string v0, "BillingClient"

    const/4 v1, 0x3

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Lcom/android/billingclient/api/zzd;

    invoke-virtual {v2}, Lcom/android/billingclient/api/zzd;->zzc()V

    .line 93
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/BillingClientImpl$zza;

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/BillingClientImpl$zza;

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza()V

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/BillingClientImpl$zza;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/google/android/gms/internal/play_billing/zzc;

    if-eqz v2, :cond_1

    const-string v2, "Unbinding from service."

    .line 96
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/BillingClientImpl$zza;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 98
    iput-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/BillingClientImpl$zza;

    .line 99
    :cond_1
    iput-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/google/android/gms/internal/play_billing/zzc;

    .line 100
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzt:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzt:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 102
    iput-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzt:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_2
    iput v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:I

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 106
    :try_start_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "There was an exception while ending connection: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    iput v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:I

    return-void

    .line 109
    :goto_0
    iput v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:I

    .line 110
    throw v0
.end method

.method public isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .locals 2

    .line 31
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzo:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    :cond_0
    const/4 v0, -0x1

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "subscriptions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "subscriptionsOnVr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "inAppItemsOnVr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "priceChangeConfirmation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "ddd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_5
    const-string v1, "ccc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_6
    const-string v1, "bbb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_7
    const-string v1, "aaa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_8
    const-string v1, "subscriptionsUpdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string v0, "Unsupported feature: "

    .line 45
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 44
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzr:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/billingclient/api/zzak;->zzn:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    :cond_2
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzi:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    .line 43
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzq:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/billingclient/api/zzak;->zzn:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    :cond_3
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzi:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    .line 42
    :pswitch_2
    iget-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzp:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/android/billingclient/api/zzak;->zzn:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    :cond_4
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzi:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    .line 41
    :pswitch_3
    iget-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:Z

    if-eqz p1, :cond_5

    sget-object p1, Lcom/android/billingclient/api/zzak;->zzn:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    :cond_5
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzi:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    :pswitch_4
    const-string p1, "subs"

    .line 40
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1

    :pswitch_5
    const-string p1, "inapp"

    .line 39
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_6
    iget-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzj:Z

    if-eqz p1, :cond_6

    .line 36
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzn:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    .line 37
    :cond_6
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzi:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    .line 34
    :pswitch_7
    iget-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/android/billingclient/api/zzak;->zzn:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    :cond_7
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzi:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    .line 45
    :cond_8
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v0, "BillingClient"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzt:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1928a0a1 -> :sswitch_8
        0x17841 -> :sswitch_7
        0x17c22 -> :sswitch_6
        0x18003 -> :sswitch_5
        0x183e4 -> :sswitch_4
        0xc5ff92e -> :sswitch_3
        0x116ae57f -> :sswitch_2
        0x48aff111 -> :sswitch_1
        0x7674caf6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isReady()Z
    .locals 2

    .line 47
    iget v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/google/android/gms/internal/play_billing/zzc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/BillingClientImpl$zza;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    const-string v9, "BUY_INTENT"

    const-string v0, "proxyPackageVersion"

    const-string v10, "; try to reconnect"

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    sget-object v0, Lcom/android/billingclient/api/zzak;->zzo:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zza()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 168
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/SkuDetails;

    .line 169
    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v6, "subs"

    .line 170
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v11, "BillingClient"

    if-eqz v6, :cond_1

    iget-boolean v6, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Z

    if-nez v6, :cond_1

    const-string v0, "Current client doesn\'t support subscriptions."

    .line 171
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/android/billingclient/api/zzak;->zzq:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    return-object v0

    .line 173
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->getOldSku()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x1

    if-eqz v6, :cond_2

    move v6, v12

    goto :goto_0

    :cond_2
    move v6, v2

    :goto_0
    if-eqz v6, :cond_3

    .line 174
    iget-boolean v13, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzj:Z

    if-nez v13, :cond_3

    const-string v0, "Current client doesn\'t support subscriptions update."

    .line 175
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/android/billingclient/api/zzak;->zzr:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    return-object v0

    .line 177
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzc()Z

    move-result v13

    if-eqz v13, :cond_4

    iget-boolean v13, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzl:Z

    if-nez v13, :cond_4

    const-string v0, "Current client doesn\'t support extra params for buy intent."

    .line 178
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/android/billingclient/api/zzak;->zzh:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    return-object v0

    .line 180
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v12, :cond_5

    iget-boolean v13, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzr:Z

    if-nez v13, :cond_5

    const-string v0, "Current client doesn\'t support multi-item purchases."

    .line 181
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/android/billingclient/api/zzak;->zzs:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v13, ""

    move-object v14, v13

    move v13, v2

    .line 184
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_7

    .line 185
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v2, v16, v17

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    if-ge v13, v12, :cond_6

    .line 187
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v12, ", "

    invoke-virtual {v2, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    move-object v14, v2

    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x1

    goto :goto_1

    .line 189
    :cond_7
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x29

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v2, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", item type: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-boolean v2, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzl:Z

    if-eqz v2, :cond_15

    .line 191
    iget-boolean v2, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzn:Z

    iget-boolean v6, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzs:Z

    iget-object v15, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzb:Ljava/lang/String;

    .line 192
    invoke-static {v5, v2, v6, v15}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Lcom/android/billingclient/api/BillingFlowParams;ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 193
    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 195
    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->zzb()Ljava/lang/String;

    move-result-object v2

    const-string v15, "skuDetailsToken"

    .line 196
    invoke-virtual {v6, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 200
    move-object v12, v1

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 v18, v10

    const/4 v10, 0x0

    const/16 v19, 0x0

    :goto_2
    if-ge v10, v13, :cond_a

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    add-int/lit8 v10, v10, 0x1

    check-cast v20, Lcom/android/billingclient/api/SkuDetails;

    .line 201
    invoke-virtual/range {v20 .. v20}, Lcom/android/billingclient/api/SkuDetails;->zzb()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_9

    move/from16 v21, v10

    .line 202
    invoke-virtual/range {v20 .. v20}, Lcom/android/billingclient/api/SkuDetails;->zzb()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    move/from16 v21, v10

    .line 203
    :goto_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/billingclient/api/SkuDetails;->getOriginalJson()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 204
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/16 v16, 0x1

    xor-int/lit8 v10, v10, 0x1

    or-int v19, v19, v10

    move/from16 v10, v21

    goto :goto_2

    .line 207
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "skuDetailsTokens"

    .line 208
    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_b
    if-eqz v19, :cond_d

    .line 210
    iget-boolean v2, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzr:Z

    if-nez v2, :cond_c

    .line 211
    sget-object v0, Lcom/android/billingclient/api/zzak;->zzi:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    return-object v0

    :cond_c
    const-string v2, "SKU_OFFER_ID_TOKEN_LIST"

    .line 212
    invoke-virtual {v6, v2, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 213
    :cond_d
    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 215
    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->zza()Ljava/lang/String;

    move-result-object v2

    const-string v10, "skuPackageName"

    .line 216
    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_e
    iget-object v2, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzu:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 218
    iget-object v2, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzu:Ljava/lang/String;

    const-string v10, "accountName"

    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x1

    if-le v2, v10, :cond_11

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v10

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_10

    .line 222
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v12}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_10
    const-string v1, "additionalSkus"

    .line 224
    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 225
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PROXY_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "proxyPackage"

    .line 227
    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :try_start_0
    iget-object v2, v7, Lcom/android/billingclient/api/BillingClientImpl;->zze:Landroid/content/Context;

    .line 229
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v2, v1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 230
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-string v1, "package not found"

    .line 233
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_5
    const/4 v0, 0x6

    .line 236
    iget-boolean v1, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzn:Z

    if-eqz v1, :cond_13

    const/16 v0, 0x9

    goto :goto_6

    .line 238
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->getVrPurchaseFlow()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x7

    :cond_14
    :goto_6
    move v2, v0

    .line 241
    new-instance v10, Lcom/android/billingclient/api/zzz;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/zzz;-><init>(Lcom/android/billingclient/api/BillingClientImpl;ILcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x1388

    .line 242
    invoke-direct {v7, v10, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_7

    :cond_15
    move-object/from16 v18, v10

    const/4 v0, 0x0

    const-wide/16 v1, 0x1388

    if-eqz v6, :cond_16

    .line 244
    new-instance v4, Lcom/android/billingclient/api/zzy;

    invoke-direct {v4, v7, v5, v3}, Lcom/android/billingclient/api/zzy;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingFlowParams;Lcom/android/billingclient/api/SkuDetails;)V

    .line 245
    invoke-direct {v7, v4, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_7

    .line 246
    :cond_16
    new-instance v5, Lcom/android/billingclient/api/zzab;

    invoke-direct {v5, v7, v3, v4}, Lcom/android/billingclient/api/zzab;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)V

    .line 247
    invoke-direct {v7, v5, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 248
    :goto_7
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 249
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 250
    invoke-static {v0, v11}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    .line 251
    invoke-static {v0, v11}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_17

    const/16 v0, 0x34

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unable to buy item, Error response code: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 258
    invoke-direct {v7, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    return-object v0

    .line 259
    :cond_17
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/billingclient/api/ProxyBillingActivity;

    invoke-direct {v1, v8, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 261
    invoke-virtual {v1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 262
    invoke-virtual {v8, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    sget-object v0, Lcom/android/billingclient/api/zzak;->zzn:Lcom/android/billingclient/api/BillingResult;

    return-object v0

    .line 269
    :catch_1
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x45

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Exception while launching billing flow: ; for sku: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/android/billingclient/api/zzak;->zzo:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    return-object v0

    :catch_2
    move-object/from16 v0, v18

    .line 265
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Time out while launching billing flow: ; for sku: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/android/billingclient/api/zzak;->zzp:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    return-object v0
.end method

.method public launchPriceChangeConfirmationFlow(Landroid/app/Activity;Lcom/android/billingclient/api/PriceChangeFlowParams;Lcom/android/billingclient/api/PriceChangeConfirmationListener;)V
    .locals 7

    const-string v0, "SUBS_MANAGEMENT_INTENT"

    const-string v1, "; try to reconnect"

    .line 113
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzo:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p3, p1}, Lcom/android/billingclient/api/PriceChangeConfirmationListener;->onPriceChangeConfirmationResult(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :cond_0
    const-string v2, "Please fix the input params. priceChangeFlowParams must contain valid sku."

    const-string v3, "BillingClient"

    if-eqz p2, :cond_5

    .line 116
    invoke-virtual {p2}, Lcom/android/billingclient/api/PriceChangeFlowParams;->getSkuDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_0

    .line 120
    :cond_1
    invoke-virtual {p2}, Lcom/android/billingclient/api/PriceChangeFlowParams;->getSkuDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 122
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzm:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p3, p1}, Lcom/android/billingclient/api/PriceChangeConfirmationListener;->onPriceChangeConfirmationResult(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 125
    :cond_2
    iget-boolean v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:Z

    if-nez v2, :cond_3

    const-string p1, "Current client doesn\'t support price change confirmation flow."

    .line 126
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzi:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p3, p1}, Lcom/android/billingclient/api/PriceChangeConfirmationListener;->onPriceChangeConfirmationResult(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 129
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 130
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:Ljava/lang/String;

    const-string v5, "playBillingLibraryVersion"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const-string v5, "subs_price_change"

    .line 131
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    new-instance v4, Lcom/android/billingclient/api/zzh;

    invoke-direct {v4, p0, p2, v2}, Lcom/android/billingclient/api/zzh;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v2, 0x0

    const-wide/16 v5, 0x1388

    .line 134
    invoke-direct {p0, v4, v5, v6, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 135
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 136
    invoke-interface {v2, v5, v6, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 137
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v4

    .line 138
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v6

    .line 140
    invoke-virtual {v6, v4}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v6

    .line 141
    invoke-virtual {v6, v5}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v5

    .line 142
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v5

    if-eqz v4, :cond_4

    const/16 p1, 0x44

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unable to launch price change flow, error response code: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-interface {p3, v5}, Lcom/android/billingclient/api/PriceChangeConfirmationListener;->onPriceChangeConfirmationResult(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 147
    :cond_4
    new-instance v4, Lcom/android/billingclient/api/zzs;

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Landroid/os/Handler;

    invoke-direct {v4, p0, v5, p3}, Lcom/android/billingclient/api/zzs;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/Handler;Lcom/android/billingclient/api/PriceChangeConfirmationListener;)V

    .line 148
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/billingclient/api/ProxyBillingActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 151
    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "result_receiver"

    .line 152
    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p1, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 161
    :catch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Exception caught while launching Price Change Flow for sku: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzo:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p3, p1}, Lcom/android/billingclient/api/PriceChangeConfirmationListener;->onPriceChangeConfirmationResult(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 156
    :catch_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x46

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Time out while launching Price Change Flow for sku: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzp:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p3, p1}, Lcom/android/billingclient/api/PriceChangeConfirmationListener;->onPriceChangeConfirmationResult(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 117
    :cond_5
    :goto_0
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzm:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p3, p1}, Lcom/android/billingclient/api/PriceChangeConfirmationListener;->onPriceChangeConfirmationResult(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    .locals 4

    .line 350
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 351
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzo:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/PurchaseHistoryResponseListener;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    .line 353
    :cond_0
    new-instance v0, Lcom/android/billingclient/api/zzl;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/billingclient/api/zzl;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    const-wide/16 v2, 0x7530

    new-instance p1, Lcom/android/billingclient/api/zzn;

    invoke-direct {p1, p0, p2}, Lcom/android/billingclient/api/zzn;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    .line 354
    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_1

    .line 357
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzd()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 358
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/PurchaseHistoryResponseListener;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;
    .locals 4

    .line 280
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 281
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v0, Lcom/android/billingclient/api/zzak;->zzo:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1

    .line 282
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid SKU type."

    .line 283
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v0, Lcom/android/billingclient/api/zzak;->zzg:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1

    .line 285
    :cond_1
    new-instance v0, Lcom/android/billingclient/api/zzaa;

    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/zzaa;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    .line 286
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 287
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 291
    :catch_0
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v0, Lcom/android/billingclient/api/zzak;->zzl:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1

    .line 289
    :catch_1
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v0, Lcom/android/billingclient/api/zzak;->zzp:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1
.end method

.method public querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .locals 8

    .line 292
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 293
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzo:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams;->getSkuType()Ljava/lang/String;

    move-result-object v4

    .line 296
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams;->getSkusList()Ljava/util/List;

    move-result-object p1

    .line 303
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "BillingClient"

    if-eqz v0, :cond_1

    const-string p1, "Please fix the input params. SKU type can\'t be empty."

    .line 305
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzg:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    .line 308
    :cond_1
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzq:Z

    .line 313
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzr:Z

    if-nez p1, :cond_2

    const-string p1, "Please fix the input params. The list of SKUs can\'t be empty - set SKU list or SkuWithOffer list."

    .line 320
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object p1, Lcom/android/billingclient/api/zzak;->zzf:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    .line 323
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 326
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    new-instance v2, Lcom/android/billingclient/api/zzap$zza;

    invoke-direct {v2, v1}, Lcom/android/billingclient/api/zzap$zza;-><init>(Lcom/android/billingclient/api/zzao;)V

    .line 329
    invoke-virtual {v2, v0}, Lcom/android/billingclient/api/zzap$zza;->zza(Ljava/lang/String;)Lcom/android/billingclient/api/zzap$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzap$zza;->zza()Lcom/android/billingclient/api/zzap;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_3
    new-instance p1, Lcom/android/billingclient/api/zzad;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/billingclient/api/zzad;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    const-wide/16 v2, 0x7530

    new-instance v0, Lcom/android/billingclient/api/zzg;

    invoke-direct {v0, p0, p2}, Lcom/android/billingclient/api/zzg;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 332
    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_4

    .line 335
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzd()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 336
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    .locals 7

    .line 48
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    const-string v1, "BillingClient"

    if-eqz v0, :cond_0

    const-string v0, "Service connection is valid. No need to re-initialize."

    .line 49
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/android/billingclient/api/zzak;->zzn:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 52
    :cond_0
    iget v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "Client is already in the process of connecting to billing service."

    .line 53
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/android/billingclient/api/zzak;->zzd:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    .line 57
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/android/billingclient/api/zzak;->zzo:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 60
    :cond_2
    iput v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:I

    .line 61
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Lcom/android/billingclient/api/zzd;

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzd;->zza()V

    const-string v0, "Starting in-app billing setup."

    .line 62
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl$zza;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/android/billingclient/api/BillingClientImpl$zza;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/zzh;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/BillingClientImpl$zza;

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.vending"

    .line 65
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 67
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 68
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 69
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 70
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_5

    .line 71
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 72
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 73
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 74
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 77
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:Ljava/lang/String;

    const-string v3, "playBillingLibraryVersion"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/BillingClientImpl$zza;

    .line 79
    invoke-virtual {v0, v4, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "Service was bonded successfully."

    .line 81
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "Connection to Billing service is blocked."

    .line 83
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "The device doesn\'t have valid Play Store."

    .line 85
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_5
    :goto_0
    iput v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:I

    const-string v0, "Billing service unavailable on device."

    .line 87
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/android/billingclient/api/zzak;->zzc:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method final zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails$zza;
    .locals 19
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/zzap;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/billingclient/api/SkuDetails$zza;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "BillingClient"

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_8

    add-int/lit8 v6, v5, 0x14

    if-le v6, v3, :cond_0

    move v7, v3

    goto :goto_1

    :cond_0
    move v7, v6

    .line 450
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v9, p2

    .line 451
    invoke-interface {v9, v5, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 452
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 453
    move-object v7, v8

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lcom/android/billingclient/api/zzap;

    .line 454
    invoke-virtual {v12}, Lcom/android/billingclient/api/zzap;->zza()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 456
    :cond_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v10, "ITEM_ID_LIST"

    .line 457
    invoke-virtual {v7, v10, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 458
    iget-object v5, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzb:Ljava/lang/String;

    const-string v10, "playBillingLibraryVersion"

    invoke-virtual {v7, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 459
    :try_start_0
    iget-boolean v10, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzo:Z

    if-eqz v10, :cond_2

    .line 460
    iget-object v13, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/google/android/gms/internal/play_billing/zzc;

    const/16 v14, 0xa

    iget-object v10, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 461
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget v10, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzk:I

    iget-boolean v11, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzs:Z

    iget-object v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzb:Ljava/lang/String;

    move-object/from16 v4, p3

    .line 462
    invoke-static {v10, v11, v12, v4, v8}, Lcom/google/android/gms/internal/play_billing/zza;->zza(IZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v18

    move-object/from16 v16, p1

    move-object/from16 v17, v7

    .line 463
    invoke-interface/range {v13 .. v18}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    move-object/from16 v12, p1

    goto :goto_3

    :cond_2
    move-object/from16 v4, p3

    .line 464
    iget-object v8, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Lcom/google/android/gms/internal/play_billing/zzc;

    const/4 v10, 0x3

    iget-object v11, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Landroid/content/Context;

    .line 465
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, p1

    .line 466
    invoke-interface {v8, v10, v11, v12, v7}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    const-string v8, "Item is unavailable for purchase."

    const/4 v10, 0x4

    if-nez v7, :cond_3

    const-string v0, "querySkuDetailsAsync got null sku details list"

    .line 473
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Lcom/android/billingclient/api/SkuDetails$zza;

    invoke-direct {v0, v10, v8, v5}, Lcom/android/billingclient/api/SkuDetails$zza;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_3
    const-string v11, "DETAILS_LIST"

    .line 475
    invoke-virtual {v7, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x6

    if-nez v13, :cond_5

    .line 476
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    .line 477
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_4

    const/16 v5, 0x32

    .line 479
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "getSkuDetails() failed. Response code: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 480
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v2, Lcom/android/billingclient/api/SkuDetails$zza;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/billingclient/api/SkuDetails$zza;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v2

    :cond_4
    const-string v3, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 483
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v2, Lcom/android/billingclient/api/SkuDetails$zza;

    invoke-direct {v2, v14, v4, v0}, Lcom/android/billingclient/api/SkuDetails$zza;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v2

    .line 486
    :cond_5
    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_6

    const-string v0, "querySkuDetailsAsync got null response list"

    .line 488
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v0, Lcom/android/billingclient/api/SkuDetails$zza;

    invoke-direct {v0, v10, v8, v5}, Lcom/android/billingclient/api/SkuDetails$zza;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_6
    const/4 v8, 0x0

    .line 490
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    .line 491
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 492
    :try_start_1
    new-instance v11, Lcom/android/billingclient/api/SkuDetails;

    invoke-direct {v11, v10}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 498
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Got sku details: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :catch_0
    const-string v0, "Got a JSON exception trying to decode SkuDetails."

    .line 496
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    new-instance v0, Lcom/android/billingclient/api/SkuDetails$zza;

    const-string v2, "Error trying to decode SkuDetails."

    invoke-direct {v0, v14, v2, v5}, Lcom/android/billingclient/api/SkuDetails$zza;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_7
    move v5, v6

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v3, "querySkuDetailsAsync got a remote exception (try to reconnect)."

    .line 470
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v0, Lcom/android/billingclient/api/SkuDetails$zza;

    const/4 v2, -0x1

    const-string v3, "Service connection is disconnected."

    invoke-direct {v0, v2, v3, v5}, Lcom/android/billingclient/api/SkuDetails$zza;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 503
    :cond_8
    new-instance v2, Lcom/android/billingclient/api/SkuDetails$zza;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v0}, Lcom/android/billingclient/api/SkuDetails$zza;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v2
.end method
