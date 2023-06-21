.class public Lcom/kingroot/kinguser/ey;
.super Lcom/kingroot/kinguser/ew;
.source "SourceFile"


# instance fields
.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 13
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/ew;-><init>(ILjava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ew;-><init>(ILjava/lang/String;)V

    .line 18
    iput-object p3, p0, Lcom/kingroot/kinguser/ey;->N:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/kingroot/kinguser/ey;->O:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public ac()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingroot/kinguser/ey;->N:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/kingroot/kinguser/ey;->O:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public ad()I
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ey;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/gi;->i(Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ey;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/gi;->ai(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 36
    const/4 v0, 0x3

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ey;->N:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ey;->O:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x6163e

    return v0
.end method
