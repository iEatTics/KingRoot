.class public final Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public businessStream:Ljava/lang/String;

.field public channelId:Ljava/lang/String;

.field public cmsCategoryId:Ljava/lang/String;

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->cmsCategoryId:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->businessStream:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->channelId:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->versionName:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;-><init>(Landroid/os/Parcel;)V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->cmsCategoryId:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->businessStream:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->channelId:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->versionName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->cmsCategoryId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->businessStream:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->channelId:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->versionName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->cmsCategoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->businessStream:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->channelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    return-void
.end method
