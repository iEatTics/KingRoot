.class public Lcom/kingroot/kinguser/cfy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bYp:I

.field private cdY:Lcom/kingroot/kinguser/cfx;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/cfx$a;Lcom/kingroot/kinguser/cfu;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingroot/kinguser/cfy;->bYp:I

    .line 23
    iput-object v1, p0, Lcom/kingroot/kinguser/cfy;->context:Landroid/content/Context;

    .line 24
    iput-object v1, p0, Lcom/kingroot/kinguser/cfy;->cdY:Lcom/kingroot/kinguser/cfx;

    .line 27
    iput-object p1, p0, Lcom/kingroot/kinguser/cfy;->context:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/kingroot/kinguser/cfx;

    invoke-direct {v0, p1, p2, p3}, Lcom/kingroot/kinguser/cfx;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/cfx$a;Lcom/kingroot/kinguser/cfu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfy;->cdY:Lcom/kingroot/kinguser/cfx;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/cff$d;[B)I
    .locals 5

    .prologue
    .line 91
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 92
    :cond_0
    const/16 v0, -0xa

    .line 120
    :cond_1
    :goto_0
    return v0

    .line 95
    :cond_2
    const/4 v1, -0x1

    .line 97
    const/4 v0, 0x0

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/kingroot/kinguser/cff$d;->alO()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    const/16 v0, -0x11

    .line 102
    goto :goto_0

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/cfy;->cdY:Lcom/kingroot/kinguser/cfx;

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/cfx;->a(Lcom/kingroot/kinguser/cff$d;[B)I

    move-result v0

    .line 107
    if-eqz v0, :cond_1

    .line 111
    const/4 v2, 0x2

    if-eq v2, v1, :cond_4

    .line 113
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public amG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/cfy;->cdY:Lcom/kingroot/kinguser/cfx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfx;->amG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public amM()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/cfy;->cdY:Lcom/kingroot/kinguser/cfx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfx;->amM()Z

    move-result v0

    return v0
.end method

.method public amN()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/cfy;->cdY:Lcom/kingroot/kinguser/cfx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfx;->amN()Z

    move-result v0

    return v0
.end method

.method public amO()I
    .locals 4

    .prologue
    .line 41
    const v0, 0x10005

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[ocean] close"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cgl;->d(I[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/cfy;->cdY:Lcom/kingroot/kinguser/cfx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfx;->stop()I

    move-result v0

    return v0
.end method

.method public amP()I
    .locals 6

    .prologue
    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/cej;->akX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const v0, -0x38270

    .line 59
    :goto_0
    return v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfy;->cdY:Lcom/kingroot/kinguser/cfx;

    iget-object v1, p0, Lcom/kingroot/kinguser/cfy;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cfx;->cu(Landroid/content/Context;)I

    move-result v0

    .line 58
    const v1, 0x10005

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ocean] connect |ret|"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/cgl;->d(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public amQ()I
    .locals 6

    .prologue
    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/cej;->akX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const v0, -0x38270

    .line 75
    :goto_0
    return v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfy;->cdY:Lcom/kingroot/kinguser/cfx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfx;->amH()I

    move-result v0

    .line 74
    const v1, 0x10005

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ocean] reconnect |ret|"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/cgl;->d(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public amq()Lcom/kingroot/kinguser/cfu;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/cfy;->cdY:Lcom/kingroot/kinguser/cfx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfx;->amq()Lcom/kingroot/kinguser/cfu;

    move-result-object v0

    return-object v0
.end method
