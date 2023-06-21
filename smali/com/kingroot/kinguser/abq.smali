.class Lcom/kingroot/kinguser/abq;
.super Lcom/kingroot/kinguser/abo;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/abq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile ZA:Z

.field volatile ZB:Z

.field ZC:Ljava/lang/Runnable;

.field Zs:Landroid/app/ActivityManager$RunningTaskInfo;

.field volatile Zt:Z

.field private Zu:Z

.field volatile Zw:Z

.field Zx:Lcom/kingroot/kinguser/wo;

.field Zy:I

.field volatile Zz:Ljava/util/concurrent/atomic/AtomicInteger;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/kingroot/kinguser/abq$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/abq$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/abq;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/kingroot/kinguser/abo;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/kingroot/kinguser/abq;->Zw:Z

    .line 37
    iput v1, p0, Lcom/kingroot/kinguser/abq;->Zy:I

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/abq;->Zz:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/abq;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 43
    iput-boolean v1, p0, Lcom/kingroot/kinguser/abq;->ZA:Z

    .line 44
    iput-boolean v1, p0, Lcom/kingroot/kinguser/abq;->Zt:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/abq;->ZB:Z

    .line 47
    iput-boolean v1, p0, Lcom/kingroot/kinguser/abq;->Zu:Z

    .line 171
    new-instance v0, Lcom/kingroot/kinguser/abq$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/abq$3;-><init>(Lcom/kingroot/kinguser/abq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/abq;->ZC:Ljava/lang/Runnable;

    .line 61
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/abq;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public static qY()Lcom/kingroot/kinguser/abq;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/kingroot/kinguser/abq;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/abq;

    return-object v0
.end method

.method private re()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 294
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 322
    :goto_0
    return v0

    .line 302
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    .line 303
    invoke-static {}, Lcom/kingroot/kinguser/aap;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_2

    .line 306
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 307
    if-eqz v0, :cond_1

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 311
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 316
    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 322
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized af(Z)V
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/kingroot/kinguser/abq;->ZA:Z

    .line 114
    if-nez p1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abq;->rb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ag(Z)V
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/kingroot/kinguser/abq;->ZB:Z

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abq;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_0
    monitor-exit p0

    return-void

    .line 124
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abq;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/kingroot/kinguser/abq;->Zu:Z

    return v0
.end method

.method public qZ()V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/kingroot/kinguser/abq;->ZB:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abq;->start()V

    .line 68
    :cond_0
    return-void
.end method

.method public declared-synchronized ra()V
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abq;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rb()V
    .locals 2

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abq;->rc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/abq;->Zz:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 136
    iget-object v0, p0, Lcom/kingroot/kinguser/abq;->Zx:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wo;->nA()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abq;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method rc()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/abq;->Zx:Lcom/kingroot/kinguser/wo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/abq;->Zx:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wo;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method rd()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/abq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/aap;->ab(Landroid/content/Context;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_3

    .line 186
    :cond_0
    iput-object v1, p0, Lcom/kingroot/kinguser/abq;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 188
    invoke-direct {p0}, Lcom/kingroot/kinguser/abq;->re()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abq;->stop()V

    .line 193
    :cond_1
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 290
    :cond_2
    :goto_0
    return-void

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/abq;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/abq;->a(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v2

    .line 199
    if-lez v2, :cond_4

    .line 200
    const-string v0, "common_TopAppCommonMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "top change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/zg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v3, "common_TopAppCommonMonitor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastRunningTask: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/kingroot/kinguser/abq;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/kingroot/kinguser/abq;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/kingroot/kinguser/abq;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", currentTask: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_a

    iget-object v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 202
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v3, v0}, Lcom/kingroot/kinguser/zg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/abq;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 209
    iput-object v1, p0, Lcom/kingroot/kinguser/abq;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 211
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_5

    .line 213
    if-lt v2, v5, :cond_5

    .line 214
    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kinguser/abq;->c(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 219
    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 221
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/abq;->c(Landroid/content/ComponentName;)Z

    move-result v2

    .line 222
    iget-boolean v3, p0, Lcom/kingroot/kinguser/abq;->Zt:Z

    if-eq v3, v2, :cond_6

    .line 223
    if-eqz v2, :cond_b

    .line 224
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abq;->qV()V

    .line 228
    :goto_3
    iput-boolean v2, p0, Lcom/kingroot/kinguser/abq;->Zt:Z

    .line 231
    :cond_6
    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kinguser/abq;->d(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/abq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/aap;->ad(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 235
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abq;->S(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 237
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abq;->l(Ljava/util/ArrayList;)V

    .line 242
    :cond_7
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/abq;->a(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/abq;->ZA:Z

    .line 245
    :try_start_1
    iget-boolean v0, p0, Lcom/kingroot/kinguser/abq;->ZA:Z

    if-eqz v0, :cond_c

    .line 248
    const-wide/16 v0, 0x190

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/abq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/aap;->ab(Landroid/content/Context;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 250
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abq;->a(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/abq;->ZA:Z

    .line 251
    iget-boolean v0, p0, Lcom/kingroot/kinguser/abq;->ZA:Z

    if-eqz v0, :cond_2

    .line 257
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 258
    iget-object v0, p0, Lcom/kingroot/kinguser/abq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/aap;->ab(Landroid/content/Context;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 259
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abq;->a(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/abq;->ZA:Z

    .line 260
    iget-boolean v0, p0, Lcom/kingroot/kinguser/abq;->ZA:Z

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/kingroot/kinguser/abq;->Zz:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 271
    :goto_4
    iget-object v0, p0, Lcom/kingroot/kinguser/abq;->Zz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    if-lez v0, :cond_8

    iget-boolean v0, p0, Lcom/kingroot/kinguser/abq;->ZA:Z

    if-eqz v0, :cond_8

    .line 272
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 285
    :catch_0
    move-exception v0

    .line 289
    :cond_8
    :goto_5
    iget v0, p0, Lcom/kingroot/kinguser/abq;->Zy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/abq;->Zy:I

    goto/16 :goto_0

    .line 201
    :cond_9
    const-string v0, "null"

    goto/16 :goto_1

    .line 202
    :cond_a
    const-string v0, "null"

    goto/16 :goto_2

    .line 226
    :cond_b
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abq;->qU()V

    goto :goto_3

    .line 277
    :cond_c
    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 279
    iget v0, p0, Lcom/kingroot/kinguser/abq;->Zy:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/abq;->Zy:I

    .line 283
    :cond_d
    iget v0, p0, Lcom/kingroot/kinguser/abq;->Zy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/abq;->Zy:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 194
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public setEnable(Z)V
    .locals 1

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/kingroot/kinguser/abq;->Zu:Z

    .line 150
    iget-boolean v0, p0, Lcom/kingroot/kinguser/abq;->Zu:Z

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abq;->stop()V

    .line 153
    :cond_0
    return-void
.end method

.method protected declared-synchronized start()V
    .locals 5

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/abq;->Zu:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/kingroot/kinguser/abq;->Zw:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/abq;->Zs:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 85
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abq;->rc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/kingroot/kinguser/abq$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/abq$2;-><init>(Lcom/kingroot/kinguser/abq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/abq;->Zx:Lcom/kingroot/kinguser/wo;

    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/abq;->Zx:Lcom/kingroot/kinguser/wo;

    const-string v1, "TaskMonitor"

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/wo;->b(Ljava/lang/String;ILjava/util/List;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized stop()V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/abq;->Zw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
