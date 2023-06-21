.class final Lcom/kingroot/kinguser/xmod/TpsEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/xmod/TpsEvent;
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
        "Lcom/kingroot/kinguser/xmod/TpsEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aP(Landroid/os/Parcel;)Lcom/kingroot/kinguser/xmod/TpsEvent;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/kingroot/kinguser/xmod/TpsEvent;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/xmod/TpsEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/xmod/TpsEvent$1;->aP(Landroid/os/Parcel;)Lcom/kingroot/kinguser/xmod/TpsEvent;

    move-result-object v0

    return-object v0
.end method

.method public je(I)[Lcom/kingroot/kinguser/xmod/TpsEvent;
    .locals 1

    .prologue
    .line 53
    new-array v0, p1, [Lcom/kingroot/kinguser/xmod/TpsEvent;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/xmod/TpsEvent$1;->je(I)[Lcom/kingroot/kinguser/xmod/TpsEvent;

    move-result-object v0

    return-object v0
.end method
