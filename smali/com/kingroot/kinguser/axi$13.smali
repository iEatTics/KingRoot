.class Lcom/kingroot/kinguser/axi$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axi;->Ud()V
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
    .line 475
    iput-object p1, p0, Lcom/kingroot/kinguser/axi$13;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 479
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$13;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->m(Lcom/kingroot/kinguser/axi;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axi$13;->this$0:Lcom/kingroot/kinguser/axi;

    const-wide/32 v2, 0x7f0700fd

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/axi;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$13;->this$0:Lcom/kingroot/kinguser/axi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;Z)Z

    .line 481
    return-void
.end method
