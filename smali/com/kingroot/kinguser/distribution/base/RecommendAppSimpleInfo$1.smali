.class final Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;
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
        "Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public au(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;
    .locals 1

    .prologue
    .line 152
    invoke-static {p1}, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->at(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo$1;->au(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v0

    return-object v0
.end method

.method public fQ(I)[Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;
    .locals 1

    .prologue
    .line 156
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo$1;->fQ(I)[Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v0

    return-object v0
.end method
