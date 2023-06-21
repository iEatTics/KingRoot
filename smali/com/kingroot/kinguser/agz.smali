.class Lcom/kingroot/kinguser/agz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/agz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anp:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private anq:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/kinguser/root/log/ILogsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final anr:Ljava/lang/Object;

.field private final ans:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/kingroot/kinguser/agz$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/agz$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/agz;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/agz;->anp:Landroid/os/RemoteCallbackList;

    .line 35
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/agz;->anq:Landroid/os/RemoteCallbackList;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/agz;->anr:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/agz;->ans:Ljava/lang/Object;

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/agz$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/kingroot/kinguser/agz;-><init>()V

    return-void
.end method

.method public static wn()Lcom/kingroot/kinguser/agz;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/kingroot/kinguser/agz;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agz;

    return-object v0
.end method

.method private wp()V
    .locals 3

    .prologue
    .line 238
    iget-object v2, p0, Lcom/kingroot/kinguser/agz;->anr:Ljava/lang/Object;

    monitor-enter v2

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agz;->anp:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 240
    :goto_0
    if-lez v0, :cond_0

    .line 241
    add-int/lit8 v1, v0, -0x1

    .line 243
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/agz;->anp:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;

    invoke-interface {v0}, Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;->onChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 246
    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    move v0, v1

    .line 246
    goto :goto_0

    .line 248
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/agz;->anp:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 249
    monitor-exit v2

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private wq()V
    .locals 3

    .prologue
    .line 257
    iget-object v2, p0, Lcom/kingroot/kinguser/agz;->ans:Ljava/lang/Object;

    monitor-enter v2

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agz;->anq:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 259
    :goto_0
    if-lez v0, :cond_0

    .line 260
    add-int/lit8 v1, v0, -0x1

    .line 262
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/agz;->anq:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/log/ILogsChangeListener;

    invoke-interface {v0}, Lcom/kingroot/kinguser/root/log/ILogsChangeListener;->onLogsChangeListener()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 265
    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    move v0, v1

    .line 265
    goto :goto_0

    .line 267
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/agz;->anq:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 268
    monitor-exit v2

    .line 269
    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/kingroot/kinguser/agz;->anp:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 215
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)V
    .locals 0

    .prologue
    .line 204
    if-nez p1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-static {p1}, Lcom/kingroot/kinguser/aha;->b(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)J

    .line 209
    invoke-direct {p0}, Lcom/kingroot/kinguser/agz;->wq()V

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/agz;->anq:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 225
    return-void
.end method

.method public a(Ljava/util/List;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/kingroot/kinguser/agz;->d(Ljava/lang/String;IJ)V

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public ah(J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/aha;->ws()Ljava/util/List;

    move-result-object v0

    .line 48
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v7

    .line 61
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    .line 55
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-wide v0, v6, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    :cond_2
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v7

    .line 61
    goto :goto_0
.end method

.method public ai(J)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 109
    invoke-static {}, Lcom/kingroot/kinguser/aha;->ws()Ljava/util/List;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    .line 115
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    iget-wide v0, v6, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    :cond_1
    iget-object v1, v6, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    .line 121
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 123
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_3
    return-object v7
.end method

.method public b(Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/kingroot/kinguser/agz;->anp:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 220
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/agz;->anq:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 230
    return-void
.end method

.method public d(Ljava/lang/String;IJ)V
    .locals 7

    .prologue
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, p1

    move v1, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/ahb;->b(Ljava/lang/String;IJJ)V

    .line 95
    invoke-direct {p0}, Lcom/kingroot/kinguser/agz;->wp()V

    .line 96
    return-void
.end method

.method public dj(I)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {p1}, Lcom/kingroot/kinguser/ahb;->dk(I)Ljava/util/HashMap;

    move-result-object v7

    .line 171
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 173
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 175
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;

    .line 177
    if-eqz v6, :cond_0

    iget-wide v0, v6, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, v6, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->apN:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v6, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->mDuration:J

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, v6, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 185
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/agz$2;

    invoke-direct {v5, p0, v9}, Lcom/kingroot/kinguser/agz$2;-><init>(Lcom/kingroot/kinguser/agz;Ljava/util/List;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 195
    return-object v7
.end method

.method public fG(Ljava/lang/String;)Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 149
    invoke-static {}, Lcom/kingroot/kinguser/ahb;->wu()Ljava/util/HashMap;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v6, v7

    .line 164
    :cond_0
    :goto_0
    return-object v6

    .line 155
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;

    .line 158
    if-eqz v6, :cond_0

    iget-wide v0, v6, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, v6, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->apN:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v6, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->mDuration:J

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, v6, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahb;->fI(Ljava/lang/String;)V

    move-object v6, v7

    .line 161
    goto :goto_0
.end method

.method public fH(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 83
    :goto_0
    return-object v0

    .line 75
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aha;->getAllLogs()Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    .line 78
    iget-object v3, v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apJ:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 83
    goto :goto_0
.end method

.method public wl()V
    .locals 0

    .prologue
    .line 88
    invoke-static {}, Lcom/kingroot/kinguser/aha;->wt()I

    .line 89
    invoke-direct {p0}, Lcom/kingroot/kinguser/agz;->wq()V

    .line 90
    return-void
.end method

.method public wo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    invoke-static {}, Lcom/kingroot/kinguser/ahb;->wu()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
