.class public abstract Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.kingroot.kinguser.distribution.appsmarket.interfaces.ISearchAppsListener"

.field static final TRANSACTION_onReceive:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.kingroot.kinguser.distribution.appsmarket.interfaces.ISearchAppsListener"

    invoke-virtual {p0, p0, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;
    .locals 2

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.kingroot.kinguser.distribution.appsmarket.interfaces.ISearchAppsListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 44
    :sswitch_0
    const-string v0, "com.kingroot.kinguser.distribution.appsmarket.interfaces.ISearchAppsListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 45
    goto :goto_0

    .line 49
    :sswitch_1
    const-string v0, "com.kingroot.kinguser.distribution.appsmarket.interfaces.ISearchAppsListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 61
    sget-object v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, p0

    .line 62
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener$Stub;->onReceive(ILjava/lang/String;IIILjava/util/List;)V

    move v0, v7

    .line 63
    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
