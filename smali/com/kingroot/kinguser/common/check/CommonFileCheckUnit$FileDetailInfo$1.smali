.class final Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;
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
        "Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public N(Landroid/os/Parcel;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 395
    new-instance v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    if-ne v7, v8, :cond_0

    move v7, v8

    .line 403
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v10

    if-ne v10, v8, :cond_1

    .line 404
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;-><init>(IIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-object v0

    :cond_0
    move v7, v9

    .line 402
    goto :goto_0

    :cond_1
    move v8, v9

    .line 403
    goto :goto_1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo$1;->N(Landroid/os/Parcel;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public dL(I)[Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;
    .locals 1

    .prologue
    .line 411
    new-array v0, p1, [Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo$1;->dL(I)[Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    move-result-object v0

    return-object v0
.end method
