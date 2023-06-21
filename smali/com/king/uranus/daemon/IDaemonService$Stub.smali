.class public abstract Lcom/king/uranus/daemon/IDaemonService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/king/uranus/daemon/IDaemonService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/uranus/daemon/IDaemonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/uranus/daemon/IDaemonService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p0, p0, v0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/king/uranus/daemon/IDaemonService;
    .locals 2

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/king/uranus/daemon/IDaemonService;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/king/uranus/daemon/IDaemonService;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/king/uranus/daemon/IDaemonService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/king/uranus/daemon/IDaemonService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 46
    return-object p0
.end method

.method public abstract isCallerLegal()Z
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 53
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->isCallerLegal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    :goto_0
    return v1

    .line 59
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 264
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0

    .line 61
    :sswitch_0
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :sswitch_1
    const-string v2, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 72
    :cond_1
    invoke-virtual {p0, v0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->setStatisticReportStrategy(Landroid/os/Bundle;)I

    move-result v0

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    :sswitch_2
    const-string v2, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 85
    :cond_2
    invoke-virtual {p0, v0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->loadDexMod(Landroid/os/Bundle;)I

    move-result v0

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    :sswitch_3
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->getVersion()I

    move-result v0

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    :sswitch_4
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->getModVersion(Ljava/lang/String;)I

    move-result v0

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 107
    :sswitch_5
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 114
    invoke-virtual {p0, v0, v2, v3}, Lcom/king/uranus/daemon/IDaemonService$Stub;->reportKingCommonString(ILjava/util/List;I)V

    goto/16 :goto_0

    .line 118
    :sswitch_6
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {p0, v0, v2}, Lcom/king/uranus/daemon/IDaemonService$Stub;->reportNativeCrash(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :sswitch_7
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {p0, v0, v2}, Lcom/king/uranus/daemon/IDaemonService$Stub;->reportJavaCrash(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    :sswitch_8
    const-string v2, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 143
    :cond_3
    invoke-virtual {p0, v0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->setCrashReportStrategy(Landroid/os/Bundle;)I

    move-result v0

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    :sswitch_9
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 152
    invoke-virtual {p0, v0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->addFrameworkCrashKeywords(Ljava/util/List;)I

    move-result v0

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 158
    :sswitch_a
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 161
    invoke-virtual {p0, v0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->addDeveloperCrashKeywords(Ljava/util/List;)I

    move-result v0

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 167
    :sswitch_b
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p0, v0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->queryProcessCrashType(Ljava/lang/String;)I

    move-result v0

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 176
    :sswitch_c
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 181
    invoke-virtual {p0, v0, v2, v3}, Lcom/king/uranus/daemon/IDaemonService$Stub;->setSpecialProcessCrashStrategy(Ljava/lang/String;J)I

    move-result v0

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 187
    :sswitch_d
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    invoke-virtual {p0, v0, v2}, Lcom/king/uranus/daemon/IDaemonService$Stub;->setSpecialStatisticStrategy(Ljava/lang/String;I)I

    move-result v0

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 198
    :sswitch_e
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 205
    :sswitch_f
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p0, v0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->setDropboxMonitorStrategy(Ljava/lang/String;)I

    move-result v0

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    :sswitch_10
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {p0, v0, v2}, Lcom/king/uranus/daemon/IDaemonService$Stub;->reportCatchedCrash(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    :sswitch_11
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {p0, v0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->getDaemonService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 232
    :sswitch_12
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 235
    :goto_1
    invoke-virtual {p0, v0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->close(Z)I

    move-result v0

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 234
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 241
    :sswitch_13
    const-string v2, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 244
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 248
    :cond_5
    invoke-virtual {p0, v0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->initShark(Landroid/os/Bundle;)I

    move-result v0

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 255
    :sswitch_14
    const-string v0, "com.king.uranus.daemon.IDaemonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 258
    invoke-virtual {p0, v0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->runCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 59
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
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
