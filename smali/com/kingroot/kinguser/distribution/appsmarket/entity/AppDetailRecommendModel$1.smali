.class final Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;
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
        "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;",
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
.method public ab(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;
    .locals 1

    .prologue
    .line 51
    invoke-static {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;->aa(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel$1;->ab(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;

    move-result-object v0

    return-object v0
.end method

.method public fr(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;
    .locals 1

    .prologue
    .line 55
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel$1;->fr(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;

    move-result-object v0

    return-object v0
.end method
