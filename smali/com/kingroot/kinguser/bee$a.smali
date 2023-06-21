.class Lcom/kingroot/kinguser/bee$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic bkP:Lcom/kingroot/kinguser/bee;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/bee;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/kingroot/kinguser/bee$a;->bkP:Lcom/kingroot/kinguser/bee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bee;Lcom/kingroot/kinguser/bee$1;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bee$a;-><init>(Lcom/kingroot/kinguser/bee;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/bee$a;->bkP:Lcom/kingroot/kinguser/bee;

    invoke-static {v0}, Lcom/kingroot/kinguser/bee;->a(Lcom/kingroot/kinguser/bee;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 167
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/bee$a;->bkP:Lcom/kingroot/kinguser/bee;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bee;->getThread()Ljava/lang/Thread;

    move-result-object v2

    .line 169
    if-eqz v2, :cond_6

    .line 170
    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    .line 173
    sget-object v0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v3, v0, :cond_0

    sget-object v0, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-eq v3, v0, :cond_0

    sget-object v0, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-ne v3, v0, :cond_6

    .line 174
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 175
    if-nez v4, :cond_1

    .line 176
    monitor-exit v1

    .line 230
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/kingroot/kinguser/bee$a;->bkP:Lcom/kingroot/kinguser/bee;

    invoke-static {v0}, Lcom/kingroot/kinguser/bee;->b(Lcom/kingroot/kinguser/bee;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/bee$a;->bkP:Lcom/kingroot/kinguser/bee;

    invoke-static {v0}, Lcom/kingroot/kinguser/bee;->c(Lcom/kingroot/kinguser/bee;)J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_2

    .line 182
    monitor-exit v1

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 185
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bee$a;->bkP:Lcom/kingroot/kinguser/bee;

    invoke-static {v0}, Lcom/kingroot/kinguser/bee;->d(Lcom/kingroot/kinguser/bee;)Lcom/kingroot/kinguser/bed;

    move-result-object v0

    if-nez v0, :cond_3

    .line 187
    monitor-exit v1

    goto :goto_0

    .line 189
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    array-length v8, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_4

    aget-object v9, v4, v0

    .line 191
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread state:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\nJob type:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/kingroot/kinguser/bee$a;->bkP:Lcom/kingroot/kinguser/bee;

    .line 195
    invoke-static {v5}, Lcom/kingroot/kinguser/bee;->d(Lcom/kingroot/kinguser/bee;)Lcom/kingroot/kinguser/bed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingroot/kinguser/bed;->Zd()Lcom/kingroot/kinguser/bec;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\nJob cost:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v5, Lcom/kingroot/kinguser/beo;

    invoke-direct {v5, v0}, Lcom/kingroot/kinguser/beo;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v5, v4}, Lcom/kingroot/kinguser/beo;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 204
    sget-object v0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v3, v0, :cond_5

    sget-object v0, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-ne v3, v0, :cond_6

    .line 206
    :cond_5
    new-instance v0, Lcom/kingroot/kinguser/bee$a$1;

    invoke-direct {v0, p0, v5}, Lcom/kingroot/kinguser/bee$a$1;-><init>(Lcom/kingroot/kinguser/bee$a;Lcom/kingroot/kinguser/beo;)V

    .line 212
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bee$a$1;->start()V

    .line 214
    sget-object v0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v3, v0, :cond_6

    .line 216
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 229
    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
