.class public Lcom/kingroot/kinguser/mw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hj:Ljava/lang/String;

.field private final wt:I

.field private final wu:Z

.field private final wv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/hi;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 19
    check-cast v0, Lcom/kingroot/kinguser/ll;

    invoke-static {v0}, Lcom/kingroot/kinguser/mw;->f(Lcom/kingroot/kinguser/ll;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/mw;->wt:I

    .line 20
    invoke-interface {p1}, Lcom/kingroot/kinguser/hi;->ba()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/mw;->wu:Z

    .line 21
    invoke-interface {p1}, Lcom/kingroot/kinguser/hi;->aZ()Lcom/kingroot/kinguser/hh;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/hh;->aY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/mw;->wv:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private static f(Lcom/kingroot/kinguser/ll;)I
    .locals 2

    .prologue
    .line 50
    invoke-interface {p0}, Lcom/kingroot/kinguser/ll;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 51
    check-cast p0, Lcom/kingroot/kinguser/lj;

    .line 52
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lj;->dT()I

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lcom/kingroot/kinguser/ll;->getType()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public an(I)V
    .locals 6

    .prologue
    .line 39
    invoke-static {}, Lcom/kingroot/kinguser/mz;->eS()Lcom/kingroot/kinguser/mz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/mw;->hj:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/mw;->wt:I

    iget-boolean v4, p0, Lcom/kingroot/kinguser/mw;->wu:Z

    iget-object v5, p0, Lcom/kingroot/kinguser/mw;->wv:Ljava/lang/String;

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/mz;->a(Ljava/lang/String;IIZLjava/lang/String;)V

    .line 41
    return-void
.end method

.method public eK()V
    .locals 5

    .prologue
    .line 29
    invoke-static {}, Lcom/kingroot/kinguser/mz;->eS()Lcom/kingroot/kinguser/mz;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/mw;->wt:I

    const v2, 0x600000e

    iget-boolean v3, p0, Lcom/kingroot/kinguser/mw;->wu:Z

    iget-object v4, p0, Lcom/kingroot/kinguser/mw;->wv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/mz;->a(IIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/mw;->hj:Ljava/lang/String;

    .line 32
    return-void
.end method
