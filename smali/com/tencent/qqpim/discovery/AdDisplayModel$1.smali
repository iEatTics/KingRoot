.class Lcom/tencent/qqpim/discovery/AdDisplayModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpim/discovery/AdDisplayModel;
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
        "Lcom/tencent/qqpim/discovery/AdDisplayModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public aX(Landroid/os/Parcel;)Lcom/tencent/qqpim/discovery/AdDisplayModel;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/tencent/qqpim/discovery/AdDisplayModel;

    invoke-direct {v0, p1}, Lcom/tencent/qqpim/discovery/AdDisplayModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/discovery/AdDisplayModel$1;->aX(Landroid/os/Parcel;)Lcom/tencent/qqpim/discovery/AdDisplayModel;

    move-result-object v0

    return-object v0
.end method

.method public kb(I)[Lcom/tencent/qqpim/discovery/AdDisplayModel;
    .locals 1

    .prologue
    .line 119
    new-array v0, p1, [Lcom/tencent/qqpim/discovery/AdDisplayModel;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/discovery/AdDisplayModel$1;->kb(I)[Lcom/tencent/qqpim/discovery/AdDisplayModel;

    move-result-object v0

    return-object v0
.end method
