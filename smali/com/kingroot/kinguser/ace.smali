.class Lcom/kingroot/kinguser/ace;
.super Lcom/kingroot/kinguser/abw;
.source "SourceFile"


# static fields
.field private static final aac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/abu;->ZP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ace;->aac:Ljava/lang/String;

    return-void
.end method

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
    iget-object v0, p0, Lcom/kingroot/kinguser/ace;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/ace;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    invoke-static {v0}, Lcom/kingroot/kinguser/abj;->a(Lcom/kingroot/kinguser/abm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/ace;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    .line 23
    :goto_0
    return-object v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ace;->ZZ:Lcom/kingroot/kinguser/abw$a;

    sget-object v1, Lcom/kingroot/kinguser/ace;->aac:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/abj;->ep(Ljava/lang/String;)Lcom/kingroot/kinguser/abm;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/ace;->ZZ:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    goto :goto_0
.end method

.method protected rB()Lcom/kingroot/kinguser/aci$a;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/kingroot/kinguser/aci$a;->aao:Lcom/kingroot/kinguser/aci$a;

    return-object v0
.end method
