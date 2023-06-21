.class public Lcom/kingroot/common/report/autostart/BootRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/report/autostart/BootRecord$BaseRecord;,
        Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;,
        Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;,
        Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private mAutoStartRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPid:I

.field private mCurrentSystemBootupTime:J

.field private mHadReported:Z

.field private mID:J

.field private mInjectResultRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInjectTimeRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBeKilled:Z

.field private mIsDirtyRecord:Z

.field private mIsKmFirstRecord:Z

.field private mIsProcessAutoStartFinish:Z

.field private mIsProcessKmInjectFinish:Z

.field private mIsProcessOpponentInjectFinish:Z


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide v2, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mCurrentSystemBootupTime:J

    .line 29
    iput-boolean v1, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mHadReported:Z

    .line 31
    iput-boolean v1, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsBeKilled:Z

    .line 33
    iput-wide v2, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mID:J

    .line 36
    iput-boolean v1, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsKmFirstRecord:Z

    .line 41
    iput-boolean v1, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsDirtyRecord:Z

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mAutoStartRecordMap:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mInjectTimeRecordMap:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mInjectResultRecordMap:Ljava/util/Map;

    .line 47
    iput-boolean v1, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsProcessAutoStartFinish:Z

    .line 48
    iput-boolean v1, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsProcessKmInjectFinish:Z

    .line 49
    iput-boolean v1, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsProcessOpponentInjectFinish:Z

    .line 63
    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide v2, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mCurrentSystemBootupTime:J

    .line 29
    iput-boolean v1, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mHadReported:Z

    .line 31
    iput-boolean v1, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsBeKilled:Z

    .line 33
    iput-wide v2, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mID:J

    .line 36
    iput-boolean v1, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsKmFirstRecord:Z

    .line 41
    iput-boolean v1, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsDirtyRecord:Z

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mAutoStartRecordMap:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mInjectTimeRecordMap:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mInjectResultRecordMap:Ljava/util/Map;

    .line 47
    iput-boolean v1, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsProcessAutoStartFinish:Z

    .line 48
    iput-boolean v1, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsProcessKmInjectFinish:Z

    .line 49
    iput-boolean v1, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsProcessOpponentInjectFinish:Z

    .line 71
    iput-wide p3, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mCurrentSystemBootupTime:J

    .line 72
    iput-wide p1, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mID:J

    .line 73
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mCurrentPid:I

    .line 74
    return-void
.end method

.method public static mt()Lcom/kingroot/common/report/autostart/BootRecord;
    .locals 8

    .prologue
    .line 77
    new-instance v0, Lcom/kingroot/common/report/autostart/BootRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/kingroot/common/report/autostart/BootRecord;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public F(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;
    .locals 1

    .prologue
    .line 293
    monitor-enter p0

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mInjectResultRecordMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 295
    if-eqz v0, :cond_0

    .line 296
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;

    monitor-exit p0

    .line 298
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public T(Z)V
    .locals 0

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsKmFirstRecord:Z

    .line 123
    return-void
.end method

.method public a(Lcom/kingroot/common/report/autostart/BootRecord$BaseRecord;)V
    .locals 6

    .prologue
    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    instance-of v2, p1, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;

    if-eqz v2, :cond_1

    .line 214
    move-object v0, p1

    check-cast v0, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;

    move-object v2, v0

    .line 215
    iget-wide v4, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mID:J

    iput-wide v4, p1, Lcom/kingroot/common/report/autostart/BootRecord$BaseRecord;->mID:J

    .line 216
    iget-object v3, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mAutoStartRecordMap:Ljava/util/Map;

    iget-object v4, v2, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mPkg:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_0
    :goto_0
    monitor-exit p0

    .line 236
    return-void

    .line 218
    :cond_1
    instance-of v2, p1, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;

    if-eqz v2, :cond_2

    .line 219
    move-object v0, p1

    check-cast v0, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;

    move-object v2, v0

    .line 220
    iget-wide v4, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mID:J

    iput-wide v4, p1, Lcom/kingroot/common/report/autostart/BootRecord$BaseRecord;->mID:J

    .line 221
    iget-object v3, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mInjectTimeRecordMap:Ljava/util/Map;

    iget-object v4, v2, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;->mPkg:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 223
    :cond_2
    :try_start_1
    instance-of v2, p1, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;

    if-eqz v2, :cond_0

    .line 224
    move-object v0, p1

    check-cast v0, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;

    move-object v2, v0

    .line 225
    iget-wide v4, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mID:J

    iput-wide v4, p1, Lcom/kingroot/common/report/autostart/BootRecord$BaseRecord;->mID:J

    .line 227
    iget-object v3, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mInjectResultRecordMap:Ljava/util/Map;

    iget-object v4, v2, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mTargetProc2Inject:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 228
    if-nez v3, :cond_3

    .line 229
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 230
    iget-object v4, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mInjectResultRecordMap:Ljava/util/Map;

    iget-object v5, v2, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mTargetProc2Inject:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_3
    iget-object v4, v2, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mPkg:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public dj(Ljava/lang/String;)Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;
    .locals 1

    .prologue
    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mAutoStartRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;

    monitor-exit p0

    return-object v0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dk(Ljava/lang/String;)Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;
    .locals 1

    .prologue
    .line 276
    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mInjectTimeRecordMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mInjectTimeRecordMap:Ljava/util/Map;

    .line 279
    const/4 v0, 0x0

    monitor-exit p0

    .line 281
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mInjectTimeRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;

    monitor-exit p0

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsDirtyRecord:Z

    return v0
.end method

.method public declared-synchronized mA()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    iget-object v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mAutoStartRecordMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 157
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 163
    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public mB()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    iget-object v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mInjectTimeRecordMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 173
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public mC()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    iget-object v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mInjectResultRecordMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 190
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 192
    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 197
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;

    .line 199
    if-eqz v0, :cond_1

    .line 200
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public mq()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsProcessOpponentInjectFinish:Z

    .line 53
    return-void
.end method

.method public mr()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsProcessKmInjectFinish:Z

    .line 57
    return-void
.end method

.method public ms()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsProcessAutoStartFinish:Z

    .line 61
    return-void
.end method

.method public mu()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsDirtyRecord:Z

    .line 85
    return-void
.end method

.method public mv()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mHadReported:Z

    .line 99
    return-void
.end method

.method public mw()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mHadReported:Z

    return v0
.end method

.method public mx()Z
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/kingroot/common/report/autostart/BootRecord;->mz()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mCurrentPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsBeKilled:Z

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsBeKilled:Z

    return v0
.end method

.method public my()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsKmFirstRecord:Z

    return v0
.end method

.method public mz()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsProcessAutoStartFinish:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsProcessKmInjectFinish:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/common/report/autostart/BootRecord;->mIsProcessOpponentInjectFinish:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const-string v0, ""

    return-object v0
.end method
