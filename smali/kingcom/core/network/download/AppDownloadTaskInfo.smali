.class public Lkingcom/core/network/download/AppDownloadTaskInfo;
.super Lkingcom/core/network/download/NetworkLoadTaskInfo;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lkingcom/core/network/download/NetworkLoadTaskInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lkingcom/core/network/download/NetworkLoadTaskInfo;-><init>(Landroid/os/Parcel;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/caa;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lkingcom/core/network/download/NetworkLoadTaskInfo;-><init>(Lcom/kingroot/kinguser/caf;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected d(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lkingcom/core/network/download/NetworkLoadTaskInfo;->d(Landroid/os/Parcel;)V

    .line 28
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lkingcom/core/network/download/NetworkLoadTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 13
    return-void
.end method
