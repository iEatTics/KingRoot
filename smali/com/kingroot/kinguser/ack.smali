.class Lcom/kingroot/kinguser/ack;
.super Lcom/kingroot/kinguser/abw;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingroot/kinguser/abw;-><init>()V

    return-void
.end method


# virtual methods
.method protected rA()Lcom/kingroot/kinguser/abm;
    .locals 2

    .prologue
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    iget-object v1, p0, Lcom/kingroot/kinguser/ack;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/ack;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    invoke-static {v1}, Lcom/kingroot/kinguser/abj;->a(Lcom/kingroot/kinguser/abm;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/ack;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    .line 27
    :goto_0
    return-object v0

    .line 23
    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/ack;->ZZ:Lcom/kingroot/kinguser/abw$a;

    const-string v1, "daemonsu"

    invoke-static {v1}, Lcom/kingroot/kinguser/abj;->ep(Ljava/lang/String;)Lcom/kingroot/kinguser/abm;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ack;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    goto :goto_0
.end method

.method protected rB()Lcom/kingroot/kinguser/aci$a;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/kingroot/kinguser/aci$a;->aar:Lcom/kingroot/kinguser/aci$a;

    return-object v0
.end method
