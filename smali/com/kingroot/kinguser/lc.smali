.class Lcom/kingroot/kinguser/lc;
.super Lcom/kingroot/kinguser/mg;
.source "SourceFile"


# instance fields
.field final synthetic uJ:Lcom/kingroot/kinguser/la$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/la$a;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/kingroot/kinguser/lc;->uJ:Lcom/kingroot/kinguser/la$a;

    invoke-direct {p0}, Lcom/kingroot/kinguser/mg;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/lc;->uJ:Lcom/kingroot/kinguser/la$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/la$a;->uH:Lcom/kingroot/kinguser/la;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/la;->l(Z)I

    .line 115
    return-void
.end method
