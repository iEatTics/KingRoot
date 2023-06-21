.class public abstract Lcom/kingroot/kinguser/ew;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public I:Ljava/lang/String;

.field public pD:I

.field public pE:I

.field public timestamp:J


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/ew;->timestamp:J

    .line 50
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/kingroot/kinguser/ew;->pD:I

    .line 51
    iput p1, p0, Lcom/kingroot/kinguser/ew;->pE:I

    .line 52
    iput-object p2, p0, Lcom/kingroot/kinguser/ew;->I:Ljava/lang/String;

    .line 53
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lcom/kingroot/kinguser/ew;)Z
    .locals 2

    .prologue
    .line 142
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/kingroot/kinguser/ew;->pE:I

    iget v1, p0, Lcom/kingroot/kinguser/ew;->pE:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/kingroot/kinguser/ew;->pD:I

    iget v1, p0, Lcom/kingroot/kinguser/ew;->pD:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ew;)Z
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ew;->b(Lcom/kingroot/kinguser/ew;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ew;->c(Lcom/kingroot/kinguser/ew;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 98
    :goto_0
    return v0

    .line 89
    :cond_1
    const/4 v2, 0x0

    .line 90
    const/4 v3, 0x1

    :try_start_0
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kingroot/kinguser/ew;->timestamp:J

    .line 91
    const/4 v2, 0x2

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/kingroot/kinguser/ew;->pD:I

    .line 92
    const/4 v3, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/kingroot/kinguser/ew;->pE:I

    .line 93
    aget-object v2, p1, v3

    iput-object v2, p0, Lcom/kingroot/kinguser/ew;->I:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    move v0, v1

    .line 98
    goto :goto_0
.end method

.method public abstract ac()[Ljava/lang/Object;
.end method

.method public abstract ad()I
.end method

.method protected abstract b([Ljava/lang/String;)V
.end method

.method protected c(Lcom/kingroot/kinguser/ew;)Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public c([Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 116
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v1, v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    :try_start_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 121
    const/4 v2, 0x4

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/ew;->b([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public abstract getId()I
.end method
