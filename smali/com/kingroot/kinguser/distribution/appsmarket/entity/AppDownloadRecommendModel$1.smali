.class final Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;
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
        "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public af(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;
    .locals 1

    .prologue
    .line 54
    invoke-static {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;->ae(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel$1;->af(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;

    move-result-object v0

    return-object v0
.end method

.method public ft(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;
    .locals 1

    .prologue
    .line 58
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel$1;->ft(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;

    move-result-object v0

    return-object v0
.end method
