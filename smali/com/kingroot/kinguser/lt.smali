.class public Lcom/kingroot/kinguser/lt;
.super Lcom/king/uranus/bq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/lt$b;,
        Lcom/kingroot/kinguser/lt$a;
    }
.end annotation


# static fields
.field public static vb:J

.field private static volatile vc:Lcom/kingroot/kinguser/lt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/kingroot/kinguser/lt;->vb:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/king/uranus/bq;-><init>()V

    return-void
.end method

.method private d(II)Lcom/kingroot/kinguser/lt$b;
    .locals 3

    .prologue
    .line 132
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 133
    new-instance v0, Lcom/kingroot/kinguser/lt$b;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/lt$b;-><init>(Lcom/kingroot/kinguser/lt;Ljava/lang/String;I)V

    .line 148
    :goto_0
    return-object v0

    .line 137
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 139
    new-instance v0, Lcom/kingroot/kinguser/lt$b;

    const-string v1, "zygote64"

    invoke-direct {v0, p0, v1, p2}, Lcom/kingroot/kinguser/lt$b;-><init>(Lcom/kingroot/kinguser/lt;Ljava/lang/String;I)V

    goto :goto_0

    .line 143
    :cond_1
    if-eqz p1, :cond_2

    .line 144
    new-instance v0, Lcom/kingroot/kinguser/lt$b;

    const-string v1, "zygote"

    invoke-direct {v0, p0, v1, p1}, Lcom/kingroot/kinguser/lt$b;-><init>(Lcom/kingroot/kinguser/lt;Ljava/lang/String;I)V

    goto :goto_0

    .line 148
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/lt$b;

    const-string v1, "zygote64"

    invoke-direct {v0, p0, v1, p2}, Lcom/kingroot/kinguser/lt$b;-><init>(Lcom/kingroot/kinguser/lt;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static eg()Lcom/kingroot/kinguser/lt;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/kingroot/kinguser/lt;->vc:Lcom/kingroot/kinguser/lt;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Lcom/kingroot/kinguser/lt;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/lt;->vc:Lcom/kingroot/kinguser/lt;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/lt;

    invoke-direct {v0}, Lcom/kingroot/kinguser/lt;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/lt;->vc:Lcom/kingroot/kinguser/lt;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/lt;->vc:Lcom/kingroot/kinguser/lt;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private m(Z)Lcom/kingroot/kinguser/lt$a;
    .locals 4

    .prologue
    .line 94
    const-string v0, "zygote"

    invoke-virtual {p0, v0, p1}, Lcom/kingroot/kinguser/lt;->f(Ljava/lang/String;Z)I

    move-result v0

    .line 95
    const-string v1, "zygote64"

    invoke-virtual {p0, v1, p1}, Lcom/kingroot/kinguser/lt;->f(Ljava/lang/String;Z)I

    move-result v1

    .line 96
    const-string v2, "system_server"

    invoke-virtual {p0, v2, p1}, Lcom/kingroot/kinguser/lt;->f(Ljava/lang/String;Z)I

    move-result v2

    .line 98
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/lt;->d(II)Lcom/kingroot/kinguser/lt$b;

    move-result-object v1

    .line 101
    iget v0, v1, Lcom/kingroot/kinguser/lt$b;->vd:I

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 102
    new-instance v0, Lcom/kingroot/kinguser/lt$a;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/lt$a;-><init>(Lcom/kingroot/kinguser/lt;Ljava/lang/String;I)V

    .line 127
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget v0, v1, Lcom/kingroot/kinguser/lt$b;->vd:I

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 109
    invoke-static {}, Lcom/kingroot/kinguser/ls;->ec()Lcom/kingroot/kinguser/ls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ls;->ee()Z

    move-result v0

    .line 110
    if-nez p1, :cond_1

    .line 111
    invoke-static {}, Lcom/kingroot/kinguser/ls;->ec()Lcom/kingroot/kinguser/ls;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/ls;->ef()V

    .line 114
    :cond_1
    if-eqz v0, :cond_2

    .line 115
    new-instance v0, Lcom/kingroot/kinguser/lt$a;

    const-string v1, "system_server"

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/lt$a;-><init>(Lcom/kingroot/kinguser/lt;Ljava/lang/String;I)V

    goto :goto_0

    .line 117
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/lt$a;

    iget-object v2, v1, Lcom/kingroot/kinguser/lt$b;->vf:Ljava/lang/String;

    iget v1, v1, Lcom/kingroot/kinguser/lt$b;->vd:I

    invoke-direct {v0, p0, v2, v1}, Lcom/kingroot/kinguser/lt$a;-><init>(Lcom/kingroot/kinguser/lt;Ljava/lang/String;I)V

    goto :goto_0

    .line 122
    :cond_3
    iget v0, v1, Lcom/kingroot/kinguser/lt$b;->vd:I

    if-eqz v0, :cond_4

    .line 123
    new-instance v0, Lcom/kingroot/kinguser/lt$a;

    iget-object v2, v1, Lcom/kingroot/kinguser/lt$b;->vf:Ljava/lang/String;

    iget v1, v1, Lcom/kingroot/kinguser/lt$b;->vd:I

    invoke-direct {v0, p0, v2, v1}, Lcom/kingroot/kinguser/lt$a;-><init>(Lcom/kingroot/kinguser/lt;Ljava/lang/String;I)V

    goto :goto_0

    .line 127
    :cond_4
    new-instance v0, Lcom/kingroot/kinguser/lt$a;

    const-string v1, "system_server"

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/lt$a;-><init>(Lcom/kingroot/kinguser/lt;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public eh()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "zygote"

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/lt;->bj(Ljava/lang/String;)V

    .line 60
    const-string v0, "zygote64"

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/lt;->bj(Ljava/lang/String;)V

    .line 61
    const-string v0, "system_server"

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/lt;->bj(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public ei()Lcom/kingroot/kinguser/lt$a;
    .locals 4

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/lt;->m(Z)Lcom/kingroot/kinguser/lt$a;

    move-result-object v0

    .line 74
    iget v1, v0, Lcom/kingroot/kinguser/lt$a;->vd:I

    if-eqz v1, :cond_0

    .line 75
    invoke-static {}, Lcom/kingroot/kinguser/lq;->dW()Lcom/kingroot/kinguser/lq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/lq;->dZ()V

    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v1

    iget-object v2, v0, Lcom/kingroot/kinguser/lt$a;->eF:Ljava/lang/String;

    iget v3, v0, Lcom/kingroot/kinguser/lt$a;->vd:I

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/mx;->g(Ljava/lang/String;I)V

    .line 85
    :goto_0
    return-object v0

    .line 82
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/lq;->dW()Lcom/kingroot/kinguser/lq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/lq;->eb()V

    goto :goto_0
.end method
