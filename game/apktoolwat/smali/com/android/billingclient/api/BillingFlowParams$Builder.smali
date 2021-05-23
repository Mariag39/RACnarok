.class public Lcom/android/billingclient/api/BillingFlowParams$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@3.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:I

.field private zzf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zze:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/zzai;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/BillingFlowParams;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzf:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 21
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzf:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v4, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKU cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 26
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzf:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    .line 27
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v3

    .line 28
    iget-object v4, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzf:Ljava/util/ArrayList;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/billingclient/api/SkuDetails;

    .line 29
    invoke-virtual {v7}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKUs should have the same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_3
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->zza()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v3, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzf:Ljava/util/ArrayList;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/billingclient/api/SkuDetails;

    .line 34
    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->zza()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    .line 35
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All SKUs must have the same package name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_5
    new-instance v0, Lcom/android/billingclient/api/BillingFlowParams;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/billingclient/api/BillingFlowParams;-><init>(Lcom/android/billingclient/api/zzai;)V

    .line 38
    iget-object v4, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzf:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->zza(Lcom/android/billingclient/api/BillingFlowParams;Z)Z

    .line 39
    invoke-static {v0, v3}, Lcom/android/billingclient/api/BillingFlowParams;->zza(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zza:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->zzb(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->zzc(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzb:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->zzd(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->zze(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    iget v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zze:I

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->zza(Lcom/android/billingclient/api/BillingFlowParams;I)I

    .line 45
    iget-object v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzf:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->zza(Lcom/android/billingclient/api/BillingFlowParams;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 46
    iget-boolean v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzg:Z

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->zzb(Lcom/android/billingclient/api/BillingFlowParams;Z)Z

    return-object v0

    .line 20
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SkuDetails must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public setOldSku(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzb$zza;
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzb:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public setReplaceSkusProrationMode(I)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 11
    iput p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zze:I

    return-object p0
.end method

.method public setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 1
    .param p1    # Lcom/android/billingclient/api/SkuDetails;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzf:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setVrPurchaseFlow(Z)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 15
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->zzg:Z

    return-object p0
.end method
