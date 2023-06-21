.class final Lcom/kingroot/loader/common/protocol/BinderParcel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/loader/common/protocol/BinderParcel;
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
        "Lcom/kingroot/loader/common/protocol/BinderParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aS(Landroid/os/Parcel;)Lcom/kingroot/loader/common/protocol/BinderParcel;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/kingroot/loader/common/protocol/BinderParcel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingroot/loader/common/protocol/BinderParcel;-><init>(Landroid/os/Parcel;Lcom/kingroot/loader/common/protocol/BinderParcel$1;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/kingroot/loader/common/protocol/BinderParcel$1;->aS(Landroid/os/Parcel;)Lcom/kingroot/loader/common/protocol/BinderParcel;

    move-result-object v0

    return-object v0
.end method

.method public jw(I)[Lcom/kingroot/loader/common/protocol/BinderParcel;
    .locals 1

    .prologue
    .line 46
    new-array v0, p1, [Lcom/kingroot/loader/common/protocol/BinderParcel;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/kingroot/loader/common/protocol/BinderParcel$1;->jw(I)[Lcom/kingroot/loader/common/protocol/BinderParcel;

    move-result-object v0

    return-object v0
.end method
