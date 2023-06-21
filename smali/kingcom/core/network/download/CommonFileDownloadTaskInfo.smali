.class public Lkingcom/core/network/download/CommonFileDownloadTaskInfo;
.super Lkingcom/core/network/download/NetworkLoadTaskInfo;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lkingcom/core/network/download/NetworkLoadTaskInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lkingcom/core/network/download/NetworkLoadTaskInfo;-><init>(Landroid/os/Parcel;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/bzo;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lkingcom/core/network/download/NetworkLoadTaskInfo;-><init>(Lcom/kingroot/kinguser/caf;)V

    .line 19
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lkingcom/core/network/download/NetworkLoadTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 24
    return-void
.end method
