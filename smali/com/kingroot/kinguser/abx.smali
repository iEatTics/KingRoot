.class Lcom/kingroot/kinguser/abx;
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
    .locals 5

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/abx;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/abx;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    invoke-static {v0}, Lcom/kingroot/kinguser/abj;->a(Lcom/kingroot/kinguser/abm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/abx;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    .line 32
    :goto_0
    return-object v0

    .line 22
    :cond_0
    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 23
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 24
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "su"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26
    iget-object v3, p0, Lcom/kingroot/kinguser/abx;->ZZ:Lcom/kingroot/kinguser/abw$a;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/abj;->ep(Ljava/lang/String;)Lcom/kingroot/kinguser/abm;

    move-result-object v2

    iput-object v2, v3, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    .line 27
    iget-object v2, p0, Lcom/kingroot/kinguser/abx;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v2, v2, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    if-eqz v2, :cond_2

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/abx;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    goto :goto_0

    .line 23
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected rB()Lcom/kingroot/kinguser/aci$a;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/kingroot/kinguser/aci$a;->aai:Lcom/kingroot/kinguser/aci$a;

    return-object v0
.end method
