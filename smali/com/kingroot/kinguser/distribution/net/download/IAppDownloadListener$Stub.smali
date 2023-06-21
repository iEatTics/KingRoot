.class public abstract Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.kingroot.kinguser.distribution.net.download.IAppDownloadListener"

.field static final TRANSACTION_onComplete:I = 0x3

.field static final TRANSACTION_onFailed:I = 0x4

.field static final TRANSACTION_onPaused:I = 0x5

.field static final TRANSACTION_onPending:I = 0x6

.field static final TRANSACTION_onProgress:I = 0x1

.field static final TRANSACTION_onRemove:I = 0x7

.field static final TRANSACTION_onStartDownload:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.kingroot.kinguser.distribution.net.download.IAppDownloadListener"

    invoke-virtual {p0, p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.kingroot.kinguser.distribution.net.download.IAppDownloadListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.kingroot.kinguser.distribution.net.download.IAppDownloadListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.kingroot.kinguser.distribution.net.download.IAppDownloadListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    sget-object v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    .line 57
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;->onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    move v0, v1

    .line 58
    goto :goto_0

    .line 62
    :sswitch_2
    const-string v2, "com.kingroot.kinguser.distribution.net.download.IAppDownloadListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    sget-object v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    .line 70
    :cond_1
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;->onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    move v0, v1

    .line 71
    goto :goto_0

    .line 75
    :sswitch_3
    const-string v2, "com.kingroot.kinguser.distribution.net.download.IAppDownloadListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    sget-object v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    .line 83
    :cond_2
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;->onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    move v0, v1

    .line 84
    goto :goto_0

    .line 88
    :sswitch_4
    const-string v2, "com.kingroot.kinguser.distribution.net.download.IAppDownloadListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    sget-object v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    .line 96
    :cond_3
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;->onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    move v0, v1

    .line 97
    goto :goto_0

    .line 101
    :sswitch_5
    const-string v2, "com.kingroot.kinguser.distribution.net.download.IAppDownloadListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 104
    sget-object v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    .line 109
    :cond_4
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;->onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    move v0, v1

    .line 110
    goto/16 :goto_0

    .line 114
    :sswitch_6
    const-string v2, "com.kingroot.kinguser.distribution.net.download.IAppDownloadListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 117
    sget-object v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    .line 122
    :cond_5
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;->onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    move v0, v1

    .line 123
    goto/16 :goto_0

    .line 127
    :sswitch_7
    const-string v2, "com.kingroot.kinguser.distribution.net.download.IAppDownloadListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 130
    sget-object v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    .line 135
    :cond_6
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;->onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    move v0, v1

    .line 136
    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
