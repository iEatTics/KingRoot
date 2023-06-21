.class public abstract Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mInterfaceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->mInterfaceName:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;Ljava/lang/String;)Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService;
    .locals 2

    .prologue
    .line 143
    if-nez p0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    .line 146
    :cond_0
    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService;

    if-eqz v1, :cond_1

    .line 148
    check-cast v0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService;

    goto :goto_0

    .line 151
    :cond_1
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->asInterface(Landroid/os/IBinder;Ljava/lang/String;)Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService;

    move-result-object v0

    goto :goto_0
.end method

.method private handleMyTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 203
    .line 205
    iget-object v2, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    packed-switch p1, :pswitch_data_0

    move v1, v0

    .line 274
    :goto_0
    return v1

    .line 209
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 210
    :cond_0
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->setServiceEnable(Z)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 215
    :pswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p0}, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->isServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 220
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-virtual {p0, v0, v2, v3}, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->onClientPackageDeleted(IILjava/lang/String;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 228
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->setLogEnable(Z)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 233
    :pswitch_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->addProtectedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 239
    :pswitch_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->removeProtectedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 245
    :pswitch_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->isProtectedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 251
    :pswitch_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v1, :cond_6

    move v0, v1

    .line 254
    :cond_6
    invoke-virtual {p0, v2, v0}, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->hookFunction(IZ)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 258
    :pswitch_8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 260
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->syncProtectPackages(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 264
    :pswitch_9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 266
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->syncMonitorPackages(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 164
    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, 0x1332d92

    if-ne v0, v1, :cond_0

    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->handleMyTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 190
    :goto_0
    return v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    goto :goto_0
.end method
