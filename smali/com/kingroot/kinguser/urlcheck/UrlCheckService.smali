.class public Lcom/kingroot/kinguser/urlcheck/UrlCheckService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/urlcheck/UrlCheckService$a;
    }
.end annotation


# instance fields
.field private bnm:Lcom/kingroot/kinguser/urlcheck/UrlCheckService$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/urlcheck/UrlCheckService;Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/urlcheck/UrlCheckService;->a(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    return-void
.end method

.method private a(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 129
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    const-wide v4, 0x1cf7c5800L

    invoke-virtual {v0, v3, v4, v5}, Lcom/kingroot/kinguser/bfs;->a(ZJ)Ljava/util/List;

    move-result-object v1

    .line 134
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 135
    if-eqz v0, :cond_0

    .line 140
    iget-object v0, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->GY:Ljava/lang/String;

    iget-object v5, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->GY:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 147
    :goto_0
    if-nez v0, :cond_1

    .line 148
    iput-boolean v3, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnx:Z

    .line 149
    iput v2, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnu:I

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnv:J

    .line 152
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bfs;->c(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    .line 154
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaT()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    invoke-static {v2, v3, v4, v5}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/bfw;->cu(J)V

    move-object v0, v1

    .line 163
    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->u(Ljava/util/ArrayList;)V

    .line 167
    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/urlcheck/UrlCheckService;Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/urlcheck/UrlCheckService;->b(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    return-void
.end method

.method private b(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnx:Z

    .line 172
    iput v0, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnu:I

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnv:J

    .line 174
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bfs;->e(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    .line 175
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 100
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "urlcheck_worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance v1, Lcom/kingroot/kinguser/urlcheck/UrlCheckService$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/urlcheck/UrlCheckService$a;-><init>(Lcom/kingroot/kinguser/urlcheck/UrlCheckService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/urlcheck/UrlCheckService;->bnm:Lcom/kingroot/kinguser/urlcheck/UrlCheckService$a;

    .line 104
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 123
    :goto_0
    return v0

    .line 112
    :cond_0
    if-eqz p1, :cond_1

    .line 114
    :try_start_0
    const-string v0, "KEY_URL_CLOUD_CHECK_NOTIFY_TYPE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 115
    const-string v1, "KEY_URL_CLOUD_CHECK_ARG1"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 116
    const-string v2, "KEY_URL_CLOUD_CHECK_OBJ1"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    iget-object v3, p0, Lcom/kingroot/kinguser/urlcheck/UrlCheckService;->bnm:Lcom/kingroot/kinguser/urlcheck/UrlCheckService$a;

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    goto :goto_1
.end method
