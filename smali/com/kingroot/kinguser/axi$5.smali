.class Lcom/kingroot/kinguser/axi$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axi;->Ug()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axi;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axi;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/kingroot/kinguser/axi$5;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$5;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->n(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/bid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 594
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$5;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->o(Lcom/kingroot/kinguser/axi;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bgd;->bt(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :goto_0
    return-void

    .line 595
    :catch_0
    move-exception v0

    goto :goto_0
.end method
