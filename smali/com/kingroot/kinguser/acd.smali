.class Lcom/kingroot/kinguser/acd;
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
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/kingroot/kinguser/abu;->ZV:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/kingroot/kinguser/acd;->ZZ:Lcom/kingroot/kinguser/abw$a;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/abj;->ep(Ljava/lang/String;)Lcom/kingroot/kinguser/abm;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/acd;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    return-object v0
.end method

.method protected rB()Lcom/kingroot/kinguser/aci$a;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/kingroot/kinguser/aci$a;->aam:Lcom/kingroot/kinguser/aci$a;

    return-object v0
.end method
