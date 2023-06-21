.class Lcom/king/uranus/aV$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/king/uranus/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/uranus/aV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private eE:Landroid/os/IBinder;

.field private fd:I

.field private fe:I

.field private ff:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/king/uranus/aV$a;->eE:Landroid/os/IBinder;

    .line 38
    iput p2, p0, Lcom/king/uranus/aV$a;->fd:I

    .line 39
    iput p3, p0, Lcom/king/uranus/aV$a;->fe:I

    .line 40
    iput-object p4, p0, Lcom/king/uranus/aV$a;->ff:Ljava/lang/String;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/IBinder;IILjava/lang/String;Lcom/kingroot/kinguser/ji;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/king/uranus/aV$a;-><init>(Landroid/os/IBinder;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ll;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 46
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 50
    :try_start_0
    const-string v3, "com.king.uranus.client"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 51
    invoke-interface {p1, v1}, Lcom/kingroot/kinguser/ll;->d(Landroid/os/Parcel;)V

    .line 52
    iget-object v3, p0, Lcom/king/uranus/aV$a;->eE:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 54
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 55
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 59
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 60
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 63
    :goto_0
    return v0

    .line 56
    :catch_0
    move-exception v3

    .line 59
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 60
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 60
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/king/uranus/aV$a;->eE:Landroid/os/IBinder;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/king/uranus/aV$a;->ff:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/king/uranus/aV$a;->fd:I

    return v0
.end method

.method public sendMessage(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 99
    :try_start_0
    const-string v0, "com.king.uranus.client"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 101
    iget-object v0, p0, Lcom/king/uranus/aV$a;->eE:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 102
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 107
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 109
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 107
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 107
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
