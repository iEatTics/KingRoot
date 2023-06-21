.class public final Lcom/kingroot/kinguser/mz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static wJ:Lcom/kingroot/kinguser/mz;


# instance fields
.field private wK:Lcom/kingroot/kinguser/lp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uranus_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/kingroot/kinguser/mz;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/mz;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/kingroot/kinguser/mz;

    invoke-direct {v0}, Lcom/kingroot/kinguser/mz;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/mz;->wJ:Lcom/kingroot/kinguser/mz;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static ar(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    return-object v0
.end method

.method public static eS()Lcom/kingroot/kinguser/mz;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/kingroot/kinguser/mz;->wJ:Lcom/kingroot/kinguser/mz;

    return-object v0
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/mz;->wK:Lcom/kingroot/kinguser/lp;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/lp;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-class v0, Lcom/kingroot/kinguser/hn;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hn;

    .line 135
    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/hn;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method


# virtual methods
.method public a(IIZLjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 83
    sget-object v0, Lcom/king/uranus/cg;->wH:Lcom/king/uranus/cg;

    iget v0, v0, Lcom/king/uranus/cg;->id:I

    invoke-static {v0}, Lcom/kingroot/kinguser/mz;->ar(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 84
    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/mz;->a(Ljava/lang/String;IIZLjava/lang/String;)V

    .line 85
    return-object v1
.end method

.method public a(IZI)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 99
    sget-object v2, Lcom/king/uranus/cg;->wE:Lcom/king/uranus/cg;

    iget v2, v2, Lcom/king/uranus/cg;->id:I

    invoke-static {v2}, Lcom/kingroot/kinguser/mz;->ar(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%d|%d|%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    if-eqz p2, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    .line 100
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-direct {p0, v2, v0}, Lcom/kingroot/kinguser/mz;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void

    :cond_0
    move v0, v1

    .line 101
    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/kingroot/kinguser/lp;)V
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/kingroot/kinguser/mz;->wK:Lcom/kingroot/kinguser/lp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;IIZLjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%d|%d|%d|%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 91
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    if-eqz p4, :cond_1

    .line 92
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x3

    if-eqz p4, :cond_0

    const-string p5, "system_server"

    :cond_0
    aput-object p5, v4, v0

    .line 90
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/mz;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    :cond_1
    move v0, v1

    .line 91
    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 70
    sget-object v0, Lcom/king/uranus/cg;->wB:Lcom/king/uranus/cg;

    iget v0, v0, Lcom/king/uranus/cg;->id:I

    invoke-static {v0}, Lcom/kingroot/kinguser/mz;->ar(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%s|%d|%s|%d|%s|%s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    .line 71
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/mz;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 122
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s|%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    .line 123
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 122
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/mz;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public bD(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 112
    sget-object v0, Lcom/king/uranus/cg;->wG:Lcom/king/uranus/cg;

    iget v0, v0, Lcom/king/uranus/cg;->id:I

    invoke-static {v0}, Lcom/kingroot/kinguser/mz;->ar(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%s|%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 114
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 113
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/mz;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-object v0
.end method

.method public h(II)V
    .locals 6

    .prologue
    .line 58
    sget-object v0, Lcom/king/uranus/cg;->wF:Lcom/king/uranus/cg;

    iget v0, v0, Lcom/king/uranus/cg;->id:I

    invoke-static {v0}, Lcom/kingroot/kinguser/mz;->ar(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%d|%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 59
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/mz;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public j(IZ)V
    .locals 1

    .prologue
    .line 107
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/kingroot/kinguser/mz;->a(IZI)V

    .line 108
    return-void
.end method
