.class Lcom/kingroot/kinguser/acj;
.super Lcom/kingroot/kinguser/abw;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kingroot/kinguser/abw;-><init>()V

    return-void
.end method

.method private rF()Lcom/kingroot/kinguser/abm;
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/kingroot/kinguser/aco;->rS()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/kingroot/kinguser/abj;->ep(Ljava/lang/String;)Lcom/kingroot/kinguser/abm;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/kingroot/kinguser/abj;->a(Lcom/kingroot/kinguser/abm;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    const-string v0, " --global"

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/abj;->P(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/abm;

    move-result-object v0

    .line 45
    :cond_0
    if-eqz v0, :cond_1

    .line 48
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected rA()Lcom/kingroot/kinguser/abm;
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/acj;->ZZ:Lcom/kingroot/kinguser/abw$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abw$a;->rs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/acj;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    .line 27
    :goto_0
    return-object v0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/acj;->ZZ:Lcom/kingroot/kinguser/abw$a;

    invoke-direct {p0}, Lcom/kingroot/kinguser/acj;->rF()Lcom/kingroot/kinguser/abm;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/acj;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    goto :goto_0
.end method

.method protected rB()Lcom/kingroot/kinguser/aci$a;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/kingroot/kinguser/aci$a;->aap:Lcom/kingroot/kinguser/aci$a;

    return-object v0
.end method
