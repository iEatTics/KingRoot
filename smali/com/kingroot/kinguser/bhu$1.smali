.class Lcom/kingroot/kinguser/bhu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/adg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bhu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic brq:Lcom/kingroot/kinguser/bhu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bhu;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/kingroot/kinguser/bhu$1;->brq:Lcom/kingroot/kinguser/bhu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/bhu$1;->brq:Lcom/kingroot/kinguser/bhu;

    invoke-static {v0}, Lcom/kingroot/kinguser/bhu;->a(Lcom/kingroot/kinguser/bhu;)Lcom/kingroot/kinguser/bhu$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/bhu$1;->brq:Lcom/kingroot/kinguser/bhu;

    invoke-static {v0}, Lcom/kingroot/kinguser/bhu;->a(Lcom/kingroot/kinguser/bhu;)Lcom/kingroot/kinguser/bhu$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/bhu$a;->r(Landroid/view/View;I)V

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/bhu$1;->brq:Lcom/kingroot/kinguser/bhu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhu;->dismiss()V

    .line 81
    :cond_0
    return-void
.end method
