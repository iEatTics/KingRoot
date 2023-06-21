.class public Lcom/kingroot/kinguser/wk;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static volatile MK:Lcom/kingroot/kinguser/wk;

.field private static final ML:Ljava/lang/Object;

.field private static final MM:Ljava/lang/Object;

.field private static MN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/wk;->MK:Lcom/kingroot/kinguser/wk;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/wk;->ML:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/wk;->MM:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    return-void
.end method

.method private static b(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Lcom/kingroot/kinguser/wk;->nt()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/sq;->a(Ljava/lang/Object;Ljava/io/File;)V

    .line 146
    return-void
.end method

.method public static bE(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/kingroot/kinguser/wk;->nr()Lcom/kingroot/kinguser/wk;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v3, v0}, Lcom/kingroot/kinguser/wk;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 56
    return-void
.end method

.method public static do(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/wk;->nr()Lcom/kingroot/kinguser/wk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/kingroot/kinguser/wk;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 51
    return-void
.end method

.method public static dp(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 103
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    .line 107
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/wk;->ML:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/wk;->ns()Ljava/util/Set;

    move-result-object v2

    .line 109
    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    invoke-static {v2}, Lcom/kingroot/kinguser/wk;->b(Ljava/util/Set;)V

    .line 113
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static dq(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    .line 122
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/wk;->ML:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/wk;->ns()Ljava/util/Set;

    move-result-object v2

    .line 124
    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    invoke-static {v2}, Lcom/kingroot/kinguser/wk;->b(Ljava/util/Set;)V

    .line 128
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static nr()Lcom/kingroot/kinguser/wk;
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/kingroot/kinguser/wk;->MK:Lcom/kingroot/kinguser/wk;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lcom/kingroot/kinguser/wk;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/wk;->MK:Lcom/kingroot/kinguser/wk;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/kingroot/kinguser/wk;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/wk;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kingroot/kinguser/wk;->MK:Lcom/kingroot/kinguser/wk;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/wk;->MK:Lcom/kingroot/kinguser/wk;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static ns()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/kingroot/kinguser/wk;->MN:Ljava/util/Set;

    if-nez v0, :cond_3

    .line 77
    sget-object v1, Lcom/kingroot/kinguser/wk;->MM:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/wk;->MN:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-static {}, Lcom/kingroot/kinguser/wk;->nt()Ljava/io/File;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-static {v2}, Lcom/kingroot/kinguser/sq;->u(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    :cond_0
    if-eqz v0, :cond_1

    instance-of v2, v0, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 86
    :try_start_1
    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/kingroot/kinguser/wk;->MN:Ljava/util/Set;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_1
    :goto_0
    :try_start_2
    sget-object v0, Lcom/kingroot/kinguser/wk;->MN:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/wk;->MN:Ljava/util/Set;

    .line 96
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :cond_3
    sget-object v0, Lcom/kingroot/kinguser/wk;->MN:Ljava/util/Set;

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static nt()Ljava/io/File;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tsset.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    if-nez p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 169
    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 171
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 172
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_2

    .line 170
    :goto_1
    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 158
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 159
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 160
    :catch_1
    move-exception v0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 172
    goto :goto_1

    .line 175
    :cond_3
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_4

    .line 176
    :goto_2
    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_4
    move v1, v2

    .line 177
    goto :goto_2

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
