.class public final Lcom/android/billingclient/api/zzap$zza;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@3.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/zzap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/zzao;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/android/billingclient/api/zzap$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/android/billingclient/api/zzap$zza;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/billingclient/api/zzap$zza;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zza()Lcom/android/billingclient/api/zzap;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/android/billingclient/api/zzap$zza;->zza:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/android/billingclient/api/zzap;

    iget-object v1, p0, Lcom/android/billingclient/api/zzap$zza;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/billingclient/api/zzap;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/zzao;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKU must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
