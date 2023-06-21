.class Lcom/kingroot/kinguser/cax;
.super Lcom/kingroot/kinguser/bzr;
.source "SourceFile"


# instance fields
.field final synthetic bWD:Lcom/kingroot/kinguser/cg;

.field final synthetic bWE:Lcom/kingroot/kinguser/caw;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/caw;Lcom/kingroot/kinguser/cg;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/kingroot/kinguser/cax;->bWE:Lcom/kingroot/kinguser/caw;

    iput-object p2, p0, Lcom/kingroot/kinguser/cax;->bWD:Lcom/kingroot/kinguser/cg;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bzr;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lcom/kingroot/kinguser/cbj;->akz()Lcom/kingroot/kinguser/cbj;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/cax;->bWD:Lcom/kingroot/kinguser/cg;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cbj;->a(Lcom/kingroot/kinguser/cg;)Z

    .line 159
    return-void
.end method
