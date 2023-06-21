.class public final Lcom/kingroot/kinguser/fl;
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
        "La/av;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(I)[La/av;
    .locals 1

    .prologue
    .line 46
    new-array v0, p1, [La/av;

    return-object v0
.end method

.method public c(Landroid/os/Parcel;)La/av;
    .locals 2

    .prologue
    .line 41
    new-instance v0, La/av;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, La/av;-><init>(Landroid/os/Parcel;Lcom/kingroot/kinguser/fl;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/fl;->c(Landroid/os/Parcel;)La/av;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/fl;->F(I)[La/av;

    move-result-object v0

    return-object v0
.end method
