.class Lcom/kingroot/kinguser/nb;
.super Lcom/kingroot/kinguser/nj;
.source "SourceFile"


# instance fields
.field final synthetic wN:Landroid/content/Context;

.field final synthetic wO:Lcom/kingroot/kinguser/na;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/na;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/kingroot/kinguser/nb;->wO:Lcom/kingroot/kinguser/na;

    iput-object p2, p0, Lcom/kingroot/kinguser/nb;->wN:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kingroot/kinguser/nj;-><init>()V

    return-void
.end method


# virtual methods
.method public ca()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/nb;->wO:Lcom/kingroot/kinguser/na;

    iget-object v1, p0, Lcom/kingroot/kinguser/nb;->wN:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/na;->a(Lcom/kingroot/kinguser/na;Landroid/content/Context;)V

    .line 69
    return-void
.end method
