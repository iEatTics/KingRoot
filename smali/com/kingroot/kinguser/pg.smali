.class Lcom/kingroot/kinguser/pg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bzp$a;


# instance fields
.field final synthetic yE:Lcom/kingroot/kinguser/pt;

.field final synthetic yF:Lcom/kingroot/kinguser/cbe;

.field final synthetic yG:Lcom/kingroot/kinguser/pf;

.field final synthetic yv:Lcom/kingroot/kinguser/pv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/pf;Lcom/kingroot/kinguser/pt;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/kingroot/kinguser/pg;->yG:Lcom/kingroot/kinguser/pf;

    iput-object p2, p0, Lcom/kingroot/kinguser/pg;->yE:Lcom/kingroot/kinguser/pt;

    iput-object p3, p0, Lcom/kingroot/kinguser/pg;->yv:Lcom/kingroot/kinguser/pv;

    iput-object p4, p0, Lcom/kingroot/kinguser/pg;->yF:Lcom/kingroot/kinguser/cbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bzo;)V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/pg;->yG:Lcom/kingroot/kinguser/pf;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/pf;->a(Lcom/kingroot/kinguser/pf;II)V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bzo;->a()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/kingroot/kinguser/ph;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/ph;-><init>(Lcom/kingroot/kinguser/pg;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1}, Lcom/kingroot/kinguser/ph;->ny()Z

    .line 89
    :cond_0
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/bzo;)V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/pg;->yG:Lcom/kingroot/kinguser/pf;

    const/16 v1, 0x8

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/pf;->a(Lcom/kingroot/kinguser/pf;II)V

    .line 94
    return-void
.end method
