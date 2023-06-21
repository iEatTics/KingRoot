.class Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bc(Landroid/os/Parcel;)Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;

    invoke-direct {v0, p1}, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData$1;->bc(Landroid/os/Parcel;)Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;

    move-result-object v0

    return-object v0
.end method

.method public kr(I)[Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;
    .locals 1

    .prologue
    .line 83
    new-array v0, p1, [Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData$1;->kr(I)[Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;

    move-result-object v0

    return-object v0
.end method
