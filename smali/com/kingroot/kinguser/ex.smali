.class public Lcom/kingroot/kinguser/ex;
.super Lcom/kingroot/kinguser/ew;
.source "SourceFile"


# instance fields
.field private J:I

.field private L:Ljava/lang/String;

.field private pF:I

.field private pG:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 21
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/ew;-><init>(ILjava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ew;-><init>(ILjava/lang/String;)V

    .line 27
    iput p3, p0, Lcom/kingroot/kinguser/ex;->J:I

    .line 28
    iput p4, p0, Lcom/kingroot/kinguser/ex;->pF:I

    .line 29
    iput-object p5, p0, Lcom/kingroot/kinguser/ex;->L:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/ex;->pG:I

    .line 31
    return-void
.end method


# virtual methods
.method public ac()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/kingroot/kinguser/ex;->J:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/kingroot/kinguser/ex;->pF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kingroot/kinguser/ex;->L:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/kingroot/kinguser/ex;->pG:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public ad()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x2

    return v0
.end method

.method protected b([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ex;->J:I

    .line 53
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ex;->pF:I

    .line 54
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ex;->L:Ljava/lang/String;

    .line 55
    const/16 v0, 0x8

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ex;->pG:I

    .line 56
    return-void
.end method

.method protected c(Lcom/kingroot/kinguser/ew;)Z
    .locals 2

    .prologue
    .line 60
    instance-of v0, p1, Lcom/kingroot/kinguser/ex;

    if-eqz v0, :cond_0

    .line 61
    check-cast p1, Lcom/kingroot/kinguser/ex;

    .line 62
    iget v0, p0, Lcom/kingroot/kinguser/ex;->J:I

    iget v1, p1, Lcom/kingroot/kinguser/ex;->J:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/ex;->pF:I

    iget v1, p1, Lcom/kingroot/kinguser/ex;->pF:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/ex;->L:Ljava/lang/String;

    iget-object v1, p1, Lcom/kingroot/kinguser/ex;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget v0, p0, Lcom/kingroot/kinguser/ex;->pG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/ex;->pG:I

    .line 66
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x6163f

    return v0
.end method
