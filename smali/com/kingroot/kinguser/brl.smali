.class public abstract Lcom/kingroot/kinguser/brl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/kingroot/kinguser/brl;",
        ">;"
    }
.end annotation


# instance fields
.field private final bKa:I

.field public bKb:I

.field bKc:Ljava/lang/String;

.field public bKd:I

.field public bKe:I

.field public bKf:I

.field public bKg:J

.field protected mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/kingroot/kinguser/brl;->bKa:I

    .line 22
    iput v0, p0, Lcom/kingroot/kinguser/brl;->bKd:I

    .line 26
    iput v0, p0, Lcom/kingroot/kinguser/brl;->bKe:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingroot/kinguser/brl;->mState:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/brl;->bKf:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/brl;->bKg:J

    .line 10
    return-void
.end method

.method private ahH()Z
    .locals 4

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 75
    iget v1, p0, Lcom/kingroot/kinguser/brl;->bKb:I

    if-ge v1, v0, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/brl;)I
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/kingroot/kinguser/brl;->bKf:I

    iget v1, p1, Lcom/kingroot/kinguser/brl;->bKf:I

    if-ge v0, v1, :cond_0

    .line 88
    const/4 v0, -0x1

    .line 92
    :goto_0
    return v0

    .line 89
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/brl;->bKf:I

    iget v1, p1, Lcom/kingroot/kinguser/brl;->bKf:I

    if-le v0, v1, :cond_1

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract ahF()V
.end method

.method public ahG()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 57
    iget v1, p0, Lcom/kingroot/kinguser/brl;->bKe:I

    if-nez v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    iget v1, p0, Lcom/kingroot/kinguser/brl;->bKd:I

    if-eqz v1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/kingroot/kinguser/brl;->ahH()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ahI()V
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/kingroot/kinguser/brl;->bKb:I

    .line 83
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/kingroot/kinguser/brl;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/brl;->a(Lcom/kingroot/kinguser/brl;)I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/kingroot/kinguser/brl;->mState:I

    return v0
.end method

.method public abstract kd(I)V
.end method

.method public abstract onClick()V
.end method
