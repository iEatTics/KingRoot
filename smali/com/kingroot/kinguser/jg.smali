.class public final Lcom/kingroot/kinguser/jg;
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
        "Lcom/king/uranus/aS;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Q(I)[Lcom/king/uranus/aS;
    .locals 1

    .prologue
    .line 50
    new-array v0, p1, [Lcom/king/uranus/aS;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/jg;->e(Landroid/os/Parcel;)Lcom/king/uranus/aS;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/os/Parcel;)Lcom/king/uranus/aS;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/king/uranus/aS;

    invoke-direct {v0, p1}, Lcom/king/uranus/aS;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/jg;->Q(I)[Lcom/king/uranus/aS;

    move-result-object v0

    return-object v0
.end method
