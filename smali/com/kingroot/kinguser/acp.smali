.class public final Lcom/kingroot/kinguser/acp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/acp$a;,
        Lcom/kingroot/kinguser/acp$b;
    }
.end annotation


# static fields
.field private static volatile aaF:Z

.field private static volatile aaG:Lcom/kingroot/kinguser/acp;

.field private static volatile mAppContext:Landroid/content/Context;


# instance fields
.field private aaH:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private aaI:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/acp$a;",
            ">;"
        }
    .end annotation
.end field

.field private final aaJ:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/acp;->aaF:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/acp;->aaJ:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/kingroot/kinguser/acp$1;

    iget-object v1, p0, Lcom/kingroot/kinguser/acp;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p0}, Lcom/kingroot/kinguser/acp$1;-><init>(Lcom/kingroot/kinguser/acp;Landroid/content/Context;Lcom/kingroot/kinguser/acp;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/acp;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/acp;->aaH:Ljava/lang/ref/ReferenceQueue;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/acp;->aaI:Landroid/util/SparseArray;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/acp;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/acp;->rW()V

    return-void
.end method

.method public static add(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/acp;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/acp;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/acp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    sget-boolean v0, Lcom/kingroot/kinguser/acp;->aaF:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/kingroot/kinguser/acp;->rV()Lcom/kingroot/kinguser/acp;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/acp;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method

.method private f(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 166
    iget-object v1, p0, Lcom/kingroot/kinguser/acp;->aaJ:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/acp;->aaI:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/acp$a;

    .line 169
    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/acp;->aaI:Landroid/util/SparseArray;

    new-instance v3, Lcom/kingroot/kinguser/acp$a;

    iget-object v4, p0, Lcom/kingroot/kinguser/acp;->aaH:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, p1, v4, p2}, Lcom/kingroot/kinguser/acp$a;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    :cond_0
    monitor-exit v1

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static rV()Lcom/kingroot/kinguser/acp;
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lcom/kingroot/kinguser/acp;->aaG:Lcom/kingroot/kinguser/acp;

    if-nez v0, :cond_1

    .line 74
    const-class v1, Lcom/kingroot/kinguser/acp;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/acp;->aaG:Lcom/kingroot/kinguser/acp;

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/kingroot/kinguser/acp;->mAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/kingroot/kinguser/acp;

    sget-object v2, Lcom/kingroot/kinguser/acp;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/acp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingroot/kinguser/acp;->aaG:Lcom/kingroot/kinguser/acp;

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/acp;->aaG:Lcom/kingroot/kinguser/acp;

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private rW()V
    .locals 4

    .prologue
    .line 176
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 178
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 179
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 181
    iget-object v2, p0, Lcom/kingroot/kinguser/acp;->aaJ:Ljava/lang/Object;

    monitor-enter v2

    .line 183
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/acp;->aaI:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/acp;->aaI:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/acp$a;

    .line 185
    if-eqz v0, :cond_0

    .line 183
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 189
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/acp;->aaH:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/acp$a;

    if-eqz v0, :cond_2

    .line 196
    iget-object v1, p0, Lcom/kingroot/kinguser/acp;->aaJ:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_1
    iget-object v2, p0, Lcom/kingroot/kinguser/acp;->aaI:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/acp$a;->rX()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 198
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 189
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 200
    :cond_2
    return-void
.end method
