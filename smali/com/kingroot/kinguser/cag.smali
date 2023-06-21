.class public final Lcom/kingroot/kinguser/cag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lkingcom/core/network/download/NetworkLoadTaskInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bd(Landroid/os/Parcel;)Lkingcom/core/network/download/NetworkLoadTaskInfo;
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    packed-switch v1, :pswitch_data_0

    .line 156
    new-instance v0, Lkingcom/core/network/download/NetworkLoadTaskInfo;

    invoke-direct {v0, p1}, Lkingcom/core/network/download/NetworkLoadTaskInfo;-><init>(Landroid/os/Parcel;)V

    .line 159
    :goto_0
    iput v1, v0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->a:I

    .line 160
    return-object v0

    .line 150
    :pswitch_0
    new-instance v0, Lkingcom/core/network/download/AppDownloadTaskInfo;

    invoke-direct {v0, p1}, Lkingcom/core/network/download/AppDownloadTaskInfo;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 153
    :pswitch_1
    new-instance v0, Lkingcom/core/network/download/CommonFileDownloadTaskInfo;

    invoke-direct {v0, p1}, Lkingcom/core/network/download/CommonFileDownloadTaskInfo;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/cag;->bd(Landroid/os/Parcel;)Lkingcom/core/network/download/NetworkLoadTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public kQ(I)[Lkingcom/core/network/download/NetworkLoadTaskInfo;
    .locals 1

    .prologue
    .line 164
    new-array v0, p1, [Lkingcom/core/network/download/NetworkLoadTaskInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/cag;->kQ(I)[Lkingcom/core/network/download/NetworkLoadTaskInfo;

    move-result-object v0

    return-object v0
.end method
