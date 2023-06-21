.class public final Lcom/kingroot/kinguser/fk;
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
        "La/at;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public E(I)[La/at;
    .locals 1

    .prologue
    .line 48
    new-array v0, p1, [La/at;

    return-object v0
.end method

.method public b(Landroid/os/Parcel;)La/at;
    .locals 2

    .prologue
    .line 43
    new-instance v0, La/at;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, La/at;-><init>(Landroid/os/Parcel;Lcom/kingroot/kinguser/fk;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/fk;->b(Landroid/os/Parcel;)La/at;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/fk;->E(I)[La/at;

    move-result-object v0

    return-object v0
.end method
