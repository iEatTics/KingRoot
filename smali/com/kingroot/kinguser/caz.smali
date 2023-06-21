.class Lcom/kingroot/kinguser/caz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# instance fields
.field final synthetic bWG:Lcom/kingroot/kinguser/cbg;

.field final synthetic bWH:Lcom/kingroot/kinguser/cay;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cay;Lcom/kingroot/kinguser/cbg;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/kingroot/kinguser/caz;->bWH:Lcom/kingroot/kinguser/cay;

    iput-object p2, p0, Lcom/kingroot/kinguser/caz;->bWG:Lcom/kingroot/kinguser/cbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/caz;->bWG:Lcom/kingroot/kinguser/cbg;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/caz;->bWG:Lcom/kingroot/kinguser/cbg;

    invoke-interface {v0, p2, p3, p4}, Lcom/kingroot/kinguser/cbg;->k(III)V

    .line 95
    :cond_0
    return-void
.end method
