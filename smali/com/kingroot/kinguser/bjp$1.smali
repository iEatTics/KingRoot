.class Lcom/kingroot/kinguser/bjp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxJ:Lcom/kingroot/kinguser/bjp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjp;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/kingroot/kinguser/bjp$1;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjp$1;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-static {v1}, Lcom/kingroot/kinguser/bjp;->a(Lcom/kingroot/kinguser/bjp;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->d(Lcom/kingroot/kinguser/bed;)V

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp$1;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjp;->b(Lcom/kingroot/kinguser/bjp;)Lcom/kingroot/kinguser/bjp$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp$1;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjp;->b(Lcom/kingroot/kinguser/bjp;)Lcom/kingroot/kinguser/bjp$a;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingroot/kinguser/bjp$1;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-static {v2}, Lcom/kingroot/kinguser/bjp;->c(Lcom/kingroot/kinguser/bjp;)Lcom/kingroot/kinguser/aex$a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/bjp$a;->a(ZLcom/kingroot/kinguser/aex$a;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp$1;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjp;->dismiss()V

    .line 131
    return-void
.end method
