.class Lcom/kingroot/kinguser/ph;
.super Lcom/kingroot/kinguser/bzr;
.source "SourceFile"


# instance fields
.field final synthetic yH:Ljava/lang/String;

.field final synthetic yI:Lcom/kingroot/kinguser/pg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/pg;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kingroot/kinguser/ph;->yI:Lcom/kingroot/kinguser/pg;

    iput-object p2, p0, Lcom/kingroot/kinguser/ph;->yH:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bzr;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/ph;->yI:Lcom/kingroot/kinguser/pg;

    iget-object v0, v0, Lcom/kingroot/kinguser/pg;->yG:Lcom/kingroot/kinguser/pf;

    iget-object v1, p0, Lcom/kingroot/kinguser/ph;->yI:Lcom/kingroot/kinguser/pg;

    iget-object v1, v1, Lcom/kingroot/kinguser/pg;->yE:Lcom/kingroot/kinguser/pt;

    iget-object v2, p0, Lcom/kingroot/kinguser/ph;->yH:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/ph;->yI:Lcom/kingroot/kinguser/pg;

    iget-object v3, v3, Lcom/kingroot/kinguser/pg;->yv:Lcom/kingroot/kinguser/pv;

    iget-object v4, p0, Lcom/kingroot/kinguser/ph;->yI:Lcom/kingroot/kinguser/pg;

    iget-object v4, v4, Lcom/kingroot/kinguser/pg;->yF:Lcom/kingroot/kinguser/cbe;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/pf;->a(Lcom/kingroot/kinguser/pf;Lcom/kingroot/kinguser/pt;Ljava/lang/String;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V

    .line 86
    return-void
.end method
