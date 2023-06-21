.class public final Lcom/kingroot/kinguser/jt;
.super Lcom/kingroot/kinguser/jq;
.source "SourceFile"


# instance fields
.field private final ti:Lcom/kingroot/kinguser/jq;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/jq;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/jq;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/kingroot/kinguser/jt;->ti:Lcom/kingroot/kinguser/jq;

    .line 17
    return-void
.end method

.method private aO(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 70
    const-string v0, "zygote"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zygote64"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "system_server"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.phone"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/jr;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/jt;->ti:Lcom/kingroot/kinguser/jq;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/jt;->ti:Lcom/kingroot/kinguser/jq;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/jq;->a(Lcom/kingroot/kinguser/jr;)V

    .line 44
    :cond_0
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/jr;Lcom/kingroot/kinguser/ha;)V
    .locals 7

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/jt;->ti:Lcom/kingroot/kinguser/jq;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/jt;->ti:Lcom/kingroot/kinguser/jq;

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/jq;->a(Lcom/kingroot/kinguser/jr;Lcom/kingroot/kinguser/ha;)V

    .line 60
    :cond_0
    invoke-interface {p1}, Lcom/kingroot/kinguser/jr;->cG()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/jt;->aO(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-interface {p2}, Lcom/kingroot/kinguser/ha;->aJ()I

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/mz;->eS()Lcom/kingroot/kinguser/mz;

    move-result-object v0

    invoke-interface {p1}, Lcom/kingroot/kinguser/jr;->cG()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-interface {p2}, Lcom/kingroot/kinguser/ha;->aJ()I

    move-result v2

    invoke-interface {p2}, Lcom/kingroot/kinguser/ha;->aL()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/kingroot/kinguser/ha;->aO()I

    move-result v4

    .line 64
    invoke-interface {p2}, Lcom/kingroot/kinguser/ha;->aP()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/kingroot/kinguser/ha;->aK()Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/mz;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_2
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/jr;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/jt;->ti:Lcom/kingroot/kinguser/jq;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/jt;->ti:Lcom/kingroot/kinguser/jq;

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/jq;->a(Lcom/kingroot/kinguser/jr;Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method
