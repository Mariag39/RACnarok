.class final Lcom/android/billingclient/api/zzg;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@3.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/android/billingclient/api/SkuDetailsResponseListener;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/billingclient/api/zzg;->zza:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/zzg;->zza:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    sget-object v1, Lcom/android/billingclient/api/zzak;->zzp:Lcom/android/billingclient/api/BillingResult;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
