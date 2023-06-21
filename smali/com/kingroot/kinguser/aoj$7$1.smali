.class Lcom/kingroot/kinguser/aoj$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aoj$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aGd:I

.field final synthetic aGe:Lcom/kingroot/kinguser/aoj$7;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aoj$7;I)V
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, Lcom/kingroot/kinguser/aoj$7$1;->aGe:Lcom/kingroot/kinguser/aoj$7;

    iput p2, p0, Lcom/kingroot/kinguser/aoj$7$1;->aGd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070481

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 718
    iget v1, p0, Lcom/kingroot/kinguser/aoj$7$1;->aGd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 719
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 720
    iget-object v1, p0, Lcom/kingroot/kinguser/aoj$7$1;->aGe:Lcom/kingroot/kinguser/aoj$7;

    iget-object v1, v1, Lcom/kingroot/kinguser/aoj$7;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v1}, Lcom/kingroot/kinguser/aoj;->p(Lcom/kingroot/kinguser/aoj;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 721
    iget-object v1, p0, Lcom/kingroot/kinguser/aoj$7$1;->aGe:Lcom/kingroot/kinguser/aoj$7;

    iget-object v1, v1, Lcom/kingroot/kinguser/aoj$7;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v1}, Lcom/kingroot/kinguser/aoj;->q(Lcom/kingroot/kinguser/aoj;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$7$1;->aGe:Lcom/kingroot/kinguser/aoj$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/aoj$7;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->p(Lcom/kingroot/kinguser/aoj;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/aoj$7$1$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/aoj$7$1$1;-><init>(Lcom/kingroot/kinguser/aoj$7$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    return-void
.end method
