.class final Lcom/android/billingclient/api/zzk;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@3.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/android/billingclient/api/BillingClientImpl$zzb;

.field private final synthetic zzb:Lcom/android/billingclient/api/zzl;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/zzl;Lcom/android/billingclient/api/BillingClientImpl$zzb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/zzk;->zzb:Lcom/android/billingclient/api/zzl;

    iput-object p2, p0, Lcom/android/billingclient/api/zzk;->zza:Lcom/android/billingclient/api/BillingClientImpl$zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/zzk;->zzb:Lcom/android/billingclient/api/zzl;

    iget-object v0, v0, Lcom/android/billingclient/api/zzl;->zza:Lcom/android/billingclient/api/PurchaseHistoryResponseListener;

    iget-object v1, p0, Lcom/android/billingclient/api/zzk;->zza:Lcom/android/billingclient/api/BillingClientImpl$zzb;

    .line 3
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClientImpl$zzb;->zza()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/zzk;->zza:Lcom/android/billingclient/api/BillingClientImpl$zzb;

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClientImpl$zzb;->zzb()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/PurchaseHistoryResponseListener;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
