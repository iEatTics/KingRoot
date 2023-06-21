.class public Lcom/kingroot/common/network/download/AppDownloadTaskInfo;
.super Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;-><init>(Landroid/os/Parcel;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/ve;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;-><init>(Lcom/kingroot/kinguser/vj;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 13
    return-void
.end method
