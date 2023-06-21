.class final Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public H(Landroid/os/Parcel;)Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;
    .locals 1

    .prologue
    .line 51
    invoke-static {p1}, Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;->G(Landroid/os/Parcel;)Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel$1;->H(Landroid/os/Parcel;)Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;

    move-result-object v0

    return-object v0
.end method

.method public dp(I)[Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;
    .locals 1

    .prologue
    .line 55
    new-array v0, p1, [Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel$1;->dp(I)[Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;

    move-result-object v0

    return-object v0
.end method
