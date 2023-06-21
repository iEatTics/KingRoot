.class final Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;
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
        "Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ar(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;-><init>(Landroid/os/Parcel;Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest$1;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest$1;->ar(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public fO(I)[Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;
    .locals 1

    .prologue
    .line 48
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest$1;->fO(I)[Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;

    move-result-object v0

    return-object v0
.end method
