.class public Lcom/kingroot/kinguser/ain;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static arN:I

.field private static arO:I

.field private static arP:I

.field private static arQ:I

.field private static volatile arR:Lcom/kingroot/kinguser/ain;


# instance fields
.field private Hf:Landroid/os/IBinder;

.field private arS:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "commonDevicePolicyManager"

    sput-object v0, Lcom/kingroot/kinguser/ain;->TAG:Ljava/lang/String;

    .line 31
    const/16 v0, 0x29

    sput v0, Lcom/kingroot/kinguser/ain;->arN:I

    .line 32
    const/16 v0, 0x2a

    sput v0, Lcom/kingroot/kinguser/ain;->arO:I

    .line 33
    const/16 v0, 0x2b

    sput v0, Lcom/kingroot/kinguser/ain;->arP:I

    .line 38
    const/16 v0, 0x28

    sput v0, Lcom/kingroot/kinguser/ain;->arQ:I

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/ain$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/ain$1;-><init>(Lcom/kingroot/kinguser/ain;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ain;->arS:Lcom/kingroot/kinguser/bed;

    .line 58
    const-string v0, "android.app.admin.IDevicePolicyManager$Stub"

    invoke-static {v0}, Lcom/kingroot/kinguser/abb;->ek(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "TRANSACTION_packageHasActiveAdmins"

    const/16 v1, 0x29

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/abb;->l(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/ain;->arN:I

    .line 60
    const-string v0, "TRANSACTION_setActiveAdmin"

    const/16 v1, 0x2a

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/abb;->l(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/ain;->arO:I

    .line 61
    const-string v0, "TRANSACTION_removeActiveAdmin"

    const/16 v1, 0x2b

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/abb;->l(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/ain;->arP:I

    .line 62
    const-string v0, "TRANSACTION_getActiveAdmins"

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/abb;->l(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/ain;->arQ:I

    .line 63
    const-string v0, "device_policy"

    invoke-static {v0}, Lcom/kingroot/kinguser/aan;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ain;->Hf:Landroid/os/IBinder;

    .line 65
    :cond_0
    return-void
.end method

.method private gc(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 140
    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/ain;->Hf:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 146
    :try_start_0
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/ain;->Hf:Landroid/os/IBinder;

    sget v4, Lcom/kingroot/kinguser/ain;->arQ:I

    const/4 v5, 0x0

    invoke-interface {v0, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 149
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 150
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 155
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 159
    :goto_0
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 161
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    :goto_1
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    .line 157
    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    move-object v0, v1

    .line 167
    goto :goto_1
.end method

.method public static xW()Lcom/kingroot/kinguser/ain;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/kingroot/kinguser/ain;->arR:Lcom/kingroot/kinguser/ain;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lcom/kingroot/kinguser/ain;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/ain;->arR:Lcom/kingroot/kinguser/ain;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/kingroot/kinguser/ain;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ain;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ain;->arR:Lcom/kingroot/kinguser/ain;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/ain;->arR:Lcom/kingroot/kinguser/ain;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public ga(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/kingroot/kinguser/ain;->Hf:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    .line 75
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 76
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 80
    :try_start_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/kingroot/kinguser/ain;->Hf:Landroid/os/IBinder;

    sget v4, Lcom/kingroot/kinguser/ain;->arN:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 83
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 84
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 89
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 90
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 96
    :cond_1
    :goto_0
    return v0

    .line 86
    :catch_0
    move-exception v3

    .line 89
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 90
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 90
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public gb(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/ain;->Hf:Landroid/os/IBinder;

    if-eqz v0, :cond_2

    .line 104
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ain;->gc(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 105
    if-eqz v2, :cond_2

    .line 107
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string v3, "$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    const-string v3, "\\$"

    const-string v4, "\'\\$\'"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v3

    const/16 v4, 0x11

    if-ge v3, v4, :cond_1

    .line 114
    const-string v3, "service call %s %d i32 1 s16 %s s16 %s"

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "device_policy"

    aput-object v5, v4, v1

    sget v5, Lcom/kingroot/kinguser/ain;->arP:I

    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    aput-object v0, v4, v8

    .line 114
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    .line 122
    invoke-virtual {v2, v6}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    .line 128
    :goto_1
    return v0

    .line 117
    :cond_1
    const-string v3, "service call %s %d i32 1 s16 %s s16 %s i32 0"

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "device_policy"

    aput-object v5, v4, v1

    sget v5, Lcom/kingroot/kinguser/ain;->arP:I

    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    aput-object v0, v4, v8

    .line 117
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 128
    goto :goto_1
.end method

.method public xX()V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/kingroot/kinguser/bap;->VG()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ain;->arS:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method protected xY()Z
    .locals 9

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/ain;->Hf:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 188
    const-class v2, Lcom/kingroot/kinguser/receiver/DeviceOwnerReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v3

    const/16 v4, 0x11

    if-ge v3, v4, :cond_0

    .line 191
    const-string v3, "service call %s %d i32 1 s16 %s s16 %s"

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "device_policy"

    aput-object v5, v4, v1

    sget v5, Lcom/kingroot/kinguser/ain;->arO:I

    .line 192
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    aput-object v2, v4, v8

    .line 191
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    .line 199
    invoke-virtual {v2, v6}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    .line 204
    :goto_1
    return v0

    .line 194
    :cond_0
    const-string v3, "service call %s %d i32 1 s16 %s s16 %s i32 0"

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "device_policy"

    aput-object v5, v4, v1

    sget v5, Lcom/kingroot/kinguser/ain;->arO:I

    .line 195
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    aput-object v2, v4, v8

    .line 194
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 204
    goto :goto_1
.end method
