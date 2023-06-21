.class Lcom/kingroot/kinguser/bjp$2;
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
    .line 137
    iput-object p1, p0, Lcom/kingroot/kinguser/bjp$2;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp$2;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjp;->b(Lcom/kingroot/kinguser/bjp;)Lcom/kingroot/kinguser/bjp$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp$2;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjp;->b(Lcom/kingroot/kinguser/bjp;)Lcom/kingroot/kinguser/bjp$a;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/kingroot/kinguser/bjp$2;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-static {v2}, Lcom/kingroot/kinguser/bjp;->c(Lcom/kingroot/kinguser/bjp;)Lcom/kingroot/kinguser/aex$a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/bjp$a;->a(ZLcom/kingroot/kinguser/aex$a;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp$2;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjp;->dismiss()V

    .line 145
    return-void
.end method
