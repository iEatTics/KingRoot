.class final Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;
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
        "Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public as(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo$1;->as(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public fP(I)[Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;
    .locals 1

    .prologue
    .line 72
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo$1;->fP(I)[Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;

    move-result-object v0

    return-object v0
.end method
