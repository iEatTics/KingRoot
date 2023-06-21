.class public Lcom/kingroot/kinguser/kw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ib;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/kw$a;
    }
.end annotation


# instance fields
.field private us:Lcom/kingroot/kinguser/hp;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/hp;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/kingroot/kinguser/kw;->us:Lcom/kingroot/kinguser/hp;

    .line 53
    return-void
.end method

.method private aT(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/kingroot/kinguser/ih;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/nd;->eY()Lcom/kingroot/kinguser/nd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/nd;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "-1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ad(I)Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x28

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public e(ILjava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 58
    const/16 v1, 0x50

    if-eq v1, p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    invoke-static {p2}, Lcom/kingroot/kinguser/kw$a;->aU(Ljava/lang/String;)Lcom/kingroot/kinguser/kw$a;

    move-result-object v1

    .line 65
    iget v2, v1, Lcom/kingroot/kinguser/kw$a;->ut:I

    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/kw;->ad(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, v1, Lcom/kingroot/kinguser/kw$a;->uu:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/kw;->aT(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-boolean v0, v1, Lcom/kingroot/kinguser/kw$a;->uv:Z

    invoke-static {v0}, Lcom/kingroot/kinguser/lh;->setEnabled(Z)V

    .line 77
    iget-boolean v0, v1, Lcom/kingroot/kinguser/kw$a;->uv:Z

    invoke-static {v0}, Lcom/kingroot/kinguser/kv;->j(Z)V

    .line 79
    iget-boolean v0, v1, Lcom/kingroot/kinguser/kw$a;->uv:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/kw;->us:Lcom/kingroot/kinguser/hp;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/kw;->us:Lcom/kingroot/kinguser/hp;

    invoke-interface {v0}, Lcom/kingroot/kinguser/hp;->bf()V

    .line 84
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
