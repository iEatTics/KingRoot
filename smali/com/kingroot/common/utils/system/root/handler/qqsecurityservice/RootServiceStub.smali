.class public abstract Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/RootServiceStub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/IRootService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 12
    const-string v0, "com.tencent.tmsecurelite.IRootService"

    invoke-virtual {p0, p0, v0}, Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/RootServiceStub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/IRootService;
    .locals 2

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    .line 24
    :cond_0
    const-string v0, "com.tencent.tmsecurelite.IRootService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/IRootService;

    if-eqz v1, :cond_1

    .line 26
    check-cast v0, Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/IRootService;

    goto :goto_0

    .line 29
    :cond_1
    new-instance v0, Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/RootServiceProxy;

    invoke-direct {v0, p0}, Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/RootServiceProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 16
    return-object p0
.end method

.method public checkVersion(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 47
    if-lt v0, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    .prologue
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 43
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 36
    :pswitch_0
    const-string v0, "com.tencent.tmsecurelite.IRootService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/kingroot/common/utils/system/root/handler/qqsecurityservice/RootServiceStub;->shareRootRunCmd(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
