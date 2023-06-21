.class final Lcom/kingroot/common/utils/system/KmVTCmdResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/utils/system/KmVTCmdResult;
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
        "Lcom/kingroot/common/utils/system/KmVTCmdResult;",
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
.method public cb(I)[Lcom/kingroot/common/utils/system/KmVTCmdResult;
    .locals 1

    .prologue
    .line 59
    new-array v0, p1, [Lcom/kingroot/common/utils/system/KmVTCmdResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/kingroot/common/utils/system/KmVTCmdResult$1;->s(Landroid/os/Parcel;)Lcom/kingroot/common/utils/system/KmVTCmdResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/kingroot/common/utils/system/KmVTCmdResult$1;->cb(I)[Lcom/kingroot/common/utils/system/KmVTCmdResult;

    move-result-object v0

    return-object v0
.end method

.method public s(Landroid/os/Parcel;)Lcom/kingroot/common/utils/system/KmVTCmdResult;
    .locals 5

    .prologue
    .line 54
    new-instance v0, Lcom/kingroot/common/utils/system/KmVTCmdResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/common/utils/system/KmVTCmdResult;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
