.class Lcom/tencent/qqpim/discovery/AdRequestData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpim/discovery/AdRequestData;
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
        "Lcom/tencent/qqpim/discovery/AdRequestData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public aY(Landroid/os/Parcel;)Lcom/tencent/qqpim/discovery/AdRequestData;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/tencent/qqpim/discovery/AdRequestData;

    invoke-direct {v0, p1}, Lcom/tencent/qqpim/discovery/AdRequestData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/discovery/AdRequestData$1;->aY(Landroid/os/Parcel;)Lcom/tencent/qqpim/discovery/AdRequestData;

    move-result-object v0

    return-object v0
.end method

.method public kc(I)[Lcom/tencent/qqpim/discovery/AdRequestData;
    .locals 1

    .prologue
    .line 90
    new-array v0, p1, [Lcom/tencent/qqpim/discovery/AdRequestData;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/discovery/AdRequestData$1;->kc(I)[Lcom/tencent/qqpim/discovery/AdRequestData;

    move-result-object v0

    return-object v0
.end method
