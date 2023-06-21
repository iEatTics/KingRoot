.class final Lcom/kingroot/kingmaster/network/download/KuDownloadInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;
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
        "Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cH(I)[Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;
    .locals 1

    .prologue
    .line 57
    new-array v0, p1, [Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo$1;->z(Landroid/os/Parcel;)Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo$1;->cH(I)[Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public z(Landroid/os/Parcel;)Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
