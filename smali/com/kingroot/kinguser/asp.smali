.class Lcom/kingroot/kinguser/asp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/asy;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static axU:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/asp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aNg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final aNh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final aNi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/tk;",
            ">;"
        }
    .end annotation
.end field

.field private final aNj:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private axW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ApkInstallerService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/asp;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/kingroot/kinguser/asp$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/asp$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/asp;->axU:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/asp;->aNg:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/asp;->aNh:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/asp;->axW:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/asp;->aNi:Ljava/util/Map;

    .line 61
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/asp;->aNj:Landroid/os/RemoteCallbackList;

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/asp$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/kingroot/kinguser/asp;-><init>()V

    return-void
.end method

.method private H(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 318
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/kingroot/kinguser/asp;->f(Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    return-void
.end method

.method public static On()Lcom/kingroot/kinguser/asp;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/kingroot/kinguser/asp;->axU:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/asp;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/asp;Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;)I
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/asp;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;)I

    move-result v0

    return v0
.end method

.method private a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;)I
    .locals 11

    .prologue
    const/16 v4, 0xf

    const/4 v2, 0x6

    const/4 v5, -0x1

    const/4 v10, 0x1

    .line 156
    const/4 v0, 0x5

    .line 157
    iget-object v6, p1, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkPath:Ljava/lang/String;

    .line 158
    iget-object v7, p1, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    .line 159
    iget-object v3, p1, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkMd5:Ljava/lang/String;

    .line 161
    invoke-direct {p0, v7, v0}, Lcom/kingroot/kinguser/asp;->H(Ljava/lang/String;I)V

    .line 162
    const/4 v1, 0x0

    .line 163
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/kingroot/kinguser/aah;->h(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 164
    :cond_0
    const/4 v3, 0x4

    .line 166
    invoke-direct {p0, v7, v3}, Lcom/kingroot/kinguser/asp;->H(Ljava/lang/String;I)V

    .line 170
    :try_start_0
    iget v0, p1, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->aNe:I

    packed-switch v0, :pswitch_data_0

    .line 179
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lcom/kingroot/kinguser/aiv;->a(Ljava/io/File;Z)Lcom/kingroot/kinguser/aiv$a;

    move-result-object v1

    .line 180
    iget v0, v1, Lcom/kingroot/kinguser/aiv$a;->retCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    if-eqz v0, :cond_1

    .line 183
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v8, v9, v6}, Lcom/kingroot/kinguser/aiv;->a(Ljava/io/File;Z)Lcom/kingroot/kinguser/aiv$a;

    move-result-object v1

    .line 184
    iget v0, v1, Lcom/kingroot/kinguser/aiv$a;->retCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    :cond_1
    :goto_0
    if-eq v0, v5, :cond_2

    const/4 v5, -0x2

    if-ne v0, v5, :cond_3

    :cond_2
    move v0, v4

    :goto_1
    move v3, v0

    .line 232
    :goto_2
    if-ne v2, v3, :cond_9

    .line 233
    if-eqz v1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/kingroot/kinguser/aiv$a;->asC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/kingroot/kinguser/aiv$a;->asD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {p0, v7, v3, v0}, Lcom/kingroot/kinguser/asp;->f(Ljava/lang/String;ILjava/lang/String;)V

    .line 242
    :goto_4
    return v3

    .line 173
    :pswitch_0
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v8, v6}, Lcom/kingroot/kinguser/aiv;->a(Ljava/io/File;Z)Lcom/kingroot/kinguser/aiv$a;

    move-result-object v1

    .line 174
    iget v0, v1, Lcom/kingroot/kinguser/aiv$a;->retCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 194
    :cond_3
    if-nez v0, :cond_4

    .line 195
    const/16 v0, 0xa

    goto :goto_1

    .line 196
    :cond_4
    if-ne v0, v10, :cond_c

    .line 199
    iget-object v3, p0, Lcom/kingroot/kinguser/asp;->aNi:Ljava/util/Map;

    monitor-enter v3

    .line 201
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNi:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/tk;

    .line 202
    if-eqz v0, :cond_5

    .line 203
    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    .line 207
    :cond_5
    const-string v0, "InstallGameWhitSystemInterface"

    invoke-static {v0}, Lcom/kingroot/kinguser/tk;->cS(Ljava/lang/String;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_6

    .line 210
    iget-object v5, p0, Lcom/kingroot/kinguser/asp;->aNi:Ljava/util/Map;

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-wide/32 v8, 0x927c0

    invoke-virtual {v0, v8, v9}, Lcom/kingroot/kinguser/tk;->s(J)V

    .line 213
    :cond_6
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    new-instance v0, Lcom/kingroot/kinguser/asp$3;

    invoke-direct {v0, p0, v7}, Lcom/kingroot/kinguser/asp$3;-><init>(Lcom/kingroot/kinguser/asp;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/asq;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/asq$a;)V

    move v0, v2

    goto :goto_1

    .line 213
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 229
    :cond_7
    const/16 v0, 0xe

    .line 230
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/kingroot/kinguser/rs;->r(Ljava/io/File;)V

    move v3, v0

    goto :goto_2

    .line 233
    :cond_8
    const-string v0, ""

    goto :goto_3

    .line 234
    :cond_9
    iget v0, p1, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->aNe:I

    if-ne v0, v10, :cond_b

    if-ne v4, v3, :cond_b

    .line 236
    if-eqz v1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/kingroot/kinguser/aiv$a;->asC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/kingroot/kinguser/aiv$a;->asD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-direct {p0, v7, v3, v0}, Lcom/kingroot/kinguser/asp;->f(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :cond_a
    const-string v0, ""

    goto :goto_5

    .line 240
    :cond_b
    invoke-direct {p0, v7, v3}, Lcom/kingroot/kinguser/asp;->H(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 188
    :catch_0
    move-exception v0

    move v0, v5

    goto/16 :goto_0

    :catch_1
    move-exception v6

    goto/16 :goto_0

    :cond_c
    move v0, v3

    goto/16 :goto_1

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/kingroot/kinguser/asp;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/asp;->H(Ljava/lang/String;I)V

    return-void
.end method

.method private f(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/asp;->ix(Ljava/lang/String;)I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNg:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/asp;->iE(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->axW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_2
    iget-object v3, p0, Lcom/kingroot/kinguser/asp;->aNh:Ljava/util/Map;

    monitor-enter v3

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 341
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 342
    :goto_1
    if-lez v1, :cond_3

    .line 343
    add-int/lit8 v2, v1, -0x1

    .line 345
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;->onState(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 348
    goto :goto_1

    .line 346
    :catch_0
    move-exception v1

    move v1, v2

    .line 348
    goto :goto_1

    .line 350
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 351
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private iC(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/asp;->iG(Ljava/lang/String;)I

    move-result v0

    .line 123
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private iD(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/asp;->iG(Ljava/lang/String;)I

    move-result v0

    .line 133
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private iE(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/asp;->iG(Ljava/lang/String;)I

    move-result v0

    .line 139
    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private iF(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/asp;->iG(Ljava/lang/String;)I

    move-result v0

    .line 144
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private iG(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 152
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public GT()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    iget-object v1, p0, Lcom/kingroot/kinguser/asp;->axW:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 475
    return-object v0
.end method

.method public GU()Z
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNg:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 481
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/asp;->iD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const/4 v0, 0x1

    .line 485
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .locals 6
    .param p1    # Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, v0, p2}, Lcom/kingroot/kinguser/asp;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 88
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/asp;->iC(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-boolean v1, p1, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->isUpdate:Z

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/asp;->iF(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 103
    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/asp;->H(Ljava/lang/String;I)V

    goto :goto_0

    .line 107
    :cond_3
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/asp;->H(Ljava/lang/String;I)V

    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->axW:Ljava/util/Map;

    iget-object v1, p1, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/asp$2;

    invoke-direct {v5, p0, p1}, Lcom/kingroot/kinguser/asp$2;-><init>(Lcom/kingroot/kinguser/asp;Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;)V
    .locals 1

    .prologue
    .line 370
    if-eqz p1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNj:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 373
    :cond_0
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .locals 4

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/asp;->aNh:Ljava/util/Map;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNh:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    iget-object v3, p0, Lcom/kingroot/kinguser/asp;->aNh:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 272
    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 277
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 278
    if-nez v3, :cond_2

    .line 279
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 281
    :cond_2
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .locals 3

    .prologue
    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/asp;->aNh:Ljava/util/Map;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 253
    if-nez v0, :cond_2

    .line 254
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 257
    :cond_2
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 258
    iget-object v2, p0, Lcom/kingroot/kinguser/asp;->aNh:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;)V
    .locals 1

    .prologue
    .line 377
    if-eqz p1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNj:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 380
    :cond_0
    return-void
.end method

.method public iA(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->axW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    .line 418
    if-nez v0, :cond_1

    .line 421
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/asp;->iy(Ljava/lang/String;)V

    .line 427
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    :goto_1
    return-void

    .line 422
    :cond_1
    iget-boolean v0, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->isUpdate:Z

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/asp;->iy(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_2
    iget-object v2, p0, Lcom/kingroot/kinguser/asp;->aNj:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNj:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 432
    :goto_2
    if-lez v0, :cond_3

    .line 433
    add-int/lit8 v1, v0, -0x1

    .line 435
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNj:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;->onPackageDelete(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 438
    goto :goto_2

    .line 436
    :catch_0
    move-exception v0

    move v0, v1

    .line 438
    goto :goto_2

    .line 440
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNj:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 441
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public iB(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 447
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/asp;->aNj:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNj:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 453
    :goto_1
    if-lez v0, :cond_2

    .line 454
    add-int/lit8 v1, v0, -0x1

    .line 456
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNj:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;->onPackageAdd(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 459
    goto :goto_1

    .line 457
    :catch_0
    move-exception v0

    move v0, v1

    .line 459
    goto :goto_1

    .line 461
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNj:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 462
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 463
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/asp;->ix(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->axW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    .line 465
    iget-boolean v0, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->isUpdate:Z

    if-nez v0, :cond_0

    .line 466
    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/asp;->H(Ljava/lang/String;I)V

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public iH(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 294
    iget-object v1, p0, Lcom/kingroot/kinguser/asp;->aNi:Ljava/util/Map;

    monitor-enter v1

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNi:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/tk;

    .line 296
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    .line 300
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/asp;->H(Ljava/lang/String;I)V

    .line 302
    return-void

    .line 300
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public ix(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/asp;->iG(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public iy(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 361
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public iz(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/asp;->aNj:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNj:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 394
    :goto_1
    if-lez v0, :cond_2

    .line 395
    add-int/lit8 v1, v0, -0x1

    .line 397
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNj:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;->onPackageReplace(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 400
    goto :goto_1

    .line 398
    :catch_0
    move-exception v0

    move v0, v1

    .line 400
    goto :goto_1

    .line 402
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->aNj:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 403
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/asp;->ix(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/kingroot/kinguser/asp;->axW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    .line 407
    iget-boolean v0, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->isUpdate:Z

    if-eqz v0, :cond_0

    .line 408
    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/asp;->H(Ljava/lang/String;I)V

    goto :goto_0

    .line 403
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
