.class public final Lcom/king/uranus/aV;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/uranus/aV$a;
    }
.end annotation


# direct methods
.method public static f(Landroid/os/Parcel;)Lcom/king/uranus/bd;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 17
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 19
    if-nez v1, :cond_1

    move-object v0, v5

    .line 26
    :cond_0
    :goto_0
    return-object v0

    .line 22
    :cond_1
    const-string v0, "com.king.uranus.client"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/bd;

    .line 23
    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/king/uranus/aV$a;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/king/uranus/aV$a;-><init>(Landroid/os/IBinder;IILjava/lang/String;Lcom/kingroot/kinguser/ji;)V

    goto :goto_0
.end method
