.class final Lcom/kingroot/loader/common/protocol/SerializableParcel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/loader/common/protocol/SerializableParcel;
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
        "Lcom/kingroot/loader/common/protocol/SerializableParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aT(Landroid/os/Parcel;)Lcom/kingroot/loader/common/protocol/SerializableParcel;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/kingroot/loader/common/protocol/SerializableParcel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingroot/loader/common/protocol/SerializableParcel;-><init>(Landroid/os/Parcel;Lcom/kingroot/loader/common/protocol/SerializableParcel$1;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/kingroot/loader/common/protocol/SerializableParcel$1;->aT(Landroid/os/Parcel;)Lcom/kingroot/loader/common/protocol/SerializableParcel;

    move-result-object v0

    return-object v0
.end method

.method public jx(I)[Lcom/kingroot/loader/common/protocol/SerializableParcel;
    .locals 1

    .prologue
    .line 47
    new-array v0, p1, [Lcom/kingroot/loader/common/protocol/SerializableParcel;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/kingroot/loader/common/protocol/SerializableParcel$1;->jx(I)[Lcom/kingroot/loader/common/protocol/SerializableParcel;

    move-result-object v0

    return-object v0
.end method
