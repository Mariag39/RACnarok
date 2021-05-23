.class final Lcom/android/billingclient/api/zzag;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@3.0.1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/android/billingclient/api/BillingClientImpl$zza;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl$zza;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zza()Ljava/lang/Void;
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza(Lcom/android/billingclient/api/BillingClientImpl$zza;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl$zza;->zzc(Lcom/android/billingclient/api/BillingClientImpl$zza;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-object v2

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 7
    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v3, v3, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v3}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v4, 0xe

    move v6, v0

    move v5, v4

    :goto_0
    if-lt v5, v0, :cond_2

    .line 11
    :try_start_2
    iget-object v7, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v7, v7, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    .line 12
    invoke-static {v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzc;

    move-result-object v7

    const-string v8, "subs"

    invoke-interface {v7, v5, v3, v8}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    move v5, v1

    .line 17
    :goto_1
    iget-object v7, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v7, v7, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-lt v5, v8, :cond_3

    move v8, v9

    goto :goto_2

    :cond_3
    move v8, v1

    :goto_2
    invoke-static {v7, v8}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 18
    iget-object v7, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v7, v7, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    if-lt v5, v0, :cond_4

    move v8, v9

    goto :goto_3

    :cond_4
    move v8, v1

    :goto_3
    invoke-static {v7, v8}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    if-ge v5, v0, :cond_5

    const-string v5, "BillingClient"

    const-string v7, "In-app billing API does not support subscription on this device."

    .line 20
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/play_billing/zza;->zza(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v5, v4

    :goto_4
    if-lt v5, v0, :cond_7

    .line 23
    iget-object v7, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v7, v7, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    .line 24
    invoke-static {v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzc;

    move-result-object v7

    const-string v8, "inapp"

    invoke-interface {v7, v5, v3, v8}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 26
    iget-object v3, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v3, v3, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v3, v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;I)I

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 29
    :cond_7
    :goto_5
    iget-object v3, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v3, v3, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v5, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v5, v5, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzd(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v5

    if-lt v5, v4, :cond_8

    move v4, v9

    goto :goto_6

    :cond_8
    move v4, v1

    :goto_6
    invoke-static {v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 30
    iget-object v3, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v3, v3, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v4, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v4, v4, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzd(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v4

    const/16 v5, 0xd

    if-lt v4, v5, :cond_9

    move v4, v9

    goto :goto_7

    :cond_9
    move v4, v1

    :goto_7
    invoke-static {v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzd(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 31
    iget-object v3, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v3, v3, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v4, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v4, v4, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzd(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v4

    const/16 v5, 0xc

    if-lt v4, v5, :cond_a

    move v4, v9

    goto :goto_8

    :cond_a
    move v4, v1

    :goto_8
    invoke-static {v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zze(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 32
    iget-object v3, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v3, v3, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v4, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v4, v4, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzd(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_b

    move v4, v9

    goto :goto_9

    :cond_b
    move v4, v1

    :goto_9
    invoke-static {v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzf(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 33
    iget-object v3, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v3, v3, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v4, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v4, v4, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzd(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v4

    const/16 v5, 0x9

    if-lt v4, v5, :cond_c

    move v4, v9

    goto :goto_a

    :cond_c
    move v4, v1

    :goto_a
    invoke-static {v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzg(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 34
    iget-object v3, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v3, v3, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v4, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v4, v4, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzd(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_d

    move v4, v9

    goto :goto_b

    :cond_d
    move v4, v1

    :goto_b
    invoke-static {v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzh(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 35
    iget-object v3, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v3, v3, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v4, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v4, v4, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzd(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_e

    goto :goto_c

    :cond_e
    move v9, v1

    :goto_c
    invoke-static {v3, v9}, Lcom/android/billingclient/api/BillingClientImpl;->zzi(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 36
    iget-object v3, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v3, v3, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzd(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v3

    if-ge v3, v0, :cond_f

    const-string v0, "BillingClient"

    const-string v3, "In-app billing API version 3 is not supported on this device."

    .line 37
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-nez v6, :cond_10

    .line 39
    iget-object v0, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;I)I

    goto :goto_d

    .line 40
    :cond_10
    iget-object v0, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;I)I

    .line 41
    iget-object v0, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzc;)Lcom/google/android/gms/internal/play_billing/zzc;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_d

    :catch_0
    move v6, v0

    :catch_1
    const-string v0, "BillingClient"

    const-string v3, "Exception while checking if billing is supported; try to reconnect"

    .line 44
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;I)I

    .line 46
    iget-object v0, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzc;)Lcom/google/android/gms/internal/play_billing/zzc;

    :goto_d
    if-nez v6, :cond_11

    .line 48
    iget-object v0, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    sget-object v1, Lcom/android/billingclient/api/zzak;->zzn:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza(Lcom/android/billingclient/api/BillingClientImpl$zza;Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_e

    .line 49
    :cond_11
    iget-object v0, p0, Lcom/android/billingclient/api/zzag;->zza:Lcom/android/billingclient/api/BillingClientImpl$zza;

    sget-object v1, Lcom/android/billingclient/api/zzak;->zza:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl$zza;->zza(Lcom/android/billingclient/api/BillingClientImpl$zza;Lcom/android/billingclient/api/BillingResult;)V

    :goto_e
    return-object v2

    :catchall_0
    move-exception v1

    .line 5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/android/billingclient/api/zzag;->zza()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
