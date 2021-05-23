.class public Lcom/android/billingclient/api/BillingFlowParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@3.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingFlowParams$Builder;,
        Lcom/android/billingclient/api/BillingFlowParams$ProrationMode;
    }
.end annotation


# static fields
.field public static final EXTRA_PARAM_KEY_ACCOUNT_ID:Ljava/lang/String; = "accountId"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final EXTRA_PARAM_KEY_OLD_SKUS:Ljava/lang/String; = "skusToReplace"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final EXTRA_PARAM_KEY_OLD_SKU_PURCHASE_TOKEN:Ljava/lang/String; = "oldSkuPurchaseToken"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final EXTRA_PARAM_KEY_REPLACE_SKUS_PRORATION_MODE:Ljava/lang/String; = "prorationMode"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final EXTRA_PARAM_KEY_VR:Ljava/lang/String; = "vr"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private zza:Z

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzg:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/zzai;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingFlowParams;-><init>()V

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 17
    new-instance v0, Lcom/android/billingclient/api/BillingFlowParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;-><init>(Lcom/android/billingclient/api/zzai;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/android/billingclient/api/BillingFlowParams;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzg:I

    return p1
.end method

.method static synthetic zza(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzb:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zza(Lcom/android/billingclient/api/BillingFlowParams;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzh:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic zza(Lcom/android/billingclient/api/BillingFlowParams;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zza:Z

    return p1
.end method

.method static synthetic zzb(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzb(Lcom/android/billingclient/api/BillingFlowParams;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzi:Z

    return p1
.end method

.method static synthetic zzc(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzf:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzd(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zze(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zze:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getOldSku()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzb$zza;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public getOldSkuPurchaseToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzb$zza;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public getReplaceSkusProrationMode()I
    .locals 1
    .annotation build Lcom/android/billingclient/api/zzb$zza;
    .end annotation

    .line 14
    iget v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzg:I

    return v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzb$zza;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzh:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSkuDetails()Lcom/android/billingclient/api/SkuDetails;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzb$zza;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzh:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    return-object v0
.end method

.method public getSkuType()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzb$zza;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzh:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVrPurchaseFlow()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzi:Z

    return v0
.end method

.method public final zza()Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzh:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method final zzc()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzi:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzc:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzf:Ljava/lang/String;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzg:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zza:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzf:Ljava/lang/String;

    return-object v0
.end method
