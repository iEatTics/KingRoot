.class final Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
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
        "Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aw(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest$1;->aw(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public fS(I)[Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
    .locals 1

    .prologue
    .line 216
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest$1;->fS(I)[Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v0

    return-object v0
.end method
