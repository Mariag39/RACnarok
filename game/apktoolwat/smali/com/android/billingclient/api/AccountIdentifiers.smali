.class public final Lcom/android/billingclient/api/AccountIdentifiers;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@3.0.1"


# instance fields
.field private final zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/billingclient/api/AccountIdentifiers;->zza:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/billingclient/api/AccountIdentifiers;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getObfuscatedAccountId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/android/billingclient/api/AccountIdentifiers;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final getObfuscatedProfileId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/android/billingclient/api/AccountIdentifiers;->zzb:Ljava/lang/String;

    return-object v0
.end method
