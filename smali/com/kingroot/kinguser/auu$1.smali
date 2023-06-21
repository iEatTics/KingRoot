.class Lcom/kingroot/kinguser/auu$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/auu;->PJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/auu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auu;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kingroot/kinguser/auu$1;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 64
    iget-object v2, p0, Lcom/kingroot/kinguser/auu$1;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/agt;->wb()Lcom/kingroot/kinguser/agt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agt;->wc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 64
    :goto_0
    invoke-static {v2, v0}, Lcom/kingroot/kinguser/auu;->a(Lcom/kingroot/kinguser/auu;Z)Z

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/auu$1;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v0}, Lcom/kingroot/kinguser/auu;->a(Lcom/kingroot/kinguser/auu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/auu$1;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v1}, Lcom/kingroot/kinguser/auu;->b(Lcom/kingroot/kinguser/auu;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 72
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 65
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/auu$1;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v0}, Lcom/kingroot/kinguser/auu;->d(Lcom/kingroot/kinguser/auu;)Lcom/kingroot/kinguser/aul$b;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/auu$1;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v2}, Lcom/kingroot/kinguser/auu;->c(Lcom/kingroot/kinguser/auu;)I

    move-result v2

    invoke-interface {v0, v2, v1, v1}, Lcom/kingroot/kinguser/aul$b;->a(IZZ)V

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/auu$1;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v0}, Lcom/kingroot/kinguser/auu;->d(Lcom/kingroot/kinguser/auu;)Lcom/kingroot/kinguser/aul$b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aul$b;->cW(Z)V

    goto :goto_1
.end method
