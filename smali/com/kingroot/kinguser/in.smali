.class public Lcom/kingroot/kinguser/in;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/il;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private aA(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 46
    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/it;->h(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    :goto_0
    return v2

    .line 51
    :cond_0
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ix$b;->co()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private aB(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 60
    invoke-static {p1}, Lcom/kingroot/kinguser/iv;->aD(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ix$b;->co()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/king/uranus/cS;)I
    .locals 2

    .prologue
    .line 31
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/king/uranus/p;

    if-nez v0, :cond_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    .line 35
    :cond_1
    check-cast p1, Lcom/king/uranus/p;

    .line 37
    iget v0, p1, Lcom/king/uranus/p;->bj:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 38
    iget-object v0, p1, Lcom/king/uranus/p;->bi:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/in;->aA(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p1, Lcom/king/uranus/p;->bi:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/in;->aB(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
