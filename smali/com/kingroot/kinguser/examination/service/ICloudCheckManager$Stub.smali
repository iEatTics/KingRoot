.class public abstract Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.kingroot.kinguser.examination.service.ICloudCheckManager"

.field static final TRANSACTION_cloudCheckAll:I = 0x2

.field static final TRANSACTION_cloudCheckApks:I = 0x3

.field static final TRANSACTION_cloudCheckApps:I = 0x1

.field static final TRANSACTION_downloadWeSecure:I = 0xa

.field static final TRANSACTION_getAllRiskApps:I = 0xd

.field static final TRANSACTION_getAllRiskAppsLiteInfo:I = 0x12

.field static final TRANSACTION_getAllUnknownApps:I = 0x11

.field static final TRANSACTION_getCloudCheckFailedAppsCache:I = 0x10

.field static final TRANSACTION_getRiskType:I = 0xc

.field static final TRANSACTION_getUndeniedRiskApps:I = 0x8

.field static final TRANSACTION_getUntreatedRiskApps:I = 0x6

.field static final TRANSACTION_gotoWeSecureVirusScan:I = 0xf

.field static final TRANSACTION_isWeSecureInstalled:I = 0xe

.field static final TRANSACTION_markDeniedRiskApps:I = 0x9

.field static final TRANSACTION_markTreatedRiskApps:I = 0x7

.field static final TRANSACTION_registerCallback:I = 0x4

.field static final TRANSACTION_removeAppInfos:I = 0xb

.field static final TRANSACTION_unregisterCallback:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p0, p0, v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;
    .locals 2

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;

    move-result-object v2

    .line 55
    invoke-virtual {p0, v0, v2}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->cloudCheckApps(Ljava/util/List;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V

    goto :goto_0

    .line 60
    :sswitch_2
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;

    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->cloudCheckAll(Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;

    move-result-object v2

    .line 73
    invoke-virtual {p0, v0, v2}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->cloudCheckApks(Ljava/lang/String;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V

    goto :goto_0

    .line 78
    :sswitch_4
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;

    move-result-object v2

    .line 83
    invoke-virtual {p0, v0, v2}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->registerCallback(Ljava/lang/String;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V

    goto :goto_0

    .line 88
    :sswitch_5
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->unregisterCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :sswitch_6
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->getUntreatedRiskApps()Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 104
    :sswitch_7
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 107
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->markTreatedRiskApps(Ljava/util/List;)V

    goto :goto_0

    .line 112
    :sswitch_8
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->getUndeniedRiskApps()Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 120
    :sswitch_9
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->markDeniedRiskApps(Ljava/util/List;)V

    goto/16 :goto_0

    .line 128
    :sswitch_a
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->downloadWeSecure()V

    goto/16 :goto_0

    .line 134
    :sswitch_b
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->removeAppInfos(Ljava/util/List;)V

    goto/16 :goto_0

    .line 142
    :sswitch_c
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->getRiskType(Ljava/lang/String;)I

    move-result v0

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    :sswitch_d
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->getAllRiskApps()Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 160
    :sswitch_e
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->isWeSecureInstalled()Z

    move-result v0

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 168
    :sswitch_f
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->gotoWeSecureVirusScan()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 175
    :sswitch_10
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->getCloudCheckFailedAppsCache()Ljava/util/List;

    move-result-object v0

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 183
    :sswitch_11
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->getAllUnknownApps()Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 191
    :sswitch_12
    const-string v0, "com.kingroot.kinguser.examination.service.ICloudCheckManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;->getAllRiskAppsLiteInfo()Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
