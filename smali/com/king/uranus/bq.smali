.class public Lcom/king/uranus/bq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/uranus/bq$a;
    }
.end annotation


# static fields
.field public static vn:J


# instance fields
.field private vo:Lcom/kingroot/kinguser/ln;

.field private vp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-wide/16 v0, 0x3a98

    sput-wide v0, Lcom/king/uranus/bq;->vn:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/king/uranus/bq$a;)V
    .locals 2

    .prologue
    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/king/uranus/bq;->vo:Lcom/kingroot/kinguser/ln;

    iget-object v1, p1, Lcom/king/uranus/bq$a;->eF:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/king/uranus/bq;->bm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/kingroot/kinguser/ln;->c(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 110
    monitor-exit p0

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(JLjava/lang/String;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p3}, Lcom/king/uranus/bq;->bl(Ljava/lang/String;)Lcom/king/uranus/bq$a;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/king/uranus/bq$a;->fJ:Lcom/king/uranus/cs;

    if-nez v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    iget-object v2, v1, Lcom/king/uranus/bq$a;->fJ:Lcom/king/uranus/cs;

    invoke-virtual {v2}, Lcom/king/uranus/cs;->fj()J

    move-result-wide v2

    .line 81
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 86
    invoke-static {}, Lcom/king/uranus/cs;->fh()Lcom/king/uranus/cs;

    move-result-object v4

    .line 87
    iget-object v1, v1, Lcom/king/uranus/bq$a;->fJ:Lcom/king/uranus/cs;

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/king/uranus/cs;->a(Lcom/king/uranus/cs;Lcom/king/uranus/cs;Ljava/util/List;)I

    move-result v1

    .line 90
    sget v4, Lcom/king/uranus/cs;->xp:I

    if-ne v1, v4, :cond_2

    .line 92
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :cond_2
    sget v4, Lcom/king/uranus/cs;->xo:I

    if-ne v1, v4, :cond_0

    .line 96
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 98
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private bk(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/king/uranus/bq;->bm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private bl(Ljava/lang/String;)Lcom/king/uranus/bq$a;
    .locals 2

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/king/uranus/bq;->vo:Lcom/kingroot/kinguser/ln;

    invoke-direct {p0, p1}, Lcom/king/uranus/bq;->bm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/ln;->bd(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/king/uranus/bq$a;

    if-eqz v1, :cond_0

    .line 120
    check-cast v0, Lcom/king/uranus/bq$a;

    .line 123
    :goto_0
    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/king/uranus/bq;->vp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_stat.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/kingroot/kinguser/ln;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/king/uranus/bq;->vo:Lcom/kingroot/kinguser/ln;

    .line 30
    iput-object p2, p0, Lcom/king/uranus/bq;->vp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bi(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/king/uranus/bq$a;

    invoke-direct {v0, p1}, Lcom/king/uranus/bq$a;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/king/uranus/cs;->fh()Lcom/king/uranus/cs;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/bq$a;->fJ:Lcom/king/uranus/cs;

    .line 36
    invoke-direct {p0, v0}, Lcom/king/uranus/bq;->a(Lcom/king/uranus/bq$a;)V

    .line 37
    return-void
.end method

.method public bj(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/king/uranus/bq;->bk(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public f(Ljava/lang/String;Z)I
    .locals 2

    .prologue
    .line 47
    sget-wide v0, Lcom/king/uranus/bq;->vn:J

    invoke-direct {p0, v0, v1, p1}, Lcom/king/uranus/bq;->b(JLjava/lang/String;)I

    move-result v0

    .line 49
    if-nez p2, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lcom/king/uranus/bq;->bk(Ljava/lang/String;)V

    .line 52
    :cond_0
    return v0
.end method
